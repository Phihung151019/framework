.class public final Lcom/samsung/android/server/wifi/SemApeServiceImplV1;
.super Lcom/samsung/android/server/wifi/SemApeService;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;,
        Lcom/samsung/android/server/wifi/SemApeServiceImplV1$NetworkCallbacks;,
        Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;
    }
.end annotation


# static fields
.field private static final APE_APP_TYPE_NONE:I = 0x0

.field private static final APE_APP_TYPE_OTHER:I = 0x10

.field private static final APE_APP_TYPE_VOIP:I = 0x1

.field private static final APE_EXTRA_BANDWIDTH:Ljava/lang/String; = "bandwidth"

.field private static final APE_EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final APE_EXTRA_PACKAGE:Ljava/lang/String; = "package"

.field private static final APE_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final APE_EXTRA_UID:Ljava/lang/String; = "uid"

.field private static final BANDWIDTH_LIMIT_FACTOR:D = 0.7

.field private static final ENABLE_APE_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.ENABLE_APE"

.field private static final EVENT_NET_CAPABILITIES:I = 0x5

.field private static final EVENT_PERIODIC:I = 0x1

.field private static final EVENT_PRIMARY_IFACE_CHANGED:I = 0x6

.field private static final EVENT_START:I = 0x0

.field private static final EVENT_STOP:I = 0x2

.field private static final EVENT_USER_SWITCHED:I = 0x7

.field private static final EVENT_VPN_CONNECTED:I = 0x8

.field private static final EVENT_VPN_DISCONNECTED:I = 0x9

.field private static final EVENT_WIFI_CONNECTED:I = 0x3

.field private static final EVENT_WIFI_DISCONNECTED:I = 0x4

.field private static final MAX_SMOOTHED_BW_THRES:I = 0x32

.field private static final MAX_TIME_STORE:J = 0x7530L

.field private static final SET_APE_STATIC_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.SET_APE_STATIC"

.field private static final TRAFFIC_POLL_INTERVAL:I = 0x3e8


# instance fields
.field private final mAllowPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApeHandler:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mCurrentUserId:I

.field private mDefaultNwCallback:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$NetworkCallbacks;

.field private mGoogleEstimatedRxBandwidth:I

.field private mGoogleEstimatedTxBandwidth:I

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

.field private mIsVpnConnected:Z

.field private mLatestBandwidth:I

.field private mLatestUid:I

.field private mMaxRxLinkSpeed:I

.field private mMaxTxLinkSpeed:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mPrimaryIfaceName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRulesApplied:Z

.field private mStaticBandwidth:I

.field private mTimeLatestBandwidthCaptured:J

.field private mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

.field private final mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiConnected:Z


# direct methods
.method public static synthetic $r8$lambda$OsFqFyrprpG-rV4JH7aiHXxe3Kw(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mApeHandler:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mCurrentAppType:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mCurrentUserId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoogleEstimatedRxBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mGoogleEstimatedRxBandwidth:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoogleEstimatedTxBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mGoogleEstimatedTxBandwidth:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mIfaceHandleMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mIsVpnConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mLatestBandwidth:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestUid(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mLatestUid:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mMaxRxLinkSpeed:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mMaxTxLinkSpeed:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mPrimaryIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mRulesApplied:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mStaticBandwidth:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mTimeLatestBandwidthCaptured:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mWifiConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mCurrentAppType:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mCurrentUserId:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGoogleEstimatedRxBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mGoogleEstimatedRxBandwidth:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGoogleEstimatedTxBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mGoogleEstimatedTxBandwidth:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mIsVpnConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mLatestBandwidth:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatestUid(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mLatestUid:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mMaxRxLinkSpeed:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mMaxTxLinkSpeed:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mRulesApplied:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mStaticBandwidth:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mTimeLatestBandwidthCaptured:J

    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mWifiConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyRule(IILcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p2, p3, p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->applyRule(Ljava/lang/String;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mdeleteRule(IILcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p2, p3, p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->deleteRule(Ljava/lang/String;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->getIfaceName(Landroid/net/Network;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->interfaceChanged(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshAllowList(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->refreshAllowList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->removeApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mreplaceRule(IILcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p2, p3, p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->replaceRule(Ljava/lang/String;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mIfaceHandleMap:Ljava/util/HashMap;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mPrimaryIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mWifiConnected:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mIsVpnConnected:Z

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mCurrentAppType:I

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mAllowPackageList:Ljava/util/List;

    .line 28
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mAllowUidList:Ljava/util/List;

    .line 35
    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mCurrentUserId:I

    .line 37
    .line 38
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mStaticBandwidth:I

    .line 39
    .line 40
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    .line 47
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$2;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$2;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    new-instance p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Landroid/os/Looper;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mApeHandler:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->registerBroadcastReceivers()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->registerNetworkCallbacks()V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 74
    .line 75
    .line 76
    const-string p1, "com.samsung.android.smartmirroring"

    .line 77
    .line 78
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    const-string p1, "com.google.android.gms"

    .line 82
    .line 83
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string p1, "com.samsung.android.galaxycontinuity"

    .line 87
    .line 88
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    const-string p1, "com.microsoft.appmanager"

    .line 92
    .line 93
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p2, "SemApeService Initialized: ver="

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->VER()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method private applyRule(Ljava/lang/String;II)I
    .locals 6

    .line 1
    const-string v0, "addApeRule: rule is added for ("

    .line 2
    .line 3
    const-string v1, "prioritizeApp: UID="

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->getNMS()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, -0x1

    .line 10
    if-eqz v2, :cond_4

    .line 11
    .line 12
    if-eqz p1, :cond_4

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-lt p2, v2, :cond_4

    .line 16
    .line 17
    if-gez p3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->prioritizeAllowListApps(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 25
    .line 26
    invoke-interface {v4, v2, p3}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I

    .line 27
    .line 28
    .line 29
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " is "

    .line 39
    .line 40
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    const-string v1, ""

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    move v3, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string v1, "NOT "

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "added to the BPF map"

    .line 57
    .line 58
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    return v3

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 75
    .line 76
    invoke-interface {v1, v2, p1, p2}, Landroid/os/INetworkManagementService;->addApeRule(ZLjava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    if-nez v3, :cond_3

    .line 81
    .line 82
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, ") bandwidth="

    .line 91
    .line 92
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return v3

    .line 109
    :catch_1
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const-string p1, "addApeRule: TC rule is NOT applied and so deleting the uid from the BPF map"

    .line 112
    .line 113
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 p1, 0x0

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->prioritizeAllowListApps(Z)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 124
    .line 125
    invoke-interface {p0, p1, p3}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    .line 127
    .line 128
    return v3

    .line 129
    :goto_1
    const-string p1, "Exception while calling addApeRule"

    .line 130
    .line 131
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_2
    return v3
.end method

.method private deleteRule(Ljava/lang/String;II)I
    .locals 7

    .line 1
    const-string v0, "prioritizeApp: UID="

    .line 2
    .line 3
    const-string v1, "addApeRule: rule is "

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->getNMS()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    const-string v3, "NOT "

    .line 17
    .line 18
    const-string v4, ""

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-lez p2, :cond_2

    .line 22
    .line 23
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 24
    .line 25
    invoke-interface {v6, v5, p1, p2}, Landroid/os/INetworkManagementService;->addApeRule(ZLjava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    move-object p2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p2, v3

    .line 39
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, "deleted for UID="

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    const-string p2, "Exception while calling addApeRule"

    .line 63
    .line 64
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    if-lez p3, :cond_4

    .line 71
    .line 72
    :try_start_1
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->prioritizeAllowListApps(Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 76
    .line 77
    invoke-interface {p1, v5, p3}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p2, " is "

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    move-object v3, v4

    .line 97
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p2, "deleted from the BPF map"

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catch_1
    move-exception p0

    .line 117
    const-string p1, "Exception while calling prioritizeApp"

    .line 118
    .line 119
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_2
    return v2
.end method

.method private getIfaceName(Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, ""

    .line 17
    .line 18
    return-object p0
.end method

.method private getNMS()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "network_management"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "getNMS: IBinder returned is null"

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_2
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method private interfaceChanged(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "addApeRule: rule is changed with new interface ("

    .line 2
    .line 3
    const-string v1, "addApeRule: rule is NOT applied while changing the interface ("

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mRulesApplied:Z

    .line 6
    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->getNMS()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mPrimaryIfaceName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mPrimaryIfaceName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mPrimaryIfaceName:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 48
    .line 49
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-interface {v2, v5, v3, v4}, Landroid/os/INetworkManagementService;->addApeRule(ZLjava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    const-string v2, "Either rule is NOT applied or the rule is NOT deleted properly"

    .line 63
    .line 64
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$minitVariables(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 78
    .line 79
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 84
    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-interface {v2, v4, p1, v3}, Landroid/os/INetworkManagementService;->addApeRule(ZLjava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_1

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, "), so deleting the uid from priority map"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->prioritizeAllowListApps(Z)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 121
    .line 122
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 127
    .line 128
    invoke-interface {v0, v5, v1}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I

    .line 129
    .line 130
    .line 131
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mRulesApplied:Z

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v0, ") bandwidth="

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 154
    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :goto_1
    const-string v1, "Exception while calling addApeRule"

    .line 170
    .line 171
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    :cond_2
    :goto_2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mPrimaryIfaceName:Ljava/lang/String;

    .line 178
    .line 179
    return-void
.end method

.method private synthetic lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mApeHandler:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private prioritizeAllowListApps(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mAllowUidList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
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
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 24
    .line 25
    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "AllowList: prioritizeApp: UID="

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " is "

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    const-string v1, ""

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    goto :goto_3

    .line 54
    :cond_0
    const-string v1, "NOT "

    .line 55
    .line 56
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    const-string v1, "added to "

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    const-string v1, "deleted from "

    .line 65
    .line 66
    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, "the BPF map"

    .line 70
    .line 71
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_3
    const-string v2, "Exception while calling addApeRule"

    .line 86
    .line 87
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return-void
.end method

.method private refreshAllowList()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mAllowUidList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mAllowPackageList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    const v3, 0x400080

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mAllowUidList:Ljava/util/List;

    .line 38
    .line 39
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 40
    .line 41
    iget v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mCurrentUserId:I

    .line 42
    .line 43
    const v5, 0x186a0

    .line 44
    .line 45
    .line 46
    mul-int/2addr v4, v5

    .line 47
    add-int/2addr v4, v2

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 57
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Current userId="

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mCurrentUserId:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", total allowed UIDs="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mAllowUidList:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.samsung.android.wifi.ENABLE_APE"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.samsung.android.wifi.SET_APE_STATIC"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private registerNetworkCallbacks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$NetworkCallbacks;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$NetworkCallbacks;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mDefaultNwCallback:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$NetworkCallbacks;

    .line 20
    .line 21
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mDefaultNwCallback:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$NetworkCallbacks;

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 43
    .line 44
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/16 v2, 0xf

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 70
    .line 71
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 1

    .line 1
    const-string v0, "SemClientModeManager registered"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private removeApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mRulesApplied:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mPrimaryIfaceName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 12
    .line 13
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget p1, p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 18
    .line 19
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->deleteRule(Ljava/lang/String;II)I

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mRulesApplied:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private replaceRule(Ljava/lang/String;II)I
    .locals 3

    .line 1
    const-string v0, "replaceApeRule="

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->getNMS()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-lt p2, v1, :cond_1

    .line 14
    .line 15
    if-ge p3, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mRulesApplied:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mNetd:Landroid/os/INetworkManagementService;

    .line 23
    .line 24
    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->replaceApeRule(Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p2, " ("

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mPrimaryIfaceName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, ") new bandwidth="

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    return v2

    .line 65
    :catch_0
    move-exception p0

    .line 66
    const-string p1, "Exception while calling replaceRule"

    .line 67
    .line 68
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method protected VER()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "1.0.3"

    .line 2
    .line 3
    return-object p0
.end method

.method storeBgBandwidth(II)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mTimeLatestBandwidthCaptured:J

    .line 6
    .line 7
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mLatestBandwidth:I

    .line 8
    .line 9
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->mLatestUid:I

    .line 10
    .line 11
    return-void
.end method
