.class public Lcom/samsung/android/server/wifi/SemCellularStateManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;,
        Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DATA_LIMIT_INTENT:Ljava/lang/String; = "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

.field private static final CELLULAR_STATE_CHANGED_DELAYED_TIME:I = 0xbb8

.field private static final EVENT_CELLULAR_STATE_CHANGED:I = 0x2

.field private static final EVENT_PRIMARY_IFACE_CHANGED:I = 0x3

.field private static final EVENT_WIFI_STATE_CHANGED:I = 0x1

.field private static final MBO_STATE_CELLULAR_DATA_AVAILABLE:B = 0x1t

.field private static final MBO_STATE_CELLULAR_DATA_UNAVAILABLE:B = 0x2t

.field private static final MBO_STATE_NO_CELLULAR_DATA_CAPABLE:B = 0x3t

.field private static final MBO_TYPE_NETWORK_CLASS_2G:B = 0x1t

.field private static final MBO_TYPE_NETWORK_CLASS_3G:B = 0x2t

.field private static final MBO_TYPE_NETWORK_CLASS_4G:B = 0x3t

.field private static final MBO_TYPE_NETWORK_CLASS_5G:B = 0x4t

.field private static final MBO_TYPE_NETWORK_CLASS_UNKNOWN:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "SemCellularStateManager"

.field private static final VER:Ljava/lang/String; = "1.2.1"

.field public static final WIFI_STATE_CONNECTED_STATE_ENTER:I = 0x3

.field public static final WIFI_STATE_CONNECTED_STATE_EXIT:I = 0x4

.field public static final WIFI_STATE_CONNECT_MODE_STATE_ENTER:I = 0x1

.field public static final WIFI_STATE_CONNECT_MODE_STATE_EXIT:I = 0x2

.field public static final WIFI_STATE_DONGLE_ROAM:I = 0x5

.field public static final WIFI_STATE_NONE:I = 0x0

.field private static final WTC_CANDIDATE_RSSI_THRESHOLD24G:I = -0x46

.field private static final WTC_CANDIDATE_RSSI_THRESHOLD5G:I = -0x46

.field private static final WTC_CANDIDATE_RSSI_THRESHOLD6G:I = -0x46

.field private static final WTC_MODE_DISABLE_CONTROLLED_BY_FRAMEWORK:I = 0x4

.field private static final WTC_MODE_DISABLE_NOT_SUPPORTED:I = 0x2

.field private static final WTC_MODE_DISABLE_NO_CELLULAR_NETWORK:I = 0x3

.field private static final WTC_MODE_DISABLE_ROAM_TO_BETTER_AP:I = 0x5

.field private static final WTC_MODE_DISABLE_RSSI_IS_STRONG_ENOUGH:I = 0x7

.field private static final WTC_MODE_DISABLE_SUSPEND_MODE:I = 0x6

.field private static final WTC_MODE_DISABLE_UNSPECIFIED:I = 0x1

.field private static final WTC_MODE_ENABLE:I = 0x0

.field private static final WTC_SCAN_FULL:I = 0x2

.field private static final WTC_SCAN_NONE:I = 0x0

.field private static final WTC_SCAN_PARTIAL:I = 0x1

.field private static final WTC_TRIGGER_RSSI_THRESHOLD:I = -0x50


# instance fields
.field private mCellularCapaState:I

.field private mCellularCellId:I

.field private mCellularSignalLevel:I

.field private final mContext:Landroid/content/Context;

.field private mEnableExtendedFeature:Z

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mHandler:Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

.field private mIsMobileDataLimited:Z

.field private mIsSimCardReady:Z

.field private mIsUserDataEnabled:Z

.field private final mIsWifiOnlyModel:Z

.field private mNetworkClass:I

.field private mPrevCellularCapaState:I

.field private mPrevCellularCellId:I

.field private mPrevCellularSignalLevel:I

.field private mPrevNetworkClass:I

.field private mPrevWtcMode:I

.field private mPrimaryInterfaceName:Ljava/lang/String;

.field private final mTelephonyCallback:Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiState:I

.field private mWtcMode:I


# direct methods
.method public static synthetic $r8$lambda$r6n8EikuOGHB9iB2RZbgvc2wAK0(Lcom/samsung/android/server/wifi/SemCellularStateManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->lambda$new$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCellularCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCellularSignalLevel(Lcom/samsung/android/server/wifi/SemCellularStateManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mHandler:Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMobileDataLimited(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsMobileDataLimited:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSimCardReady(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsSimCardReady:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryInterfaceName(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrimaryInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCarrierInfoManager(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiState(Lcom/samsung/android/server/wifi/SemCellularStateManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCellularCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCellularSignalLevel(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnableExtendedFeature(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mEnableExtendedFeature:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMobileDataLimited(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsMobileDataLimited:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSimCardReady(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsSimCardReady:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsUserDataEnabled(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsUserDataEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkClass(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrimaryInterfaceName(Lcom/samsung/android/server/wifi/SemCellularStateManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrimaryInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiState(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;Landroid/telephony/CellInfo;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->getCellId(Landroid/telephony/CellInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetNetworkClass(Lcom/samsung/android/server/wifi/SemCellularStateManager;J)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->getNetworkClass(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyCellularStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->notifyCellularStateChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyWifiStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->notifyWifiStateChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWtcMode:I

    .line 9
    .line 10
    iput v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevWtcMode:I

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    iput v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    iput v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    .line 21
    .line 22
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 23
    .line 24
    iput v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCapaState:I

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevNetworkClass:I

    .line 27
    .line 28
    iput v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCellId:I

    .line 29
    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularSignalLevel:I

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsSimCardReady:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mEnableExtendedFeature:Z

    .line 35
    .line 36
    const-string v0, "SemCellularStateManager"

    .line 37
    .line 38
    const-string v2, "SemCellularStateManager Constructor: Version = 1.2.1"

    .line 39
    .line 40
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemRilUtil;->isWifiOnly(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsWifiOnlyModel:Z

    .line 64
    .line 65
    new-instance v2, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;

    .line 66
    .line 67
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;-><init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyCallback:Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;

    .line 71
    .line 72
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 73
    .line 74
    new-instance p5, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 75
    .line 76
    invoke-direct {p5, p0, p3}, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;-><init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;Landroid/os/Looper;)V

    .line 77
    .line 78
    .line 79
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mHandler:Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 80
    .line 81
    new-instance p5, Lcom/samsung/android/server/wifi/SemCellularStateManager$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    invoke-direct {p5, p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p6, p5}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    if-nez p4, :cond_0

    .line 94
    .line 95
    return-void

    .line 96
    :cond_0
    if-nez v0, :cond_1

    .line 97
    .line 98
    new-instance p4, Landroid/content/IntentFilter;

    .line 99
    .line 100
    invoke-direct {p4}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string p5, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    .line 104
    .line 105
    invoke-virtual {p4, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string p5, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 109
    .line 110
    invoke-virtual {p4, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance p5, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;

    .line 114
    .line 115
    invoke-direct {p5, p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;-><init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p5, p4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    new-instance p1, Landroid/os/HandlerExecutor;

    .line 122
    .line 123
    new-instance p4, Landroid/os/Handler;

    .line 124
    .line 125
    invoke-direct {p4, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateAllCellularState()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateCellularCapaState()V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method private convertCellularCapaToWifiToCellularState()I
    .locals 3

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x3

    .line 8
    if-eq p0, v1, :cond_1

    .line 9
    .line 10
    if-eq p0, v2, :cond_0

    .line 11
    .line 12
    const-string p0, "SemCellularStateManager"

    .line 13
    .line 14
    const-string v1, "convertCellularCapaToWifiToCellularState - unknown mCellularCapaState."

    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    return v0

    .line 20
    :cond_1
    return v2

    .line 21
    :cond_2
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method private getCellId(Landroid/telephony/CellInfo;)I
    .locals 0

    .line 1
    instance-of p0, p1, Landroid/telephony/CellInfoLte;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/telephony/CellInfoLte;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    instance-of p0, p1, Landroid/telephony/CellInfoWcdma;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_1
    instance-of p0, p1, Landroid/telephony/CellInfoGsm;

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    check-cast p1, Landroid/telephony/CellInfoGsm;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_2
    instance-of p0, p1, Landroid/telephony/CellInfoCdma;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    check-cast p1, Landroid/telephony/CellInfoCdma;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0

    .line 61
    :cond_3
    instance-of p0, p1, Landroid/telephony/CellInfoNr;

    .line 62
    .line 63
    if-eqz p0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Landroid/telephony/CellIdentityNr;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getPci()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    :cond_4
    const-string p0, "SemCellularStateManager"

    .line 77
    .line 78
    const-string p1, "Invalid CellInfo type"

    .line 79
    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    const p0, 0x7fffffff

    .line 84
    .line 85
    .line 86
    return p0
.end method

.method private getNetworkClass(J)I
    .locals 4

    .line 1
    const-wide/32 v0, 0x804b

    .line 2
    .line 3
    .line 4
    and-long/2addr v0, p1

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const-wide/32 v0, 0x16bb4

    .line 14
    .line 15
    .line 16
    and-long/2addr v0, p1

    .line 17
    cmp-long p0, v0, v2

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x2

    .line 22
    return p0

    .line 23
    :cond_1
    const-wide/32 v0, 0x61000

    .line 24
    .line 25
    .line 26
    and-long/2addr v0, p1

    .line 27
    cmp-long p0, v0, v2

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    const/4 p0, 0x3

    .line 32
    return p0

    .line 33
    :cond_2
    const-wide/32 v0, 0x80000

    .line 34
    .line 35
    .line 36
    and-long p0, p1, v0

    .line 37
    .line 38
    cmp-long p0, p0, v2

    .line 39
    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    const/4 p0, 0x4

    .line 43
    return p0

    .line 44
    :cond_3
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method private initCellInfoAndSignalStrengths()V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 8
    .line 9
    return-void
.end method

.method private isCellularDataAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataRoamingEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsUserDataEnabled:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsMobileDataLimited:Z

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method private isCellularStatChanged()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevNetworkClass:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCapaState:I

    .line 8
    .line 9
    iget v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    .line 14
    .line 15
    iget v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCellId:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 20
    .line 21
    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularSignalLevel:I

    .line 22
    .line 23
    if-eq v0, p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method private isNetworkClassValid()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

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

.method private isWifiToCellularChanged()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevWtcMode:I

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWtcMode:I

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

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

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mHandler:Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private notifyCellularStateChanged()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateCellularCapaState()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateWifiToCellular()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiToCellularSupported()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->isWifiToCellularChanged()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->sendCommandSetWiFiToCellular()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mEnableExtendedFeature:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCapaState:I

    .line 29
    .line 30
    iget v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    .line 31
    .line 32
    if-ne v1, v2, :cond_2

    .line 33
    .line 34
    :cond_1
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->isCellularStatChanged()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    :cond_2
    const-string v0, "SemCellularStateManager"

    .line 43
    .line 44
    const-string v1, "notifyCellularStateChanged : sendCommandUpdateCellularCapabilities called"

    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->sendCommandUpdateCellularCapabilities()V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method private notifyWifiStateChanged()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateCellularCapaState()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateWifiToCellular()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiToCellularSupported()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->sendCommandSetWiFiToCellular()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->sendCommandUpdateCellularCapabilities()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private sendCommandSetWiFiToCellular()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    iget v4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWtcMode:I

    .line 12
    .line 13
    iput v4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevWtcMode:I

    .line 14
    .line 15
    if-nez v4, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrimaryInterfaceName:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v8, -0x46

    .line 22
    .line 23
    const/16 v9, -0x46

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    const/16 v6, -0x50

    .line 27
    .line 28
    const/16 v7, -0x46

    .line 29
    .line 30
    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiToCellular(Ljava/lang/String;IIIIII)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrimaryInterfaceName:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiToCellular(Ljava/lang/String;IIIIII)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private sendCommandUpdateCellularCapabilities()V
    .locals 7

    .line 1
    iget v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    .line 2
    .line 3
    iput v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCapaState:I

    .line 4
    .line 5
    iget v3, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    .line 6
    .line 7
    iput v3, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevNetworkClass:I

    .line 8
    .line 9
    iget v5, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    .line 10
    .line 11
    iput v5, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularCellId:I

    .line 12
    .line 13
    iget v4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 14
    .line 15
    iput v4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularSignalLevel:I

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsWifiOnlyModel:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    if-ne v1, v6, :cond_1

    .line 25
    .line 26
    :cond_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiState:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrimaryInterfaceName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->updateCellularCapabilities(Ljava/lang/String;IIII)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method private updateAllCellularState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsUserDataEnabled:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->getNetworkClass(J)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimCardReady()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsSimCardReady:Z

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateCellInfo()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateSignalStrengths()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->updateCellularCapaState()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private updateCellInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemCellularStateManager"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "updateCellInfo: cellInfoList Number of cell: "

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/telephony/CellInfo;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->getCellId(Landroid/telephony/CellInfo;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "updateCellInfo: Registered = "

    .line 69
    .line 70
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, ", mCellularCellId = "

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_1
    const-string v0, "updateCellInfo: cellInfoList is null or Size is zero and no registered cell"

    .line 99
    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    const v0, 0x7fffffff

    .line 104
    .line 105
    .line 106
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCellId:I

    .line 107
    .line 108
    return-void
.end method

.method private updateCellularCapaState()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsWifiOnlyModel:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mIsSimCardReady:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mNetworkClass:I

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->initCellInfoAndSignalStrengths()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mPrevCellularSignalLevel:I

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->initCellInfoAndSignalStrengths()V

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->isCellularDataAvailable()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->isNetworkClassValid()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularCapaState:I

    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method private updateSignalStrengths()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemCellularStateManager"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "updateSignalStrengths: mCellularSignalLevel="

    .line 20
    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string v0, "updateSignalStrengths: signalStrength is null"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mCellularSignalLevel:I

    .line 44
    .line 45
    return-void
.end method

.method private updateWifiToCellular()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->convertCellularCapaToWifiToCellularState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mWtcMode:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public enableExtendedFeature(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mEnableExtendedFeature:Z

    .line 2
    .line 3
    return-void
.end method

.method public handleWifiStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager;->mHandler:Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
