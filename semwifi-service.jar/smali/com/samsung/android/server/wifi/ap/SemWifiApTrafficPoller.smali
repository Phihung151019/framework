.class public Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;
    }
.end annotation


# static fields
.field private static final CHECK_TO_DEALY_TIME:I = 0xbb8

.field private static final CHECK_TO_TPUTLOG_TIME:I = 0x2710

.field private static final GETSTAINFO_RET_COUNT:I = 0x18

.field private static final INTERFACE_NAME_OF_DUAL:Ljava/lang/String; = "ap_br_swlan0"

.field private static final INTERFACE_NAME_OF_SWLAN0:Ljava/lang/String; = "swlan0"

.field private static final INTERFACE_NAME_OF_WLAN:Ljava/lang/String; = "wlan0"

.field private static final INTERFACE_NAME_OF_WLAN2:Ljava/lang/String; = "wlan2"

.field private static final KDI_SET_ANTENNA:I = 0xb

.field private static final MAX_PACKET_RECORDS:I = 0x1f4

.field private static final SET_CHANGE_PCIE_CORE:I = 0x3

.field private static final START_PACKET_LOG:I = 0x4

.field private static final START_TPUT_LOG:I = 0x6

.field private static final START_TRAFFIC_CHECK:I = 0x1

.field private static final STOP_PACKET_LOG:I = 0x5

.field private static final STOP_TPUT_LOG:I = 0x7

.field private static final STOP_TRAFFIC_CHECK:I = 0x2

.field private static final SUPPORTDUALSOFTAP_SPF:Z = false

.field private static final TAG:Ljava/lang/String; = "SemWifiApTrafficPoller"

.field private static final sPktLogsMhs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApInterfaceName:Ljava/lang/String;

.field private mClientSizeOfSwlan0:I

.field private mClientSizeOfWlan2:I

.field private mConnectivityPacketLogForDualHotspot:Landroid/util/LocalLog;

.field private mConnectivityPacketLogForHotspot:Landroid/util/LocalLog;

.field private mConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

.field private mContext:Landroid/content/Context;

.field private mHotspotEnabled:Z

.field private mIsSupportWifiSharing:Z

.field private mMHSTputDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxRxBytes:J

.field private mMaxTxBytes:J

.field private mPacketTrackerForDualHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

.field private mPacketTrackerForHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

.field private mPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

.field private mRxBytesInterface1:J

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private mStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

.field private mTxBytesInterface1:J

.field private mUsedDual:Z

.field private final mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

.field private mWifiApTrafficPollerWorkThread:Landroid/os/HandlerThread;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private preRxBytesInterface1:J

.field private preTxBytesInterface1:J

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

.field private staList:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$8paDLoP_0nunupSb-cQF8xsgy8A(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "GET_STATION_INFO_SWLAN0 ALL"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->lambda$checkTpHotspot$1(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$dt1xVO_AH4mC-fSN2WM65_B73wo(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->lambda$new$0(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$yaGH32_CsAYX3bjB5_UcKCg0CsI(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "GET_STATION_INFO_WLAN2 ALL"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->lambda$checkTpHotspot$2(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityPacketLogForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForDualHotspot:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForHotspot:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSupportWifiSharing(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mIsSupportWifiSharing:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketTrackerForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForDualHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsedDual(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mUsedDual:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClientSizeOfSwlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mClientSizeOfSwlan0:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClientSizeOfWlan2(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mClientSizeOfWlan2:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/util/LocalLog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForHotspot:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/util/LocalLog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPacketTrackerForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForDualHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForWlan0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsedDual(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mUsedDual:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcreatePacketTracker(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->createPacketTracker(Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetsPktLogsMhs()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->sPktLogsMhs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->sPktLogsMhs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preTxBytesInterface1:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preRxBytesInterface1:J

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mClientSizeOfSwlan0:I

    .line 12
    .line 13
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mClientSizeOfWlan2:I

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->staList:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkThread:Landroid/os/HandlerThread;

    .line 23
    .line 24
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mHotspotEnabled:Z

    .line 25
    .line 26
    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 32
    .line 33
    new-instance p2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mMHSTputDumpLogs:Ljava/util/List;

    .line 39
    .line 40
    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$2;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 58
    .line 59
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 68
    .line 69
    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private createPacketTracker(Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;-><init>(Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string p2, "Failed to get ConnectivityPacketTracker object: "

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "SemWifiApTrafficPoller"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method private getAOSPWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "wifi"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getWifiApInterfaceName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getSoftApInterfaceName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private synthetic lambda$checkTpHotspot$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$checkTpHotspot$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$new$0(IIILjava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    .line 2
    .line 3
    const-string p3, "SemWifiApTrafficPoller"

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 p2, 0xd

    .line 9
    .line 10
    const/16 p4, 0xb

    .line 11
    .line 12
    if-ne p1, p2, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mHotspotEnabled:Z

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "hotspot turned on , mApInterfaceName : "

    .line 27
    .line 28
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string p3, "wifi_ap_kdi_selection_ant"

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-ne p2, p1, :cond_0

    .line 57
    .line 58
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 59
    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    const-wide/16 p2, 0x7d0

    .line 63
    .line 64
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    const/4 p2, 0x4

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 76
    .line 77
    const-wide/16 p3, 0x1f4

    .line 78
    .line 79
    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    if-eq p1, p4, :cond_2

    .line 84
    .line 85
    const/16 p2, 0xe

    .line 86
    .line 87
    if-ne p1, p2, :cond_3

    .line 88
    .line 89
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 90
    .line 91
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mStaInfoStateListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mHotspotEnabled:Z

    .line 98
    .line 99
    const-string p1, "hotspot turned off"

    .line 100
    .line 101
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    const-wide/16 p1, 0x0

    .line 105
    .line 106
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preTxBytesInterface1:J

    .line 107
    .line 108
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    const/4 p2, 0x5

    .line 113
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 117
    .line 118
    const-wide/16 p3, 0x3e8

    .line 119
    .line 120
    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    .line 122
    .line 123
    :cond_3
    return-void
.end method


# virtual methods
.method public addMHSTputDumpLog(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 14
    .line 15
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    .line 17
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "\n"

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mMHSTputDumpLogs:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/16 v1, 0xc8

    .line 62
    .line 63
    if-le p1, v1, :cond_0

    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mMHSTputDumpLogs:Ljava/util/List;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mMHSTputDumpLogs:Ljava/util/List;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    :catch_0
    return-void
.end method

.method public checkTpHotspot()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mHotspotEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "checkTpHotspot mHotspotEnabled :"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mHotspotEnabled:Z

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "SemWifiApTrafficPoller"

    .line 22
    .line 23
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mClientSizeOfSwlan0:I

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-lez v0, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/String;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->staList:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    const-string v0, "S0"

    .line 61
    .line 62
    iget v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mClientSizeOfSwlan0:I

    .line 63
    .line 64
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->parseAndUpdateStaInfo(Ljava/lang/String;I)Z

    .line 65
    .line 66
    .line 67
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mClientSizeOfWlan2:I

    .line 68
    .line 69
    if-lez v0, :cond_2

    .line 70
    .line 71
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$$ExternalSyntheticLambda1;

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/lang/String;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->staList:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    const-string v0, "W2"

    .line 96
    .line 97
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mClientSizeOfWlan2:I

    .line 98
    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->parseAndUpdateStaInfo(Ljava/lang/String;I)Z

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 103
    .line 104
    const/4 v0, 0x6

    .line 105
    const-wide/16 v1, 0x2710

    .line 106
    .line 107
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public determineMaximumTpHotspot()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mHotspotEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mTxBytesInterface1:J

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mRxBytesInterface1:J

    .line 29
    .line 30
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mTxBytesInterface1:J

    .line 31
    .line 32
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preTxBytesInterface1:J

    .line 33
    .line 34
    sub-long/2addr v2, v4

    .line 35
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mMaxTxBytes:J

    .line 36
    .line 37
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preRxBytesInterface1:J

    .line 38
    .line 39
    sub-long/2addr v0, v2

    .line 40
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mMaxRxBytes:J

    .line 41
    .line 42
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mTxBytesInterface1:J

    .line 43
    .line 44
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preTxBytesInterface1:J

    .line 45
    .line 46
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mRxBytesInterface1:J

    .line 47
    .line 48
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->preRxBytesInterface1:J

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    const-wide/16 v1, 0xbb8

    .line 54
    .line 55
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public getDumpLogs()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/lang/StringBuffer;

    .line 6
    .line 7
    const-string v3, "-- Hotspot Pkt \ntime, ifName, numOfSta, rssi, tx_pkt, tx_fail, tx_ret, (tx_rate), rx_pkt, rx_fail, rx_ret, (rx_rate)\n"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mMHSTputDumpLogs:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public getPacketDumpLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForHotspot:Landroid/util/LocalLog;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    const-string v2, "SemWifiApTrafficPoller connectivity packet log: swlan0"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mPacketTrackerForHotspot:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->addDnsLogsInDump()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForHotspot:Landroid/util/LocalLog;

    .line 25
    .line 26
    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "SemWifiApTrafficPoller connectivity packet log: wlan0"

    .line 30
    .line 31
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mIsSupportWifiSharing:Z

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mConnectivityPacketLogForWlan0:Landroid/util/LocalLog;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string p0, "SemWifiApTrafficPoller mConnectivityPacketLogForHotspot is null"

    .line 47
    .line 48
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public handleBootCompleted()V
    .locals 5

    .line 1
    const-string v0, "first on mWifiApTrafficPollerWorkThread start"

    .line 2
    .line 3
    const-string v1, "SemWifiApTrafficPoller"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkThread:Landroid/os/HandlerThread;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkThread:Landroid/os/HandlerThread;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->getWifiApInterfaceName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 46
    .line 47
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharingLite()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 79
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mIsSupportWifiSharing:Z

    .line 80
    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->sPktLogsMhs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    .line 87
    new-instance v3, Landroid/util/LocalLog;

    .line 88
    .line 89
    const/16 v4, 0x1f4

    .line 90
    .line 91
    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mIsSupportWifiSharing:Z

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    new-instance v0, Landroid/util/LocalLog;

    .line 102
    .line 103
    invoke-direct {v0, v4}, Landroid/util/LocalLog;-><init>(I)V

    .line 104
    .line 105
    .line 106
    const-string v3, "wlan0"

    .line 107
    .line 108
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->getAOSPWifiManager()Landroid/net/wifi/WifiManager;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v2, Landroid/os/HandlerExecutor;

    .line 116
    .line 117
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mWifiApTrafficPollerWorkHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    .line 118
    .line 119
    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 123
    .line 124
    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v2, "mApInterfaceName : "

    .line 130
    .line 131
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mApInterfaceName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, " mIsSupportWifiSharing "

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->mIsSupportWifiSharing:Z

    .line 145
    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public parseAndUpdateStaInfo(Ljava/lang/String;I)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "checkTpHotspot parsing error"

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->staList:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "\\s"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    array-length v3, v2

    .line 14
    const/16 v4, 0x18

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const-string v6, "SemWifiApTrafficPoller"

    .line 18
    .line 19
    if-eq v3, v4, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "checkTpHotspot getStationInfo count: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    array-length v1, v2

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v5

    .line 40
    :cond_0
    const/16 v3, 0xf

    .line 41
    .line 42
    :try_start_0
    aget-object v3, v2, v3

    .line 43
    .line 44
    const/16 v4, 0x10

    .line 45
    .line 46
    aget-object v4, v2, v4

    .line 47
    .line 48
    const/16 v7, 0x11

    .line 49
    .line 50
    aget-object v7, v2, v7

    .line 51
    .line 52
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    const/16 v9, 0x12

    .line 57
    .line 58
    aget-object v9, v2, v9

    .line 59
    .line 60
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v9

    .line 64
    const/16 v11, 0x13

    .line 65
    .line 66
    aget-object v11, v2, v11

    .line 67
    .line 68
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v11

    .line 72
    const/16 v13, 0x14

    .line 73
    .line 74
    aget-object v13, v2, v13

    .line 75
    .line 76
    const/16 v14, 0x15

    .line 77
    .line 78
    aget-object v14, v2, v14

    .line 79
    .line 80
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v14

    .line 84
    const/16 v16, 0x16

    .line 85
    .line 86
    aget-object v16, v2, v16
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 87
    .line 88
    move/from16 v17, v5

    .line 89
    .line 90
    move-object/from16 v18, v6

    .line 91
    .line 92
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    const/16 v16, 0x17

    .line 97
    .line 98
    aget-object v2, v2, v16

    .line 99
    .line 100
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    move-object/from16 v16, v13

    .line 110
    .line 111
    move-object/from16 v13, p1

    .line 112
    .line 113
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v13, ", "

    .line 117
    .line 118
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-wide/from16 v17, v1

    .line 122
    .line 123
    move/from16 v1, p2

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v13, v7, v8, v13}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", ("

    .line 141
    .line 142
    invoke-static {v0, v13, v11, v12, v1}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, "), "

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v13, v5, v6, v13}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    move-wide/from16 v2, v17

    .line 160
    .line 161
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    move-object/from16 v1, v16

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ")"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    move-object/from16 v1, p0

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->addMHSTputDumpLog(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const/4 v0, 0x1

    .line 187
    return v0

    .line 188
    :catch_0
    move-object/from16 v0, v18

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :catch_1
    move-object/from16 v0, v18

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :catch_2
    move-object/from16 v0, v18

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :catch_3
    move/from16 v17, v5

    .line 198
    .line 199
    move-object v0, v6

    .line 200
    goto :goto_0

    .line 201
    :catch_4
    move/from16 v17, v5

    .line 202
    .line 203
    move-object v0, v6

    .line 204
    goto :goto_1

    .line 205
    :catch_5
    move/from16 v17, v5

    .line 206
    .line 207
    move-object v0, v6

    .line 208
    goto :goto_2

    .line 209
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    return v17

    .line 213
    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    return v17

    .line 217
    :goto_2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    return v17
.end method

.method public setPowerSavingTime(I)V
    .locals 1

    .line 1
    const-string p0, "dump funtion setPowerSavingTime = "

    .line 2
    .line 3
    const-string v0, "SemWifiApTrafficPoller"

    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
