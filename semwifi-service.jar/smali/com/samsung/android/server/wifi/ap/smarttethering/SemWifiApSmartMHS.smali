.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DATASAVER_ENABLED_NO_HOTSPOT:I = -0xd

.field private static final DISALLOW_CONFIG_TETHERING_ON:I = -0x9

.field private static final EDM_RESTRICT_HOTSPOT:I = -0xc

.field private static final HOTSPOT_NOT_ALLOWED_MODE:I = -0xa

.field private static final OPEN_NETWORK_AUTOHOTSPOT_ERROR:I = -0xb

.field public static final START_ADVERTISE:I = 0xa

.field private static final START_ADVERTISE_WITHOUT_INTERNET:I = 0xe

.field private static final START_ADVERTISE_WITH_INTERNET:I = 0xd

.field public static final STOP_ADVERTISE:I = 0xb

.field public static final STOP_MHS_ADVERTISE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SemWifiApSmartMHS"

.field private static final mWifiApSmartMHSIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private DBG:Z

.field private autohotspot_mhs_check_message:Lcom/android/internal/util/WakeupMessage;

.field private autohotspot_mhs_check_message_TAG:Ljava/lang/String;

.field private checkInternet:Z

.field private isAdvStoppedbecauseOfSIMRemoval:Z

.field private isAdveretising:Z

.field private islowBattery:Z

.field private mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mBatteryPct:B

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private mContext:Landroid/content/Context;

.field private mLimitTimesOfStopMhsAdv:I

.field private mLocalLog:Landroid/util/LocalLog;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApSmartMHSBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;

.field private mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$J4NARn__DqIDoWDZXVmzgKV7idk(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->lambda$registerCallbacks$2(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Kp_TgrF3dTrl6gJkcTeSDxnSLDg(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->lambda$registerCallbacks$4(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$OBGPXlbpIGhWOg77o5FOfw8ZAOc(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->lambda$registerCallbacks$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Uj7UFRg2nz-CEG7mvd8RF8ctU7E(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->lambda$registerCallbacks$5(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$k42qGjHWbD3v0hNTVVDrexLrM3s(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->lambda$registerCallbacks$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$rIZS68ZectH__-xIwlfiDc-_k9o(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->lambda$registerCallbacks$3(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetDBG(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->DBG:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautohotspot_mhs_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/android/internal/util/WakeupMessage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message:Lcom/android/internal/util/WakeupMessage;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckInternet(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->checkInternet:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAdveretising(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLimitTimesOfStopMhsAdv(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLimitTimesOfStopMhsAdv:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisAdveretising(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLimitTimesOfStopMhsAdv(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLimitTimesOfStopMhsAdv:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSendingMhsAdvertisementWithInternet(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->checkSendingMhsAdvertisementWithInternet()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSendingMhsAdvertisementWithoutInternet(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->checkSendingMhsAdvertisementWithoutInternet()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetStringFromCommand(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->getStringFromCommand(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartAdvertising(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->startAdvertising()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAdvertising(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->stopAdvertising()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartMHSIntentFilter:Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.ssid_changed"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/LocalLog;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->DBG:Z

    const/16 v0, 0x4b

    .line 21
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 22
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->islowBattery:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message:Lcom/android/internal/util/WakeupMessage;

    .line 24
    const-string v2, "SemWifiApSmartMHS autohotspot mhs message Timeout"

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message_TAG:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 27
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdvStoppedbecauseOfSIMRemoval:Z

    .line 28
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 29
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$3;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->DBG:Z

    const/16 v0, 0x4b

    .line 3
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 4
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->islowBattery:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message:Lcom/android/internal/util/WakeupMessage;

    .line 6
    const-string v2, "SemWifiApSmartMHS autohotspot mhs message Timeout"

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message_TAG:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 9
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdvStoppedbecauseOfSIMRemoval:Z

    .line 10
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$3;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 14
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 15
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartMHSBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;

    .line 16
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->registerCallbacks()V

    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartMHSBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;

    sget-object p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartMHSIntentFilter:Landroid/content/IntentFilter;

    const/4 p3, 0x2

    invoke-virtual {p1, p0, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    .line 3
    const-string v1, "SemWifiApSmartMHS"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v2, "power"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/PowerManager;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPowerManager:Landroid/os/PowerManager;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const-string v0, "acquireWakeLock"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private checkSendingMhsAdvertisementWithInternet()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiApSmartMHS"

    .line 6
    .line 7
    const-string v1, "checkSendingMhsAdvertisement checkSendingMhsAdvertisementWithInternet "

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/16 v1, 0xd

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 22
    .line 23
    const-wide/16 v2, 0x7d0

    .line 24
    .line 25
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private checkSendingMhsAdvertisementWithoutInternet()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiApSmartMHS"

    .line 6
    .line 7
    const-string v1, "checkSendingMhsAdvertisement checkSendingMhsAdvertisementWithoutInternet"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/16 v1, 0xe

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 22
    .line 23
    const-wide/16 v2, 0x7d0

    .line 24
    .line 25
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private getMHSAdvManufactureData()[B
    .locals 15

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
    const/4 v3, 0x1

    .line 15
    aput-byte v3, v1, v2

    .line 16
    .line 17
    const/16 v4, 0x12

    .line 18
    .line 19
    aput-byte v4, v1, v3

    .line 20
    .line 21
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 32
    .line 33
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    const-string v11, "wifi_ap_smart_tethering_settings_with_family"

    .line 48
    .line 49
    invoke-static {v10, v11, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    const-wide/16 v11, -0x1

    .line 54
    .line 55
    cmp-long v4, v4, v11

    .line 56
    .line 57
    const/4 v5, 0x4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    move v6, v2

    .line 65
    :goto_1
    if-ge v6, v5, :cond_1

    .line 66
    .line 67
    add-int/lit8 v13, v6, 0x2

    .line 68
    .line 69
    aget-byte v14, v4, v6

    .line 70
    .line 71
    aput-byte v14, v1, v13

    .line 72
    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    cmp-long v4, v7, v11

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    if-ne v10, v3, :cond_2

    .line 81
    .line 82
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    move v6, v2

    .line 87
    :goto_2
    if-ge v6, v5, :cond_2

    .line 88
    .line 89
    add-int/lit8 v7, v6, 0x6

    .line 90
    .line 91
    aget-byte v8, v4, v6

    .line 92
    .line 93
    aput-byte v8, v1, v7

    .line 94
    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    const/16 v4, 0xa

    .line 99
    .line 100
    const/4 v6, 0x2

    .line 101
    aput-byte v6, v1, v4

    .line 102
    .line 103
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getNetworkType()B

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    const/4 v7, 0x3

    .line 110
    const/16 v8, 0xb

    .line 111
    .line 112
    if-ne v4, v3, :cond_3

    .line 113
    .line 114
    aget-byte v4, v1, v8

    .line 115
    .line 116
    or-int/lit8 v4, v4, 0x40

    .line 117
    .line 118
    int-to-byte v4, v4

    .line 119
    aput-byte v4, v1, v8

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    if-ne v4, v6, :cond_4

    .line 123
    .line 124
    aget-byte v4, v1, v8

    .line 125
    .line 126
    or-int/lit8 v4, v4, -0x40

    .line 127
    .line 128
    int-to-byte v4, v4

    .line 129
    aput-byte v4, v1, v8

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_4
    if-ne v4, v7, :cond_5

    .line 133
    .line 134
    aget-byte v4, v1, v8

    .line 135
    .line 136
    or-int/lit8 v4, v4, -0x40

    .line 137
    .line 138
    int-to-byte v4, v4

    .line 139
    aput-byte v4, v1, v8

    .line 140
    .line 141
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 142
    .line 143
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getlegacyPassword()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    if-eqz v4, :cond_6

    .line 148
    .line 149
    aget-byte v4, v1, v8

    .line 150
    .line 151
    or-int/2addr v4, v5

    .line 152
    int-to-byte v4, v4

    .line 153
    aput-byte v4, v1, v8

    .line 154
    .line 155
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 156
    .line 157
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getlegacySSIDHidden()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_7

    .line 162
    .line 163
    aget-byte v4, v1, v8

    .line 164
    .line 165
    or-int/2addr v4, v6

    .line 166
    int-to-byte v4, v4

    .line 167
    aput-byte v4, v1, v8

    .line 168
    .line 169
    :cond_7
    iget-byte v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 170
    .line 171
    const/16 v9, 0xf

    .line 172
    .line 173
    const/4 v10, 0x6

    .line 174
    const/16 v11, 0x10

    .line 175
    .line 176
    if-lt v4, v10, :cond_8

    .line 177
    .line 178
    if-gt v4, v9, :cond_8

    .line 179
    .line 180
    aget-byte v0, v1, v8

    .line 181
    .line 182
    or-int/lit8 v0, v0, 0x8

    .line 183
    .line 184
    int-to-byte v0, v0

    .line 185
    aput-byte v0, v1, v8

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_8
    if-lt v4, v11, :cond_9

    .line 189
    .line 190
    const/16 v10, 0x1e

    .line 191
    .line 192
    if-gt v4, v10, :cond_9

    .line 193
    .line 194
    aget-byte v0, v1, v8

    .line 195
    .line 196
    or-int/2addr v0, v11

    .line 197
    int-to-byte v0, v0

    .line 198
    aput-byte v0, v1, v8

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_9
    const/16 v10, 0x1f

    .line 202
    .line 203
    if-lt v4, v10, :cond_a

    .line 204
    .line 205
    const/16 v10, 0x2d

    .line 206
    .line 207
    if-gt v4, v10, :cond_a

    .line 208
    .line 209
    aget-byte v4, v1, v8

    .line 210
    .line 211
    or-int/2addr v0, v4

    .line 212
    int-to-byte v0, v0

    .line 213
    aput-byte v0, v1, v8

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_a
    const/16 v0, 0x2e

    .line 217
    .line 218
    if-lt v4, v0, :cond_b

    .line 219
    .line 220
    const/16 v0, 0x3c

    .line 221
    .line 222
    if-gt v4, v0, :cond_b

    .line 223
    .line 224
    aget-byte v0, v1, v8

    .line 225
    .line 226
    or-int/lit8 v0, v0, 0x20

    .line 227
    .line 228
    int-to-byte v0, v0

    .line 229
    aput-byte v0, v1, v8

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_b
    const/16 v0, 0x3d

    .line 233
    .line 234
    if-lt v4, v0, :cond_c

    .line 235
    .line 236
    const/16 v0, 0x4b

    .line 237
    .line 238
    if-gt v4, v0, :cond_c

    .line 239
    .line 240
    aget-byte v0, v1, v8

    .line 241
    .line 242
    or-int/lit8 v0, v0, 0x28

    .line 243
    .line 244
    int-to-byte v0, v0

    .line 245
    aput-byte v0, v1, v8

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_c
    const/16 v0, 0x4c

    .line 249
    .line 250
    if-lt v4, v0, :cond_d

    .line 251
    .line 252
    const/16 v0, 0x5a

    .line 253
    .line 254
    if-gt v4, v0, :cond_d

    .line 255
    .line 256
    aget-byte v0, v1, v8

    .line 257
    .line 258
    or-int/lit8 v0, v0, 0x30

    .line 259
    .line 260
    int-to-byte v0, v0

    .line 261
    aput-byte v0, v1, v8

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_d
    const/16 v0, 0x5b

    .line 265
    .line 266
    if-lt v4, v0, :cond_e

    .line 267
    .line 268
    const/16 v0, 0x64

    .line 269
    .line 270
    if-gt v4, v0, :cond_e

    .line 271
    .line 272
    aget-byte v0, v1, v8

    .line 273
    .line 274
    or-int/lit8 v0, v0, 0x38

    .line 275
    .line 276
    int-to-byte v0, v0

    .line 277
    aput-byte v0, v1, v8

    .line 278
    .line 279
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getClientMACbytes()[B

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    move v4, v2

    .line 286
    :goto_5
    if-ge v4, v7, :cond_f

    .line 287
    .line 288
    add-int/lit8 v8, v4, 0xc

    .line 289
    .line 290
    add-int/lit8 v10, v4, 0x3

    .line 291
    .line 292
    aget-byte v10, v0, v10

    .line 293
    .line 294
    aput-byte v10, v1, v8

    .line 295
    .line 296
    add-int/lit8 v4, v4, 0x1

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->Check_MHS_AES_Key()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    aput-byte v0, v1, v9

    .line 306
    .line 307
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 308
    .line 309
    aput-byte v3, v1, v11

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isDataSaverModeEnabled()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_10

    .line 316
    .line 317
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 318
    .line 319
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isDataAllowed(Landroid/content/Context;)Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-nez v0, :cond_11

    .line 324
    .line 325
    :cond_10
    aget-byte v0, v1, v11

    .line 326
    .line 327
    or-int/lit8 v0, v0, 0x8

    .line 328
    .line 329
    int-to-byte v0, v0

    .line 330
    aput-byte v0, v1, v11

    .line 331
    .line 332
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getWifi6ENetwork()Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_12

    .line 339
    .line 340
    aget-byte v0, v1, v11

    .line 341
    .line 342
    or-int/2addr v0, v5

    .line 343
    int-to-byte v0, v0

    .line 344
    aput-byte v0, v1, v11

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 348
    .line 349
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getWifi6Network()Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_13

    .line 354
    .line 355
    aget-byte v0, v1, v11

    .line 356
    .line 357
    or-int/2addr v0, v6

    .line 358
    int-to-byte v0, v0

    .line 359
    aput-byte v0, v1, v11

    .line 360
    .line 361
    :cond_13
    :goto_6
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 370
    .line 371
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiProfileShareAHSupported(Landroid/content/Context;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    const-string v3, "SemWifiApSmartMHS"

    .line 376
    .line 377
    if-eqz v0, :cond_14

    .line 378
    .line 379
    const-string v0, "wifiProfileShare is supported"

    .line 380
    .line 381
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    aget-byte v0, v1, v11

    .line 385
    .line 386
    or-int/2addr v0, v11

    .line 387
    int-to-byte v0, v0

    .line 388
    aput-byte v0, v1, v11

    .line 389
    .line 390
    :cond_14
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-eqz v0, :cond_15

    .line 403
    .line 404
    const-string v0, "Datausage is supported"

    .line 405
    .line 406
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isNeededToShowWifiApDatalimitReachedDialog()Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-eqz v0, :cond_15

    .line 422
    .line 423
    const-string v0, "Mobile Datalimit is reached"

    .line 424
    .line 425
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    aget-byte v0, v1, v11

    .line 429
    .line 430
    or-int/lit8 v0, v0, 0x20

    .line 431
    .line 432
    int-to-byte v0, v0

    .line 433
    aput-byte v0, v1, v11

    .line 434
    .line 435
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 436
    .line 437
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->checkIfActiveNetworkHasInternet()Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->checkInternet:Z

    .line 442
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    const-string v4, "checkInternet :"

    .line 446
    .line 447
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->checkInternet:Z

    .line 451
    .line 452
    invoke-static {v0, v4, v3}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->checkInternet:Z

    .line 456
    .line 457
    if-nez v0, :cond_16

    .line 458
    .line 459
    aget-byte v0, v1, v11

    .line 460
    .line 461
    or-int/lit8 v0, v0, 0x40

    .line 462
    .line 463
    int-to-byte v0, v0

    .line 464
    aput-byte v0, v1, v11

    .line 465
    .line 466
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 467
    .line 468
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getTruncatedHostNameFromSettingDeviceName()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 473
    .line 474
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    array-length v4, v0

    .line 479
    :goto_7
    if-ge v2, v4, :cond_17

    .line 480
    .line 481
    const/4 v5, 0x7

    .line 482
    if-ge v2, v5, :cond_17

    .line 483
    .line 484
    add-int/lit8 v5, v2, 0x11

    .line 485
    .line 486
    aget-byte v6, v0, v2

    .line 487
    .line 488
    aput-byte v6, v1, v5

    .line 489
    .line 490
    add-int/lit8 v2, v2, 0x1

    .line 491
    .line 492
    goto :goto_7

    .line 493
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    const-string v2, "mBatteryPct:"

    .line 496
    .line 497
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    iget-byte v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 501
    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    const-string v2, "advData:"

    .line 515
    .line 516
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 534
    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    const-string v3, "SemWifiApSmartMHS:\t SmartMHS startAdvertizing mBatteryPct : "

    .line 538
    .line 539
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 543
    .line 544
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string p0, ",advData:"

    .line 548
    .line 549
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object p0

    .line 556
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object p0

    .line 563
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    return-object v1
.end method

.method private getScanResponseData()[B
    .locals 8

    .line 1
    const/16 v0, 0x1b

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
    const/4 v3, 0x1

    .line 15
    aput-byte v3, v1, v2

    .line 16
    .line 17
    const/16 v2, 0x12

    .line 18
    .line 19
    aput-byte v2, v1, v3

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getTruncatedHostNameFromSettingDeviceName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    array-length v3, v2

    .line 34
    int-to-byte v3, v3

    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v5, 0x7

    .line 37
    :goto_1
    if-ge v4, v0, :cond_1

    .line 38
    .line 39
    if-ge v5, v3, :cond_1

    .line 40
    .line 41
    add-int/lit8 v6, v4, 0x1

    .line 42
    .line 43
    aget-byte v7, v2, v5

    .line 44
    .line 45
    aput-byte v7, v1, v4

    .line 46
    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    int-to-byte v5, v5

    .line 50
    move v4, v6

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "respData:"

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v2, "SemWifiApSmartMHS"

    .line 71
    .line 72
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "SemWifiApSmartMHS:\tSmartMHS getScanResponseData respData:"

    .line 80
    .line 81
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v1
.end method

.method private getStringFromCommand(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "DEFAULT_VALUE"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "START_ADVERTISE_WITHOUT_INTERNET"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "START_ADVERTISE_WITH_INTERNET"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "STOP_MHS_ADVERTISE"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "STOP_ADVERTISE"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "START_ADVERTISE"

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

.method private isDataSaverModeEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private synthetic lambda$registerCallbacks$0(Z)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 18
    .line 19
    const-string v0, "SemWifiApSmartMHS:\t NearBy is off, stop to send adv"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "SemWifiApSmartMHS"

    .line 25
    .line 26
    const-string v0, "NearBy is off, stop to send adv"

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 32
    .line 33
    const/16 p1, 0xb

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerCallbacks$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "ABSENT"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const-string v0, "SemWifiApSmartMHS"

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-string p1, "SIM card removed"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 21
    .line 22
    const-string p2, "SemWifiApSmartMHS:\tSIM card removed"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdvStoppedbecauseOfSIMRemoval:Z

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    const/16 p1, 0xb

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const-string p2, "READY"

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdvStoppedbecauseOfSIMRemoval:Z

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    const-string p1, "SIM card inserted"

    .line 57
    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 62
    .line 63
    const-string p2, "SemWifiApSmartMHS:\tSIM card inserted"

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdvStoppedbecauseOfSIMRemoval:Z

    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method private synthetic lambda$registerCallbacks$2(II)V
    .locals 9

    .line 1
    mul-int/lit8 p1, p1, 0x64

    .line 2
    .line 3
    div-int/2addr p1, p2

    .line 4
    int-to-byte p1, p1

    .line 5
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "wifi_ap_smart_tethering_settings"

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-wide/16 v1, 0x3e8

    .line 21
    .line 22
    const/16 p2, 0xb

    .line 23
    .line 24
    const/16 v3, 0xf

    .line 25
    .line 26
    const/16 v4, 0xa

    .line 27
    .line 28
    const-string v5, " ,,isAdveretizing: "

    .line 29
    .line 30
    const-string v6, "SemWifiApSmartMHS"

    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    if-ne p1, v7, :cond_1

    .line 34
    .line 35
    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->islowBattery:Z

    .line 36
    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    iget-byte v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 40
    .line 41
    if-gt v8, v3, :cond_1

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v0, "low battery:"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->islowBattery:Z

    .line 71
    .line 72
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v3, "SemWifiApSmartMHS:\tlow battery pct:  "

    .line 77
    .line 78
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-byte v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, ",, isAdveretizing: "

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 92
    .line 93
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v0, "low battery pct:  "

    .line 106
    .line 107
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {v6, p1, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemAutoHotspotDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 131
    .line 132
    if-eqz p1, :cond_0

    .line 133
    .line 134
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 135
    .line 136
    if-eqz p1, :cond_2

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 142
    .line 143
    invoke-virtual {p0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 148
    .line 149
    if-eqz p1, :cond_2

    .line 150
    .line 151
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getNumOfConnectedDevices()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-lez p1, :cond_2

    .line 164
    .line 165
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 166
    .line 167
    const-wide/16 p1, 0x2

    .line 168
    .line 169
    invoke-virtual {p0, v4, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_1
    if-ne p1, v7, :cond_2

    .line 174
    .line 175
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 176
    .line 177
    if-eqz p1, :cond_2

    .line 178
    .line 179
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->islowBattery:Z

    .line 180
    .line 181
    if-eqz p1, :cond_2

    .line 182
    .line 183
    iget-byte p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 184
    .line 185
    if-le p1, v3, :cond_2

    .line 186
    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v3, "charged from low battery:"

    .line 190
    .line 191
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-byte v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 195
    .line 196
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v3, " ,,isAdveretizing:"

    .line 200
    .line 201
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 205
    .line 206
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->islowBattery:Z

    .line 217
    .line 218
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 219
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v3, "SemWifiApSmartMHS:\t change from low battery pct:  "

    .line 223
    .line 224
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-byte v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 228
    .line 229
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 236
    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v0, "change from low battery pct:  "

    .line 250
    .line 251
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBatteryPct:B

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 263
    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {v6, p1, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemAutoHotspotDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    .line 273
    .line 274
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 275
    .line 276
    if-eqz p1, :cond_2

    .line 277
    .line 278
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 279
    .line 280
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 281
    .line 282
    .line 283
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 284
    .line 285
    invoke-virtual {p0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    .line 287
    .line 288
    :cond_2
    return-void
.end method

.method private synthetic lambda$registerCallbacks$3(I)V
    .locals 4

    .line 1
    const-string v0, "action BLE state:::"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiApSmartMHS"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "SemWifiApSmartMHS:\taction BLE state:::"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x10

    .line 32
    .line 33
    const/16 v2, 0xb

    .line 34
    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .line 37
    const-string p1, "BLE is turned off"

    .line 38
    .line 39
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 43
    .line 44
    const-string v0, "SemWifiApSmartMHS:\tBLE is turned off"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    const/16 v0, 0xf

    .line 58
    .line 59
    if-ne p1, v0, :cond_1

    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "BLE is turned ON:isAdveretizing"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v1, "SemWifiApSmartMHS:\tBLE is turned ON:"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 102
    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 106
    .line 107
    if-eqz p0, :cond_1

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    .line 111
    .line 112
    :cond_1
    return-void
.end method

.method private synthetic lambda$registerCallbacks$4(Z)V
    .locals 2

    .line 1
    const-string p1, "SemWifiApSmartMHS"

    .line 2
    .line 3
    const-string v0, " restarting advertisement,because of SSID/devicename/DataSaver changed"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "wifi_ap_smart_tethering_settings"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 22
    .line 23
    const-string v1, "SemWifiApSmartMHS:\tSSID/Password/devicename is changed, so restarting adv"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const/16 v0, 0xb

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 45
    .line 46
    const/16 p1, 0xa

    .line 47
    .line 48
    const-wide/16 v0, 0x3e8

    .line 49
    .line 50
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerCallbacks$5(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "SemWifiApSmartMHS"

    .line 4
    .line 5
    const-string v0, " System time changed"

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 11
    .line 12
    const-string v0, "SemWifiApSmartMHS:\tSystem time changed"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/16 v0, 0xb

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 31
    .line 32
    const/16 p1, 0xa

    .line 33
    .line 34
    const-wide/16 v0, 0x1f4

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private registerCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 22
    .line 23
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 32
    .line 33
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda3;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 42
    .line 43
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda4;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 52
    .line 53
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda5;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private registerNetworkCallback()V
    .locals 2

    .line 1
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 29
    .line 30
    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "SemWifiApSmartMHS"

    .line 12
    .line 13
    const-string v1, "releaseWakeLock"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private simCheck()Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->DBG:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "vendor.wifiap.simcheck.disable"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "1"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v2, "phone"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-string v3, "SemWifiApSmartMHS"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/16 v5, 0xa

    .line 39
    .line 40
    const/4 v6, 0x5

    .line 41
    if-le v2, v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "simState1:"

    .line 52
    .line 53
    const-string v9, ",simState2:"

    .line 54
    .line 55
    const-string v10, ",telephonyManager.getPhoneCount():"

    .line 56
    .line 57
    invoke-static {v8, v9, v2, v7, v10}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 76
    .line 77
    const-string v3, "SemWifiApSmartMHS:\tsimState1:"

    .line 78
    .line 79
    const-string v8, ",telephonyManager.getPhoneCount()"

    .line 80
    .line 81
    invoke-static {v3, v9, v2, v7, v8}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    if-eq v2, v6, :cond_3

    .line 100
    .line 101
    if-eq v2, v5, :cond_3

    .line 102
    .line 103
    if-eq v7, v5, :cond_3

    .line 104
    .line 105
    if-ne v7, v6, :cond_2

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const-string v2, "simState:"

    .line 113
    .line 114
    invoke-static {v0, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v3, "SemWifiApSmartMHS:\tsimState:"

    .line 126
    .line 127
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {p0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    if-eq v0, v6, :cond_3

    .line 141
    .line 142
    if-ne v0, v5, :cond_2

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_2
    return v4

    .line 146
    :cond_3
    :goto_0
    return v1
.end method

.method private startAdvertising()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->checkPreConditions()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->CAN_USE_BLE:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "SemWifiApSmartMHS"

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "preconditions failed :"

    .line 20
    .line 21
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v3, "wifi_ap_smart_tethering_settings"

    .line 41
    .line 42
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "SemWifiApSmartMHS:\tSmartMHS startAdvertising failed checkPrecondition: "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isRegsteredAutoHotspotServer()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/4 v1, 0x1

    .line 95
    const-string v4, "autohotspot"

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setIsAutoHotspotBleSet()V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 121
    .line 122
    invoke-virtual {v0, v1, v4}, Landroid/bluetooth/BluetoothAdapter;->semSetSystemAppStandAloneBleMode(ZLjava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 126
    .line 127
    const/16 v5, 0x64

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_4

    .line 136
    .line 137
    const/16 v0, 0xa0

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    move v0, v5

    .line 141
    :goto_1
    new-instance v4, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 142
    .line 143
    invoke-direct {v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v4, v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->semSetCustomAdvertiseInterval(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const/4 v4, 0x3

    .line 163
    invoke-virtual {v0, v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    new-instance v4, Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 172
    .line 173
    invoke-direct {v4}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->getMHSAdvManufactureData()[B

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    const/16 v6, 0x75

    .line 181
    .line 182
    invoke-virtual {v4, v6, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    new-instance v5, Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 191
    .line 192
    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->getScanResponseData()[B

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-virtual {v5, v6, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v5, v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-virtual {v5, v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    const-string v5, "Starting MHS BLE advertising"

    .line 216
    .line 217
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 221
    .line 222
    const-string v6, "SemWifiApSmartMHS:\tStarting MHS BLE advertising "

    .line 223
    .line 224
    invoke-virtual {v5, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 228
    .line 229
    if-eqz v5, :cond_5

    .line 230
    .line 231
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 236
    .line 237
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 238
    .line 239
    if-nez v5, :cond_6

    .line 240
    .line 241
    const-string v0, "mBluetoothLeAdvertiser is null"

    .line 242
    .line 243
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 247
    .line 248
    const-string v0, "SemWifiApSmartMHS:\tmBluetoothLeAdvertiser is null "

    .line 249
    .line 250
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_6
    const-string v5, "MHS advertisement started"

    .line 255
    .line 256
    invoke-static {v3, v5, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemAutoHotspotDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 260
    .line 261
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 262
    .line 263
    invoke-virtual {v1, v0, v4, v2, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method private stopAdvertising()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 2
    .line 3
    const-string v1, "SemWifiApSmartMHS"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v0, "stopAdvertizing"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "stopped MHS advertizing"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemAutoHotspotDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v2, "Exception occurred"

    .line 30
    .line 31
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 41
    .line 42
    const-string v2, "SemWifiApSmartMHS:\tstopped advertizing"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const-string v0, "1"

    .line 48
    .line 49
    const-string v2, "vendor.wifiap.autohotspot.btadapterenable.smartmhs"

    .line 50
    .line 51
    const-string v3, "0"

    .line 52
    .line 53
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/16 v2, 0xc

    .line 75
    .line 76
    if-ne v0, v2, :cond_2

    .line 77
    .line 78
    const-string v0, "disabling BT which was enabled through autohotspot"

    .line 79
    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method


# virtual methods
.method public canAutoHotspotBeEnabled()Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isAutoHotspotSupported(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isTetheringRestricted(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSimEnabled(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    xor-int/lit8 v5, v4, 0x1

    .line 32
    .line 33
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    xor-int/lit8 v7, v6, 0x1

    .line 40
    .line 41
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isNearByDeviceScanningEnabled(Landroid/content/Context;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    xor-int/lit8 v10, v9, 0x1

    .line 54
    .line 55
    new-instance v11, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v12, "Can AutoHotspot switch be made Enabled - , isAutoHotspotSupported : "

    .line 58
    .line 59
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v12, ", isAutoHotspotEnabled : "

    .line 66
    .line 67
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v12, ", isTetheringRestricted : "

    .line 74
    .line 75
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v12, ", isAirplaneModeOn : "

    .line 82
    .line 83
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v12, ", isSimDisabled : "

    .line 90
    .line 91
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v5, ", isNetworkDisconnected : "

    .line 98
    .line 99
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v5, ", isSamsungAccountLoggedOut : "

    .line 106
    .line 107
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v5, ", isNearByDeviceScanningDisabled : "

    .line 114
    .line 115
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    const-string v7, "SemWifiApSmartMHS"

    .line 126
    .line 127
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    if-nez v0, :cond_0

    .line 132
    .line 133
    return v5

    .line 134
    :cond_0
    if-eqz v1, :cond_1

    .line 135
    .line 136
    return v5

    .line 137
    :cond_1
    if-eqz v2, :cond_2

    .line 138
    .line 139
    return v5

    .line 140
    :cond_2
    if-eqz v3, :cond_3

    .line 141
    .line 142
    return v5

    .line 143
    :cond_3
    if-nez v4, :cond_4

    .line 144
    .line 145
    return v5

    .line 146
    :cond_4
    if-nez v6, :cond_5

    .line 147
    .line 148
    return v5

    .line 149
    :cond_5
    if-eqz v8, :cond_6

    .line 150
    .line 151
    return v5

    .line 152
    :cond_6
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isCarrierTMO()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isCarrierNEWCO()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isDefaultPassphraseSet(Landroid/content/Context;)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    const-string v0, ", isDefaultPassphraseSet: "

    .line 171
    .line 172
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    if-eqz p0, :cond_8

    .line 180
    .line 181
    return v5

    .line 182
    :cond_8
    if-nez v9, :cond_9

    .line 183
    .line 184
    const-string p0, "Need to enable NearBy Device Scanning."

    .line 185
    .line 186
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :cond_9
    const-string p0, "AutoHotspot can be Enabled."

    .line 190
    .line 191
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    const/4 p0, 0x1

    .line 195
    return p0
.end method

.method public canFamilySharingBeEnabled()Z
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isTetheringRestricted(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSimEnabled(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    xor-int/2addr v2, v3

    .line 21
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    xor-int/2addr v4, v3

    .line 28
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isNearByDeviceScanningEnabled(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    xor-int/2addr v6, v3

    .line 41
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isGroupSharingAppDisabled(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isFamilySharingServiceRegisteredOn(Landroid/content/Context;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    xor-int/lit8 v9, v8, 0x1

    .line 54
    .line 55
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    iget-object v11, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    xor-int/lit8 v12, v11, 0x1

    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    new-instance v13, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v14, "Updating Family Sharing Switch state - isTetheringRestricted : "

    .line 82
    .line 83
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, ", isAirplaneModeOn : "

    .line 90
    .line 91
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, ", isSimDisabled : "

    .line 98
    .line 99
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v0, ", isNetworkDisconnected : "

    .line 106
    .line 107
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, ", isSamsungAccountLoggedOut : "

    .line 114
    .line 115
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, ", isNearByDeviceScanningDisabled : "

    .line 122
    .line 123
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v0, ", isGroupSharingAppDisabled : "

    .line 130
    .line 131
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, ", isFamilySharingServiceNotRegistered : "

    .line 138
    .line 139
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v0, ", isFamilyGroupIdEmpty : "

    .line 146
    .line 147
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, ", isAutoHotspotOff : "

    .line 154
    .line 155
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, ", isFamilySharingEnabled : "

    .line 162
    .line 163
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v1, "SemWifiApSmartMHS"

    .line 174
    .line 175
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    const/4 v0, 0x0

    .line 179
    if-nez v11, :cond_0

    .line 180
    .line 181
    return v0

    .line 182
    :cond_0
    if-eqz p0, :cond_1

    .line 183
    .line 184
    return v0

    .line 185
    :cond_1
    if-eqz v7, :cond_2

    .line 186
    .line 187
    return v0

    .line 188
    :cond_2
    if-nez v8, :cond_3

    .line 189
    .line 190
    return v0

    .line 191
    :cond_3
    if-eqz v10, :cond_4

    .line 192
    .line 193
    return v0

    .line 194
    :cond_4
    return v3
.end method

.method checkPreConditions()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;
    .locals 4

    .line 1
    const-string v0, "in checkPreConditions"

    .line 2
    .line 3
    const-string v1, "SemWifiApSmartMHS"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    const-string v0, "SatelliteModeOn "

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 32
    .line 33
    const-string v0, "SemWifiApSmartMHS:\t SatelliteModeOn"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->SATELLITE_MODE_ON_ERROR:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    if-nez v0, :cond_2

    .line 42
    .line 43
    const-string v0, "user is not OWNER "

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 49
    .line 50
    const-string v0, "SemWifiApSmartMHS:\t user is not OWNER"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->USER_NOT_OWNER:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->simCheck()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isOneUIVersion6_0_AtMost()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const-string v0, "Simcard not present"

    .line 71
    .line 72
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 76
    .line 77
    const-string v1, "SemWifiApSmartMHS:\tSimcard not present"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string v0, "wifi_ap_smart_tethering_settings"

    .line 89
    .line 90
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    .line 92
    .line 93
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->SIM_CARD_ERROR:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    const-string v2, "user"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/os/UserManager;

    .line 105
    .line 106
    const-string v2, "no_config_tethering"

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_9

    .line 113
    .line 114
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :cond_4
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDevicePolicyManager()Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isAllowToUseHotspot()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_5

    .line 135
    .line 136
    const-string v0, "Do not setWifiApSmartMHS in Hotspot not allowed mode"

    .line 137
    .line 138
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 142
    .line 143
    const-string v0, "SemWifiApSmartMHS:\tDo not setWifiApSmartMHS in Hotspot not allowed mode"

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->HOTSPOT_NOT_ALLOWED:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 149
    .line 150
    return-object p0

    .line 151
    :cond_5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_6

    .line 168
    .line 169
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDevicePolicyManager()Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isOpenWifiApAllowed(I)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_6

    .line 186
    .line 187
    const-string v0, "Do not setWifiApSmartMHS  in Open N/W"

    .line 188
    .line 189
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 193
    .line 194
    const-string v0, "SemWifiApSmartMHS:\tDo not setWifiApSmartMHS  in Open N/W"

    .line 195
    .line 196
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->OPEN_NETWORK_AUTOHOTSPOT:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 200
    .line 201
    return-object p0

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 205
    .line 206
    const-string v3, "isWifiTetheringEnabled"

    .line 207
    .line 208
    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-nez v0, :cond_7

    .line 213
    .line 214
    const-string v0, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_MDM not allowed"

    .line 215
    .line 216
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 220
    .line 221
    const-string v0, "SemWifiApSmartMHS:\t SEC_PRODUCT_FEATURE_KNOX_SUPPORT_MDM not allowed"

    .line 222
    .line 223
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->EDM_RESTRICT_HOTSPOT:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 227
    .line 228
    return-object p0

    .line 229
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isDataSaverModeEnabled()Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_8

    .line 234
    .line 235
    const-string v0, "DataSaverModeEnabled not allowed"

    .line 236
    .line 237
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 241
    .line 242
    const-string v0, "SemWifiApSmartMHS:\t DataSaverModeEnabled not allowed"

    .line 243
    .line 244
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->DATASAVER_ENABLED_NO_HOTSPOT:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 248
    .line 249
    return-object p0

    .line 250
    :cond_8
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->checkCommonConditionForAutoHotspot()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    return-object p0

    .line 265
    :cond_9
    :goto_1
    const-string v0, "Do not setWifiApSmartMHS in DISALLOW_CONFIG_TETHERING"

    .line 266
    .line 267
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 271
    .line 272
    const-string v0, "SemWifiApSmartMHS:\tDo not setWifiApSmartMHS in DISALLOW_CONFIG_TETHERING"

    .line 273
    .line 274
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->DISALLOW_CONFIG_TETHERING:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 278
    .line 279
    return-object p0
.end method

.method public handleBootCompleted()V
    .locals 5

    .line 1
    const-string v0, "SemWifiApSmartMHS"

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
    const-string v1, "SemWifiApSmartMHSBleHandler"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-string v1, "netpolicy"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/net/NetworkPolicyManager;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->registerNetworkCallback()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message_TAG:Ljava/lang/String;

    .line 64
    .line 65
    const/16 v4, 0xc

    .line 66
    .line 67
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->autohotspot_mhs_check_message:Lcom/android/internal/util/WakeupMessage;

    .line 71
    .line 72
    return-void
.end method

.method public handleUserSwitch(I)V
    .locals 3

    .line 1
    const-string v0, "handleUserSwitch: userId = "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiApSmartMHS"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->handleUserSwitch(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 18
    .line 19
    const-string v1, "SemWifiApSmartMHS:\thandleUserSwitch: userId = "

    .line 20
    .line 21
    const-string v2, ",isAdveretizing:"

    .line 22
    .line 23
    invoke-static {v1, p1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 44
    .line 45
    const/16 v0, 0xb

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 51
    .line 52
    const/16 p1, 0xa

    .line 53
    .line 54
    const-wide/16 v0, 0x3e8

    .line 55
    .line 56
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public isMHSAdvertizing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 2
    .line 3
    return p0
.end method

.method public restartAdvBecauseOfDataLimitChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "wifi_ap_smart_tethering_settings"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "SemWifiApSmartMHS"

    .line 22
    .line 23
    const-string v1, "restartAdvBecauseOfDataLimitChanged - DataUsage"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 29
    .line 30
    const-string v1, "SemWifiApSmartMHS:\t restartAdvBecauseOfDataLimitChanged - DataUsage"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/16 v1, 0xb

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 45
    .line 46
    const/16 v0, 0xa

    .line 47
    .line 48
    const-wide/16 v1, 0x3e8

    .line 49
    .line 50
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public restartAdvBecauseOfUpstreamChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "wifi_ap_smart_tethering_settings"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "SemWifiApSmartMHS"

    .line 22
    .line 23
    const-string v1, "restartAdvBecauseOfUpstreamChanged - DataUsage"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 29
    .line 30
    const-string v1, "SemWifiApSmartMHS:\t restartAdvBecauseOfUpstreamChanged - DataUsage"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/16 v1, 0xb

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 45
    .line 46
    const/16 v0, 0xa

    .line 47
    .line 48
    const-wide/16 v1, 0x3e8

    .line 49
    .line 50
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method sendEmptyMessage(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-ne p1, v1, :cond_1

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    const-wide/16 p0, 0xa

    .line 20
    .line 21
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public setWifiApSmartMHS(Z)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setWifiApSmartMHS is ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "]"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SemWifiApSmartMHS"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "wifi_ap_smart_tethering_settings"

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mLocalLog:Landroid/util/LocalLog;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "SemWifiApSmartMHS:\tSmartMHS WIFI_AP_SMART_TETHERING: "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "enable :"

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isAdveretising:Z

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    .line 72
    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    const/16 p1, 0xb

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    .line 82
    .line 83
    .line 84
    :cond_1
    const/4 p0, 0x1

    .line 85
    return p0
.end method
