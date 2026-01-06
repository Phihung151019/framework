.class public Lcom/samsung/android/server/wifi/SemQboxController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final DUMP_TITLE:Ljava/lang/String;

.field private static final EVENT_DISABLE_MSCS:I = 0x7

.field private static final EVENT_MSCS_SET_POLICY:I = 0x5

.field private static final EVENT_PRIMARY_IFACE_CHANGED:I = 0x1

.field private static final EVENT_QBOX_ADD_UID:I = 0x2

.field private static final EVENT_QBOX_REMOVE_ALL:I = 0x4

.field private static final EVENT_QBOX_REMOVE_UID:I = 0x3

.field private static final EVENT_TRIGGER_MSCS:I = 0x6

.field private static final EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final EXTRA_UID:Ljava/lang/String; = "uid"

.field private static final MSCS_FRAME_CLASSIFIER_FIELDS:I = 0x20

.field private static final MSCS_POLL_INTERVAL:I = 0xea60

.field private static final MSCS_SUPPORTED_MIN_VERSION:I = 0x3

.field private static final MSCS_USER_PRIORITY_BITMAP:I = 0xf0

.field private static final MSCS_USER_PRIORITY_LIMIT:I = 0x7

.field private static final NO_RESTRICTION:I = 0x0

.field private static final QBOX_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.QBOX"

.field public static final TAG:Ljava/lang/String; = "SemQboxController"

.field private static final VER:Ljava/lang/String; = "1.0.0"

.field private static final WLAN_EID_EXT_CAPAB:I = 0x7f

.field private static final WLAN_EXT_CAPAB_MSCS:I = 0x55


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInterfaceVersion:I

.field private mIsMscsEnabled:Z

.field private mIsMscsResent:Z

.field private mIsMscsSupportedByAp:Z

.field private mMscsParams:Landroid/net/wifi/MscsParams;

.field private mMscsPolicyEnabled:Z

.field private mMscsSupportedUniqueApCount:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNumOfUids:I

.field private mPrimaryIfaceName:Ljava/lang/String;

.field private final mQboxUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTotalUniqueApCount:I

.field private final mUniqueApMacs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method public static synthetic $r8$lambda$6af9ImB-VU8cpwxyBS3fX-ndH14(Lcom/samsung/android/server/wifi/SemQboxController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemQboxController;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemQboxController;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMscsEnabled(Lcom/samsung/android/server/wifi/SemQboxController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMscsResent(Lcom/samsung/android/server/wifi/SemQboxController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsResent:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMscsParams(Lcom/samsung/android/server/wifi/SemQboxController;)Landroid/net/wifi/MscsParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mMscsParams:Landroid/net/wifi/MscsParams;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMscsPolicyEnabled(Lcom/samsung/android/server/wifi/SemQboxController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mMscsPolicyEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/SemQboxController;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsMscsEnabled(Lcom/samsung/android/server/wifi/SemQboxController;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMscsResent(Lcom/samsung/android/server/wifi/SemQboxController;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsResent:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMscsPolicyEnabled(Lcom/samsung/android/server/wifi/SemQboxController;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mMscsPolicyEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$maddUidInternal(Lcom/samsung/android/server/wifi/SemQboxController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->addUidInternal(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableMscs(Lcom/samsung/android/server/wifi/SemQboxController;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemQboxController;->disableMscs(Z)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method static bridge synthetic -$$Nest$menableMscs(Lcom/samsung/android/server/wifi/SemQboxController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->enableMscs()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemQboxController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->interfaceChanged(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misMscsSupported(Lcom/samsung/android/server/wifi/SemQboxController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->isMscsSupported()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveAllInternal(Lcom/samsung/android/server/wifi/SemQboxController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->removeAllInternal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUidInternal(Lcom/samsung/android/server/wifi/SemQboxController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->removeUidInternal(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$smlogd(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logd(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$smlogi(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "SemQboxController"

    .line 2
    .line 3
    const-string v1, " (v1.0.0) history:"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/samsung/android/server/wifi/SemQboxController;->DUMP_TITLE:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mUniqueApMacs:Ljava/util/HashSet;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsResent:Z

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mMscsPolicyEnabled:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsSupportedByAp:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsEnabled:Z

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mInterfaceVersion:I

    .line 34
    .line 35
    iput v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mMscsSupportedUniqueApCount:I

    .line 36
    .line 37
    iput v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mTotalUniqueApCount:I

    .line 38
    .line 39
    new-instance v0, Lcom/samsung/android/server/wifi/SemQboxController$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemQboxController$2;-><init>(Lcom/samsung/android/server/wifi/SemQboxController;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemQboxController;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    new-instance p2, Landroid/content/IntentFilter;

    .line 53
    .line 54
    const-string v1, "com.samsung.android.wifi.QBOX"

    .line 55
    .line 56
    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/SemQboxController;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    const-string p2, "wifi"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    .line 78
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 87
    .line 88
    new-instance p1, Landroid/net/wifi/MscsParams$Builder;

    .line 89
    .line 90
    invoke-direct {p1}, Landroid/net/wifi/MscsParams$Builder;-><init>()V

    .line 91
    .line 92
    .line 93
    const/16 p2, 0xf0

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/net/wifi/MscsParams$Builder;->setUserPriorityBitmap(I)Landroid/net/wifi/MscsParams$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const/4 p2, 0x7

    .line 100
    invoke-virtual {p1, p2}, Landroid/net/wifi/MscsParams$Builder;->setUserPriorityLimit(I)Landroid/net/wifi/MscsParams$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const/16 p2, 0x20

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/net/wifi/MscsParams$Builder;->setFrameClassifierFields(I)Landroid/net/wifi/MscsParams$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/net/wifi/MscsParams$Builder;->build()Landroid/net/wifi/MscsParams;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mMscsParams:Landroid/net/wifi/MscsParams;

    .line 115
    .line 116
    const-string p0, "SemQboxController Initialized: ver=1.0.0"

    .line 117
    .line 118
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method private addUidInternal(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p0, "addUidInternal: Ignored since already has QBOX UID="

    .line 14
    .line 15
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->getNMS()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_1
    const-string v0, "add UID="

    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    const-string v0, "startQbox"

    .line 56
    .line 57
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->startQbox(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setQboxUid(IZ)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iput p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "addUidInternal: "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->loge(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v0, "(v1.0.0) Total Qbox UIDs="

    .line 114
    .line 115
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v0, "addUidInternal: Ignored since iface="

    .line 134
    .line 135
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, " mNetd="

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    .line 149
    .line 150
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method private checkIfApIsUnique(Landroid/net/wifi/WifiInfo;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mUniqueApMacs:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    return v0

    .line 21
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mUniqueApMacs:Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method private disableMscs(Z)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x7

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
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method private enableMscs()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0
.end method

.method private getNMS()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

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
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->loge(Ljava/lang/String;)V

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->removeAllInternal()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private isMscsFlagSet(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    if-gt v0, v1, :cond_1

    .line 12
    .line 13
    return p0

    .line 14
    :cond_1
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    and-int/lit8 p1, p1, 0x20

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :cond_2
    return p0
.end method

.method private isMscsSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsSupportedByAp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mInterfaceVersion:I

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-lt p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method private synthetic lambda$registerPrimaryInterfaceListener$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x1

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

.method private static logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemQboxController;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemQboxController;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemQboxController;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemQboxController$3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController$3;-><init>(Lcom/samsung/android/server/wifi/SemQboxController;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private removeAllInternal()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "removeAllInternal: Ignored since no UID"

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->getNMS()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "remove all UIDs and stopQbox"

    .line 31
    .line 32
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I

    .line 42
    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    .line 44
    .line 45
    invoke-interface {p0}, Landroid/os/INetworkManagementService;->stopQbox()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "removeAllInternal: "

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->loge(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "removeAllInternal: Ignored since iface="

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, " mNetd="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private removeUidInternal(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p0, "removeUidInternal: Ignored since no QBOX UID="

    .line 14
    .line 15
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->getNMS()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string v0, "remove UID="

    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setQboxUid(IZ)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I

    .line 69
    .line 70
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mQboxUids:Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    const-string p1, "stopQbox since no uid remains"

    .line 79
    .line 80
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    .line 84
    .line 85
    invoke-interface {p1}, Landroid/os/INetworkManagementService;->stopQbox()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "removeUidInternal: "

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->loge(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v0, "(v1.0.0) Total Qbox UIDs="

    .line 110
    .line 111
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v0, "removeUidInternal: Ignored since iface="

    .line 130
    .line 131
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mPrimaryIfaceName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, " mNetd="

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNetd:Landroid/os/INetworkManagementService;

    .line 145
    .line 146
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public configureMscs(ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->isMscsSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mMscsPolicyEnabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-lez p2, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsEnabled:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->enableMscs()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsEnabled:Z

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    if-nez p2, :cond_1

    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsEnabled:Z

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->disableMscs(Z)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsEnabled:Z

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemQboxController;->DUMP_TITLE:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Total UIDs="

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mNumOfUids:I

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public getInterfaceVersion()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mInterfaceVersion:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getInterfaceVersion()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mInterfaceVersion:I

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "supplicant AIDL version: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mInterfaceVersion:I

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->logd(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public getMscsSupportedUniqueApCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mMscsSupportedUniqueApCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getTotalUniqueApCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mTotalUniqueApCount:I

    .line 2
    .line 3
    return p0
.end method

.method public isMscsSupportedByAp(Landroid/net/wifi/WifiInfo;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsSupportedByAp:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->checkIfApIsUnique(Landroid/net/wifi/WifiInfo;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getInformationElements()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_3

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/net/wifi/ScanResult$InformationElement;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/16 v4, 0x7f

    .line 42
    .line 43
    if-ne v3, v4, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemQboxController;->isMscsFlagSet(Ljava/nio/ByteBuffer;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsSupportedByAp:Z

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget v2, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mMscsSupportedUniqueApCount:I

    .line 60
    .line 61
    add-int/2addr v2, v1

    .line 62
    iput v2, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mMscsSupportedUniqueApCount:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    :goto_1
    const-string v2, "AP supports MSCS"

    .line 68
    .line 69
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mIsMscsSupportedByAp:Z

    .line 74
    .line 75
    if-nez p1, :cond_4

    .line 76
    .line 77
    const-string p1, "AP Does not support MSCS"

    .line 78
    .line 79
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    const-string p1, "information elements list is empty or null, AP May support MSCS"

    .line 84
    .line 85
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "isMscsSupportedByAp: "

    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->loge(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 107
    .line 108
    iget p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mTotalUniqueApCount:I

    .line 109
    .line 110
    add-int/2addr p1, v1

    .line 111
    iput p1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mTotalUniqueApCount:I

    .line 112
    .line 113
    :cond_5
    return-void
.end method

.method registerContentObserver(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "sem_wifi_ape_enabled"

    .line 5
    .line 6
    invoke-virtual {p1, v0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Lcom/samsung/android/server/wifi/SemQboxController$1;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v3, p0, v4, p1}, Lcom/samsung/android/server/wifi/SemQboxController$1;-><init>(Lcom/samsung/android/server/wifi/SemQboxController;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p1, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 24
    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string p1, "MSCS in Settings is "

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemQboxController;->logi(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    const/4 p1, 0x5

    .line 40
    invoke-virtual {p0, p1, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 1

    .line 1
    const-string v0, "SemClientModeManager registered"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->logd(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/server/wifi/SemQboxController$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemQboxController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemQboxController;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public removeAll()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public removeUid(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public resetApCounts()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mMscsSupportedUniqueApCount:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mTotalUniqueApCount:I

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController;->mUniqueApMacs:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
