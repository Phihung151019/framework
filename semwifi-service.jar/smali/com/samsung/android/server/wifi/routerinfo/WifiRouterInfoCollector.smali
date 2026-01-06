.class public Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;
.super Lcom/android/internal/util/StateMachine;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;,
        Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DefaultState;,
        Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$EnabledState;,
        Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DisabledState;,
        Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;,
        Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DisconnectedState;
    }
.end annotation


# static fields
.field private static final ARP_TABLE_CHECK_RETRY_DELAY:I = 0x3e8

.field private static final ARP_TABLE_CHECK_RETRY_LIMIT:I = 0x5

.field static final CMD_ARP_TABLE_CHECK_RETRY:I = 0x7

.field static final CMD_CHECK_ROUTER_INFO:I = 0x4

.field static final CMD_INITIALIZE:I = 0x0

.field static final CMD_NETWORK_STATE_CHANGED:I = 0x2

.field static final CMD_REPORT_HTTP_RESULT:I = 0x5

.field static final CMD_REPORT_SSDP_RESULT:I = 0x6

.field static final CMD_WIFI_ROAM_EVENT:I = 0x3

.field static final CMD_WIFI_STATE_CHANGED:I = 0x1

.field private static final DBG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

.field public static final HTTP_FAILURE:I = 0x1

.field private static final HTTP_GET_MAXIMUM_DEPTH:I = 0xa

.field public static final HTTP_SUCCESS:I = 0x0

.field public static final MAX_WIFI_ROUTER_INFO_BY_BSSID_COUNT:I = 0xc8

.field public static final MAX_WIFI_ROUTER_INFO_COUNT:I = 0x64

.field private static final NUM_LOG_RECS:I

.field private static final ROUTER_INFO_CHECK_DELAY:I = 0x3e8

.field private static final ROUTER_INFO_CHECK_DELAY_AFTER_ROAM:I = 0x2710

.field private static final ROUTER_INFO_RESULT_DELAY:I = 0x1f4

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field public static final SSDP_FAILURE_EXCEPTION:I = 0x3

.field public static final SSDP_FAILURE_GET_NETWORK:I = 0x2

.field public static final SSDP_FAILURE_INVALID_URL:I = 0x1

.field public static final SSDP_FAILURE_OTHERS:I = 0x4

.field public static final SSDP_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiRouterInfoCollector"

.field private static final mExcludeValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMapLock:Ljava/lang/Object;


# instance fields
.field private final logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private mConfigKey:Ljava/lang/String;

.field private final mConnectedState:Lcom/android/internal/util/State;

.field private final mContext:Landroid/content/Context;

.field private final mDbg:Z

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDisabledState:Lcom/android/internal/util/State;

.field private final mDisconnectedState:Lcom/android/internal/util/State;

.field private final mEnabledState:Lcom/android/internal/util/State;

.field private mHeaderKeys:[Ljava/lang/String;

.field private mIsWifiConnected:Z

.field private mLastNetworkId:I

.field private mLastNetworkState:Landroid/net/NetworkInfo$State;

.field private mSemSsdp:Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;

.field private mSsdpId:I

.field private mUrlThread:Ljava/lang/Thread;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiEnabled:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiRouterInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiRouterInfoMapByBssid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mXmlKeys:[Ljava/lang/String;

.field private mXmlLocation:Ljava/lang/String;

.field private mXmlThread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$rv8QqfHu8AXIaXSl3ItjuPzKNck(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->lambda$registerReceiver$0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mConnectedState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mDisabledState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mEnabledState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mIsWifiConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkId(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mLastNetworkId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Landroid/net/NetworkInfo$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSsdpId(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mSsdpId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUrlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mUrlThread:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiRouterInfoMap(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiRouterInfoMapByBssid(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmXmlLocation(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mXmlLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmXmlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mXmlThread:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mLastNetworkId:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Landroid/net/NetworkInfo$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSsdpId(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mSsdpId:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUrlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mUrlThread:Ljava/lang/Thread;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmXmlLocation(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mXmlLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmXmlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mXmlThread:Ljava/lang/Thread;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckRouterInfoFromHttp(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->checkRouterInfoFromHttp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckXml(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->checkXml(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertTimeToSimpleDateFormat(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->convertTimeToSimpleDateFormat(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmacAddressFromRoute(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveOldestEntry(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->removeOldestEntry()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mreportIssue(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->reportIssue(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msendSsdpMSearch(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->sendSsdpMSearch(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->setWifiNetworkState(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmMapLock()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mMapLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

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
    sput-boolean v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 10
    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x64

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0xc8

    .line 21
    .line 22
    :goto_0
    sput v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->NUM_LOG_RECS:I

    .line 23
    .line 24
    new-instance v0, Landroid/util/ArraySet;

    .line 25
    .line 26
    const-string v5, "401 Unauthorized"

    .line 27
    .line 28
    const-string v6, "Basic realm="

    .line 29
    .line 30
    const-string v1, "httpd"

    .line 31
    .line 32
    const-string v2, "HTTPD"

    .line 33
    .line 34
    const-string v3, "Httpd/1.0"

    .line 35
    .line 36
    const-string v4, "nginx"

    .line 37
    .line 38
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mExcludeValues:Ljava/util/Set;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/Object;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mMapLock:Ljava/lang/Object;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 4

    .line 1
    const-string v0, "WifiRouterInfoCollector"

    .line 2
    .line 3
    invoke-direct {p0, v0, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mDbg:Z

    .line 8
    .line 9
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 15
    .line 16
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 19
    .line 20
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mVerboseLoggingEnabled:Z

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mConfigKey:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mSemSsdp:Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;

    .line 26
    .line 27
    const-string p3, "Server"

    .line 28
    .line 29
    const-string v0, "WWW-Authenticate"

    .line 30
    .line 31
    filled-new-array {p3, v0}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mHeaderKeys:[Ljava/lang/String;

    .line 36
    .line 37
    const-string p3, "modelNumber"

    .line 38
    .line 39
    const-string v0, "modelURL"

    .line 40
    .line 41
    const-string v1, "friendlyName"

    .line 42
    .line 43
    const-string v2, "manufacturer"

    .line 44
    .line 45
    const-string v3, "modelName"

    .line 46
    .line 47
    filled-new-array {v1, v2, v3, p3, v0}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mXmlKeys:[Ljava/lang/String;

    .line 52
    .line 53
    new-instance p3, Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 59
    .line 60
    new-instance p3, Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 66
    .line 67
    new-instance p3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DefaultState;

    .line 68
    .line 69
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DefaultState;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V

    .line 70
    .line 71
    .line 72
    iput-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mDefaultState:Lcom/android/internal/util/State;

    .line 73
    .line 74
    new-instance v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$EnabledState;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$EnabledState;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mEnabledState:Lcom/android/internal/util/State;

    .line 80
    .line 81
    new-instance v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DisabledState;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DisabledState;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mDisabledState:Lcom/android/internal/util/State;

    .line 87
    .line 88
    new-instance v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V

    .line 91
    .line 92
    .line 93
    iput-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mConnectedState:Lcom/android/internal/util/State;

    .line 94
    .line 95
    new-instance v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DisconnectedState;

    .line 96
    .line 97
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DisconnectedState;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V

    .line 98
    .line 99
    .line 100
    iput-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 101
    .line 102
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    iput-object p4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 105
    .line 106
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 111
    .line 112
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 117
    .line 118
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 123
    .line 124
    iput-object p2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 125
    .line 126
    sget p1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->NUM_LOG_RECS:I

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setLogRecSize(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p3}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkRouterInfoFromHttp()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "http://"

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    sget-boolean v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 39
    .line 40
    const-string v3, "WifiRouterInfoCollector"

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    const-string v4, "checkRouterInfoFromHttp - gateway : "

    .line 45
    .line 46
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_2
    const/4 v4, 0x0

    .line 54
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->runHttpGet(Ljava/lang/String;I)Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "checkRouterInfoFromHttp - routerInfo : "

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_6

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    sget-object v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mExcludeValues:Ljava/util/Set;

    .line 99
    .line 100
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_5

    .line 116
    .line 117
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v2, " "

    .line 141
    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_7

    .line 166
    .line 167
    return-object v1

    .line 168
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v1, "["

    .line 171
    .line 172
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p0, "]"

    .line 183
    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    return-object p0
.end method

.method private checkXml(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13

    .line 1
    const-string v0, " checkXml url: "

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "failReason"

    .line 8
    .line 9
    const-string v3, "WifiRouterInfoCollector"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, " [checkXml - Failed - Invalid URL: "

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, "]"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    new-instance p0, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string p1, "INVALID_URL"

    .line 47
    .line 48
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, " [checkXml - Failed to get network.]"

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    new-instance p0, Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string p1, "Failed to get network"

    .line 86
    .line 87
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_1
    const/16 v4, -0x7f

    .line 92
    .line 93
    invoke-static {v4}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const/4 v5, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 103
    .line 104
    const/4 v5, 0x1

    .line 105
    :try_start_1
    invoke-virtual {p2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 106
    .line 107
    .line 108
    invoke-static {v5}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 109
    .line 110
    .line 111
    const/16 v5, 0x2710

    .line 112
    .line 113
    invoke-virtual {p2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 117
    .line 118
    .line 119
    const-string v5, "Connection"

    .line 120
    .line 121
    const-string v6, "close"

    .line 122
    .line 123
    invoke-virtual {p2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    invoke-virtual {p2, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 128
    .line 129
    .line 130
    const-string v5, "User-Agent"

    .line 131
    .line 132
    const-string v6, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

    .line 133
    .line 134
    invoke-virtual {p2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-interface {v5}, Ljava/util/Map;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 146
    .line 147
    .line 148
    move-result-wide v6

    .line 149
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 154
    .line 155
    .line 156
    move-result-wide v9

    .line 157
    sget-boolean v11, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 158
    .line 159
    if-eqz v11, :cond_2

    .line 160
    .line 161
    new-instance v11, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v12, " checkXml - url="

    .line 170
    .line 171
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v12, " time="

    .line 178
    .line 179
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    sub-long/2addr v9, v6

    .line 183
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v6, "ms ret="

    .line 187
    .line 188
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v6, " request="

    .line 195
    .line 196
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v5, " headers="

    .line 203
    .line 204
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :catchall_0
    move-exception p0

    .line 223
    move-object v5, p2

    .line 224
    goto/16 :goto_7

    .line 225
    .line 226
    :catch_0
    move-exception p0

    .line 227
    move-object v5, p2

    .line 228
    goto/16 :goto_5

    .line 229
    .line 230
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    .line 231
    .line 232
    .line 233
    move-result-wide v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 235
    .line 236
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    .line 242
    .line 243
    long-to-int v5, v5

    .line 244
    :try_start_3
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-static {v6}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->extractCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-static {v7, v5, v6}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->readAsString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    new-instance v6, Landroid/os/Bundle;

    .line 257
    .line 258
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getXmlSummary(Ljava/lang/String;)Landroid/os/Bundle;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-direct {v6, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 263
    .line 264
    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v5, " checkXml - summary: "

    .line 274
    .line 275
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    .line 291
    .line 292
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 293
    .line 294
    .line 295
    goto :goto_3

    .line 296
    :catch_1
    move-exception p0

    .line 297
    goto :goto_2

    .line 298
    :catchall_1
    move-exception p0

    .line 299
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 300
    .line 301
    .line 302
    goto :goto_1

    .line 303
    :catchall_2
    move-exception v5

    .line 304
    :try_start_6
    invoke-virtual {p0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    :goto_1
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 308
    :goto_2
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v6, " - BufferedInputStream failed with exception "

    .line 323
    .line 324
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    new-instance v6, Landroid/os/Bundle;

    .line 338
    .line 339
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-virtual {v6, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 347
    .line 348
    .line 349
    :goto_3
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 350
    .line 351
    .line 352
    :cond_3
    :goto_4
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 353
    .line 354
    .line 355
    goto :goto_6

    .line 356
    :catchall_3
    move-exception p0

    .line 357
    goto :goto_7

    .line 358
    :catch_2
    move-exception p0

    .line 359
    :goto_5
    :try_start_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string p1, " - HttpURLConnection failed with exception "

    .line 374
    .line 375
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    new-instance v6, Landroid/os/Bundle;

    .line 389
    .line 390
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-virtual {v6, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 398
    .line 399
    .line 400
    if-eqz v5, :cond_3

    .line 401
    .line 402
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 403
    .line 404
    .line 405
    goto :goto_4

    .line 406
    :goto_6
    return-object v6

    .line 407
    :goto_7
    if-eqz v5, :cond_4

    .line 408
    .line 409
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 410
    .line 411
    .line 412
    :cond_4
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 413
    .line 414
    .line 415
    throw p0
.end method

.method private convertTimeToSimpleDateFormat(J)Ljava/lang/String;
    .locals 3

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 10
    .line 11
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/Date;

    .line 17
    .line 18
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "IllegalArgumentException occurred : "

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p2, "WifiRouterInfoCollector"

    .line 42
    .line 43
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method protected static extractCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string v0, "; *charset=\"?([^ ;\"]+)\"?"

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object p0

    .line 36
    :catch_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    return-object p0
.end method

.method private getAutoUpgradeConfigKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const-string p0, "SAE"

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/lit8 v1, v1, -0x3

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "WPA_PSK"

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
    const-string p0, "OWE"

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-int/lit8 v1, v1, -0x3

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, "NONE"

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    return-object p1
.end method

.method private getXmlSummary(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string p0, "WifiRouterInfoCollector"

    .line 13
    .line 14
    const-string p1, "getXmlSummary - xmlString isEmpty"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mXmlKeys:[Ljava/lang/String;

    .line 21
    .line 22
    array-length v1, p0

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    if-ge v3, v1, :cond_2

    .line 26
    .line 27
    aget-object v4, p0, v3

    .line 28
    .line 29
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-lez v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    add-int/2addr v6, v5

    .line 48
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    add-int/2addr v5, v6

    .line 57
    add-int/lit8 v5, v5, -0x2

    .line 58
    .line 59
    if-le v5, v6, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-object v0
.end method

.method private synthetic lambda$registerReceiver$0(II)V
    .locals 1

    .line 1
    const/4 p2, 0x3

    .line 2
    const/4 v0, 0x1

    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->setWifiState(Z)V

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
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->setWifiState(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string p0, "WifiRouterInfoCollector"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 5
    .line 6
    new-instance v2, Ljava/io/FileReader;

    .line 7
    .line 8
    const-string v3, "/proc/net/arp"

    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    const-string v3, "[ ]+"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    array-length v3, v2

    .line 32
    const/4 v4, 0x6

    .line 33
    if-ge v3, v4, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x0

    .line 37
    aget-object v3, v2, v3

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    aget-object v2, v2, v4

    .line 41
    .line 42
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    move-object v0, v2

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "Did not find remoteAddress {"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, "} in /proc/net/arp"

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :catchall_1
    move-exception v1

    .line 88
    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 92
    :catch_0
    const-string p1, "Could not read /proc/net/arp to lookup mac address"

    .line 93
    .line 94
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :catch_1
    const-string p1, "Could not open /proc/net/arp to lookup mac address"

    .line 99
    .line 100
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_4
    return-object v0
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance p0, Ljava/net/URL;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :catch_0
    const-string p0, "Bad URL: "

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string p1, "WifiRouterInfoCollector"

    .line 16
    .line 17
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method protected static readAsString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 4
    .line 5
    .line 6
    const/16 p0, 0x1388

    .line 7
    .line 8
    new-array p2, p0, [C

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, p1, :cond_1

    .line 18
    .line 19
    sub-int v4, p1, v3

    .line 20
    .line 21
    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v0, p2, v2, v4}, Ljava/io/InputStreamReader;->read([CII)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-gez v4, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/2addr v3, v4

    .line 33
    invoke-virtual {v1, p2, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-object p0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p2, "readAsString NoSuchMethodError: "

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "WifiRouterInfoCollector"

    .line 62
    .line 63
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const-string p0, ""

    .line 67
    .line 68
    return-object p0
.end method

.method private registerReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private removeOldestEntry()V
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mMapLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x64

    .line 11
    .line 12
    const-wide v3, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    if-le v1, v2, :cond_3

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Ljava/lang/String;

    .line 42
    .line 43
    iget-object v6, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 50
    .line 51
    iget-wide v6, v6, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mCollectionTime:J

    .line 52
    .line 53
    cmp-long v6, v6, v3

    .line 54
    .line 55
    if-gez v6, :cond_0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 64
    .line 65
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mCollectionTime:J

    .line 66
    .line 67
    move-object v1, v5

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_1
    sget-boolean v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    const-string v2, "WifiRouterInfoCollector"

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v4, "removed Wi-Fi Router Info - "

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 99
    .line 100
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    const/16 v2, 0xc8

    .line 111
    .line 112
    if-le v1, v2, :cond_7

    .line 113
    .line 114
    const-string v1, ""

    .line 115
    .line 116
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    move-wide v5, v3

    .line 127
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_5

    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Ljava/lang/String;

    .line 138
    .line 139
    iget-object v8, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 140
    .line 141
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    check-cast v8, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 146
    .line 147
    iget-wide v8, v8, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mCollectionTime:J

    .line 148
    .line 149
    cmp-long v8, v8, v5

    .line 150
    .line 151
    if-gez v8, :cond_4

    .line 152
    .line 153
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 154
    .line 155
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 160
    .line 161
    iget-wide v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mCollectionTime:J

    .line 162
    .line 163
    move-object v1, v7

    .line 164
    goto :goto_3

    .line 165
    :cond_5
    sget-boolean v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 166
    .line 167
    if-eqz v2, :cond_6

    .line 168
    .line 169
    const-string v2, "WifiRouterInfoCollector"

    .line 170
    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v6, "removed Wi-Fi Router Info by BSSID - "

    .line 177
    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 192
    .line 193
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_7
    monitor-exit v0

    .line 198
    return-void

    .line 199
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    throw p0
.end method

.method private reportIssue(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "reportIssue - mHttpInfo: "

    .line 2
    .line 3
    const-string v1, "reportIssue - mSsdpInfo: "

    .line 4
    .line 5
    const-string v2, "reportIssue - BSSID: "

    .line 6
    .line 7
    const-string v3, "reportIssue - gateway: "

    .line 8
    .line 9
    const-string v4, "reportIssue - configKey: "

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mMapLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    monitor-exit v5

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    const-string v6, "WifiRouterInfoCollector"

    .line 28
    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const-string v4, "WifiRouterInfoCollector"

    .line 45
    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 52
    .line 53
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayIp:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, " / "

    .line 65
    .line 66
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 70
    .line 71
    iget-object v7, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 78
    .line 79
    iget-object v7, v7, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v3, v7}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const-string v3, "WifiRouterInfoCollector"

    .line 96
    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 103
    .line 104
    iget-object v6, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 105
    .line 106
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 111
    .line 112
    iget-object v6, v6, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mLatestBssid:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, v6}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, " GwToApMacMatch: "

    .line 122
    .line 123
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 127
    .line 128
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 133
    .line 134
    iget v2, v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 135
    .line 136
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, "/6 "

    .line 140
    .line 141
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 145
    .line 146
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 151
    .line 152
    iget-object v2, v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    const-string v2, "WifiRouterInfoCollector"

    .line 165
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 172
    .line 173
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 178
    .line 179
    iget-object v1, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 180
    .line 181
    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    const-string v1, "WifiRouterInfoCollector"

    .line 196
    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 203
    .line 204
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 209
    .line 210
    iget-object v0, v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mHttpInfo:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 223
    .line 224
    if-eqz v0, :cond_1

    .line 225
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 232
    .line 233
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    check-cast v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 238
    .line 239
    iget-object v2, v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayIp:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v2, "/"

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 250
    .line 251
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 256
    .line 257
    iget-object v2, v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 272
    .line 273
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    check-cast v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 278
    .line 279
    iget v3, v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 280
    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v3, "/6 "

    .line 285
    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 290
    .line 291
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    check-cast v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 296
    .line 297
    iget-object v3, v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 307
    .line 308
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    check-cast v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 313
    .line 314
    iget-object v3, v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 315
    .line 316
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 317
    .line 318
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    check-cast p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 323
    .line 324
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mHttpInfo:Ljava/lang/String;

    .line 325
    .line 326
    invoke-static {p1, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForWifiRouterInfoResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    const/16 p1, 0x12f

    .line 331
    .line 332
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    .line 333
    .line 334
    .line 335
    :cond_1
    monitor-exit v5

    .line 336
    return-void

    .line 337
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    throw p0
.end method

.method private runHttpGet(Ljava/lang/String;I)Ljava/util/Set;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    const-string v4, "<title>"

    .line 8
    .line 9
    const-string v5, "runHttpGet url: "

    .line 10
    .line 11
    new-instance v6, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0xa

    .line 17
    .line 18
    const-string v7, "WifiRouterInfoCollector"

    .line 19
    .line 20
    if-lt v3, v0, :cond_0

    .line 21
    .line 22
    const-string v0, "runHttpGet - HTTP_GET_MAXIMUM_DEPTH reached."

    .line 23
    .line 24
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-object v6

    .line 28
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    if-nez v8, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "runHttpGet - Invalid URL - "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "Invalid URL - "

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    return-object v6

    .line 69
    :cond_1
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v1, "runHttpGet - Host is not in numerical IP address form. - "

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v1, "Host is not in numerical IP address form. - "

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    return-object v6

    .line 122
    :cond_2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-nez v0, :cond_3

    .line 129
    .line 130
    const-string v0, "Current network is null"

    .line 131
    .line 132
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    return-object v6

    .line 136
    :cond_3
    const/16 v9, -0x7f

    .line 137
    .line 138
    invoke-static {v9}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    const/4 v11, 0x1

    .line 143
    :try_start_0
    invoke-virtual {v0, v8}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    move-object v12, v0

    .line 148
    check-cast v12, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 149
    .line 150
    const/4 v13, 0x0

    .line 151
    :try_start_1
    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 152
    .line 153
    .line 154
    invoke-static {v11}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 155
    .line 156
    .line 157
    const/16 v0, 0x2710

    .line 158
    .line 159
    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 163
    .line 164
    .line 165
    const-string v0, "Connection"

    .line 166
    .line 167
    const-string v14, "close"

    .line 168
    .line 169
    invoke-virtual {v12, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 184
    .line 185
    .line 186
    move-result-wide v14

    .line 187
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 188
    .line 189
    .line 190
    move-result v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 191
    move/from16 v17, v11

    .line 192
    .line 193
    :try_start_2
    const-string v11, "location"

    .line 194
    .line 195
    invoke-virtual {v12, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 199
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 200
    .line 201
    .line 202
    move-result-wide v18

    .line 203
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    iget-object v3, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mHeaderKeys:[Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 208
    .line 209
    move/from16 v20, v9

    .line 210
    .line 211
    :try_start_4
    array-length v9, v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 212
    move-object/from16 v21, v3

    .line 213
    .line 214
    const/4 v3, 0x0

    .line 215
    :goto_0
    if-ge v3, v9, :cond_8

    .line 216
    .line 217
    move/from16 v22, v3

    .line 218
    .line 219
    :try_start_5
    aget-object v3, v21, v22

    .line 220
    .line 221
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v23

    .line 225
    if-nez v23, :cond_5

    .line 226
    .line 227
    :cond_4
    move/from16 v25, v9

    .line 228
    .line 229
    move-object/from16 v24, v12

    .line 230
    .line 231
    move-object/from16 v26, v13

    .line 232
    .line 233
    goto/16 :goto_8

    .line 234
    .line 235
    :cond_5
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v23

    .line 239
    check-cast v23, Ljava/util/List;

    .line 240
    .line 241
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v23

    .line 245
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v24

    .line 249
    if-eqz v24, :cond_4

    .line 250
    .line 251
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v24

    .line 255
    move/from16 v25, v9

    .line 256
    .line 257
    move-object/from16 v9, v24

    .line 258
    .line 259
    check-cast v9, Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v24

    .line 265
    if-nez v24, :cond_7

    .line 266
    .line 267
    sget-boolean v24, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 268
    .line 269
    if-eqz v24, :cond_6

    .line 270
    .line 271
    move-object/from16 v24, v12

    .line 272
    .line 273
    :try_start_6
    new-instance v12, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    move-object/from16 v26, v13

    .line 279
    .line 280
    const-string v13, "runHttpGet - found - "

    .line 281
    .line 282
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v13, ": "

    .line 289
    .line 290
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    :goto_2
    move-object/from16 v10, v24

    .line 306
    .line 307
    goto/16 :goto_20

    .line 308
    .line 309
    :catch_0
    move-exception v0

    .line 310
    :goto_3
    move-object/from16 v22, v11

    .line 311
    .line 312
    :goto_4
    move-object/from16 v10, v24

    .line 313
    .line 314
    const/16 v16, 0x0

    .line 315
    .line 316
    goto/16 :goto_1d

    .line 317
    .line 318
    :cond_6
    move-object/from16 v24, v12

    .line 319
    .line 320
    move-object/from16 v26, v13

    .line 321
    .line 322
    :goto_5
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v9

    .line 326
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto :goto_7

    .line 330
    :catchall_1
    move-exception v0

    .line 331
    :goto_6
    move-object/from16 v24, v12

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :catch_1
    move-exception v0

    .line 335
    move-object/from16 v24, v12

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_7
    move-object/from16 v24, v12

    .line 339
    .line 340
    move-object/from16 v26, v13

    .line 341
    .line 342
    :goto_7
    move-object/from16 v12, v24

    .line 343
    .line 344
    move/from16 v9, v25

    .line 345
    .line 346
    move-object/from16 v13, v26

    .line 347
    .line 348
    goto :goto_1

    .line 349
    :goto_8
    add-int/lit8 v3, v22, 0x1

    .line 350
    .line 351
    move-object/from16 v12, v24

    .line 352
    .line 353
    move/from16 v9, v25

    .line 354
    .line 355
    move-object/from16 v13, v26

    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_8
    move-object/from16 v24, v12

    .line 360
    .line 361
    sget-boolean v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 362
    .line 363
    const-string v9, ""

    .line 364
    .line 365
    if-eqz v3, :cond_a

    .line 366
    .line 367
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    const-string v12, "runHttpGet - url="

    .line 373
    .line 374
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v12, " time="

    .line 381
    .line 382
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    sub-long v12, v18, v14

    .line 386
    .line 387
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v12, "ms ret="

    .line 391
    .line 392
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v12, " request="

    .line 399
    .line 400
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    if-nez v11, :cond_9

    .line 407
    .line 408
    move-object v0, v9

    .line 409
    goto :goto_9

    .line 410
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v12, " redirectUrl="

    .line 416
    .line 417
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string v0, " headers="

    .line 431
    .line 432
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    :cond_a
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getContentLengthLong()J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 450
    .line 451
    .line 452
    const/16 v0, 0x190

    .line 453
    .line 454
    const-string v3, " - BufferedInputStream failed with exception "

    .line 455
    .line 456
    const/16 v12, 0x1388

    .line 457
    .line 458
    if-lt v10, v0, :cond_b

    .line 459
    .line 460
    const/16 v0, 0x1f4

    .line 461
    .line 462
    if-ge v10, v0, :cond_b

    .line 463
    .line 464
    :try_start_8
    new-instance v10, Ljava/io/BufferedInputStream;

    .line 465
    .line 466
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 471
    .line 472
    .line 473
    :try_start_9
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->extractCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-static {v10, v12, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->readAsString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 485
    :try_start_a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 486
    .line 487
    .line 488
    goto :goto_e

    .line 489
    :catch_2
    move-exception v0

    .line 490
    goto :goto_b

    .line 491
    :catchall_2
    move-exception v0

    .line 492
    move-object v12, v0

    .line 493
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 494
    .line 495
    .line 496
    goto :goto_a

    .line 497
    :catchall_3
    move-exception v0

    .line 498
    :try_start_c
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 499
    .line 500
    .line 501
    :goto_a
    throw v12
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 502
    :catch_3
    move-exception v0

    .line 503
    move-object v12, v9

    .line 504
    :goto_b
    :try_start_d
    new-instance v10, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 526
    .line 527
    .line 528
    goto :goto_e

    .line 529
    :cond_b
    :try_start_e
    new-instance v10, Ljava/io/BufferedInputStream;

    .line 530
    .line 531
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 536
    .line 537
    .line 538
    :try_start_f
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->extractCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-static {v10, v12, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->readAsString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 550
    :try_start_10
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 551
    .line 552
    .line 553
    goto :goto_e

    .line 554
    :catch_4
    move-exception v0

    .line 555
    goto :goto_d

    .line 556
    :catchall_4
    move-exception v0

    .line 557
    move-object v12, v0

    .line 558
    :try_start_11
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 559
    .line 560
    .line 561
    goto :goto_c

    .line 562
    :catchall_5
    move-exception v0

    .line 563
    :try_start_12
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 564
    .line 565
    .line 566
    :goto_c
    throw v12
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 567
    :catch_5
    move-exception v0

    .line 568
    move-object v12, v9

    .line 569
    :goto_d
    :try_start_13
    new-instance v10, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .line 592
    .line 593
    :goto_e
    const-string v0, "\n"

    .line 594
    .line 595
    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    array-length v3, v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 600
    const/4 v10, 0x0

    .line 601
    const/4 v12, 0x0

    .line 602
    :goto_f
    if-ge v12, v3, :cond_22

    .line 603
    .line 604
    :try_start_14
    aget-object v13, v0, v12

    .line 605
    .line 606
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v14

    .line 610
    const-string v15, "http-equiv"

    .line 611
    .line 612
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 613
    .line 614
    .line 615
    move-result v15
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 616
    move-object/from16 v18, v0

    .line 617
    .line 618
    const-string v0, ">"

    .line 619
    .line 620
    move/from16 v19, v3

    .line 621
    .line 622
    const-string v3, "\""

    .line 623
    .line 624
    move-object/from16 v21, v9

    .line 625
    .line 626
    const-string v9, "http"

    .line 627
    .line 628
    move-object/from16 v16, v10

    .line 629
    .line 630
    const-string v10, "://"

    .line 631
    .line 632
    move-object/from16 v22, v11

    .line 633
    .line 634
    const-string v11, "/"

    .line 635
    .line 636
    if-eqz v15, :cond_13

    .line 637
    .line 638
    :try_start_15
    const-string v15, "refresh"

    .line 639
    .line 640
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 641
    .line 642
    .line 643
    move-result v15

    .line 644
    if-eqz v15, :cond_13

    .line 645
    .line 646
    const-string v13, "url="

    .line 647
    .line 648
    const/4 v15, 0x0

    .line 649
    invoke-virtual {v14, v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 650
    .line 651
    .line 652
    move-result v13

    .line 653
    if-lez v13, :cond_12

    .line 654
    .line 655
    add-int/lit8 v13, v13, 0x4

    .line 656
    .line 657
    move/from16 v23, v12

    .line 658
    .line 659
    invoke-virtual {v14, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v12

    .line 663
    invoke-virtual {v12, v3, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    add-int/2addr v3, v13

    .line 668
    if-ge v3, v13, :cond_c

    .line 669
    .line 670
    invoke-virtual {v14, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v3

    .line 674
    invoke-virtual {v3, v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    add-int v3, v13, v0

    .line 679
    .line 680
    goto :goto_11

    .line 681
    :catch_6
    move-exception v0

    .line 682
    :goto_10
    move-object/from16 v10, v24

    .line 683
    .line 684
    goto/16 :goto_1d

    .line 685
    .line 686
    :cond_c
    :goto_11
    if-ge v3, v13, :cond_e

    .line 687
    .line 688
    :cond_d
    :goto_12
    const/4 v15, 0x0

    .line 689
    goto/16 :goto_17

    .line 690
    .line 691
    :cond_e
    invoke-virtual {v14, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 699
    :try_start_16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    if-eqz v0, :cond_f

    .line 704
    .line 705
    :goto_13
    move-object/from16 v10, v21

    .line 706
    .line 707
    :goto_14
    const/4 v15, 0x0

    .line 708
    goto/16 :goto_18

    .line 709
    .line 710
    :cond_f
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 711
    .line 712
    .line 713
    move-result v0

    .line 714
    if-eqz v0, :cond_10

    .line 715
    .line 716
    :goto_15
    move-object v10, v3

    .line 717
    goto :goto_14

    .line 718
    :cond_10
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    if-eqz v0, :cond_11

    .line 723
    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    .line 725
    .line 726
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v9

    .line 733
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v9

    .line 743
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    :goto_16
    move-object v10, v0

    .line 754
    goto :goto_14

    .line 755
    :catch_7
    move-exception v0

    .line 756
    move-object/from16 v16, v3

    .line 757
    .line 758
    goto :goto_10

    .line 759
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 760
    .line 761
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v9

    .line 768
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v9

    .line 778
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 791
    goto :goto_16

    .line 792
    :cond_12
    move/from16 v23, v12

    .line 793
    .line 794
    goto/16 :goto_17

    .line 795
    .line 796
    :cond_13
    move/from16 v23, v12

    .line 797
    .line 798
    :try_start_17
    const-string v12, "top.location"

    .line 799
    .line 800
    invoke-virtual {v14, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 801
    .line 802
    .line 803
    move-result v12

    .line 804
    if-eqz v12, :cond_18

    .line 805
    .line 806
    const-string v0, "\"/"

    .line 807
    .line 808
    const/4 v15, 0x0

    .line 809
    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    if-lez v0, :cond_21

    .line 814
    .line 815
    add-int/lit8 v0, v0, 0x1

    .line 816
    .line 817
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v12

    .line 821
    invoke-virtual {v12, v3, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 822
    .line 823
    .line 824
    move-result v3

    .line 825
    add-int/2addr v3, v0

    .line 826
    if-ge v3, v0, :cond_14

    .line 827
    .line 828
    goto/16 :goto_12

    .line 829
    .line 830
    :cond_14
    invoke-virtual {v14, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v3
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 838
    :try_start_18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 839
    .line 840
    .line 841
    move-result v0

    .line 842
    if-eqz v0, :cond_15

    .line 843
    .line 844
    goto/16 :goto_13

    .line 845
    .line 846
    :cond_15
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 847
    .line 848
    .line 849
    move-result v0

    .line 850
    if-eqz v0, :cond_16

    .line 851
    .line 852
    goto/16 :goto_15

    .line 853
    .line 854
    :cond_16
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 855
    .line 856
    .line 857
    move-result v0

    .line 858
    if-eqz v0, :cond_17

    .line 859
    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v9

    .line 869
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v9

    .line 879
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    goto/16 :goto_16

    .line 890
    .line 891
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 892
    .line 893
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v9

    .line 900
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    .line 902
    .line 903
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v9

    .line 910
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 923
    goto/16 :goto_16

    .line 924
    .line 925
    :cond_18
    :try_start_19
    const-string v3, "window.onload"

    .line 926
    .line 927
    invoke-virtual {v14, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 928
    .line 929
    .line 930
    move-result v3

    .line 931
    if-eqz v3, :cond_1d

    .line 932
    .line 933
    const-string v0, "url ="

    .line 934
    .line 935
    const/4 v15, 0x0

    .line 936
    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 937
    .line 938
    .line 939
    move-result v0

    .line 940
    if-lez v0, :cond_21

    .line 941
    .line 942
    add-int/lit8 v0, v0, 0x5

    .line 943
    .line 944
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v3

    .line 948
    const-string v12, ";"

    .line 949
    .line 950
    invoke-virtual {v3, v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 951
    .line 952
    .line 953
    move-result v3

    .line 954
    add-int/2addr v3, v0

    .line 955
    if-ge v3, v0, :cond_19

    .line 956
    .line 957
    goto/16 :goto_12

    .line 958
    .line 959
    :cond_19
    invoke-virtual {v14, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v3
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 967
    :try_start_1a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    if-eqz v0, :cond_1a

    .line 972
    .line 973
    goto/16 :goto_13

    .line 974
    .line 975
    :cond_1a
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 976
    .line 977
    .line 978
    move-result v0

    .line 979
    if-eqz v0, :cond_1b

    .line 980
    .line 981
    goto/16 :goto_15

    .line 982
    .line 983
    :cond_1b
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 984
    .line 985
    .line 986
    move-result v0

    .line 987
    if-eqz v0, :cond_1c

    .line 988
    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    .line 990
    .line 991
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v9

    .line 998
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v9

    .line 1008
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    goto/16 :goto_16

    .line 1019
    .line 1020
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v9

    .line 1029
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v9

    .line 1039
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1052
    goto/16 :goto_16

    .line 1053
    .line 1054
    :cond_1d
    :try_start_1b
    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1055
    .line 1056
    .line 1057
    move-result v3

    .line 1058
    if-eqz v3, :cond_1f

    .line 1059
    .line 1060
    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1061
    .line 1062
    .line 1063
    move-result v0

    .line 1064
    if-lez v0, :cond_d

    .line 1065
    .line 1066
    add-int/lit8 v0, v0, 0x7

    .line 1067
    .line 1068
    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v3

    .line 1072
    const-string v9, "</title>"

    .line 1073
    .line 1074
    const/4 v15, 0x0

    .line 1075
    invoke-virtual {v3, v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1076
    .line 1077
    .line 1078
    move-result v3

    .line 1079
    add-int/2addr v3, v0

    .line 1080
    if-le v3, v0, :cond_d

    .line 1081
    .line 1082
    invoke-virtual {v13, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    sget-boolean v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 1091
    .line 1092
    if-eqz v3, :cond_1e

    .line 1093
    .line 1094
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1097
    .line 1098
    .line 1099
    const-string v9, "runHttpGet - found - pageTitle: "

    .line 1100
    .line 1101
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v3

    .line 1111
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    .line 1113
    .line 1114
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v0

    .line 1118
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1119
    .line 1120
    .line 1121
    goto/16 :goto_12

    .line 1122
    .line 1123
    :cond_1f
    const-string v3, "meta name="

    .line 1124
    .line 1125
    invoke-virtual {v14, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1126
    .line 1127
    .line 1128
    move-result v3

    .line 1129
    if-eqz v3, :cond_d

    .line 1130
    .line 1131
    const-string v3, "description"

    .line 1132
    .line 1133
    invoke-virtual {v14, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v3

    .line 1137
    if-eqz v3, :cond_d

    .line 1138
    .line 1139
    const-string v3, "content="

    .line 1140
    .line 1141
    const/4 v15, 0x0

    .line 1142
    invoke-virtual {v14, v3, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1143
    .line 1144
    .line 1145
    move-result v3

    .line 1146
    if-lez v3, :cond_21

    .line 1147
    .line 1148
    add-int/lit8 v3, v3, 0x8

    .line 1149
    .line 1150
    invoke-virtual {v14, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v9

    .line 1154
    invoke-virtual {v9, v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1155
    .line 1156
    .line 1157
    move-result v0

    .line 1158
    add-int/2addr v0, v3

    .line 1159
    if-le v0, v3, :cond_21

    .line 1160
    .line 1161
    invoke-virtual {v13, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    sget-boolean v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 1170
    .line 1171
    if-eqz v3, :cond_20

    .line 1172
    .line 1173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1176
    .line 1177
    .line 1178
    const-string v9, "runHttpGet - found - description: "

    .line 1179
    .line 1180
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v3

    .line 1190
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    .line 1192
    .line 1193
    :cond_20
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v0

    .line 1197
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1198
    .line 1199
    .line 1200
    :cond_21
    :goto_17
    move-object/from16 v10, v16

    .line 1201
    .line 1202
    :goto_18
    add-int/lit8 v12, v23, 0x1

    .line 1203
    .line 1204
    move-object/from16 v0, v18

    .line 1205
    .line 1206
    move/from16 v3, v19

    .line 1207
    .line 1208
    move-object/from16 v9, v21

    .line 1209
    .line 1210
    move-object/from16 v11, v22

    .line 1211
    .line 1212
    goto/16 :goto_f

    .line 1213
    .line 1214
    :catch_8
    move-exception v0

    .line 1215
    move-object/from16 v16, v10

    .line 1216
    .line 1217
    move-object/from16 v22, v11

    .line 1218
    .line 1219
    goto/16 :goto_10

    .line 1220
    .line 1221
    :cond_22
    move-object/from16 v16, v10

    .line 1222
    .line 1223
    move-object/from16 v22, v11

    .line 1224
    .line 1225
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1226
    .line 1227
    .line 1228
    :cond_23
    :goto_19
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1229
    .line 1230
    .line 1231
    move-object/from16 v10, v16

    .line 1232
    .line 1233
    move-object/from16 v11, v22

    .line 1234
    .line 1235
    goto :goto_1e

    .line 1236
    :catch_9
    move-exception v0

    .line 1237
    :goto_1a
    move-object/from16 v22, v11

    .line 1238
    .line 1239
    move-object/from16 v24, v12

    .line 1240
    .line 1241
    goto/16 :goto_4

    .line 1242
    .line 1243
    :catchall_6
    move-exception v0

    .line 1244
    move/from16 v20, v9

    .line 1245
    .line 1246
    goto/16 :goto_6

    .line 1247
    .line 1248
    :catch_a
    move-exception v0

    .line 1249
    move/from16 v20, v9

    .line 1250
    .line 1251
    goto :goto_1a

    .line 1252
    :catch_b
    move-exception v0

    .line 1253
    move/from16 v20, v9

    .line 1254
    .line 1255
    :goto_1b
    move-object/from16 v24, v12

    .line 1256
    .line 1257
    move-object/from16 v10, v24

    .line 1258
    .line 1259
    :goto_1c
    const/16 v16, 0x0

    .line 1260
    .line 1261
    const/16 v22, 0x0

    .line 1262
    .line 1263
    goto :goto_1d

    .line 1264
    :catch_c
    move-exception v0

    .line 1265
    move/from16 v20, v9

    .line 1266
    .line 1267
    move/from16 v17, v11

    .line 1268
    .line 1269
    goto :goto_1b

    .line 1270
    :catchall_7
    move-exception v0

    .line 1271
    move/from16 v20, v9

    .line 1272
    .line 1273
    const/4 v10, 0x0

    .line 1274
    goto/16 :goto_20

    .line 1275
    .line 1276
    :catch_d
    move-exception v0

    .line 1277
    move/from16 v20, v9

    .line 1278
    .line 1279
    move/from16 v17, v11

    .line 1280
    .line 1281
    const/4 v10, 0x0

    .line 1282
    goto :goto_1c

    .line 1283
    :goto_1d
    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1284
    .line 1285
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    const-string v4, " - HttpURLConnection failed with exception "

    .line 1295
    .line 1296
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v0

    .line 1306
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 1307
    .line 1308
    .line 1309
    if-eqz v10, :cond_23

    .line 1310
    .line 1311
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1312
    .line 1313
    .line 1314
    goto :goto_19

    .line 1315
    :goto_1e
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-nez v0, :cond_25

    .line 1320
    .line 1321
    invoke-static {v10, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1322
    .line 1323
    .line 1324
    move-result v0

    .line 1325
    if-nez v0, :cond_25

    .line 1326
    .line 1327
    sget-boolean v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 1328
    .line 1329
    if-eqz v0, :cond_24

    .line 1330
    .line 1331
    const-string v0, "runHttpGet - refreshTo: "

    .line 1332
    .line 1333
    invoke-static {v0, v10}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v0

    .line 1337
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    .line 1339
    .line 1340
    :cond_24
    add-int/lit8 v0, p2, 0x1

    .line 1341
    .line 1342
    invoke-direct {v1, v10, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->runHttpGet(Ljava/lang/String;I)Ljava/util/Set;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v3

    .line 1346
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1347
    .line 1348
    .line 1349
    goto :goto_1f

    .line 1350
    :cond_25
    move/from16 v0, p2

    .line 1351
    .line 1352
    :goto_1f
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1353
    .line 1354
    .line 1355
    move-result v3

    .line 1356
    if-nez v3, :cond_27

    .line 1357
    .line 1358
    invoke-static {v11, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1359
    .line 1360
    .line 1361
    move-result v2

    .line 1362
    if-nez v2, :cond_27

    .line 1363
    .line 1364
    sget-boolean v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 1365
    .line 1366
    if-eqz v2, :cond_26

    .line 1367
    .line 1368
    const-string v2, "runHttpGet - redirectUrl: "

    .line 1369
    .line 1370
    invoke-static {v2, v11}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v2

    .line 1374
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    .line 1376
    .line 1377
    :cond_26
    add-int/lit8 v0, v0, 0x1

    .line 1378
    .line 1379
    invoke-direct {v1, v11, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->runHttpGet(Ljava/lang/String;I)Ljava/util/Set;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v0

    .line 1383
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1384
    .line 1385
    .line 1386
    :cond_27
    return-object v6

    .line 1387
    :catchall_8
    move-exception v0

    .line 1388
    :goto_20
    if-eqz v10, :cond_28

    .line 1389
    .line 1390
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1391
    .line 1392
    .line 1393
    :cond_28
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1394
    .line 1395
    .line 1396
    throw v0
.end method

.method private sendSsdpMSearch(Landroid/net/Network;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mSemSsdp:Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "WifiRouterInfoCollector.SemSsdp"

    .line 22
    .line 23
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mSemSsdp:Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mSemSsdp:Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;

    .line 37
    .line 38
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/16 v2, 0x1388

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/samsung/android/server/wifi/routerinfo/SemSsdp;->sendMSearchAsync(IILjava/lang/String;Landroid/net/Network;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mSsdpId:I

    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method private setWifiNetworkState(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mIsWifiConnected:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mVerboseLoggingEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "setWifiNetworkState: isConnected= "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " configKey="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "WifiRouterInfoCollector"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private setWifiState(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiEnabled:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mVerboseLoggingEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "setWifiState: isEnabled= "

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "WifiRouterInfoCollector"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public checkAndStart()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WifiRouterInfoCollector"

    .line 6
    .line 7
    const-string v1, "checkAndStart"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiEnabled:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isConnected()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mIsWifiConnected:Z

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->registerReceiver()V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "InfoCount: "

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7
    .line 8
    .line 9
    const-string p1, "Dump of WifiRouterInfoCollector"

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "WifiRouterInfoCollector - Log Begin ----"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mMapLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    const-string p3, "\n[[[[By ConfigKey]]]]"

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, "\n"

    .line 42
    .line 43
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/String;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v2, "configKey: "

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_2

    .line 113
    :cond_0
    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mVerboseLoggingEnabled:Z

    .line 114
    .line 115
    if-eqz p3, :cond_1

    .line 116
    .line 117
    const-string p3, "\n[[[[By BSSID]]]]"

    .line 118
    .line 119
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance p3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v0, "InfoCount: "

    .line 128
    .line 129
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v0, "\n"

    .line 142
    .line 143
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 154
    .line 155
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_1

    .line 168
    .line 169
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/String;

    .line 174
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v2, "BSSID: "

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 186
    .line 187
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 202
    .line 203
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    const-string p0, "WifiRouterInfoCollector - Log End ----"

    .line 219
    .line 220
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    throw p0
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
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getCurrentWifiRouterInfo()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-boolean v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const-string v1, "WifiRouterInfoCollector"

    .line 37
    .line 38
    const-string v2, "getCurrentWifiRouterInfo"

    .line 39
    .line 40
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfo(Ljava/lang/String;)Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_3
    :goto_0
    return-object v2
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->smToString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget p0, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const-string v2, " "

    .line 19
    .line 20
    if-eq p0, v1, :cond_6

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq p0, v3, :cond_4

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-eq p0, v1, :cond_3

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    if-eq p0, v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    if-eq p0, v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x1000

    .line 35
    .line 36
    if-eq p0, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget p0, p1, Landroid/os/Message;->arg2:I

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ", "

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget p0, p1, Landroid/os/Message;->arg2:I

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    .line 108
    if-eqz p0, :cond_8

    .line 109
    .line 110
    check-cast p0, Landroid/os/Bundle;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget p0, p1, Landroid/os/Message;->arg2:I

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast p0, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 159
    .line 160
    if-ne p0, v1, :cond_5

    .line 161
    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v1, "connected to "

    .line 165
    .line 166
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p1, Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    goto :goto_0

    .line 181
    :cond_5
    const-string p0, "disconnected"

    .line 182
    .line 183
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 191
    .line 192
    if-ne p0, v1, :cond_7

    .line 193
    .line 194
    const-string p0, "Wi-Fi enabled"

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_7
    const-string p0, "Wi-Fi disabled"

    .line 198
    .line 199
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    return-object p0
.end method

.method public getWifiRouterInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .line 1
    const-string v0, "getWifiRouterInfo - "

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    sget-object v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mMapLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getAutoUpgradeConfigKey(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-object v2

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    const-string v3, "httpInfo"

    .line 55
    .line 56
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 63
    .line 64
    iget-object v4, v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mHttpInfo:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v3, "gatewayIp"

    .line 70
    .line 71
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 78
    .line 79
    iget-object v4, v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayIp:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v3, "gatewayMac"

    .line 85
    .line 86
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 87
    .line 88
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 93
    .line 94
    iget-object v4, v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v3, "gwToApMacMatchPattern"

    .line 100
    .line 101
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 102
    .line 103
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 108
    .line 109
    iget-object v4, v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v3, "gwToApMacMatchCount"

    .line 115
    .line 116
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 117
    .line 118
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 123
    .line 124
    iget v4, v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 125
    .line 126
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    const-string v3, "presentableRouterInfo"

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoPresentable(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v3, "bestEffortRouterInfo"

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-boolean p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 148
    .line 149
    if-eqz p0, :cond_2

    .line 150
    .line 151
    const-string p0, "WifiRouterInfoCollector"

    .line 152
    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p1, " - "

    .line 162
    .line 163
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    :cond_2
    monitor-exit v1

    .line 181
    return-object v2

    .line 182
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    throw p0
.end method

.method public getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "getWifiRouterInfoBestEffort[from HTTP] - "

    .line 2
    .line 3
    const-string v1, "getWifiRouterInfoBestEffort[from SSDP] - "

    .line 4
    .line 5
    const-string v2, "getWifiRouterInfoBestEffort - "

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const-string p0, ""

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mMapLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v3

    .line 19
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    sget-boolean v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    const-string v4, "WifiRouterInfoCollector"

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " not found."

    .line 42
    .line 43
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getAutoUpgradeConfigKey(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    const-string p0, ""

    .line 70
    .line 71
    monitor-exit v3

    .line 72
    return-object p0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 80
    .line 81
    iget-object v2, v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 82
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, "manufacturer"

    .line 89
    .line 90
    const-string v6, ""

    .line 91
    .line 92
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v5, " "

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v5, "modelName"

    .line 105
    .line 106
    const-string v6, ""

    .line 107
    .line 108
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_4

    .line 128
    .line 129
    sget-boolean p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 130
    .line 131
    if-eqz p0, :cond_3

    .line 132
    .line 133
    const-string p0, "WifiRouterInfoCollector"

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, " - "

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_3
    monitor-exit v3

    .line 159
    return-object v2

    .line 160
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 161
    .line 162
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 167
    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mHttpInfo:Ljava/lang/String;

    .line 169
    .line 170
    sget-boolean v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 171
    .line 172
    if-eqz v1, :cond_5

    .line 173
    .line 174
    const-string v1, "WifiRouterInfoCollector"

    .line 175
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p1, " - "

    .line 185
    .line 186
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    :cond_5
    monitor-exit v3

    .line 200
    return-object p0

    .line 201
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    throw p0
.end method

.method public getWifiRouterInfoBestEffortByBssid(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "getWifiRouterInfoBestEffortByBssid[from HTTP] - "

    .line 2
    .line 3
    const-string v1, "getWifiRouterInfoBestEffortByBssid[from SSDP] - "

    .line 4
    .line 5
    const-string v2, "getWifiRouterInfoBestEffortByBssid - "

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const-string p0, ""

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mMapLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v3

    .line 23
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    sget-boolean p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const-string p0, "WifiRouterInfoCollector"

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " not found."

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
    move-result-object p1

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_1
    :goto_0
    const-string p0, ""

    .line 62
    .line 63
    monitor-exit v3

    .line 64
    return-object p0

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 72
    .line 73
    iget-object v2, v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v5, "manufacturer"

    .line 81
    .line 82
    const-string v6, ""

    .line 83
    .line 84
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v5, " "

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v5, "modelName"

    .line 97
    .line 98
    const-string v6, ""

    .line 99
    .line 100
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-nez v4, :cond_4

    .line 120
    .line 121
    sget-boolean p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 122
    .line 123
    if-eqz p0, :cond_3

    .line 124
    .line 125
    const-string p0, "WifiRouterInfoCollector"

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p1, " - "

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :cond_3
    monitor-exit v3

    .line 151
    return-object v2

    .line 152
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 153
    .line 154
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 159
    .line 160
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mHttpInfo:Ljava/lang/String;

    .line 161
    .line 162
    sget-boolean v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 163
    .line 164
    if-eqz v1, :cond_5

    .line 165
    .line 166
    const-string v1, "WifiRouterInfoCollector"

    .line 167
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p1, " - "

    .line 177
    .line 178
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    :cond_5
    monitor-exit v3

    .line 192
    return-object p0

    .line 193
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    throw p0
.end method

.method public getWifiRouterInfoByBssid(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .line 1
    const-string v0, "getWifiRouterInfoByBssid - "

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mMapLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    monitor-exit v1

    .line 27
    return-object v2

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    const-string v3, "httpInfo"

    .line 47
    .line 48
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 55
    .line 56
    iget-object v4, v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mHttpInfo:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v3, "gatewayIp"

    .line 62
    .line 63
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 64
    .line 65
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 70
    .line 71
    iget-object v4, v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayIp:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v3, "gatewayMac"

    .line 77
    .line 78
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 79
    .line 80
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 85
    .line 86
    iget-object v4, v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v3, "gwToApMacMatchPattern"

    .line 92
    .line 93
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 94
    .line 95
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 100
    .line 101
    iget-object v4, v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v3, "gwToApMacMatchCount"

    .line 107
    .line 108
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 109
    .line 110
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 115
    .line 116
    iget v4, v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 117
    .line 118
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    const-string v3, "presentableRouterInfo"

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoPresentableByBssid(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v3, "bestEffortRouterInfo"

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoBestEffortByBssid(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sget-boolean p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 140
    .line 141
    if-eqz p0, :cond_2

    .line 142
    .line 143
    const-string p0, "WifiRouterInfoCollector"

    .line 144
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p1, " - "

    .line 154
    .line 155
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :cond_2
    monitor-exit v1

    .line 173
    return-object v2

    .line 174
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    throw p0
.end method

.method public getWifiRouterInfoPresentable(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "getWifiRouterInfoPresentable - "

    .line 2
    .line 3
    const-string v1, "getWifiRouterInfoPresentable - "

    .line 4
    .line 5
    const-string v2, "getWifiRouterInfoPresentable - "

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const-string p0, ""

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mMapLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v3

    .line 19
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    sget-boolean v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    const-string v4, "WifiRouterInfoCollector"

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " not found."

    .line 42
    .line 43
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getAutoUpgradeConfigKey(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    const-string p0, ""

    .line 70
    .line 71
    monitor-exit v3

    .line 72
    return-object p0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 80
    .line 81
    iget v2, v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 82
    .line 83
    const/4 v4, 0x4

    .line 84
    if-ge v2, v4, :cond_4

    .line 85
    .line 86
    sget-boolean v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    const-string v0, "WifiRouterInfoCollector"

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, " - GWMAC/BSSID may not match. "

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 106
    .line 107
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 112
    .line 113
    iget v1, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, "/6 "

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 124
    .line 125
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :cond_3
    const/4 p0, 0x0

    .line 144
    monitor-exit v3

    .line 145
    return-object p0

    .line 146
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMap:Ljava/util/Map;

    .line 147
    .line 148
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    check-cast p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 153
    .line 154
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v2, "manufacturer"

    .line 162
    .line 163
    const-string v4, ""

    .line 164
    .line 165
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v2, " "

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v2, "modelName"

    .line 178
    .line 179
    const-string v4, ""

    .line 180
    .line 181
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    sget-boolean v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 197
    .line 198
    if-eqz v1, :cond_5

    .line 199
    .line 200
    const-string v1, "WifiRouterInfoCollector"

    .line 201
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p1, " - "

    .line 211
    .line 212
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    :cond_5
    monitor-exit v3

    .line 226
    return-object p0

    .line 227
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    throw p0
.end method

.method public getWifiRouterInfoPresentableByBssid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "getWifiRouterInfoPresentableByBssid - "

    .line 2
    .line 3
    const-string v1, "getWifiRouterInfoPresentableByBssid - "

    .line 4
    .line 5
    const-string v2, "getWifiRouterInfoPresentableByBssid - "

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const-string p0, ""

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v3, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mMapLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v3

    .line 23
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    sget-boolean p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const-string p0, "WifiRouterInfoCollector"

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " not found."

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
    move-result-object p1

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_1
    :goto_0
    const-string p0, ""

    .line 62
    .line 63
    monitor-exit v3

    .line 64
    return-object p0

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 72
    .line 73
    iget v2, v2, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 74
    .line 75
    const/4 v4, 0x4

    .line 76
    if-ge v2, v4, :cond_4

    .line 77
    .line 78
    sget-boolean v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    const-string v0, "WifiRouterInfoCollector"

    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, " - GWMAC/BSSID may not match. "

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 98
    .line 99
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 104
    .line 105
    iget v1, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchCount:I

    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, "/6 "

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 116
    .line 117
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGwToApMacMatchPattern:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :cond_3
    const/4 p0, 0x0

    .line 136
    monitor-exit v3

    .line 137
    return-object p0

    .line 138
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->mWifiRouterInfoMapByBssid:Ljava/util/Map;

    .line 139
    .line 140
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    check-cast p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 145
    .line 146
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 147
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v2, "manufacturer"

    .line 154
    .line 155
    const-string v4, ""

    .line 156
    .line 157
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v2, " "

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v2, "modelName"

    .line 170
    .line 171
    const-string v4, ""

    .line 172
    .line 173
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    sget-boolean v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->DBG:Z

    .line 189
    .line 190
    if-eqz v1, :cond_5

    .line 191
    .line 192
    const-string v1, "WifiRouterInfoCollector"

    .line 193
    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string p1, " - "

    .line 203
    .line 204
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    :cond_5
    monitor-exit v3

    .line 218
    return-object p0

    .line 219
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    throw p0
.end method

.method smToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/16 p0, 0x1000

    .line 2
    .line 3
    if-eq p1, p0, :cond_0

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p0, "what:"

    .line 9
    .line 10
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    const-string p0, "CMD_ARP_TABLE_CHECK_RETRY"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_1
    const-string p0, "CMD_REPORT_SSDP_RESULT"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_2
    const-string p0, "CMD_REPORT_HTTP_RESULT"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_3
    const-string p0, "CMD_CHECK_ROUTER_INFO"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_4
    const-string p0, "CMD_WIFI_ROAM_EVENT"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_5
    const-string p0, "CMD_NETWORK_STATE_CHANGED"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_6
    const-string p0, "CMD_WIFI_STATE_CHANGED"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_7
    const-string p0, "CMD_INITIALIZE"

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    const-string p0, "SemSsdp.SSDP_M_SEARCH_RESULT"

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
