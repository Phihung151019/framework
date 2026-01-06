.class public Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;
    }
.end annotation


# static fields
.field private static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS:Ljava/lang/String; = "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SemHotspotMobileDataLimit"

.field private static final WIFI_AP_DATA_CHECKING_MS:I = 0x3e8


# instance fields
.field private isDataEnabled:Z

.field private isReached:Z

.field private isUpstreamWifi:Z

.field private isWifiApEnabled:Z

.field private isWifiSharingObserving:Z

.field private mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

.field private mApLimitObserver:Landroid/database/ContentObserver;

.field private mApLimitValueObserver:Landroid/database/ContentObserver;

.field private mApStaInfoListner:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

.field private mClientNum:I

.field private final mContext:Landroid/content/Context;

.field private mDataLimited:Z

.field private mDefaultNetwork:Landroid/net/Network;

.field private mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mLimitData:Ljava/math/BigDecimal;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUsage:Ljava/math/BigDecimal;

.field private mUsageChangeCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private mWifiConnected:Z

.field private mWifiSharingObserver:Landroid/database/ContentObserver;

.field private final semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$_3F2jRk_fb9zCTGmrtelV1A7tp8(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->lambda$registerForBroadcasts$1(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$x_gu0q1fod4Q0j4CWjwleCoSOhk(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->lambda$registerForBroadcasts$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isDataEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisReached(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isReached:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isUpstreamWifi:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisWifiApEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmApData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientNum(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mClientNum:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataLimited(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDataLimited:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Landroid/net/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetwork:Landroid/net/Network;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLimitData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/math/BigDecimal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageChangeCallbacks(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isDataEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisReached(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isReached:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isUpstreamWifi:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClientNum(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mClientNum:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDataLimited(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDataLimited:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/net/Network;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetwork:Landroid/net/Network;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDefaultNetworkCapabilities(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsage:Ljava/math/BigDecimal;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTetheringUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)[J
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->getTetheringUsage()[J

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleEvent(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misWifiDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiDefaultNetwork()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misWifiSharingEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiSharingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyDataUsageChanged(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->notifyDataUsageChanged(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetLimitValue(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->setLimitValue(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTelePhonyManager(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->updateTelePhonyManager()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetwork:Landroid/net/Network;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 8
    .line 9
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$2;

    .line 17
    .line 18
    new-instance v1, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApLimitObserver:Landroid/database/ContentObserver;

    .line 27
    .line 28
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$3;

    .line 29
    .line 30
    new-instance v1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$3;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/os/Handler;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApLimitValueObserver:Landroid/database/ContentObserver;

    .line 39
    .line 40
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$4;

    .line 41
    .line 42
    new-instance v1, Landroid/os/Handler;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$4;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/os/Handler;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 51
    .line 52
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$5;

    .line 53
    .line 54
    new-instance v1, Landroid/os/Handler;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$5;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/os/Handler;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiSharingObserver:Landroid/database/ContentObserver;

    .line 63
    .line 64
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 70
    .line 71
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$7;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$7;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApStaInfoListner:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 89
    .line 90
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isReached:Z

    .line 102
    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    .line 104
    .line 105
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mClientNum:I

    .line 106
    .line 107
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v2, "mobile_data"

    .line 119
    .line 120
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    const/4 v3, 0x1

    .line 125
    if-ne v1, v3, :cond_0

    .line 126
    .line 127
    move v1, v3

    .line 128
    goto :goto_0

    .line 129
    :cond_0
    move v1, v0

    .line 130
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isDataEnabled:Z

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v4, "wifi_ap_mobile_data_limit"

    .line 137
    .line 138
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-ne v1, v3, :cond_1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_1
    move v3, v0

    .line 146
    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDataLimited:Z

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-string v3, "wifi_ap_mobile_data_limit_value"

    .line 153
    .line 154
    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->setLimitValue(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApLimitObserver:Landroid/database/ContentObserver;

    .line 170
    .line 171
    invoke-virtual {v1, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApLimitValueObserver:Landroid/database/ContentObserver;

    .line 183
    .line 184
    invoke-virtual {v1, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 196
    .line 197
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 198
    .line 199
    .line 200
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->registerDefaultNetworkCallback()V

    .line 201
    .line 202
    .line 203
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->registerForBroadcasts()V

    .line 204
    .line 205
    .line 206
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->updateTelePhonyManager()V

    .line 207
    .line 208
    .line 209
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    .line 216
    .line 217
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 218
    .line 219
    new-instance p1, Ljava/util/HashMap;

    .line 220
    .line 221
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 222
    .line 223
    .line 224
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    .line 225
    .line 226
    return-void
.end method

.method private getLatestTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0xb

    .line 6
    .line 7
    const/16 v1, 0x17

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xd

    .line 13
    .line 14
    const/16 v1, 0x3b

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0xc

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0xe

    .line 25
    .line 26
    const/16 v1, 0x3e7

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    return-wide v0
.end method

.method private getTetheringUsage()[J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->getLatestTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v6

    .line 18
    const/4 v8, -0x5

    .line 19
    const/4 v2, 0x0

    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    invoke-virtual/range {v1 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    new-instance v2, Landroid/app/usage/NetworkStats$Bucket;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 33
    .line 34
    .line 35
    move-wide v3, v0

    .line 36
    :goto_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    add-long/2addr v0, v5

    .line 53
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    add-long/2addr v3, v5

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move-wide v3, v0

    .line 64
    :goto_1
    const/4 p0, 0x2

    .line 65
    new-array p0, p0, [J

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    aput-wide v0, p0, v2

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    aput-wide v3, p0, v0

    .line 72
    .line 73
    return-object p0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "handleEvent action : "

    .line 6
    .line 7
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string v0, "SemHotspotMobileDataLimit"

    .line 12
    .line 13
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const-string p2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->updateTelePhonyManager()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->updateBaseTxRxBytes()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->onStateChanged()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private isWifiConnected()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "connectivity"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method private isWifiDefaultNetwork()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private isWifiSharingEnabled()Z
    .locals 4

    .line 1
    const-string v0, "wifi_ap_wifi_sharing"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

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
    return v3

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :catch_0
    return v1
.end method

.method private synthetic lambda$registerForBroadcasts$0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method private synthetic lambda$registerForBroadcasts$1(IIILjava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    .line 2
    .line 3
    const-string p3, "SemHotspotMobileDataLimit"

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 p2, 0xa

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/16 p2, 0xb

    .line 17
    .line 18
    if-ne p1, p2, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApStaInfoListner:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 25
    .line 26
    .line 27
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    .line 28
    .line 29
    iput p3, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mClientNum:I

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->resetApDataLimit()V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiSharingObserving:Z

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiSharingObserving:Z

    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiSharingObserver:Landroid/database/ContentObserver;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    const/16 p2, 0xd

    .line 53
    .line 54
    if-ne p1, p2, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApStaInfoListner:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 61
    .line 62
    .line 63
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiSharingObserving:Z

    .line 64
    .line 65
    const/4 p2, 0x1

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiSharingObserving:Z

    .line 83
    .line 84
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string p4, "wifi_ap_wifi_sharing"

    .line 91
    .line 92
    invoke-static {p4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiSharingObserver:Landroid/database/ContentObserver;

    .line 97
    .line 98
    invoke-virtual {p1, p4, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->resetApDataUsage()V

    .line 104
    .line 105
    .line 106
    :cond_3
    return-void
.end method

.method private notifyDataUsageChanged(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;

    .line 32
    .line 33
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;->onDataUsageChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "onDataUsageChanged: remote exception -- "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "SemHotspotMobileDataLimit"

    .line 53
    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method private registerDefaultNetworkCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "connectivity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private registerForBroadcasts()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 30
    .line 31
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private resetApDataLimit()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Mobile AP is disabled, reset Mobile AP Usage data, Limit value reached : "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isReached:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "SemHotspotMobileDataLimit"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isReached:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    .line 30
    .line 31
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mClientNum:I

    .line 32
    .line 33
    return-void
.end method

.method private resetApDataUsage()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemHotspotMobileDataLimit"

    .line 6
    .line 7
    const-string v1, "Mobile AP enabled, reset Mobile AP usage data"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsage:Ljava/math/BigDecimal;

    .line 19
    .line 20
    return-void
.end method

.method private setLimitValue(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;

    .line 24
    .line 25
    const-string p0, "Invalid format limit value : "

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "SemHotspotMobileDataLimit"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private updateTelePhonyManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 20
    .line 21
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public addDataUsageCallback(ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "SemHotspotMobileDataLimit"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->onStateChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "Skip adding duplicate callback"

    .line 31
    .line 32
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-boolean p1, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p2, "Callback size changed : "

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public getUsage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsage:Ljava/math/BigDecimal;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public removeDataUsageCallback(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "SemHotspotMobileDataLimit"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->onStateChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "callback did not exist, ignore"

    .line 31
    .line 32
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-boolean p1, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "Callback size changed : "

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method
