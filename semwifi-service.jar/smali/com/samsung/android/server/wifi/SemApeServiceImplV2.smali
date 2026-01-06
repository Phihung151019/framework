.class public final Lcom/samsung/android/server/wifi/SemApeServiceImplV2;
.super Lcom/samsung/android/server/wifi/SemApeService;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;,
        Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;,
        Lcom/samsung/android/server/wifi/SemApeServiceImplV2$NetworkCallbacks;,
        Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;,
        Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;,
        Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;,
        Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;,
        Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;,
        Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;
    }
.end annotation


# static fields
.field private static final APE_APP_TYPE_NONE:I = 0x0

.field private static final APE_APP_TYPE_OTHER:I = 0x10

.field private static final APE_APP_TYPE_VOIP:I = 0x1

.field private static final APE_EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final APE_EXTRA_MSG_TYPE:Ljava/lang/String; = "msg_type"

.field private static final APE_EXTRA_MSG_TYPE_STREAMING_INFO:Ljava/lang/String; = "STREAMING_INFO"

.field private static final APE_EXTRA_NRT_ALLOC:Ljava/lang/String; = "nrt_alloc"

.field private static final APE_EXTRA_PACKAGE:Ljava/lang/String; = "package"

.field private static final APE_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final APE_EXTRA_UID:Ljava/lang/String; = "uid"

.field private static final APE_INFO_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.APE_INFO"

.field private static final BANDWIDTH_DEDUCTION_FACTOR:D = 0.7

.field private static final DEFAULT_RSSI:I = -0x46

.field private static final ENABLE_APE_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.ENABLE_APE"

.field private static final EVENT_MEDIA_BROADCAST:I = 0xa

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

.field private static final MAX_NRT_ALLOC_THRES:I = 0x32

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

.field private final mApeHandler:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mCurrentRssi:I

.field private mCurrentUserId:I

.field private final mDebugLogger:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

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

.field private mIsMloConnected:Z

.field private mIsMloSupported:Z

.field private mIsRuleApplied:Z

.field private mIsRxSpeedGoogleApiDefaultValue:Z

.field private mIsVpnConnected:Z

.field private mLastNrtAlloc:I

.field private mLastUid:I

.field private mMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

.field private mMinLinkSpeed:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mPrimaryIfaceName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRxLinkSpeed:I

.field private mRxSpeedGoogleApi:I

.field private mStaticNrtAlloc:I

.field private final mStreamingUidList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeLastNrtAllocCaptured:J

.field private mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

.field private mTxLinkSpeed:I

.field private mTxSpeedGoogleApi:I

.field private final mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiConnected:Z

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiRssiLevelThresholds:[I


# direct methods
.method public static synthetic $r8$lambda$jK_ADcK7S5HsMyw77mvOEw2Bjy8(Ljava/lang/StringBuilder;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->lambda$updateWifiRssiLevelThresholds$1(Ljava/lang/StringBuilder;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$wMc0xJqqBAAKmbIQEYykmEApJ7Y(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mApeHandler:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentAppType:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentRssi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentUserId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mDebugLogger:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIfaceHandleMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMloConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsRuleApplied:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRxSpeedGoogleApiDefaultValue(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsRxSpeedGoogleApiDefaultValue:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsVpnConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mLastNrtAlloc:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastUid(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mLastUid:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mMinLinkSpeed:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mPrimaryIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mRxLinkSpeed:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mRxSpeedGoogleApi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStaticNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mStaticNrtAlloc:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStreamingUidList(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mStreamingUidList:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeLastNrtAllocCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTimeLastNrtAllocCaptured:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTxLinkSpeed:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTxSpeedGoogleApi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentAppType:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentRssi:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentUserId:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsRuleApplied:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRxSpeedGoogleApiDefaultValue(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsRxSpeedGoogleApiDefaultValue:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsVpnConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mLastNrtAlloc:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastUid(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mLastUid:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMinLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mMinLinkSpeed:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mRxLinkSpeed:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mRxSpeedGoogleApi:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStaticNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mStaticNrtAlloc:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimeLastNrtAllocCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTimeLastNrtAllocCaptured:J

    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTxLinkSpeed:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTxSpeedGoogleApi:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyRule(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->applyRule(Ljava/lang/String;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckMloConnection(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->checkMloConnection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteRule(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->deleteRule(Ljava/lang/String;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->getIfaceName(Landroid/net/Network;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->interfaceChanged(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misSpeedGoogleApiDefaultValue(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;IZI)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->isSpeedGoogleApiDefaultValue(IZZI)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method static bridge synthetic -$$Nest$misStreaming(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->isStreaming()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mrefreshAllowList(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->refreshAllowList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->removeApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mreplaceRule(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->replaceRule(Ljava/lang/String;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mstoreNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->storeNrtAlloc(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLinkStat(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->updateLinkStat()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 5

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIfaceHandleMap:Ljava/util/HashMap;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mPrimaryIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiConnected:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsVpnConnected:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloSupported:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloConnected:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsRuleApplied:Z

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentAppType:I

    .line 27
    .line 28
    new-instance v1, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mStreamingUidList:Ljava/util/HashSet;

    .line 34
    .line 35
    const/16 v1, -0x46

    .line 36
    .line 37
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentRssi:I

    .line 38
    .line 39
    const/16 v1, -0x4a

    .line 40
    .line 41
    const/16 v2, -0x3f

    .line 42
    .line 43
    const/16 v3, -0x58

    .line 44
    .line 45
    const/16 v4, -0x52

    .line 46
    .line 47
    filled-new-array {v3, v4, v1, v2}, [I

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiRssiLevelThresholds:[I

    .line 52
    .line 53
    new-instance v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mAllowPackageList:Ljava/util/List;

    .line 59
    .line 60
    new-instance v2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mAllowUidList:Ljava/util/List;

    .line 66
    .line 67
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentUserId:I

    .line 68
    .line 69
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mStaticNrtAlloc:I

    .line 70
    .line 71
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$1;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    .line 78
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$2;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$2;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    new-instance p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Landroid/os/Looper;)V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mApeHandler:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;

    .line 97
    .line 98
    new-instance p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 99
    .line 100
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mDebugLogger:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->updateWifiRssiLevelThresholds()V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->registerBroadcastReceivers()V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->registerNetworkCallbacks()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 115
    .line 116
    .line 117
    const-string p1, "com.samsung.android.smartmirroring"

    .line 118
    .line 119
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    const-string p1, "com.google.android.gms"

    .line 123
    .line 124
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    const-string p1, "com.samsung.android.galaxycontinuity"

    .line 128
    .line 129
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    const-string p1, "com.microsoft.appmanager"

    .line 133
    .line 134
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 146
    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string p2, "SemApeService Initialized: ver="

    .line 150
    .line 151
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->VER()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
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
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsVpnConnected:Z

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-nez v2, :cond_4

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->getNMS()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-lt p2, v2, :cond_4

    .line 20
    .line 21
    if-gez p3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->prioritizeAllowListApps(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

    .line 29
    .line 30
    invoke-interface {v4, v2, p3}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I

    .line 31
    .line 32
    .line 33
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " is "

    .line 43
    .line 44
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    const-string v1, ""

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    move v3, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string v1, "NOT "

    .line 56
    .line 57
    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "added to the BPF map"

    .line 61
    .line 62
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    return v3

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

    .line 79
    .line 80
    invoke-interface {v1, v2, p1, p2}, Landroid/os/INetworkManagementService;->addApeRule(ZLjava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, ") bandwidth="

    .line 95
    .line 96
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catch_1
    move-exception p1

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    const-string p1, "addApeRule: TC rule is NOT applied and so deleting the uid from the BPF map"

    .line 116
    .line 117
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const/4 p1, 0x0

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->prioritizeAllowListApps(Z)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

    .line 128
    .line 129
    invoke-interface {p2, p1, p3}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :goto_1
    const-string p2, "Exception while calling addApeRule"

    .line 134
    .line 135
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->sendEventToMediator(Z)V

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_3
    return v3
.end method

.method private checkMloConnection()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloSupported:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiStandardSupported(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloSupported:Z

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "isMloSupported="

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloSupported:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloConnected:Z

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloConnected:Z

    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloSupported:Z

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getAffiliatedMloLinks()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    move v1, v3

    .line 73
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloConnected:Z

    .line 74
    .line 75
    if-eq v0, v1, :cond_2

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, "isMloConnected="

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloConnected:Z

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void
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
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->getNMS()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

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
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

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
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->prioritizeAllowListApps(Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

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
    move-exception p1

    .line 117
    const-string p2, "Exception while calling prioritizeApp"

    .line 118
    .line 119
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_2
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->sendEventToMediator(Z)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_3
    return v2
.end method

.method private getIfaceName(Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mConnectivityManager:Landroid/net/ConnectivityManager;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

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
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsRuleApplied:Z

    .line 6
    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->getNMS()Z

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
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mPrimaryIfaceName:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mPrimaryIfaceName:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mPrimaryIfaceName:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 48
    .line 49
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-interface {v2, v5, v3, v4}, Landroid/os/INetworkManagementService;->addApeRule(ZLjava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    const-string v2, "Either rule is NOT applied or the rule is NOT deleted properly"

    .line 59
    .line 60
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->init()V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 74
    .line 75
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    invoke-interface {v2, v4, p1, v3}, Landroid/os/INetworkManagementService;->addApeRule(ZLjava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, "), so deleting the uid from priority map"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->prioritizeAllowListApps(Z)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 113
    .line 114
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 115
    .line 116
    invoke-interface {v0, v5, v1}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I

    .line 117
    .line 118
    .line 119
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsRuleApplied:Z

    .line 120
    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mDebugLogger:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 122
    .line 123
    const-string v1, "IfaceRuleDel"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, ") bandwidth="

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTrafficMonitor:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 143
    .line 144
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :goto_1
    const-string v1, "Exception while calling addApeRule"

    .line 161
    .line 162
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    :cond_2
    :goto_2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mPrimaryIfaceName:Ljava/lang/String;

    .line 169
    .line 170
    return-void
.end method

.method private isSpeedGoogleApiDefaultValue(IZZI)Z
    .locals 7

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    const/16 v1, 0x9c4

    .line 4
    .line 5
    const/16 v2, 0x2710

    .line 6
    .line 7
    const/16 v3, 0x2ee0

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3, v3}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/16 v5, 0x7530

    .line 14
    .line 15
    filled-new-array {v0, v1, v2, v5, v5}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    filled-new-array {v4, v0}, [[I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/16 v1, 0x5dc

    .line 24
    .line 25
    const/16 v2, 0x1d4c

    .line 26
    .line 27
    filled-new-array {v1, v2, v3, v3, v3}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const v4, 0xea60

    .line 32
    .line 33
    .line 34
    filled-new-array {v1, v2, v5, v4, v4}, [I

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    filled-new-array {v3, v1}, [[I

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    filled-new-array {v0, v1}, [[[I

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x1

    .line 47
    xor-int/2addr p2, v1

    .line 48
    xor-int/2addr p3, v1

    .line 49
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiRssiLevelThresholds:[I

    .line 50
    .line 51
    array-length v2, v2

    .line 52
    const/4 v3, 0x0

    .line 53
    move v4, v3

    .line 54
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiRssiLevelThresholds:[I

    .line 55
    .line 56
    array-length v6, v5

    .line 57
    if-ge v4, v6, :cond_1

    .line 58
    .line 59
    aget v5, v5, v4

    .line 60
    .line 61
    if-ge p4, v5, :cond_0

    .line 62
    .line 63
    move v2, v4

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    :goto_1
    aget-object p0, v0, p2

    .line 69
    .line 70
    aget-object p0, p0, p3

    .line 71
    .line 72
    aget p0, p0, v2

    .line 73
    .line 74
    if-ne p1, p0, :cond_2

    .line 75
    .line 76
    return v1

    .line 77
    :cond_2
    return v3
.end method

.method private isStreaming()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mStreamingUidList:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method private synthetic lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mApeHandler:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;

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

.method private static synthetic lambda$updateWifiRssiLevelThresholds$1(Ljava/lang/StringBuilder;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    const-string p1, " "

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private prioritizeAllowListApps(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mAllowUidList:Ljava/util/List;

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
    if-eqz v1, :cond_0

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
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->prioritizeUid(ZI)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private prioritizeUid(ZI)V
    .locals 3

    .line 1
    const-string v0, "AllowList: prioritizeApp: UID="

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->getNMS()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

    .line 11
    .line 12
    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->prioritizeApp(ZI)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, " is "

    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    const-string p2, ""

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p2, "NOT "

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const-string p1, "added to "

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const-string p1, "deleted from "

    .line 45
    .line 46
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, "the BPF map"

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    return-void

    .line 65
    :catch_0
    move-exception p0

    .line 66
    const-string p1, "Exception while calling addApeRule"

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
    :goto_2
    return-void
.end method

.method private refreshAllowList()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mAllowUidList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mAllowPackageList:Ljava/util/List;

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
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mAllowUidList:Ljava/util/List;

    .line 38
    .line 39
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 40
    .line 41
    iget v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentUserId:I

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
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentUserId:I

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mAllowUidList:Ljava/util/List;

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
    const-string v1, "com.samsung.android.wifi.APE_INFO"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "com.samsung.android.wifi.SET_APE_STATIC"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private registerNetworkCallbacks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$NetworkCallbacks;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$NetworkCallbacks;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 34
    .line 35
    invoke-virtual {v2, v1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 39
    .line 40
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/16 v2, 0xf

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 66
    .line 67
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private removeApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsRuleApplied:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mPrimaryIfaceName:Ljava/lang/String;

    .line 6
    .line 7
    iget v1, p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 8
    .line 9
    iget p1, p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->deleteRule(Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsRuleApplied:Z

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mDebugLogger:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 18
    .line 19
    const-string p1, "RuleDel"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private replaceRule(Ljava/lang/String;II)I
    .locals 3

    .line 1
    const-string v0, "replaceApeRule="

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsVpnConnected:Z

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->getNMS()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-lt p2, v1, :cond_1

    .line 18
    .line 19
    if-ge p3, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsRuleApplied:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mNetd:Landroid/os/INetworkManagementService;

    .line 27
    .line 28
    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->replaceApeRule(Ljava/lang/String;II)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, " ("

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mPrimaryIfaceName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, ") new bandwidth="

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return v2

    .line 69
    :catch_0
    move-exception p0

    .line 70
    const-string p1, "Exception while calling replaceRule"

    .line 71
    .line 72
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    return v2
.end method

.method private sendEventToMediator(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "sendEventToMediator("

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->notifyRealtimePerformanceDegraded()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->notifyRealtimePerformanceRecovered()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private storeNrtAlloc(II)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTimeLastNrtAllocCaptured:J

    .line 6
    .line 7
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mLastNrtAlloc:I

    .line 8
    .line 9
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mLastUid:I

    .line 10
    .line 11
    return-void
.end method

.method private updateLinkStat()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mIsMloConnected:Z

    .line 13
    .line 14
    const-string v2, ") RSSI="

    .line 15
    .line 16
    const-string v3, " T="

    .line 17
    .line 18
    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, -0x1

    .line 42
    move v6, v1

    .line 43
    move v7, v6

    .line 44
    move v8, v7

    .line 45
    move v9, v8

    .line 46
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    if-eqz v10, :cond_4

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    check-cast v10, Landroid/net/wifi/MloLink;

    .line 57
    .line 58
    invoke-virtual {v10}, Landroid/net/wifi/MloLink;->getRssi()I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const/16 v12, -0x7f

    .line 63
    .line 64
    if-ne v11, v12, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {v10}, Landroid/net/wifi/MloLink;->getRxLinkSpeedMbps()I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    invoke-virtual {v10}, Landroid/net/wifi/MloLink;->getTxLinkSpeedMbps()I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    if-le v11, v7, :cond_2

    .line 76
    .line 77
    invoke-virtual {v10}, Landroid/net/wifi/MloLink;->getRssi()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v10}, Landroid/net/wifi/MloLink;->getBand()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    move v9, v7

    .line 86
    move v7, v11

    .line 87
    move v8, v12

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    if-eq v6, v1, :cond_5

    .line 90
    .line 91
    int-to-double v0, v7

    .line 92
    mul-double/2addr v0, v4

    .line 93
    double-to-int v0, v0

    .line 94
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mRxLinkSpeed:I

    .line 95
    .line 96
    int-to-double v7, v8

    .line 97
    mul-double/2addr v7, v4

    .line 98
    double-to-int v1, v7

    .line 99
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTxLinkSpeed:I

    .line 100
    .line 101
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mMinLinkSpeed:I

    .line 106
    .line 107
    iput v6, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentRssi:I

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v1, "MLO deducted link capacity(M: R="

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mRxLinkSpeed:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTxLinkSpeed:I

    .line 125
    .line 126
    const-string v1, " band="

    .line 127
    .line 128
    invoke-static {v0, p0, v2, v6, v1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_1
    return-void

    .line 142
    :cond_6
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    int-to-double v6, v1

    .line 147
    mul-double/2addr v6, v4

    .line 148
    double-to-int v1, v6

    .line 149
    const/4 v6, 0x1

    .line 150
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mRxLinkSpeed:I

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    int-to-double v7, v1

    .line 161
    mul-double/2addr v7, v4

    .line 162
    double-to-int v1, v7

    .line 163
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTxLinkSpeed:I

    .line 168
    .line 169
    iget v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mRxLinkSpeed:I

    .line 170
    .line 171
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mMinLinkSpeed:I

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentRssi:I

    .line 182
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v1, "Deducted link capacity (M: R="

    .line 186
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mRxLinkSpeed:I

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mTxLinkSpeed:I

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mCurrentRssi:I

    .line 207
    .line 208
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method


# virtual methods
.method protected VER()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "2.1.0"

    .line 2
    .line 3
    return-object p0
.end method

.method public registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 1

    .line 1
    const-string v0, "SemClientModeManager registered"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setMediator(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2
    .line 3
    return-void
.end method

.method updateWifiRssiLevelThresholds()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/net/wifi/WifiContext;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/net/wifi/WifiContext;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f010016

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    array-length v1, v0

    .line 20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiRssiLevelThresholds:[I

    .line 21
    .line 22
    array-length v2, v2

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->mWifiRssiLevelThresholds:[I

    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "WifiRssiLevelThresholds="

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception p0

    .line 58
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method
