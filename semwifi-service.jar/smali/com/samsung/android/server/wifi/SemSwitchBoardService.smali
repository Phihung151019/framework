.class public Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;,
        Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;,
        Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;,
        Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_AUTO_STOP:I = 0x4

.field private static final EVENT_BOOT_COMPLETED:I = 0x2

.field private static final EVENT_ENABLE_SWITCHBOARD:I = 0x1

.field private static final EVENT_GET_WIFIINFO_POLL:I = 0x3

.field private static final EVENT_PRIMARY_IFACE_CHANGED:I = 0x8

.field private static final EVENT_SET_POLICY:I = 0x5

.field private static final EVENT_WIFI_CONNECTED:I = 0x6

.field private static final EVENT_WIFI_DISCONNECTED:I = 0x7

.field private static final INVALID_RSSI:I = -0x7f

.field private static final MAX_RUNNING_TIME_MILLIS:J = 0x1499700L

.field private static final PATH_LTE:I = 0x0

.field private static final PATH_WIFI:I = 0x1

.field private static final SWITCHBOARD_INTENT_ENABLE_DEBUG:Ljava/lang/String; = "com.samsung.android.SwitchBoard.ENABLE_DEBUG"

.field private static final SWITCHBOARD_INTENT_EXTRA_DEBUG:Ljava/lang/String; = "Debug"

.field private static final SWITCHBOARD_INTENT_EXTRA_LTE2WIFI_DELAY_MILLIS:Ljava/lang/String; = "LteToWifiDelayMillis"

.field private static final SWITCHBOARD_INTENT_EXTRA_PACKAGE:Ljava/lang/String; = "Package"

.field private static final SWITCHBOARD_INTENT_EXTRA_PACKAGE_DEFAULT:Ljava/lang/String; = "default"

.field private static final SWITCHBOARD_INTENT_EXTRA_WIFI2LTE_DELAY_MILLIS:Ljava/lang/String; = "WifiToLteDelayMillis"

.field private static final SWITCHBOARD_INTENT_MIN_SWITCHING_DELAY:Ljava/lang/String; = "com.samsung.android.SwitchBoard.MIN_SWITCHING_DELAY"

.field private static final SWITCHBOARD_INTENT_SET_POLICY:Ljava/lang/String; = "com.samsung.android.SwitchBoard.SET_POLICY"

.field private static final SWITCHBOARD_INTENT_START:Ljava/lang/String; = "com.samsung.android.SwitchBoard.START"

.field private static final SWITCHBOARD_INTENT_STATE:Ljava/lang/String; = "com.samsung.android.SwitchBoard.STATE"

.field private static final SWITCHBOARD_INTENT_STOP:Ljava/lang/String; = "com.samsung.android.SwitchBoard.STOP"

.field private static final SWITCHBOARD_INTENT_WIFI_PREFERENCE_VALUE:Ljava/lang/String; = "com.samsung.android.SwitchBoard.WIFI_PREFERENCE_VALUE"

.field private static final SWITCHBOARD_STATE:Ljava/lang/String; = "switchboard_state"

.field private static final SWITCHBOARD_WIFI_POLICY:Ljava/lang/String; = "Policy"

.field private static final SWITCHBOARD_WIFI_PREFERENCE:Ljava/lang/String; = "Preference"

.field public static final TAG:Ljava/lang/String; = "SemSwitchBoardService"

.field private static VDBG:Z = false

.field private static final VER:Ljava/lang/String; = "1.2.7"

.field private static final WIFI_POLLING_INTERVAL:I = 0x3e8


# instance fields
.field private mBootCompleted:Z

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private mConMan:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

.field private mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

.field private final mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

.field private final mIfaceHandleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdatedTimeMillis:J

.field private final mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

.field private mLteToWifiDelayMillis:I

.field private final mPackageNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferredPath:I

.field private mPrimaryWifiIfaceName:Ljava/lang/String;

.field private mSwitchBoardEnabled:Z

.field private mSwitchBoardRequestBeforeBootCompleted:Z

.field private mWifiConnected:Z

.field private mWifiInfoPollingEnabled:Z

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiToLteDelayMillis:I


# direct methods
.method public static synthetic $r8$lambda$zqcOZJFcOJgOG9nqJ35dtTK2_HE(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->lambda$setClientModeManager$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mBootCompleted:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mIfaceHandleMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLteToWifiDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLteToWifiDelayMillis:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPackageNames:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPrimaryWifiIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBoardEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBoardRequestBeforeBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardRequestBeforeBootCompleted:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfoPollingEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiInfoPollingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiToLteDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiToLteDelayMillis:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mBootCompleted:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLteToWifiDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLteToWifiDelayMillis:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPrimaryWifiIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchBoardRequestBeforeBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardRequestBeforeBootCompleted:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiToLteDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiToLteDelayMillis:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDefaultEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->checkDefaultEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mdetermineDataPathPriority(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->determineDataPathPriority()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLinkProperties(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiLinkLayerStats(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setSwitchBoardState(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetVDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->VDBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfputVDBG(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->VDBG:Z

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/HandlerThread;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiInfoPollingEnabled:Z

    .line 6
    .line 7
    sget-object v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->Default:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mBootCompleted:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardRequestBeforeBootCompleted:Z

    .line 19
    .line 20
    const/16 v1, 0xbb8

    .line 21
    .line 22
    iput v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiToLteDelayMillis:I

    .line 23
    .line 24
    const/16 v1, 0x1388

    .line 25
    .line 26
    iput v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLteToWifiDelayMillis:I

    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastUpdatedTimeMillis:J

    .line 31
    .line 32
    new-instance v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;-><init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 42
    .line 43
    const-string p2, "connectivity"

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Landroid/net/ConnectivityManager;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mConMan:Landroid/net/ConnectivityManager;

    .line 52
    .line 53
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 54
    .line 55
    new-instance p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 56
    .line 57
    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;-><init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Landroid/os/Looper;)V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 65
    .line 66
    new-instance p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 67
    .line 68
    invoke-direct {p2, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 72
    .line 73
    new-instance p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 74
    .line 75
    invoke-direct {p2, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 79
    .line 80
    new-instance p2, Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPackageNames:Ljava/util/HashSet;

    .line 86
    .line 87
    new-instance p2, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mIfaceHandleMap:Ljava/util/HashMap;

    .line 93
    .line 94
    new-instance p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;

    .line 95
    .line 96
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;-><init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->getSwitchBoardIntentFilter()Landroid/content/IntentFilter;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const/4 p3, 0x2

    .line 104
    invoke-virtual {p1, p2, p0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    const-string p0, "SwitchBoardService initialized: ver=1.2.7"

    .line 108
    .line 109
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private broadcastSwitchBoardPreference()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.samsung.android.SwitchBoard.WIFI_PREFERENCE_VALUE"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string v1, "Preference"

    .line 12
    .line 13
    iget v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "Send broadcast="

    .line 28
    .line 29
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private broadcastSwitchBoardState(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.samsung.android.SwitchBoard.STATE"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string v1, "switchboard_state"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "broadcastSBStatus: SwitchBoard state changed("

    .line 26
    .line 27
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "), so send broadcast="

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private checkDefaultEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method private determineDataPathPriority()V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "determineSubflowPriority: current mPreferredPath="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", beaconCount="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettotalRxBeacon(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " ("

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettotalRxBeacon(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettotalRxBeacon(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    sub-int/2addr v1, v2

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ")"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->VDBG:Z

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 77
    .line 78
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 87
    .line 88
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 97
    .line 98
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxRetries(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v3, "wifiMetric New [%4d, %4d, %4d, %4d]"

    .line 111
    .line 112
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 120
    .line 121
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 130
    .line 131
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 132
    .line 133
    .line 134
    move-result-wide v3

    .line 135
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 140
    .line 141
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 150
    .line 151
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxRetries(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v5

    .line 155
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    const-string v3, "wifiMetric Old [%4d, %4d, %4d, %4d]"

    .line 164
    .line 165
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPrimaryWifiIfaceName:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 175
    .line 176
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 185
    .line 186
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v5

    .line 190
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 195
    .line 196
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 197
    .line 198
    .line 199
    move-result-wide v6

    .line 200
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 205
    .line 206
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetries(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v7

    .line 210
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 215
    .line 216
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 217
    .line 218
    .line 219
    move-result-wide v8

    .line 220
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 225
    .line 226
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 227
    .line 228
    .line 229
    move-result-wide v9

    .line 230
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 235
    .line 236
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 237
    .line 238
    .line 239
    move-result-wide v10

    .line 240
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    const-string v3, "wifiMetric %s [RSSI: %4d, TXFrames: %4d, TXBad: %4d, Retry: %4d, TxBadRate: %4.2f, OldTxBadRate: %4.2f, RetryRate: %4.2f]"

    .line 249
    .line 250
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    .line 258
    .line 259
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 260
    .line 261
    const/16 v4, -0x46

    .line 262
    .line 263
    const/4 v5, 0x1

    .line 264
    if-ne v0, v5, :cond_4

    .line 265
    .line 266
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 267
    .line 268
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    const/16 v5, -0x51

    .line 273
    .line 274
    const/4 v6, 0x0

    .line 275
    if-ge v0, v5, :cond_1

    .line 276
    .line 277
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 278
    .line 279
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-ge v0, v5, :cond_1

    .line 284
    .line 285
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 286
    .line 287
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 288
    .line 289
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    const-string v2, "Case0-4, triggered - bad RSSI("

    .line 294
    .line 295
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 307
    .line 308
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-ge v0, v4, :cond_7

    .line 313
    .line 314
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 315
    .line 316
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-ge v0, v4, :cond_7

    .line 321
    .line 322
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 323
    .line 324
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 325
    .line 326
    .line 327
    move-result-wide v4

    .line 328
    const-wide/16 v7, 0x28

    .line 329
    .line 330
    cmp-long v0, v4, v7

    .line 331
    .line 332
    if-lez v0, :cond_2

    .line 333
    .line 334
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 335
    .line 336
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 337
    .line 338
    .line 339
    move-result-wide v4

    .line 340
    const-wide v9, 0x3fa999999999999aL    # 0.05

    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    cmpl-double v0, v4, v9

    .line 346
    .line 347
    if-lez v0, :cond_2

    .line 348
    .line 349
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 350
    .line 351
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 352
    .line 353
    .line 354
    move-result-wide v4

    .line 355
    cmp-long v0, v4, v7

    .line 356
    .line 357
    if-lez v0, :cond_2

    .line 358
    .line 359
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 360
    .line 361
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 362
    .line 363
    .line 364
    move-result-wide v4

    .line 365
    cmpl-double v0, v4, v9

    .line 366
    .line 367
    if-lez v0, :cond_2

    .line 368
    .line 369
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 370
    .line 371
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 372
    .line 373
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 374
    .line 375
    .line 376
    move-result-wide v1

    .line 377
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 382
    .line 383
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 384
    .line 385
    .line 386
    move-result-wide v2

    .line 387
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 392
    .line 393
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 394
    .line 395
    .line 396
    move-result-wide v3

    .line 397
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    const-string v2, "Case0-1, triggered - TxFrames(%d), TxBadRate(%4.2f), OldTxBadRate(%4.2f)"

    .line 406
    .line 407
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 419
    .line 420
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 421
    .line 422
    .line 423
    move-result-wide v4

    .line 424
    cmp-long v0, v4, v7

    .line 425
    .line 426
    if-gtz v0, :cond_3

    .line 427
    .line 428
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 429
    .line 430
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 431
    .line 432
    .line 433
    move-result-wide v4

    .line 434
    const-wide/16 v7, 0x2

    .line 435
    .line 436
    cmp-long v0, v4, v7

    .line 437
    .line 438
    if-lez v0, :cond_3

    .line 439
    .line 440
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 441
    .line 442
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 443
    .line 444
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 445
    .line 446
    .line 447
    move-result-wide v2

    .line 448
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 449
    .line 450
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 451
    .line 452
    .line 453
    move-result-wide v4

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    const-string v7, "Case0-2, triggered - TxFrames("

    .line 457
    .line 458
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v2, "), TxBad("

    .line 465
    .line 466
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-static {v4, v5, v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 481
    .line 482
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 483
    .line 484
    .line 485
    move-result-wide v0

    .line 486
    cmpl-double v0, v0, v2

    .line 487
    .line 488
    if-lez v0, :cond_7

    .line 489
    .line 490
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 491
    .line 492
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 493
    .line 494
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 495
    .line 496
    .line 497
    move-result-wide v1

    .line 498
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 503
    .line 504
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 505
    .line 506
    .line 507
    move-result-wide v2

    .line 508
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    const-string v2, "Case0-3, triggered - TxFrames(%d), TxRetriesRate(%4.2f)"

    .line 517
    .line 518
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :cond_4
    if-nez v0, :cond_7

    .line 530
    .line 531
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 532
    .line 533
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 534
    .line 535
    .line 536
    move-result-wide v6

    .line 537
    const-wide/16 v8, 0x0

    .line 538
    .line 539
    cmp-long v0, v6, v8

    .line 540
    .line 541
    const-wide/16 v6, 0x1

    .line 542
    .line 543
    if-lez v0, :cond_5

    .line 544
    .line 545
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 546
    .line 547
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 548
    .line 549
    .line 550
    move-result-wide v10

    .line 551
    cmpg-double v0, v10, v2

    .line 552
    .line 553
    if-gez v0, :cond_5

    .line 554
    .line 555
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 556
    .line 557
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 558
    .line 559
    .line 560
    move-result-wide v2

    .line 561
    cmp-long v0, v2, v6

    .line 562
    .line 563
    if-gez v0, :cond_5

    .line 564
    .line 565
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 566
    .line 567
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    const/16 v2, -0x4b

    .line 572
    .line 573
    if-le v0, v2, :cond_5

    .line 574
    .line 575
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 576
    .line 577
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-le v0, v2, :cond_5

    .line 582
    .line 583
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 584
    .line 585
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 586
    .line 587
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 596
    .line 597
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 598
    .line 599
    .line 600
    move-result-wide v2

    .line 601
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 606
    .line 607
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 608
    .line 609
    .line 610
    move-result-wide v3

    .line 611
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 616
    .line 617
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 618
    .line 619
    .line 620
    move-result-wide v6

    .line 621
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    const-string v2, "Case1-1, triggered - RSSI(%d), TxFrames(%d), TxBad(%d), TxRetriesRate(%4.2f)"

    .line 630
    .line 631
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    .line 639
    .line 640
    .line 641
    return-void

    .line 642
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 643
    .line 644
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 645
    .line 646
    .line 647
    move-result-wide v2

    .line 648
    cmp-long v0, v2, v8

    .line 649
    .line 650
    if-lez v0, :cond_6

    .line 651
    .line 652
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 653
    .line 654
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 655
    .line 656
    .line 657
    move-result-wide v2

    .line 658
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 659
    .line 660
    cmpg-double v0, v2, v8

    .line 661
    .line 662
    if-gez v0, :cond_6

    .line 663
    .line 664
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 665
    .line 666
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 667
    .line 668
    .line 669
    move-result-wide v2

    .line 670
    cmp-long v0, v2, v6

    .line 671
    .line 672
    if-gez v0, :cond_6

    .line 673
    .line 674
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 675
    .line 676
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    if-le v0, v4, :cond_6

    .line 681
    .line 682
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 683
    .line 684
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 685
    .line 686
    .line 687
    move-result v0

    .line 688
    if-le v0, v4, :cond_6

    .line 689
    .line 690
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 691
    .line 692
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 693
    .line 694
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 703
    .line 704
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 705
    .line 706
    .line 707
    move-result-wide v2

    .line 708
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 713
    .line 714
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    .line 715
    .line 716
    .line 717
    move-result-wide v3

    .line 718
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 723
    .line 724
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    .line 725
    .line 726
    .line 727
    move-result-wide v6

    .line 728
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    const-string v2, "Case1-2, triggered - RSSI(%d), TxFrames(%d), TxBad(%d), TxRetriesRate(%4.2f)"

    .line 737
    .line 738
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    .line 746
    .line 747
    .line 748
    return-void

    .line 749
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 750
    .line 751
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    const/16 v2, -0x3c

    .line 756
    .line 757
    if-le v0, v2, :cond_7

    .line 758
    .line 759
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 760
    .line 761
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    if-le v0, v2, :cond_7

    .line 766
    .line 767
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 768
    .line 769
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 770
    .line 771
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    .line 772
    .line 773
    .line 774
    move-result v0

    .line 775
    const-string v2, "Case1-3, triggered - good RSSI("

    .line 776
    .line 777
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    .line 785
    .line 786
    .line 787
    :cond_7
    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mConMan:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mConMan:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mConMan:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private getSwitchBoardIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.samsung.android.SwitchBoard.START"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "com.samsung.android.SwitchBoard.STOP"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "com.samsung.android.SwitchBoard.ENABLE_DEBUG"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "com.samsung.android.SwitchBoard.SET_POLICY"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "com.samsung.android.SwitchBoard.MIN_SWITCHING_DELAY"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method private getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "getWifiLinkLayerStats called without an interface"

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->loge(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private synthetic lambda$setClientModeManager$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected static logi(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected static logv(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->VDBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private minimumSwitchingDelayPassed(IJ)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_1

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastUpdatedTimeMillis:J

    .line 6
    .line 7
    sub-long/2addr p2, v2

    .line 8
    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLteToWifiDelayMillis:I

    .line 9
    .line 10
    int-to-long p0, p0

    .line 11
    cmp-long p0, p2, p0

    .line 12
    .line 13
    if-ltz p0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    return v0

    .line 17
    :cond_1
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastUpdatedTimeMillis:J

    .line 18
    .line 19
    sub-long/2addr p2, v2

    .line 20
    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiToLteDelayMillis:I

    .line 21
    .line 22
    int-to-long p0, p0

    .line 23
    cmp-long p0, p2, p0

    .line 24
    .line 25
    if-ltz p0, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    return v0
.end method

.method private setDataPathPriority(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->minimumSwitchingDelayPassed(IJ)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastUpdatedTimeMillis:J

    .line 14
    .line 15
    iput p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "setDataPathPriority: mPreferredPath: "

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->broadcastSwitchBoardPreference()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const-string p0, "setDataPathPriority: path switching had just occurred, so ignore this."

    .line 41
    .line 42
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private setPollingWifiInfo()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiInfoPollingEnabled:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiInfoPollingEnabled:Z

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-wide/16 v1, 0x3e8

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private setSwitchBoardState(ZLjava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 4
    .line 5
    sget-object v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysDisabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string p0, "Ignore enable Switchboard due to Policy.AlwaysDisabled"

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 18
    .line 19
    sget-object v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    const-string p0, "Ignore disable Switchboard due to Policy.AlwaysEnabled"

    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const-string p0, "Cannot get Connectivity manager, so switchboard will not run."

    .line 36
    .line 37
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->loge(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastUpdatedTimeMillis:J

    .line 48
    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "setSwitchBoardState(ver=1.2.7) request [enable="

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ", reason="

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, "]"

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setupNetworkCallback()V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->updateAutoStop()V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setPollingWifiInfo()V

    .line 88
    .line 89
    .line 90
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    .line 91
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->broadcastSwitchBoardState(Z)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private setupNetworkCallback()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiConnected:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 26
    .line 27
    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    const-string p0, "Cannot register NetworkCallback, so Switchboard will not work."

    .line 32
    .line 33
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->loge(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private updateAutoStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-wide/32 v1, 0x1499700

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public handleLazyBootCompleted()V
    .locals 1

    .line 1
    const-string v0, "handleLazyBootCompleted called"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setClientModeManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 1

    .line 1
    const-string v0, "SemClientModeManager registered"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
