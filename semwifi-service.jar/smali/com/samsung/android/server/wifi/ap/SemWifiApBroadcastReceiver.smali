.class public Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final ADVANCED_WIFI_SHARING_NOTI:Ljava/lang/String; = "com.samsung.intent.action.ADVANCED_WIFI_SHARING_NOTIFICATION"

.field public static final AP_STA_24GHZ_DISCONNECTED:Ljava/lang/String; = "com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

.field private static final CHECK_PROVISIONING_AFTER_SOFTAP_ENABLED:I = 0x3d

.field private static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DATA_REACH:I = 0x1041105

.field public static final DIALOG_HOTSPOT_24GHZ_AP_STA_DISCONNECT:I = 0x33

.field public static final DIALOG_HOTSPOT_PROVISIONING_REQUEST:I = 0x6

.field public static final DIALOG_WIFI_AP_ENABLE_WARNING:I = 0x5

.field private static final DIALOG_WIFI_DISCONNECTED_HOTSPOT_USAGE_WARNING:I = 0x7

.field private static final DIALOG_WIFI_DISCONNECTED_RESTART_PROVISIONING:I = 0x35

.field public static final DIALOG_WIFI_ENABLE_WARNING:I = 0x4

.field public static final DIALOG_WIFI_P2P_ENABLE_WARNING:I = 0x32

.field private static final PROVISION_HOTSPOT_ENABLE:Ljava/lang/String; = "provision_hotspot_enable"

.field private static final PROVISION_HOTSPOT_TRIGGER_ACTION:Ljava/lang/String; = "com.samsung.unifiedtp.PROVISION_HOTSPOT_TRIGGER_ACTION"

.field private static final SOFT_AP_POWER_SAVE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemWifiApBroadcastReceiver"

.field public static final WIFIAP_PLUG_STATE_CHANGED:Ljava/lang/String; = "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

.field public static final WIFIAP_PLUG_STATE_CHANGED_OPTION:Ljava/lang/String; = "wifiap_plug_state_changed_option"

.field public static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field public static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static isRegistered:Z = false

.field private static final lowBatteryThreshold:I = 0xf

.field private static mBaseTxBytes:J = 0x0L

.field private static mIsPlugged:Z = false

.field public static mWifiApStateWithLOHS:I


# instance fields
.field private DEFAULT_TIMEOUT_MOBILEAP:I

.field private bIsFirstCall:Z

.field private bUseMobileData:Z

.field private mAmountMobileRxBytes:J

.field private mAmountMobileTxBytes:J

.field private mAmountTimeOfMobileData:J

.field private mBaseRxBytes:J

.field private mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mMaxClientNum:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mProvisionAppReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSemSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private mStartTimeOfMobileData:J

.field private mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

.field private mTelephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTempMobileRxBytes:J

.field private mTempMobileTxBytes:J

.field private mTimeOfStartMobileAp:J

.field private final mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private mWifiApStaStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

.field private mWifiApStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private misTablet:Z

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$Ozj2e1s_J57JCjuam9kCKpleJA8(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->lambda$new$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ffFcrXABw3mmdKe3UlAihBqWD-8(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->lambda$new$2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$lC4r80gwN-K_FHMFgVA-X5CUqrc(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->lambda$new$1(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbIsFirstCall(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bIsFirstCall:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAmountMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileRxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmAmountMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileTxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmAmountTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountTimeOfMobileData:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mStartTimeOfMobileData:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTempMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileRxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTempMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileTxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbIsFirstCall(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bIsFirstCall:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputbUseMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bUseMobileData:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAmountMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileRxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAmountMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileTxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAmountTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountTimeOfMobileData:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mStartTimeOfMobileData:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileRxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileTxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mshowHotspotErrorDialog(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 v0, 0x33

    .line 2
    .line 3
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWifiApSettings(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    sput-wide v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseTxBytes:J

    .line 11
    .line 12
    const/16 v0, 0xb

    .line 13
    .line 14
    sput v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApStateWithLOHS:I

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxClientNum:I

    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bUseMobileData:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bIsFirstCall:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->misTablet:Z

    .line 21
    .line 22
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->DEFAULT_TIMEOUT_MOBILEAP:I

    .line 23
    .line 24
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mProvisionAppReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$2;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 41
    .line 42
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 51
    .line 52
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 61
    .line 62
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mSemSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 79
    .line 80
    new-instance p1, Landroid/content/IntentFilter;

    .line 81
    .line 82
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 86
    .line 87
    const-string p2, "com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string p2, "com.nttdocomo.intent.action.SHOW_WPSDIALOG"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string p2, "com.samsung.intent.action.ADVANCED_WIFI_SHARING_NOTIFICATION"

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string p2, "com.samsung.android.net.wifi.MAXAP_NOTI"

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string p1, "ro.build.characteristics"

    .line 108
    .line 109
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_0

    .line 114
    .line 115
    const-string p2, "tablet"

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_0

    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->misTablet:Z

    .line 125
    .line 126
    const-string p1, "SemWifiApBroadcastReceiver"

    .line 127
    .line 128
    const-string p2, " SemWifiApBroadcastReceiver intialized"

    .line 129
    .line 130
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$$ExternalSyntheticLambda1;

    .line 134
    .line 135
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    .line 136
    .line 137
    .line 138
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;

    .line 139
    .line 140
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$$ExternalSyntheticLambda2;

    .line 141
    .line 142
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApStaStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 146
    .line 147
    return-void
.end method

.method private callSecBigdataApi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "Bigdata logging "

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiApBroadcastReceiver"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v0, "sem_wifi"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private convertBytesToMegaByte(J)Ljava/lang/String;
    .locals 8

    .line 1
    const-wide/32 v0, 0x100000

    .line 2
    .line 3
    .line 4
    div-long/2addr p1, v0

    .line 5
    const/16 p0, 0x1f4

    .line 6
    .line 7
    int-to-long v0, p0

    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const-string p0, "over500MB"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    long-to-double p1, p1

    .line 16
    int-to-double v0, p0

    .line 17
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    mul-double/2addr v2, v0

    .line 23
    cmpl-double p0, p1, v2

    .line 24
    .line 25
    if-ltz p0, :cond_1

    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "~500MB"

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    mul-double/2addr v4, v0

    .line 51
    cmpl-double p0, p1, v4

    .line 52
    .line 53
    const-string v6, "~"

    .line 54
    .line 55
    const-string v7, "MB"

    .line 56
    .line 57
    if-ltz p0, :cond_2

    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_2
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    mul-double/2addr v2, v0

    .line 87
    cmpl-double p0, p1, v2

    .line 88
    .line 89
    if-ltz p0, :cond_3

    .line 90
    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_3
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    mul-double/2addr v4, v0

    .line 119
    cmpl-double p0, p1, v4

    .line 120
    .line 121
    if-ltz p0, :cond_4

    .line 122
    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :cond_4
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 146
    .line 147
    mul-double/2addr v2, v0

    .line 148
    cmpl-double p0, p1, v2

    .line 149
    .line 150
    if-ltz p0, :cond_5

    .line 151
    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0

    .line 174
    :cond_5
    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    mul-double/2addr v4, v0

    .line 180
    cmpl-double p0, p1, v4

    .line 181
    .line 182
    if-ltz p0, :cond_6

    .line 183
    .line 184
    new-instance p0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    return-object p0

    .line 206
    :cond_6
    const-wide v2, 0x3fd3333333333333L    # 0.3

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    mul-double/2addr v2, v0

    .line 212
    cmpl-double p0, p1, v2

    .line 213
    .line 214
    if-ltz p0, :cond_7

    .line 215
    .line 216
    new-instance p0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    return-object p0

    .line 238
    :cond_7
    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    mul-double/2addr v4, v0

    .line 244
    cmpl-double p0, p1, v4

    .line 245
    .line 246
    if-ltz p0, :cond_8

    .line 247
    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    return-object p0

    .line 270
    :cond_8
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    mul-double/2addr v0, v2

    .line 276
    cmpl-double p0, p1, v0

    .line 277
    .line 278
    if-ltz p0, :cond_9

    .line 279
    .line 280
    new-instance p0, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    return-object p0

    .line 302
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string p1, "0~"

    .line 305
    .line 306
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    return-object p0
.end method

.method private convertBytesToMegaByteForLogging(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/32 v0, 0x100000

    .line 2
    .line 3
    .line 4
    div-long/2addr p1, v0

    .line 5
    const-string p0, ""

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private convertMinute(J)Ljava/lang/String;
    .locals 4

    .line 1
    const-wide/16 v0, 0x78

    .line 2
    .line 3
    cmp-long p0, p1, v0

    .line 4
    .line 5
    const-wide/16 v0, 0x3c

    .line 6
    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    div-long/2addr p1, v0

    .line 15
    const-string v0, "hour"

    .line 16
    .line 17
    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-wide/16 v2, 0x64

    .line 23
    .line 24
    cmp-long p0, p1, v2

    .line 25
    .line 26
    if-ltz p0, :cond_1

    .line 27
    .line 28
    const-string p0, "100~120"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    const-wide/16 v2, 0x50

    .line 32
    .line 33
    cmp-long p0, p1, v2

    .line 34
    .line 35
    if-ltz p0, :cond_2

    .line 36
    .line 37
    const-string p0, "80~100"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_2
    cmp-long p0, p1, v0

    .line 41
    .line 42
    if-ltz p0, :cond_3

    .line 43
    .line 44
    const-string p0, "60~80"

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_3
    const-wide/16 v0, 0x28

    .line 48
    .line 49
    cmp-long p0, p1, v0

    .line 50
    .line 51
    if-ltz p0, :cond_4

    .line 52
    .line 53
    const-string p0, "40~60"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_4
    const-wide/16 v0, 0x14

    .line 57
    .line 58
    cmp-long p0, p1, v0

    .line 59
    .line 60
    if-ltz p0, :cond_5

    .line 61
    .line 62
    const-string p0, "20~40"

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_5
    const-string p0, "0~20"

    .line 66
    .line 67
    return-object p0
.end method

.method private handleWifiApState(IIILjava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sput v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApStateWithLOHS:I

    .line 6
    .line 7
    const-string v2, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "SemWifiApBroadcastReceiver"

    .line 14
    .line 15
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const-string v4, "wlan0"

    .line 31
    .line 32
    const-string v5, "swlan0"

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    move-object v2, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v2, v4

    .line 39
    :goto_0
    const-string v6, "Error in getting wlan0 interface config:"

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    const-string v8, ""

    .line 43
    .line 44
    const-string v9, "resetSoftap provisioning restorting:"

    .line 45
    .line 46
    const-wide/16 v10, 0x0

    .line 47
    .line 48
    const-string v12, "vendor.wifiap.provisioning.backup"

    .line 49
    .line 50
    const/4 v13, 0x0

    .line 51
    const/4 v14, 0x1

    .line 52
    const-string v15, " "

    .line 53
    .line 54
    packed-switch v1, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    const-string v0, "unhandled apState : "

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2b

    .line 74
    .line 75
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 76
    .line 77
    invoke-virtual {v1, v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setProvisionSuccess(Z)Z

    .line 78
    .line 79
    .line 80
    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2b

    .line 89
    .line 90
    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {v9, v1, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v12, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 105
    .line 106
    if-ne v1, v14, :cond_1

    .line 107
    .line 108
    move v13, v14

    .line 109
    :cond_1
    invoke-virtual {v0, v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setProvisionSuccess(Z)Z

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 122
    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    const-string v1, "disabling MHS due to satelite mode is ON"

    .line 126
    .line 127
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 131
    .line 132
    invoke-virtual {v1, v7, v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->checkProvisioningAfterSoftApEnabled()V

    .line 137
    .line 138
    .line 139
    :goto_1
    const-string v1, "VZW"

    .line 140
    .line 141
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v4, "wifi_ap_saved_state"

    .line 156
    .line 157
    invoke-static {v1, v4, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    .line 159
    .line 160
    :cond_3
    :try_start_0
    sget-wide v4, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseTxBytes:J

    .line 161
    .line 162
    cmp-long v1, v4, v10

    .line 163
    .line 164
    if-nez v1, :cond_2b

    .line 165
    .line 166
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->resetParameterForHotspotLogging()V

    .line 167
    .line 168
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 170
    .line 171
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 173
    .line 174
    .line 175
    move-result-wide v4

    .line 176
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTimeOfStartMobileAp:J

    .line 177
    .line 178
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v4

    .line 182
    sput-wide v4, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseTxBytes:J

    .line 183
    .line 184
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 185
    .line 186
    .line 187
    move-result-wide v1

    .line 188
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseRxBytes:J

    .line 189
    .line 190
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 191
    .line 192
    if-nez v1, :cond_4

    .line 193
    .line 194
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    const-string v2, "phone"

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 203
    .line 204
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :catch_0
    move-exception v0

    .line 208
    goto :goto_3

    .line 209
    :cond_4
    :goto_2
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;

    .line 210
    .line 211
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    .line 212
    .line 213
    .line 214
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 215
    .line 216
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 217
    .line 218
    const/16 v2, 0x40

    .line 219
    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :goto_3
    invoke-static {v6, v0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_1b

    .line 228
    .line 229
    :pswitch_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 230
    .line 231
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_2b

    .line 236
    .line 237
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isCtsConnectivityRunning()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_2b

    .line 242
    .line 243
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 244
    .line 245
    if-eqz v1, :cond_2b

    .line 246
    .line 247
    const-string v1, "Force set provision true for cts when com.google.snippet.connectivity - ConnectivityMultiDevicesSnippet"

    .line 248
    .line 249
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 253
    .line 254
    invoke-virtual {v0, v14}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setProvisionSuccess(Z)Z

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :pswitch_3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 259
    .line 260
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-eqz v1, :cond_6

    .line 265
    .line 266
    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-nez v1, :cond_6

    .line 275
    .line 276
    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    invoke-static {v12, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-static {v9, v1, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 291
    .line 292
    if-ne v1, v14, :cond_5

    .line 293
    .line 294
    move v1, v14

    .line 295
    goto :goto_4

    .line 296
    :cond_5
    move v1, v13

    .line 297
    :goto_4
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setProvisionSuccess(Z)Z

    .line 298
    .line 299
    .line 300
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 301
    .line 302
    const-string v2, "wifi"

    .line 303
    .line 304
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 309
    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v6, "MaxClientNum = "

    .line 313
    .line 314
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxClientNum:I

    .line 318
    .line 319
    invoke-static {v3, v6, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 320
    .line 321
    .line 322
    if-eqz v1, :cond_2b

    .line 323
    .line 324
    iget v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxClientNum:I

    .line 325
    .line 326
    if-ltz v1, :cond_2b

    .line 327
    .line 328
    const/16 v2, 0xa

    .line 329
    .line 330
    if-gt v1, v2, :cond_2b

    .line 331
    .line 332
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eqz v1, :cond_7

    .line 345
    .line 346
    move-object v4, v5

    .line 347
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 348
    .line 349
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    iget v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->DEFAULT_TIMEOUT_MOBILEAP:I

    .line 354
    .line 355
    div-int/lit8 v2, v2, 0x3c

    .line 356
    .line 357
    const-string v5, "wifi_ap_timeout_setting"

    .line 358
    .line 359
    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    const/4 v5, 0x3

    .line 376
    const/4 v6, 0x2

    .line 377
    const-string v7, "not_support"

    .line 378
    .line 379
    if-eqz v2, :cond_c

    .line 380
    .line 381
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mSemSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 382
    .line 383
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getmUpStreamForBigData()I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mSemSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 388
    .line 389
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setmUpStreamForBigData()V

    .line 390
    .line 391
    .line 392
    if-eqz v2, :cond_b

    .line 393
    .line 394
    if-eq v2, v14, :cond_a

    .line 395
    .line 396
    if-eq v2, v6, :cond_9

    .line 397
    .line 398
    if-eq v2, v5, :cond_8

    .line 399
    .line 400
    const-string v2, "Unknown"

    .line 401
    .line 402
    goto :goto_5

    .line 403
    :cond_8
    const-string v2, "Wifi_And_Mobile_Data_Both"

    .line 404
    .line 405
    goto :goto_5

    .line 406
    :cond_9
    const-string v2, "Wifi_Data_Only"

    .line 407
    .line 408
    goto :goto_5

    .line 409
    :cond_a
    const-string v2, "Mobile_Data_Only"

    .line 410
    .line 411
    goto :goto_5

    .line 412
    :cond_b
    const-string v2, "No_Internet"

    .line 413
    .line 414
    :goto_5
    const-string v8, "handleWifiApState: Upstream "

    .line 415
    .line 416
    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_c
    move-object v2, v7

    .line 425
    :goto_6
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 426
    .line 427
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 428
    .line 429
    .line 430
    move-result-object v8

    .line 431
    const-string v9, "wifi_ap_pmf_checked"

    .line 432
    .line 433
    invoke-static {v8, v9, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 434
    .line 435
    .line 436
    move-result v8

    .line 437
    if-ne v8, v14, :cond_d

    .line 438
    .line 439
    const-string v8, "pmf_on"

    .line 440
    .line 441
    goto :goto_7

    .line 442
    :cond_d
    const-string v8, "pmf_off"

    .line 443
    .line 444
    :goto_7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 445
    .line 446
    .line 447
    move-result-object v9

    .line 448
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 449
    .line 450
    .line 451
    move-result-object v9

    .line 452
    invoke-virtual {v9, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    if-eqz v5, :cond_f

    .line 457
    .line 458
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 459
    .line 460
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    const-string v9, "wifi_ap_powersave_mode_checked"

    .line 465
    .line 466
    invoke-static {v5, v9, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    if-ne v5, v14, :cond_e

    .line 471
    .line 472
    const-string v5, "power_save_mode_on"

    .line 473
    .line 474
    goto :goto_8

    .line 475
    :cond_e
    const-string v5, "power_save_mode_off"

    .line 476
    .line 477
    goto :goto_8

    .line 478
    :cond_f
    move-object v5, v7

    .line 479
    :goto_8
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 484
    .line 485
    .line 486
    move-result-object v9

    .line 487
    invoke-virtual {v9, v14}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 488
    .line 489
    .line 490
    move-result v9

    .line 491
    if-eqz v9, :cond_11

    .line 492
    .line 493
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 494
    .line 495
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    const-string v10, "wifi_ap_11ax_mode_checked"

    .line 500
    .line 501
    invoke-static {v9, v10, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 502
    .line 503
    .line 504
    move-result v9

    .line 505
    if-ne v9, v14, :cond_10

    .line 506
    .line 507
    const-string v9, "11ax_on"

    .line 508
    .line 509
    goto :goto_9

    .line 510
    :cond_10
    const-string v9, "11ax_off"

    .line 511
    .line 512
    goto :goto_9

    .line 513
    :cond_11
    move-object v9, v7

    .line 514
    :goto_9
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 515
    .line 516
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 517
    .line 518
    .line 519
    move-result-object v10

    .line 520
    if-eqz v10, :cond_2b

    .line 521
    .line 522
    invoke-virtual {v10}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v11

    .line 526
    if-eqz v11, :cond_2b

    .line 527
    .line 528
    invoke-virtual {v10}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    .line 529
    .line 530
    .line 531
    move-result-object v11

    .line 532
    invoke-virtual {v10}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    .line 533
    .line 534
    .line 535
    move-result-object v12

    .line 536
    new-instance v13, Ljava/lang/StringBuffer;

    .line 537
    .line 538
    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 539
    .line 540
    .line 541
    move-object/from16 p3, v7

    .line 542
    .line 543
    const/4 v6, 0x0

    .line 544
    :goto_a
    array-length v7, v12

    .line 545
    if-ge v6, v7, :cond_16

    .line 546
    .line 547
    if-ne v6, v14, :cond_12

    .line 548
    .line 549
    const-string v7, "-Dual-"

    .line 550
    .line 551
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    .line 553
    .line 554
    :cond_12
    aget v7, v12, v6

    .line 555
    .line 556
    and-int/lit8 v16, v7, 0x4

    .line 557
    .line 558
    if-eqz v16, :cond_13

    .line 559
    .line 560
    const-string v7, "6G"

    .line 561
    .line 562
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 566
    .line 567
    .line 568
    move-result v7

    .line 569
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 570
    .line 571
    .line 572
    goto :goto_b

    .line 573
    :cond_13
    and-int/lit8 v16, v7, 0x2

    .line 574
    .line 575
    if-eqz v16, :cond_14

    .line 576
    .line 577
    const-string v7, "5G"

    .line 578
    .line 579
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 583
    .line 584
    .line 585
    move-result v7

    .line 586
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 587
    .line 588
    .line 589
    goto :goto_b

    .line 590
    :cond_14
    and-int/lit8 v7, v7, 0x1

    .line 591
    .line 592
    if-eqz v7, :cond_15

    .line 593
    .line 594
    const-string v7, "2G"

    .line 595
    .line 596
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 600
    .line 601
    .line 602
    move-result v7

    .line 603
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 604
    .line 605
    .line 606
    :cond_15
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 607
    .line 608
    goto :goto_a

    .line 609
    :cond_16
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v6

    .line 613
    new-instance v7, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    const-string v11, "bandChannels = "

    .line 616
    .line 617
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v7

    .line 627
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .line 629
    .line 630
    invoke-virtual {v10}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v7

    .line 634
    const-string v11, "Android"

    .line 635
    .line 636
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 637
    .line 638
    .line 639
    move-result v7

    .line 640
    if-nez v7, :cond_18

    .line 641
    .line 642
    invoke-virtual {v10}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v7

    .line 646
    const-string v11, "Verizon"

    .line 647
    .line 648
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 649
    .line 650
    .line 651
    move-result v7

    .line 652
    if-nez v7, :cond_18

    .line 653
    .line 654
    invoke-virtual {v10}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v7

    .line 658
    const-string v11, "Samsung"

    .line 659
    .line 660
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 661
    .line 662
    .line 663
    move-result v7

    .line 664
    if-nez v7, :cond_18

    .line 665
    .line 666
    invoke-virtual {v10}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v7

    .line 670
    const-string v11, "Galaxy"

    .line 671
    .line 672
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 673
    .line 674
    .line 675
    move-result v7

    .line 676
    if-nez v7, :cond_18

    .line 677
    .line 678
    invoke-virtual {v10}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v7

    .line 682
    const-string v11, "SM-"

    .line 683
    .line 684
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 685
    .line 686
    .line 687
    move-result v7

    .line 688
    if-eqz v7, :cond_17

    .line 689
    .line 690
    goto :goto_c

    .line 691
    :cond_17
    const-string v7, "CustomSSID"

    .line 692
    .line 693
    goto :goto_d

    .line 694
    :cond_18
    :goto_c
    const-string v7, "DefaultSSID"

    .line 695
    .line 696
    :goto_d
    iget v11, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxClientNum:I

    .line 697
    .line 698
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v11

    .line 702
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 703
    .line 704
    .line 705
    move-result-object v12

    .line 706
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 707
    .line 708
    .line 709
    move-result-object v12

    .line 710
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 711
    .line 712
    .line 713
    move-result v12

    .line 714
    if-eqz v12, :cond_1c

    .line 715
    .line 716
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 717
    .line 718
    .line 719
    move-result-object v12

    .line 720
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 721
    .line 722
    .line 723
    move-result-object v12

    .line 724
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayMhsClientCountInDB()I

    .line 725
    .line 726
    .line 727
    move-result v12

    .line 728
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v12

    .line 732
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 733
    .line 734
    .line 735
    move-result-object v13

    .line 736
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 737
    .line 738
    .line 739
    move-result-object v13

    .line 740
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isOverAllMhsDataLimitSet()Z

    .line 741
    .line 742
    .line 743
    move-result v13

    .line 744
    if-eqz v13, :cond_19

    .line 745
    .line 746
    const-string v13, "tdl_on"

    .line 747
    .line 748
    goto :goto_e

    .line 749
    :cond_19
    const-string v13, "tdl_off"

    .line 750
    .line 751
    :goto_e
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 752
    .line 753
    .line 754
    move-result-object v16

    .line 755
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 756
    .line 757
    .line 758
    move-result-object v16

    .line 759
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isClientDataLimitWasSetInLastSession()Z

    .line 760
    .line 761
    .line 762
    move-result v16

    .line 763
    if-eqz v16, :cond_1a

    .line 764
    .line 765
    const-string v16, "cdl_on"

    .line 766
    .line 767
    goto :goto_f

    .line 768
    :cond_1a
    const-string v16, "cdl_off"

    .line 769
    .line 770
    :goto_f
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 771
    .line 772
    .line 773
    move-result-object v17

    .line 774
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 775
    .line 776
    .line 777
    move-result-object v17

    .line 778
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isClientTImeLimitWasSetInLastSession()Z

    .line 779
    .line 780
    .line 781
    move-result v17

    .line 782
    if-eqz v17, :cond_1b

    .line 783
    .line 784
    const-string v17, "tl_on"

    .line 785
    .line 786
    goto :goto_10

    .line 787
    :cond_1b
    const-string v17, "tl_off"

    .line 788
    .line 789
    :goto_10
    move-object/from16 v14, v16

    .line 790
    .line 791
    move-object/from16 v16, v10

    .line 792
    .line 793
    move-object/from16 v10, v17

    .line 794
    .line 795
    move-object/from16 v17, v12

    .line 796
    .line 797
    goto :goto_11

    .line 798
    :cond_1c
    move-object/from16 v13, p3

    .line 799
    .line 800
    move-object v14, v13

    .line 801
    move-object/from16 v17, v14

    .line 802
    .line 803
    move-object/from16 v16, v10

    .line 804
    .line 805
    move-object/from16 v10, v17

    .line 806
    .line 807
    :goto_11
    const-string v12, "-"

    .line 808
    .line 809
    invoke-static {v12, v13, v12, v14, v12}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    move-result-object v13

    .line 813
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v10

    .line 820
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isOneTimePasswordSupported()Z

    .line 821
    .line 822
    .line 823
    move-result v13

    .line 824
    if-eqz v13, :cond_1f

    .line 825
    .line 826
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 827
    .line 828
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApGuestModeEnabled()Z

    .line 829
    .line 830
    .line 831
    move-result v13

    .line 832
    if-eqz v13, :cond_1e

    .line 833
    .line 834
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mSemSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 835
    .line 836
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getIsGuestClientConnected()Z

    .line 837
    .line 838
    .line 839
    move-result v13

    .line 840
    if-eqz v13, :cond_1d

    .line 841
    .line 842
    const-string v13, "otp_on_with_client"

    .line 843
    .line 844
    goto :goto_12

    .line 845
    :cond_1d
    const-string v13, "otp_on_no_client"

    .line 846
    .line 847
    goto :goto_12

    .line 848
    :cond_1e
    const-string v13, "otp_off"

    .line 849
    .line 850
    :goto_12
    const-string v14, "handleWifiApState:OTP state "

    .line 851
    .line 852
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v14

    .line 856
    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .line 858
    .line 859
    iget-object v14, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mSemSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 860
    .line 861
    invoke-virtual {v14}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setIsGuestClientConnectedFalse()V

    .line 862
    .line 863
    .line 864
    goto :goto_13

    .line 865
    :cond_1f
    move-object/from16 v13, p3

    .line 866
    .line 867
    :goto_13
    new-instance v14, Ljava/lang/StringBuilder;

    .line 868
    .line 869
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v10

    .line 885
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 886
    .line 887
    .line 888
    move-result-object v13

    .line 889
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 890
    .line 891
    .line 892
    move-result-object v13

    .line 893
    if-eqz v13, :cond_22

    .line 894
    .line 895
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getmIsPriorityFeatureEnableDuringSession()Z

    .line 896
    .line 897
    .line 898
    move-result v14

    .line 899
    if-eqz v14, :cond_22

    .line 900
    .line 901
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getNRTTrafficEnable()Z

    .line 902
    .line 903
    .line 904
    move-result v14

    .line 905
    if-eqz v14, :cond_21

    .line 906
    .line 907
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getRTTrafficEnable()Z

    .line 908
    .line 909
    .line 910
    move-result v13

    .line 911
    if-eqz v13, :cond_20

    .line 912
    .line 913
    const-string v13, "tp_rt"

    .line 914
    .line 915
    goto :goto_14

    .line 916
    :cond_20
    const-string v13, "tp_nrt"

    .line 917
    .line 918
    goto :goto_14

    .line 919
    :cond_21
    const-string v13, "tp_on_below_cutoff"

    .line 920
    .line 921
    goto :goto_14

    .line 922
    :cond_22
    const-string v13, "tp_off"

    .line 923
    .line 924
    :goto_14
    const-string v14, "handleWifiApState: "

    .line 925
    .line 926
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v14

    .line 930
    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .line 932
    .line 933
    new-instance v3, Ljava/lang/StringBuilder;

    .line 934
    .line 935
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getOneUiVersion()I

    .line 952
    .line 953
    .line 954
    move-result v10

    .line 955
    const v13, 0xea60

    .line 956
    .line 957
    .line 958
    if-lt v10, v13, :cond_25

    .line 959
    .line 960
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 961
    .line 962
    .line 963
    move-result-object v10

    .line 964
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 965
    .line 966
    .line 967
    move-result-object v10

    .line 968
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->getmSessionLockState()I

    .line 969
    .line 970
    .line 971
    move-result v13

    .line 972
    const/4 v14, 0x1

    .line 973
    if-eq v13, v14, :cond_24

    .line 974
    .line 975
    const/4 v14, 0x2

    .line 976
    if-eq v13, v14, :cond_23

    .line 977
    .line 978
    const-string v13, "unknown"

    .line 979
    .line 980
    goto :goto_15

    .line 981
    :cond_23
    const-string v13, "lock_off"

    .line 982
    .line 983
    goto :goto_15

    .line 984
    :cond_24
    const-string v13, "lock_on"

    .line 985
    .line 986
    :goto_15
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->setmSessionLockState()V

    .line 987
    .line 988
    .line 989
    goto :goto_16

    .line 990
    :cond_25
    const-string v13, "Not_supported"

    .line 991
    .line 992
    :goto_16
    new-instance v10, Ljava/lang/StringBuilder;

    .line 993
    .line 994
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v3

    .line 1010
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    .line 1028
    .line 1029
    .line 1030
    move-result v12

    .line 1031
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    .line 1043
    invoke-static {v10, v9, v15, v11, v15}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    .line 1045
    .line 1046
    invoke-static {v10, v2, v15, v1, v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v10

    .line 1062
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v4

    .line 1083
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    move-object/from16 v4, v17

    .line 1096
    .line 1097
    invoke-static {v12, v9, v15, v4, v15}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    invoke-static {v12, v2, v15, v1, v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1101
    .line 1102
    .line 1103
    invoke-static {v12, v8, v15, v11, v15}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    invoke-static {v12, v5, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 1111
    .line 1112
    if-eqz v0, :cond_2b

    .line 1113
    .line 1114
    const-string v2, "MHSI"

    .line 1115
    .line 1116
    invoke-virtual {v0, v2, v10, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportBigData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    return-void

    .line 1120
    :pswitch_4
    :try_start_1
    sget-wide v4, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseTxBytes:J

    .line 1121
    .line 1122
    cmp-long v1, v4, v10

    .line 1123
    .line 1124
    if-eqz v1, :cond_2a

    .line 1125
    .line 1126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1127
    .line 1128
    .line 1129
    move-result-wide v4

    .line 1130
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTimeOfStartMobileAp:J

    .line 1131
    .line 1132
    sub-long v8, v4, v8

    .line 1133
    .line 1134
    const-wide/32 v12, 0xea60

    .line 1135
    .line 1136
    .line 1137
    div-long/2addr v8, v12

    .line 1138
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bUseMobileData:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1139
    .line 1140
    if-eqz v1, :cond_26

    .line 1141
    .line 1142
    move-wide/from16 p3, v10

    .line 1143
    .line 1144
    :try_start_2
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mStartTimeOfMobileData:J

    .line 1145
    .line 1146
    sub-long/2addr v4, v10

    .line 1147
    div-long/2addr v4, v12

    .line 1148
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountTimeOfMobileData:J

    .line 1149
    .line 1150
    add-long/2addr v10, v4

    .line 1151
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 1152
    .line 1153
    .line 1154
    move-result-wide v4

    .line 1155
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 1156
    .line 1157
    .line 1158
    move-result-wide v12

    .line 1159
    move-wide/from16 v16, v8

    .line 1160
    .line 1161
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileTxBytes:J

    .line 1162
    .line 1163
    move-object v9, v2

    .line 1164
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileRxBytes:J

    .line 1165
    .line 1166
    move-wide/from16 v18, v1

    .line 1167
    .line 1168
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileTxBytes:J

    .line 1169
    .line 1170
    sub-long/2addr v4, v1

    .line 1171
    add-long/2addr v4, v7

    .line 1172
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileTxBytes:J

    .line 1173
    .line 1174
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileRxBytes:J

    .line 1175
    .line 1176
    sub-long/2addr v12, v1

    .line 1177
    add-long v12, v12, v18

    .line 1178
    .line 1179
    iput-wide v12, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileRxBytes:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1180
    .line 1181
    goto :goto_17

    .line 1182
    :catch_1
    move-exception v0

    .line 1183
    move-object v1, v6

    .line 1184
    goto/16 :goto_1a

    .line 1185
    .line 1186
    :cond_26
    move-wide/from16 v16, v8

    .line 1187
    .line 1188
    move-wide/from16 p3, v10

    .line 1189
    .line 1190
    move-object v9, v2

    .line 1191
    :try_start_3
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountTimeOfMobileData:J

    .line 1192
    .line 1193
    :goto_17
    invoke-static {v9}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 1194
    .line 1195
    .line 1196
    move-result-wide v1

    .line 1197
    invoke-static {v9}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 1198
    .line 1199
    .line 1200
    move-result-wide v4

    .line 1201
    sget-wide v7, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseTxBytes:J

    .line 1202
    .line 1203
    sub-long/2addr v1, v7

    .line 1204
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseRxBytes:J

    .line 1205
    .line 1206
    sub-long/2addr v4, v7

    .line 1207
    add-long/2addr v4, v1

    .line 1208
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileTxBytes:J

    .line 1209
    .line 1210
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileRxBytes:J

    .line 1211
    .line 1212
    add-long/2addr v1, v7

    .line 1213
    sub-long v1, v4, v1

    .line 1214
    .line 1215
    invoke-direct {v0, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertBytesToMegaByte(J)Ljava/lang/String;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v7

    .line 1219
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertBytesToMegaByte(J)Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v8

    .line 1223
    move-wide/from16 v12, v16

    .line 1224
    .line 1225
    invoke-direct {v0, v12, v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertMinute(J)Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v9

    .line 1229
    invoke-direct {v0, v10, v11}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertMinute(J)Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1233
    move-wide/from16 v16, v1

    .line 1234
    .line 1235
    sub-long v1, v12, v10

    .line 1236
    .line 1237
    cmp-long v18, v1, p3

    .line 1238
    .line 1239
    if-ltz v18, :cond_27

    .line 1240
    .line 1241
    move-object/from16 p3, v6

    .line 1242
    .line 1243
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    .line 1259
    .line 1260
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertMinute(J)Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v9

    .line 1264
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    .line 1300
    sub-long v1, v4, v16

    .line 1301
    .line 1302
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertBytesToMegaByte(J)Ljava/lang/String;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v7

    .line 1306
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    .line 1311
    .line 1312
    invoke-direct {v0, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertBytesToMegaByteForLogging(J)Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v4

    .line 1316
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    .line 1321
    .line 1322
    move-wide/from16 v4, v16

    .line 1323
    .line 1324
    invoke-direct {v0, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertBytesToMegaByteForLogging(J)Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v4

    .line 1328
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    .line 1333
    .line 1334
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertBytesToMegaByteForLogging(J)Ljava/lang/String;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v1

    .line 1338
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v7

    .line 1345
    goto :goto_19

    .line 1346
    :catch_2
    move-exception v0

    .line 1347
    :goto_18
    move-object/from16 v1, p3

    .line 1348
    .line 1349
    goto :goto_1a

    .line 1350
    :cond_27
    move-object/from16 p3, v6

    .line 1351
    .line 1352
    const/4 v7, 0x0

    .line 1353
    :goto_19
    if-eqz v7, :cond_28

    .line 1354
    .line 1355
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 1356
    .line 1357
    if-eqz v1, :cond_28

    .line 1358
    .line 1359
    const-string v2, "MHSS"

    .line 1360
    .line 1361
    invoke-virtual {v1, v2, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    .line 1363
    .line 1364
    :cond_28
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1365
    .line 1366
    if-eqz v1, :cond_29

    .line 1367
    .line 1368
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 1369
    .line 1370
    const/4 v4, 0x0

    .line 1371
    invoke-virtual {v2, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1372
    .line 1373
    .line 1374
    :cond_29
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->resetParameterForHotspotLogging()V

    .line 1375
    .line 1376
    .line 1377
    return-void

    .line 1378
    :catch_3
    move-exception v0

    .line 1379
    move-object/from16 p3, v6

    .line 1380
    .line 1381
    goto :goto_18

    .line 1382
    :cond_2a
    move-object/from16 p3, v6

    .line 1383
    .line 1384
    const-string v0, "unnormal status of interface"

    .line 1385
    .line 1386
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1387
    .line 1388
    .line 1389
    return-void

    .line 1390
    :goto_1a
    invoke-static {v1, v0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1391
    .line 1392
    .line 1393
    :cond_2b
    :goto_1b
    return-void

    .line 1394
    nop

    .line 1395
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleWifiStaApState(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "ClientNum from ACTION_WIFI_AP_STA_STATE_CHANGED = "

    .line 2
    .line 3
    const-string p2, "SemWifiApBroadcastReceiver"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-gez p3, :cond_0

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxClientNum:I

    .line 12
    .line 13
    if-le p3, p1, :cond_1

    .line 14
    .line 15
    iput p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxClientNum:I

    .line 16
    .line 17
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p3, "MaxClientNum = "

    .line 20
    .line 21
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxClientNum:I

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private isCtsConnectivityRunning()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "com.google.snippet.connectivity"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string p0, "SemWifiApBroadcastReceiver"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    :try_start_0
    const-string v1, "activity"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/app/ActivityManager;

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "isPackageRunning - top:"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    const/4 p0, 0x1

    .line 76
    return p0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    const-string p2, "isPackageRunning failed "

    .line 79
    .line 80
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_2
    return v0
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    .line 2
    .line 3
    const-string v1, "SemWifiApBroadcastReceiver"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "vendor.wifiap.provisioning.disable"

    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v3, "1"

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string p0, "Skip isProvisioningCheck"

    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v3, 0x107012b

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    array-length v3, v0

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->isProvisioningNeeded()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p1, " provisioning is not required for this operator, operator:"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isWifiConnected(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    const-string p0, "Wifi is connected so skip provisioning for Wifi Sharing"

    .line 71
    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :cond_3
    const-string p0, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    .line 77
    .line 78
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    array-length p0, v0

    .line 82
    const/4 p1, 0x2

    .line 83
    if-ne p0, p1, :cond_4

    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    return p0

    .line 87
    :cond_4
    :goto_0
    return v2
.end method

.method private isProvisioningRequiredAfterWifiDisconnect()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x107012b

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, "SemWifiApBroadcastReceiver"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->isProvisioningNeeded()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, " provisioning is not required for this operator, operator:"

    .line 32
    .line 33
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v3

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    array-length p0, p0

    .line 53
    const/4 v0, 0x2

    .line 54
    if-ne p0, v0, :cond_2

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_2
    return v3

    .line 59
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v0, " provisioning app is not set in CSCfeature, operator:"

    .line 62
    .line 63
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v3
.end method

.method private isWifiConnected(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string p0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const-string p0, "wifi_ap_wifi_sharing"

    .line 2
    .line 3
    const-string v0, "SemWifiApBroadcastReceiver"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v2, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    const-string p0, "wifi sharing Returning true"

    .line 18
    .line 19
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v3

    .line 23
    :catch_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    const-string p0, "wifi sharing Returning false"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "Error in getting provider value"

    .line 44
    .line 45
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    return v1
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p3, "wifi"

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const-string p1, "ro.csc.sales_code"

    .line 14
    .line 15
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p3, "ro.boot.activatedid"

    .line 20
    .line 21
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, " INTENT_KEY_ICC_STATE state : "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "SemWifiApBroadcastReceiver"

    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const-string v1, "ABSENT"

    .line 51
    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    const-string v1, "LOADED"

    .line 59
    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    :cond_0
    const-string p2, "XEC"

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    const-string v1, "O2U"

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_1

    .line 87
    .line 88
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    :cond_1
    const/16 p1, 0xb

    .line 95
    .line 96
    if-eq v0, p1, :cond_2

    .line 97
    .line 98
    const-string p1, "INTENT_VALUE_ICC_ABSENT or INTENT_VALUE_ICC_LOADED received, disable wifi hotspot"

    .line 99
    .line 100
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    const/4 p2, 0x0

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->handleWifiApState(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "onreceive WIFI_AP_STA_STATE_CHANGED_ACTION:count: "

    .line 2
    .line 3
    const-string v1, "SemWifiApBroadcastReceiver"

    .line 4
    .line 5
    invoke-static {v0, p3, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->handleWifiStaApState(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "ril.sales_code"

    .line 16
    .line 17
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    :cond_0
    return-object v0
.end method

.method private resetParameterForHotspotLogging()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileTxBytes:J

    .line 7
    .line 8
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileRxBytes:J

    .line 9
    .line 10
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountTimeOfMobileData:J

    .line 11
    .line 12
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileTxBytes:J

    .line 13
    .line 14
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileRxBytes:J

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bIsFirstCall:Z

    .line 18
    .line 19
    sput-wide v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseTxBytes:J

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseRxBytes:J

    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 24
    .line 25
    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 8

    .line 1
    const-string v0, "[showHotspotErrorDialog] DialogType : "

    .line 2
    .line 3
    const-string v1, "SemWifiApBroadcastReceiver"

    .line 4
    .line 5
    invoke-static {v0, p2, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "extra_type"

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string v4, "req_type"

    .line 16
    .line 17
    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 22
    .line 23
    if-eqz v2, :cond_8

    .line 24
    .line 25
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v5, 0x4

    .line 32
    const/16 v6, 0xd

    .line 33
    .line 34
    const/16 v7, 0xc

    .line 35
    .line 36
    if-ne p2, v5, :cond_1

    .line 37
    .line 38
    if-nez p3, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne v3, v1, :cond_0

    .line 42
    .line 43
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_0

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_0
    if-eq v2, v7, :cond_6

    .line 66
    .line 67
    if-eq v2, v6, :cond_6

    .line 68
    .line 69
    add-int p0, v3, p3

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    if-eq p0, v1, :cond_6

    .line 73
    .line 74
    if-eq v3, v5, :cond_6

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_1
    const/4 v5, 0x5

    .line 79
    if-ne p2, v5, :cond_2

    .line 80
    .line 81
    if-eq v2, v7, :cond_8

    .line 82
    .line 83
    if-ne v2, v6, :cond_6

    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_2
    const/16 v5, 0x32

    .line 88
    .line 89
    if-ne p2, v5, :cond_3

    .line 90
    .line 91
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_3

    .line 104
    .line 105
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_3

    .line 110
    .line 111
    if-eq v2, v7, :cond_6

    .line 112
    .line 113
    if-eq v2, v6, :cond_6

    .line 114
    .line 115
    const-string p0, "Wifi AP is not enabled"

    .line 116
    .line 117
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_3
    const/16 v5, 0x33

    .line 122
    .line 123
    if-ne p2, v5, :cond_4

    .line 124
    .line 125
    if-eq v2, v7, :cond_6

    .line 126
    .line 127
    if-eq v2, v6, :cond_6

    .line 128
    .line 129
    const-string p0, "Wifi AP is not enabled during DIALOG_HOTSPOT_24GHZ_AP_STA_DISCONNECT"

    .line 130
    .line 131
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_4
    if-eq v2, v7, :cond_5

    .line 136
    .line 137
    if-eq v2, v6, :cond_5

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    const-string v5, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    .line 141
    .line 142
    invoke-static {v5, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 146
    .line 147
    const/4 v1, 0x0

    .line 148
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 150
    .line 151
    .line 152
    :cond_6
    const-string p0, "statusbar"

    .line 153
    .line 154
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Landroid/app/StatusBarManager;

    .line 159
    .line 160
    if-eqz p0, :cond_7

    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 163
    .line 164
    .line 165
    :cond_7
    new-instance p0, Landroid/content/Intent;

    .line 166
    .line 167
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v1, "com.android.settings"

    .line 171
    .line 172
    const-string v2, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 173
    .line 174
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    const/high16 v1, 0x10000000

    .line 178
    .line 179
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    const-string v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    const-string v1, "wifiap_warning_dialog_type"

    .line 188
    .line 189
    invoke-virtual {p0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    :goto_0
    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.samsung.settings.WIFI_AP_SETTINGS"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const/high16 v0, 0x10800000

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public checkProvisioningAfterSoftApEnabled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "sem_wifi"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getProvisionSuccess()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    const-string v0, "SemWifiApBroadcastReceiver"

    .line 27
    .line 28
    const-string v1, " checkProvisioningAfterSoftApEnabled  softap enabled "

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const/16 v1, 0x3d

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startWifiApWarning(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public checkProvisioningAfterWifiDisconnected()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "sem_wifi"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isProvisioningRequiredAfterWifiDisconnect()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x7

    .line 16
    const-string v3, "VZW"

    .line 17
    .line 18
    const/16 v4, 0xd

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getProvisionSuccess()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eq v1, v5, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-ne v1, v4, :cond_0

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "check Start provisioning as wifi disconnected ,wifisharing "

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const-string v2, "SemWifiApBroadcastReceiver"

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const/16 v1, 0x35

    .line 72
    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startWifiApWarning(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getProvisionSuccess()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-ne v0, v5, :cond_2

    .line 96
    .line 97
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-ne v0, v4, :cond_2

    .line 104
    .line 105
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startWifiApWarning(Landroid/content/Context;I)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_2

    .line 132
    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-ne v0, v4, :cond_2

    .line 140
    .line 141
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    .line 149
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startWifiApWarning(Landroid/content/Context;I)V

    .line 152
    .line 153
    .line 154
    :cond_2
    return-void
.end method

.method clearWifiScanListNotification(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "notification"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/app/NotificationManager;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 16
    .line 17
    const p1, 0x10410f0

    .line 18
    .line 19
    .line 20
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v1, p1, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 24
    .line 25
    .line 26
    const-string p0, "SemWifiApBroadcastReceiver"

    .line 27
    .line 28
    const-string p1, "clearWifiScanListNotification"

    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public resetSoftAp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getProvisionSuccess()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "resetSoftap provisioning backup:"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "SemWifiApBroadcastReceiver"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const-string v0, "vendor.wifiap.provisioning.backup"

    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method showWifiScanListNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v8, 0x10410f0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v9

    .line 16
    new-instance v10, Landroid/app/NotificationChannel;

    .line 17
    .line 18
    const-string v11, "wifi_sharing_channel"

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-direct {v10, v11, v9, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v10, v9}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v12, 0x1

    .line 28
    invoke-virtual {v10, v12}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 29
    .line 30
    .line 31
    const/high16 v1, -0x10000

    .line 32
    .line 33
    invoke-virtual {v10, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v10, v12}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v13, "com.android.settings"

    .line 45
    .line 46
    const-string v14, "com.android.settings.wifi.WifiSettings"

    .line 47
    .line 48
    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const/high16 v15, 0x14000000

    .line 52
    .line 53
    invoke-virtual {v3, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    const/high16 v4, 0x2000000

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    move-object/from16 v1, p1

    .line 63
    .line 64
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Landroid/content/Intent;

    .line 69
    .line 70
    const-string v4, "com.samsung.intent.action.ADVANCED_WIFI_SHARING_NOTIFICATION"

    .line 71
    .line 72
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    const-string v4, "NOTIFICATION_TASK"

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const/high16 v4, 0x2000000

    .line 85
    .line 86
    invoke-static {v1, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-instance v8, Landroid/content/Intent;

    .line 91
    .line 92
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v5, v8, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    new-instance v8, Landroid/app/Notification$Builder;

    .line 109
    .line 110
    invoke-direct {v8, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    const-wide/16 v13, 0x0

    .line 114
    .line 115
    invoke-virtual {v8, v13, v14}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    invoke-virtual {v13, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    const v13, 0x106001c

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v13}, Landroid/content/Context;->getColor(I)I

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    const-string v12, "status"

    .line 143
    .line 144
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const v12, 0x108008a

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    const/4 v9, 0x2

    .line 168
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    const/high16 v11, 0x1040000

    .line 177
    .line 178
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-virtual {v5, v12, v9, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    const v9, 0x1040270

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v3, v12, v5, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    .line 202
    .line 203
    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    const-wide/16 v4, 0x4e20

    .line 215
    .line 216
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 221
    .line 222
    .line 223
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 224
    .line 225
    if-nez v2, :cond_0

    .line 226
    .line 227
    const-string v2, "notification"

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Landroid/app/NotificationManager;

    .line 234
    .line 235
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 236
    .line 237
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 238
    .line 239
    invoke-virtual {v1, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 243
    .line 244
    const/4 v1, 0x0

    .line 245
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    const v3, 0x10410f0

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1, v3, v2, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 253
    .line 254
    .line 255
    const-string v0, "SemWifiApBroadcastReceiver"

    .line 256
    .line 257
    const-string v1, "showWifiScanListNotification"

    .line 258
    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    return-void
.end method

.method public startTracking()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isRegistered:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApStaStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mProvisionAppReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    .line 35
    new-instance v4, Landroid/content/IntentFilter;

    .line 36
    .line 37
    const-string v0, "com.samsung.unifiedtp.PROVISION_HOTSPOT_TRIGGER_ACTION"

    .line 38
    .line 39
    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x2

    .line 44
    const-string v5, "com.samsung.unifiedtp.permission.PROVISION_HOTSPOT_TRIGGER"

    .line 45
    .line 46
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    const/16 v0, 0x4b0

    .line 50
    .line 51
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->DEFAULT_TIMEOUT_MOBILEAP:I

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, " SemWifiApBroadcastReceiver startTracking misTablet"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->misTablet:Z

    .line 61
    .line 62
    const-string v1, "SemWifiApBroadcastReceiver"

    .line 63
    .line 64
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method startWifiApWarning(Landroid/content/Context;I)V
    .locals 2

    .line 1
    const-string p0, "statusbar"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/StatusBarManager;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "com.android.settings"

    .line 20
    .line 21
    const-string v1, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const/high16 v0, 0x10000000

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const-string v0, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-string v0, "wifiap_warning_dialog_type"

    .line 37
    .line 38
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isRegistered:Z

    .line 3
    .line 4
    const-string v0, "SemWifiApBroadcastReceiver"

    .line 5
    .line 6
    const-string v1, " SemWifiApBroadcastReceiver stopTracking"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mProvisionAppReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApStaStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
