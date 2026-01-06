.class public Lcom/samsung/android/server/wifi/SemWifiCoexManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;,
        Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;,
        Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;,
        Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;
    }
.end annotation


# static fields
.field public static final BAND_2GHZ:B = 0x0t

.field public static final BAND_5GHZ:B = 0x1t

.field public static final BAND_6GHZ:B = 0x2t

.field public static final BAND_UNKNOWN:B = -0x1t

.field private static final CUSTOM_BACKOFF_TYPE:Ljava/lang/String; = ""

.field private static final DBG:Z

.field private static final INTERFACE_NAME_STA:Ljava/lang/String; = "wlan0"

.field private static final SYSTEM_INFO_NODE_PATH:Ljava/lang/String; = "/dev/drb"

.field private static final TAG:Ljava/lang/String; = "SemWifiCoexManager"

.field private static final TX_BOTH:I = 0x0

.field public static final WIFI_STATE_CONNECTED_STATE_ENTER:I = 0x3

.field public static final WIFI_STATE_CONNECTED_STATE_EXIT:I = 0x4

.field public static final WIFI_STATE_CONNECT_MODE_STATE_ENTER:I = 0x1

.field public static final WIFI_STATE_CONNECT_MODE_STATE_EXIT:I = 0x2

.field public static final WIFI_STATE_DONGLE_ROAM:I = 0x5


# instance fields
.field private final LTEU_MOBILEHOTSPOT_5GHZ_ENABLED:I

.field private final LTEU_P2P_5GHZ_CONNECTED:I

.field private final LTEU_STA_5GHZ_CONNECTED:I

.field private infEndFreqMhz:I

.field private infStartFreqMhz:I

.field private isCameraRunning:Z

.field private laaActiveState:I

.field private laaEnterState:I

.field private lastScellEnter:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

.field private mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

.field private mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

.field private mCamBackBackoffEnable:Z

.field private mCamFrontBackoffEnable:Z

.field private mCameraStateMonitor:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private mContext:Landroid/content/Context;

.field private mCustomBackoffArray:[Ljava/lang/String;

.field private mIsCamBackBackoffDefined:Z

.field private mIsCamFrontBackoffDefined:Z

.field private mIsControllerActive:Z

.field private mIsRcvBackoffDefined:Z

.field private mIsRcvEnabled:Z

.field private mIsUwb1TxCxfor5GhzDefined:Z

.field private mIsUwb1TxCxfor6GhzDefined:Z

.field private mIsUwbBackoffDefined:Z

.field private mIsUwbCxCh5Enabled:Z

.field private mIsUwbCxCh9Enabled:Z

.field private mIsUwbCxEnabled:Z

.field private mIsUwbCxTypefor5GhzDefined:Z

.field private mIsUwbCxTypefor6GhzDefined:Z

.field private mIsUwbCxfor5GhzDefined:Z

.field private mIsUwbCxfor6GhzDefined:Z

.field private mIsXrControllerBackoffDefined:Z

.field private mLteuEnable:I

.field private mLteuState:I

.field private mP2pFreq:I

.field private mPreBackOff:Ljava/lang/String;

.field private mRCV_CUSTOM_BACKOFF:Ljava/lang/String;

.field private mSApFreq:I

.field private mScellEnter:Z

.field private mSoftApCallback:Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;

.field private final mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private mStaFreq:I

.field private mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

.field private mUwbBackoffEnable:Z

.field private mUwbCh:I

.field private mUwbCxType5g:I

.field private mUwbCxType6g:I

.field private mWifiApState:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

.field private mXR_CONTROLLER_CUSTOM_BACKOFF:Ljava/lang/String;

.field private uwb1TxCx5gAntId:I

.field private uwb1TxCx6gAntId:I

.field private uwb1TxCxEnd5gCh:I

.field private uwb1TxCxEnd6gCh:I

.field private uwb1TxCxStart5gCh:I

.field private uwb1TxCxStart6gCh:I

.field private uwbCxEnd5gCh:I

.field private uwbCxEnd6gCh:I

.field private uwbCxStart5gCh:I

.field private uwbCxStart6gCh:I


# direct methods
.method static bridge synthetic -$$Nest$fgetisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->isCameraRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->lastScellEnter:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamBackBackoffEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamFrontBackoffEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsControllerActive(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsControllerActive:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRcvBackoffDefined(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsRcvBackoffDefined:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRcvEnabled(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsRcvEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSApFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mScellEnter:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUwbBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiApState:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->isCameraRunning:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlaaEnterState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaEnterState:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->lastScellEnter:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamBackBackoffEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamFrontBackoffEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsControllerActive(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsControllerActive:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRcvEnabled(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsRcvEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmP2pFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSApFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mScellEnter:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiApState:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$msendIpcMessageToRilForLteu(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->sendIpcMessageToRilForLteu(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetWifiChannelInfoForAdaptiveMipi(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiChannelInfoForAdaptiveMipi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiCustomBackoff(Z)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

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
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mRCV_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mXR_CONTROLLER_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1"

    .line 17
    .line 18
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mPreBackOff:Ljava/lang/String;

    .line 21
    .line 22
    const/16 v1, 0x18

    .line 23
    .line 24
    new-array v1, v1, [Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 27
    .line 28
    const/16 v1, 0x157c

    .line 29
    .line 30
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infStartFreqMhz:I

    .line 31
    .line 32
    const/16 v1, 0x16fd

    .line 33
    .line 34
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infEndFreqMhz:I

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart5gCh:I

    .line 38
    .line 39
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd5gCh:I

    .line 40
    .line 41
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart6gCh:I

    .line 42
    .line 43
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd6gCh:I

    .line 44
    .line 45
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxStart5gCh:I

    .line 46
    .line 47
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxEnd5gCh:I

    .line 48
    .line 49
    const/4 v2, -0x1

    .line 50
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCx5gAntId:I

    .line 51
    .line 52
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxStart6gCh:I

    .line 53
    .line 54
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxEnd6gCh:I

    .line 55
    .line 56
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCx6gAntId:I

    .line 57
    .line 58
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    .line 59
    .line 60
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    .line 61
    .line 62
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    .line 63
    .line 64
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiApState:I

    .line 65
    .line 66
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCh:I

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType5g:I

    .line 70
    .line 71
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType6g:I

    .line 72
    .line 73
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 74
    .line 75
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh5Enabled:Z

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh9Enabled:Z

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbBackoffDefined:Z

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxfor5GhzDefined:Z

    .line 82
    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxfor6GhzDefined:Z

    .line 84
    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwb1TxCxfor5GhzDefined:Z

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwb1TxCxfor6GhzDefined:Z

    .line 88
    .line 89
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxTypefor5GhzDefined:Z

    .line 90
    .line 91
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxTypefor6GhzDefined:Z

    .line 92
    .line 93
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamFrontBackoffDefined:Z

    .line 94
    .line 95
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamBackBackoffDefined:Z

    .line 96
    .line 97
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsRcvBackoffDefined:Z

    .line 98
    .line 99
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    .line 100
    .line 101
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamFrontBackoffEnable:Z

    .line 102
    .line 103
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamBackBackoffEnable:Z

    .line 104
    .line 105
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->isCameraRunning:Z

    .line 106
    .line 107
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsRcvEnabled:Z

    .line 108
    .line 109
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsXrControllerBackoffDefined:Z

    .line 110
    .line 111
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsControllerActive:Z

    .line 112
    .line 113
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mLteuState:I

    .line 114
    .line 115
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mLteuEnable:I

    .line 116
    .line 117
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mScellEnter:Z

    .line 118
    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->lastScellEnter:Z

    .line 120
    .line 121
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->LTEU_MOBILEHOTSPOT_5GHZ_ENABLED:I

    .line 122
    .line 123
    const/4 v4, 0x2

    .line 124
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->LTEU_P2P_5GHZ_CONNECTED:I

    .line 125
    .line 126
    const/4 v5, 0x4

    .line 127
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->LTEU_STA_5GHZ_CONNECTED:I

    .line 128
    .line 129
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaEnterState:I

    .line 130
    .line 131
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaActiveState:I

    .line 132
    .line 133
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;

    .line 134
    .line 135
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 136
    .line 137
    .line 138
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    .line 140
    const-string v2, "SemWifiCoexManager"

    .line 141
    .line 142
    invoke-static {v2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 148
    .line 149
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 150
    .line 151
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 152
    .line 153
    const-string p2, "wifi"

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 160
    .line 161
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 162
    .line 163
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 168
    .line 169
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 174
    .line 175
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiResourceManager()Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 180
    .line 181
    sget-boolean p2, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 182
    .line 183
    if-eqz p2, :cond_0

    .line 184
    .line 185
    const-string p2, "CUSTOM_BACKOFF_TYPE = "

    .line 186
    .line 187
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    if-nez p2, :cond_17

    .line 195
    .line 196
    const-string p2, " "

    .line 197
    .line 198
    invoke-virtual {v0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 203
    .line 204
    move p3, v1

    .line 205
    :goto_0
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 206
    .line 207
    array-length v0, p4

    .line 208
    if-ge p3, v0, :cond_17

    .line 209
    .line 210
    const-string v0, "UWB"

    .line 211
    .line 212
    aget-object p4, p4, p3

    .line 213
    .line 214
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p4

    .line 218
    if-eqz p4, :cond_2

    .line 219
    .line 220
    add-int/lit8 p4, p3, 0x6

    .line 221
    .line 222
    :goto_1
    add-int/2addr p3, v3

    .line 223
    if-ge p3, p4, :cond_1

    .line 224
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 236
    .line 237
    aget-object v5, v5, p3

    .line 238
    .line 239
    invoke-static {v0, v5, p2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 257
    .line 258
    aget-object v0, v0, p3

    .line 259
    .line 260
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p4

    .line 267
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 268
    .line 269
    new-instance p4, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p4

    .line 291
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 292
    .line 293
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbBackoffDefined:Z

    .line 294
    .line 295
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 296
    .line 297
    if-eqz p4, :cond_16

    .line 298
    .line 299
    new-instance p4, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v0, "UWB Backoff is defined as "

    .line 302
    .line 303
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p4

    .line 315
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    goto/16 :goto_8

    .line 319
    .line 320
    :cond_2
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 321
    .line 322
    aget-object p4, p4, p3

    .line 323
    .line 324
    const-string v0, "CAM_FRONT"

    .line 325
    .line 326
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result p4

    .line 330
    if-eqz p4, :cond_4

    .line 331
    .line 332
    add-int/lit8 p4, p3, 0x6

    .line 333
    .line 334
    :goto_2
    add-int/2addr p3, v3

    .line 335
    if-ge p3, p4, :cond_3

    .line 336
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 348
    .line 349
    aget-object v5, v5, p3

    .line 350
    .line 351
    invoke-static {v0, v5, p2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 356
    .line 357
    goto :goto_2

    .line 358
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 369
    .line 370
    aget-object v0, v0, p3

    .line 371
    .line 372
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p4

    .line 379
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 380
    .line 381
    new-instance p4, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p4

    .line 403
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 404
    .line 405
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamFrontBackoffDefined:Z

    .line 406
    .line 407
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 408
    .line 409
    if-eqz p4, :cond_16

    .line 410
    .line 411
    new-instance p4, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    const-string v0, "CAM_F Backoff is defined as "

    .line 414
    .line 415
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p4

    .line 427
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    goto/16 :goto_8

    .line 431
    .line 432
    :cond_4
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 433
    .line 434
    aget-object p4, p4, p3

    .line 435
    .line 436
    const-string v0, "CAM_BACK"

    .line 437
    .line 438
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result p4

    .line 442
    if-eqz p4, :cond_6

    .line 443
    .line 444
    add-int/lit8 p4, p3, 0x6

    .line 445
    .line 446
    :goto_3
    add-int/2addr p3, v3

    .line 447
    if-ge p3, p4, :cond_5

    .line 448
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .line 453
    .line 454
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 460
    .line 461
    aget-object v5, v5, p3

    .line 462
    .line 463
    invoke-static {v0, v5, p2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 468
    .line 469
    goto :goto_3

    .line 470
    :cond_5
    new-instance p4, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 476
    .line 477
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 481
    .line 482
    aget-object v0, v0, p3

    .line 483
    .line 484
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p4

    .line 491
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 492
    .line 493
    new-instance p4, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .line 497
    .line 498
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 499
    .line 500
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p4

    .line 515
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 516
    .line 517
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamBackBackoffDefined:Z

    .line 518
    .line 519
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 520
    .line 521
    if-eqz p4, :cond_16

    .line 522
    .line 523
    new-instance p4, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    const-string v0, "CAM_B Backoff is defined as "

    .line 526
    .line 527
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 531
    .line 532
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object p4

    .line 539
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    goto/16 :goto_8

    .line 543
    .line 544
    :cond_6
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 545
    .line 546
    aget-object p4, p4, p3

    .line 547
    .line 548
    const-string v0, "RCV"

    .line 549
    .line 550
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result p4

    .line 554
    if-eqz p4, :cond_8

    .line 555
    .line 556
    add-int/lit8 p4, p3, 0x6

    .line 557
    .line 558
    :goto_4
    add-int/2addr p3, v3

    .line 559
    if-ge p3, p4, :cond_7

    .line 560
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .line 565
    .line 566
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mRCV_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 572
    .line 573
    aget-object v5, v5, p3

    .line 574
    .line 575
    invoke-static {v0, v5, p2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mRCV_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 580
    .line 581
    goto :goto_4

    .line 582
    :cond_7
    new-instance p4, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .line 586
    .line 587
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mRCV_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 588
    .line 589
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 593
    .line 594
    aget-object v0, v0, p3

    .line 595
    .line 596
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object p4

    .line 603
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mRCV_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 604
    .line 605
    new-instance p4, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .line 609
    .line 610
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mRCV_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 611
    .line 612
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mRCV_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 619
    .line 620
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object p4

    .line 627
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mRCV_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 628
    .line 629
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsRcvBackoffDefined:Z

    .line 630
    .line 631
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 632
    .line 633
    if-eqz p4, :cond_16

    .line 634
    .line 635
    new-instance p4, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    const-string v0, "RCV Backoff is defined as "

    .line 638
    .line 639
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mRCV_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 643
    .line 644
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object p4

    .line 651
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .line 653
    .line 654
    goto/16 :goto_8

    .line 655
    .line 656
    :cond_8
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 657
    .line 658
    aget-object p4, p4, p3

    .line 659
    .line 660
    const-string v0, "XR_CONTROLLER"

    .line 661
    .line 662
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result p4

    .line 666
    if-eqz p4, :cond_a

    .line 667
    .line 668
    add-int/lit8 p4, p3, 0x6

    .line 669
    .line 670
    :goto_5
    add-int/2addr p3, v3

    .line 671
    if-ge p3, p4, :cond_9

    .line 672
    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .line 677
    .line 678
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mXR_CONTROLLER_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 679
    .line 680
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 684
    .line 685
    aget-object v5, v5, p3

    .line 686
    .line 687
    invoke-static {v0, v5, p2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mXR_CONTROLLER_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 692
    .line 693
    goto :goto_5

    .line 694
    :cond_9
    new-instance p4, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .line 698
    .line 699
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mXR_CONTROLLER_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 700
    .line 701
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 705
    .line 706
    aget-object v0, v0, p3

    .line 707
    .line 708
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object p4

    .line 715
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mXR_CONTROLLER_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 716
    .line 717
    new-instance p4, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    .line 721
    .line 722
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mXR_CONTROLLER_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 723
    .line 724
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mXR_CONTROLLER_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 731
    .line 732
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object p4

    .line 739
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mXR_CONTROLLER_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 740
    .line 741
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsXrControllerBackoffDefined:Z

    .line 742
    .line 743
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 744
    .line 745
    if-eqz p4, :cond_16

    .line 746
    .line 747
    new-instance p4, Ljava/lang/StringBuilder;

    .line 748
    .line 749
    const-string v0, "XR_CONT Backoff is defined as "

    .line 750
    .line 751
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mXR_CONTROLLER_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 755
    .line 756
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object p4

    .line 763
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    goto/16 :goto_8

    .line 767
    .line 768
    :cond_a
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 769
    .line 770
    aget-object p4, p4, p3

    .line 771
    .line 772
    const-string v0, "UWB_5G_CX"

    .line 773
    .line 774
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 775
    .line 776
    .line 777
    move-result p4

    .line 778
    if-eqz p4, :cond_b

    .line 779
    .line 780
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 781
    .line 782
    add-int/lit8 v0, p3, 0x1

    .line 783
    .line 784
    aget-object p4, p4, v0

    .line 785
    .line 786
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    move-result p4

    .line 790
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart5gCh:I

    .line 791
    .line 792
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 793
    .line 794
    add-int/lit8 p3, p3, 0x2

    .line 795
    .line 796
    aget-object p4, p4, p3

    .line 797
    .line 798
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 799
    .line 800
    .line 801
    move-result p4

    .line 802
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd5gCh:I

    .line 803
    .line 804
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxfor5GhzDefined:Z

    .line 805
    .line 806
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 807
    .line 808
    if-eqz p4, :cond_16

    .line 809
    .line 810
    new-instance p4, Ljava/lang/StringBuilder;

    .line 811
    .line 812
    const-string v0, "UWB_5G_CX is defined as "

    .line 813
    .line 814
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart5gCh:I

    .line 818
    .line 819
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd5gCh:I

    .line 826
    .line 827
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object p4

    .line 834
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .line 836
    .line 837
    goto/16 :goto_8

    .line 838
    .line 839
    :cond_b
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 840
    .line 841
    aget-object p4, p4, p3

    .line 842
    .line 843
    const-string v0, "UWB_6G_CX"

    .line 844
    .line 845
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    move-result p4

    .line 849
    if-eqz p4, :cond_c

    .line 850
    .line 851
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 852
    .line 853
    add-int/lit8 v0, p3, 0x1

    .line 854
    .line 855
    aget-object p4, p4, v0

    .line 856
    .line 857
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 858
    .line 859
    .line 860
    move-result p4

    .line 861
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart6gCh:I

    .line 862
    .line 863
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 864
    .line 865
    add-int/lit8 p3, p3, 0x2

    .line 866
    .line 867
    aget-object p4, p4, p3

    .line 868
    .line 869
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 870
    .line 871
    .line 872
    move-result p4

    .line 873
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd6gCh:I

    .line 874
    .line 875
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxfor6GhzDefined:Z

    .line 876
    .line 877
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 878
    .line 879
    if-eqz p4, :cond_16

    .line 880
    .line 881
    new-instance p4, Ljava/lang/StringBuilder;

    .line 882
    .line 883
    const-string v0, "UWB_6G_CX is defined as "

    .line 884
    .line 885
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart6gCh:I

    .line 889
    .line 890
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd6gCh:I

    .line 897
    .line 898
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object p4

    .line 905
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .line 907
    .line 908
    goto/16 :goto_8

    .line 909
    .line 910
    :cond_c
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 911
    .line 912
    aget-object p4, p4, p3

    .line 913
    .line 914
    const-string v0, "UWB_CX_CH"

    .line 915
    .line 916
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    move-result p4

    .line 920
    const-string v0, ", "

    .line 921
    .line 922
    if-eqz p4, :cond_11

    .line 923
    .line 924
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 925
    .line 926
    add-int/lit8 v5, p3, 0x1

    .line 927
    .line 928
    aget-object p4, p4, v5

    .line 929
    .line 930
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 931
    .line 932
    .line 933
    move-result p4

    .line 934
    if-ne p4, v4, :cond_d

    .line 935
    .line 936
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh5Enabled:Z

    .line 937
    .line 938
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh9Enabled:Z

    .line 939
    .line 940
    add-int/lit8 p3, p3, 0x3

    .line 941
    .line 942
    goto :goto_6

    .line 943
    :cond_d
    if-ne p4, v3, :cond_f

    .line 944
    .line 945
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 946
    .line 947
    add-int/lit8 p3, p3, 0x2

    .line 948
    .line 949
    aget-object p4, p4, p3

    .line 950
    .line 951
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 952
    .line 953
    .line 954
    move-result p4

    .line 955
    const/4 v5, 0x5

    .line 956
    if-ne p4, v5, :cond_e

    .line 957
    .line 958
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh5Enabled:Z

    .line 959
    .line 960
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh9Enabled:Z

    .line 961
    .line 962
    goto :goto_6

    .line 963
    :cond_e
    const/16 v5, 0x9

    .line 964
    .line 965
    if-ne p4, v5, :cond_10

    .line 966
    .line 967
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh5Enabled:Z

    .line 968
    .line 969
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh9Enabled:Z

    .line 970
    .line 971
    goto :goto_6

    .line 972
    :cond_f
    move p3, v5

    .line 973
    :cond_10
    :goto_6
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 974
    .line 975
    if-eqz p4, :cond_16

    .line 976
    .line 977
    new-instance p4, Ljava/lang/StringBuilder;

    .line 978
    .line 979
    const-string v5, "UWB_CX_CH 5, 9: "

    .line 980
    .line 981
    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh5Enabled:Z

    .line 985
    .line 986
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh9Enabled:Z

    .line 993
    .line 994
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object p4

    .line 1001
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    .line 1003
    .line 1004
    goto/16 :goto_8

    .line 1005
    .line 1006
    :cond_11
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1007
    .line 1008
    aget-object p4, p4, p3

    .line 1009
    .line 1010
    const-string v5, "UWB_5G_1Tx_CX"

    .line 1011
    .line 1012
    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result p4

    .line 1016
    const-string v5, "UWB_5G_1Tx_CX is defined as "

    .line 1017
    .line 1018
    if-eqz p4, :cond_12

    .line 1019
    .line 1020
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1021
    .line 1022
    add-int/lit8 v0, p3, 0x1

    .line 1023
    .line 1024
    aget-object p4, p4, v0

    .line 1025
    .line 1026
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1027
    .line 1028
    .line 1029
    move-result p4

    .line 1030
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxStart5gCh:I

    .line 1031
    .line 1032
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1033
    .line 1034
    add-int/lit8 v0, p3, 0x2

    .line 1035
    .line 1036
    aget-object p4, p4, v0

    .line 1037
    .line 1038
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1039
    .line 1040
    .line 1041
    move-result p4

    .line 1042
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxEnd5gCh:I

    .line 1043
    .line 1044
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1045
    .line 1046
    add-int/lit8 p3, p3, 0x3

    .line 1047
    .line 1048
    aget-object p4, p4, p3

    .line 1049
    .line 1050
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1051
    .line 1052
    .line 1053
    move-result p4

    .line 1054
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCx5gAntId:I

    .line 1055
    .line 1056
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwb1TxCxfor5GhzDefined:Z

    .line 1057
    .line 1058
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 1059
    .line 1060
    if-eqz p4, :cond_16

    .line 1061
    .line 1062
    new-instance p4, Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxStart5gCh:I

    .line 1068
    .line 1069
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxEnd5gCh:I

    .line 1076
    .line 1077
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object p4

    .line 1084
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    .line 1086
    .line 1087
    goto/16 :goto_8

    .line 1088
    .line 1089
    :cond_12
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1090
    .line 1091
    aget-object p4, p4, p3

    .line 1092
    .line 1093
    const-string v6, "UWB_6G_1Tx_CX"

    .line 1094
    .line 1095
    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1096
    .line 1097
    .line 1098
    move-result p4

    .line 1099
    if-eqz p4, :cond_13

    .line 1100
    .line 1101
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1102
    .line 1103
    add-int/lit8 v0, p3, 0x1

    .line 1104
    .line 1105
    aget-object p4, p4, v0

    .line 1106
    .line 1107
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1108
    .line 1109
    .line 1110
    move-result p4

    .line 1111
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxStart6gCh:I

    .line 1112
    .line 1113
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1114
    .line 1115
    add-int/lit8 v0, p3, 0x2

    .line 1116
    .line 1117
    aget-object p4, p4, v0

    .line 1118
    .line 1119
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1120
    .line 1121
    .line 1122
    move-result p4

    .line 1123
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxEnd6gCh:I

    .line 1124
    .line 1125
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1126
    .line 1127
    add-int/lit8 p3, p3, 0x3

    .line 1128
    .line 1129
    aget-object p4, p4, p3

    .line 1130
    .line 1131
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1132
    .line 1133
    .line 1134
    move-result p4

    .line 1135
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCx6gAntId:I

    .line 1136
    .line 1137
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwb1TxCxfor6GhzDefined:Z

    .line 1138
    .line 1139
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 1140
    .line 1141
    if-eqz p4, :cond_16

    .line 1142
    .line 1143
    new-instance p4, Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1146
    .line 1147
    .line 1148
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxStart5gCh:I

    .line 1149
    .line 1150
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    .line 1156
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxEnd5gCh:I

    .line 1157
    .line 1158
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object p4

    .line 1165
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    .line 1167
    .line 1168
    goto :goto_8

    .line 1169
    :cond_13
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1170
    .line 1171
    aget-object p4, p4, p3

    .line 1172
    .line 1173
    const-string v5, "UWB_CX_TYPE"

    .line 1174
    .line 1175
    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1176
    .line 1177
    .line 1178
    move-result p4

    .line 1179
    if-eqz p4, :cond_16

    .line 1180
    .line 1181
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1182
    .line 1183
    add-int/lit8 v5, p3, 0x1

    .line 1184
    .line 1185
    aget-object p4, p4, v5

    .line 1186
    .line 1187
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1188
    .line 1189
    .line 1190
    move-result p4

    .line 1191
    if-ne p4, v3, :cond_14

    .line 1192
    .line 1193
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1194
    .line 1195
    add-int/lit8 p3, p3, 0x2

    .line 1196
    .line 1197
    aget-object p4, p4, p3

    .line 1198
    .line 1199
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1200
    .line 1201
    .line 1202
    move-result p4

    .line 1203
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType6g:I

    .line 1204
    .line 1205
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxTypefor6GhzDefined:Z

    .line 1206
    .line 1207
    goto :goto_7

    .line 1208
    :cond_14
    if-ne p4, v4, :cond_15

    .line 1209
    .line 1210
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1211
    .line 1212
    add-int/lit8 v5, p3, 0x2

    .line 1213
    .line 1214
    aget-object p4, p4, v5

    .line 1215
    .line 1216
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1217
    .line 1218
    .line 1219
    move-result p4

    .line 1220
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType6g:I

    .line 1221
    .line 1222
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCustomBackoffArray:[Ljava/lang/String;

    .line 1223
    .line 1224
    add-int/lit8 p3, p3, 0x3

    .line 1225
    .line 1226
    aget-object p4, p4, p3

    .line 1227
    .line 1228
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1229
    .line 1230
    .line 1231
    move-result p4

    .line 1232
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType5g:I

    .line 1233
    .line 1234
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxTypefor6GhzDefined:Z

    .line 1235
    .line 1236
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxTypefor5GhzDefined:Z

    .line 1237
    .line 1238
    goto :goto_7

    .line 1239
    :cond_15
    move p3, v5

    .line 1240
    :goto_7
    sget-boolean p4, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 1241
    .line 1242
    if-eqz p4, :cond_16

    .line 1243
    .line 1244
    new-instance p4, Ljava/lang/StringBuilder;

    .line 1245
    .line 1246
    const-string v5, "UWB_CX_TYPE 6GHz, 5GHz is defined as "

    .line 1247
    .line 1248
    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1249
    .line 1250
    .line 1251
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType6g:I

    .line 1252
    .line 1253
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    .line 1259
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType5g:I

    .line 1260
    .line 1261
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1265
    .line 1266
    .line 1267
    move-result-object p4

    .line 1268
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .line 1270
    .line 1271
    :cond_16
    :goto_8
    add-int/2addr p3, v3

    .line 1272
    goto/16 :goto_0

    .line 1273
    .line 1274
    :cond_17
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaEnterState:I

    .line 1275
    .line 1276
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaActiveState:I

    .line 1277
    .line 1278
    new-instance p2, Landroid/content/IntentFilter;

    .line 1279
    .line 1280
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 1281
    .line 1282
    .line 1283
    const-string p3, "android.intent.action.coexstatus"

    .line 1284
    .line 1285
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    const-string p3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 1289
    .line 1290
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1291
    .line 1292
    .line 1293
    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsRcvBackoffDefined:Z

    .line 1294
    .line 1295
    if-eqz p3, :cond_18

    .line 1296
    .line 1297
    const-string p3, "android.samsung.media.action.receiver_sar"

    .line 1298
    .line 1299
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1300
    .line 1301
    .line 1302
    const-string p3, "android.intent.action.PHONE_STATE"

    .line 1303
    .line 1304
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    :cond_18
    const-string p3, "com.samsung.xr.controller.STATUS"

    .line 1308
    .line 1309
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1310
    .line 1311
    .line 1312
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mContext:Landroid/content/Context;

    .line 1313
    .line 1314
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1315
    .line 1316
    invoke-virtual {p3, p4, p2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1317
    .line 1318
    .line 1319
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;

    .line 1320
    .line 1321
    invoke-direct {p2, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    .line 1322
    .line 1323
    .line 1324
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSoftApCallback:Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;

    .line 1325
    .line 1326
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1327
    .line 1328
    new-instance p3, Landroid/os/HandlerExecutor;

    .line 1329
    .line 1330
    new-instance p4, Landroid/os/Handler;

    .line 1331
    .line 1332
    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    .line 1333
    .line 1334
    .line 1335
    invoke-direct {p3, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 1336
    .line 1337
    .line 1338
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSoftApCallback:Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;

    .line 1339
    .line 1340
    invoke-virtual {p2, p3, p4}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 1341
    .line 1342
    .line 1343
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamFrontBackoffDefined:Z

    .line 1344
    .line 1345
    if-nez p2, :cond_1a

    .line 1346
    .line 1347
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamBackBackoffDefined:Z

    .line 1348
    .line 1349
    if-eqz p2, :cond_19

    .line 1350
    .line 1351
    goto :goto_9

    .line 1352
    :cond_19
    return-void

    .line 1353
    :cond_1a
    :goto_9
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->startCameraBackoffHandler(Landroid/content/Context;)V

    .line 1354
    .line 1355
    .line 1356
    return-void
.end method

.method private addBackoff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string p0, " "

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance v0, Ljava/lang/StringBuffer;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, p1

    .line 18
    if-ge v1, v2, :cond_4

    .line 19
    .line 20
    aget-object v2, p1, v1

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    aget-object v3, p2, v1

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eq v2, v3, :cond_2

    .line 33
    .line 34
    if-gez v2, :cond_0

    .line 35
    .line 36
    aget-object v2, p2, v1

    .line 37
    .line 38
    aput-object v2, p1, v1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    if-lez v3, :cond_2

    .line 42
    .line 43
    if-ge v2, v3, :cond_1

    .line 44
    .line 45
    aget-object v2, p1, v1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    aget-object v2, p2, v1

    .line 49
    .line 50
    :goto_1
    aput-object v2, p1, v1

    .line 51
    .line 52
    :cond_2
    :goto_2
    aget-object v2, p1, v1

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    array-length v2, p1

    .line 58
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    if-ge v1, v2, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method private freq_mhz_to_band(I)B
    .locals 0

    .line 1
    const/16 p0, 0x96c

    .line 2
    .line 3
    if-lt p1, p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x9b4

    .line 6
    .line 7
    if-gt p1, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const/16 p0, 0x143c

    .line 12
    .line 13
    if-lt p1, p0, :cond_1

    .line 14
    .line 15
    const/16 p0, 0x16fd

    .line 16
    .line 17
    if-gt p1, p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    const/16 p0, 0x172f

    .line 22
    .line 23
    if-lt p1, p0, :cond_2

    .line 24
    .line 25
    const/16 p0, 0x1bcb

    .line 26
    .line 27
    if-gt p1, p0, :cond_2

    .line 28
    .line 29
    const/4 p0, 0x2

    .line 30
    return p0

    .line 31
    :cond_2
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method private freq_mhz_to_channel(I)I
    .locals 1

    .line 1
    const/16 p0, 0x9b4

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0xe

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/16 v0, 0x96c

    .line 9
    .line 10
    if-lt p1, v0, :cond_1

    .line 11
    .line 12
    if-ge p1, p0, :cond_1

    .line 13
    .line 14
    add-int/lit16 p1, p1, -0x967

    .line 15
    .line 16
    div-int/lit8 p1, p1, 0x5

    .line 17
    .line 18
    return p1

    .line 19
    :cond_1
    const/16 p0, 0x143c

    .line 20
    .line 21
    if-lt p1, p0, :cond_2

    .line 22
    .line 23
    const/16 p0, 0x16fd

    .line 24
    .line 25
    if-gt p1, p0, :cond_2

    .line 26
    .line 27
    add-int/lit16 p1, p1, -0x1388

    .line 28
    .line 29
    div-int/lit8 p1, p1, 0x5

    .line 30
    .line 31
    return p1

    .line 32
    :cond_2
    const/16 p0, 0x172f

    .line 33
    .line 34
    if-ne p1, p0, :cond_3

    .line 35
    .line 36
    const/4 p0, 0x2

    .line 37
    return p0

    .line 38
    :cond_3
    if-le p1, p0, :cond_4

    .line 39
    .line 40
    const/16 p0, 0x1bcb

    .line 41
    .line 42
    if-gt p1, p0, :cond_4

    .line 43
    .line 44
    add-int/lit16 p1, p1, -0x173e

    .line 45
    .line 46
    div-int/lit8 p1, p1, 0x5

    .line 47
    .line 48
    return p1

    .line 49
    :cond_4
    const/4 p0, -0x1

    .line 50
    return p0
.end method

.method private sendIpcMessageToRilForLteu(Z)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mStaFreq : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mP2pFreq : "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mSApFreq : "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "SemWifiCoexManager"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const/16 v3, 0x1388

    .line 46
    .line 47
    if-le v0, v3, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x4

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v0, v2

    .line 52
    :goto_0
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    .line 53
    .line 54
    if-le v4, v3, :cond_1

    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v4, v2

    .line 59
    :goto_1
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    if-le v5, v3, :cond_2

    .line 63
    .line 64
    move v3, v6

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move v3, v2

    .line 67
    :goto_2
    add-int/2addr v0, v4

    .line 68
    add-int/2addr v0, v3

    .line 69
    if-lez v0, :cond_3

    .line 70
    .line 71
    const/16 v3, 0x8

    .line 72
    .line 73
    if-ge v0, v3, :cond_3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mScellEnter:Z

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    iput v6, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaActiveState:I

    .line 81
    .line 82
    :cond_4
    move v2, v6

    .line 83
    :goto_3
    if-nez p1, :cond_5

    .line 84
    .line 85
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mScellEnter:Z

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mLteuState:I

    .line 90
    .line 91
    if-eq v0, p1, :cond_6

    .line 92
    .line 93
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v3, "lteuState = "

    .line 96
    .line 97
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, ", lteuEnable = "

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    const-string p1, "phone"

    .line 119
    .line 120
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    .line 125
    .line 126
    .line 127
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .line 131
    .line 132
    new-instance v3, Ljava/io/DataOutputStream;

    .line 133
    .line 134
    invoke-direct {v3, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .line 136
    .line 137
    const/16 p1, 0x11

    .line 138
    .line 139
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 140
    .line 141
    .line 142
    const/16 p1, 0x90

    .line 143
    .line 144
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 145
    .line 146
    .line 147
    const/4 p1, 0x5

    .line 148
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    .line 156
    .line 157
    :catch_0
    :cond_6
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mLteuState:I

    .line 158
    .line 159
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mLteuEnable:I

    .line 160
    .line 161
    return-void

    .line 162
    :catchall_0
    move-exception p0

    .line 163
    goto :goto_4

    .line 164
    :catch_1
    :try_start_2
    const-string p0, "IOException occurs in set lteuEnable"

    .line 165
    .line 166
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    .line 169
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 170
    .line 171
    .line 172
    :catch_2
    return-void

    .line 173
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 174
    .line 175
    .line 176
    :catch_3
    throw p0
.end method

.method private setTxMode()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    const-string v1, "wlan0"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getTxMode(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwb1TxCxfor5GhzDefined:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxStart5gCh:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit16 v1, v1, 0x1388

    .line 5
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxEnd5gCh:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit16 v4, v4, 0x1388

    .line 6
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    if-lt v5, v1, :cond_1

    if-gt v5, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 7
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwb1TxCxfor6GhzDefined:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCh:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    .line 8
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxStart6gCh:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit16 v4, v4, 0x173e

    .line 9
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCxEnd6gCh:I

    mul-int/lit8 v5, v5, 0x5

    add-int/lit16 v5, v5, 0x173e

    .line 10
    iget v6, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    if-lt v6, v4, :cond_2

    if-gt v6, v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 11
    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 12
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCx5gAntId:I

    if-eq v0, v1, :cond_6

    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setTxMode(I)V

    return-void

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 14
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCx6gAntId:I

    if-eq v0, v1, :cond_6

    .line 15
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setTxMode(I)V

    return-void

    .line 16
    :cond_4
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCx5gAntId:I

    if-eq v0, v1, :cond_5

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwb1TxCx6gAntId:I

    if-ne v0, v1, :cond_6

    .line 17
    :cond_5
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setTxMode(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private setTxMode(I)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    const-string v1, "wlan0"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setTxMode(Ljava/lang/String;I)Z

    move-result v0

    .line 19
    const-string v1, "SemWifiCoexManager"

    if-eqz v0, :cond_1

    .line 20
    const-string v0, "setTxMode() succeed with antId: "

    .line 21
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setUwbTxMode(I)V

    :cond_0
    return-void

    .line 25
    :cond_1
    const-string p0, "setTxMode() failed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setWifiChannelInfoForAdaptiveMipi()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->isSupportMIPI()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const-string p0, "SemWifiCoexManager"

    .line 14
    .line 15
    const-string v0, "AdaptiveMipi not support"

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;-><init>()V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, -0x1

    .line 30
    if-lez v1, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->freq_mhz_to_band(I)B

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    .line 37
    .line 38
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->freq_mhz_to_channel(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eq v1, v3, :cond_2

    .line 43
    .line 44
    if-eq v4, v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->updateInfo(BBI)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    .line 50
    .line 51
    if-lez v1, :cond_3

    .line 52
    .line 53
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->freq_mhz_to_band(I)B

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    .line 58
    .line 59
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->freq_mhz_to_channel(I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eq v1, v3, :cond_3

    .line 64
    .line 65
    if-eq v4, v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->updateInfo(BBI)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    .line 71
    .line 72
    if-lez v1, :cond_4

    .line 73
    .line 74
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->freq_mhz_to_band(I)B

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    .line 79
    .line 80
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->freq_mhz_to_channel(I)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eq v1, v3, :cond_4

    .line 85
    .line 86
    if-eq p0, v3, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->updateInfo(BBI)V

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->writeWifiSystemInfoToFile(Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private setWifiCustomBackoff(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbBackoffDefined:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    .line 10
    .line 11
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infStartFreqMhz:I

    .line 12
    .line 13
    if-lt v1, v4, :cond_0

    .line 14
    .line 15
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infEndFreqMhz:I

    .line 16
    .line 17
    if-le v1, v5, :cond_2

    .line 18
    .line 19
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mP2pFreq:I

    .line 20
    .line 21
    if-lt v1, v4, :cond_1

    .line 22
    .line 23
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infEndFreqMhz:I

    .line 24
    .line 25
    if-le v1, v5, :cond_2

    .line 26
    .line 27
    :cond_1
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSApFreq:I

    .line 28
    .line 29
    if-lt v1, v4, :cond_3

    .line 30
    .line 31
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->infEndFreqMhz:I

    .line 32
    .line 33
    if-gt v1, v4, :cond_3

    .line 34
    .line 35
    :cond_2
    move v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    move v1, v3

    .line 38
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    .line 39
    .line 40
    if-eqz v4, :cond_5

    .line 41
    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUWB_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    move v1, v3

    .line 48
    :cond_5
    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamFrontBackoffDefined:Z

    .line 49
    .line 50
    if-eqz v4, :cond_6

    .line 51
    .line 52
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamFrontBackoffEnable:Z

    .line 53
    .line 54
    if-eqz v4, :cond_6

    .line 55
    .line 56
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_FRONT_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->addBackoff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_6
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsCamBackBackoffDefined:Z

    .line 63
    .line 64
    if-eqz v4, :cond_7

    .line 65
    .line 66
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamBackBackoffEnable:Z

    .line 67
    .line 68
    if-eqz v4, :cond_7

    .line 69
    .line 70
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCAM_BACK_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->addBackoff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :cond_7
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsRcvBackoffDefined:Z

    .line 77
    .line 78
    if-eqz v4, :cond_8

    .line 79
    .line 80
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsRcvEnabled:Z

    .line 81
    .line 82
    if-eqz v4, :cond_8

    .line 83
    .line 84
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mRCV_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->addBackoff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_8
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsXrControllerBackoffDefined:Z

    .line 91
    .line 92
    if-eqz v4, :cond_9

    .line 93
    .line 94
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsControllerActive:Z

    .line 95
    .line 96
    if-eqz v4, :cond_9

    .line 97
    .line 98
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mXR_CONTROLLER_CUSTOM_BACKOFF:Ljava/lang/String;

    .line 99
    .line 100
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->addBackoff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mPreBackOff:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_b

    .line 111
    .line 112
    if-eqz p1, :cond_a

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_a
    return v3

    .line 116
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 117
    .line 118
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_c

    .line 127
    .line 128
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 129
    .line 130
    invoke-virtual {v4, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    goto :goto_4

    .line 135
    :cond_c
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiApState:I

    .line 136
    .line 137
    const/16 v4, 0xd

    .line 138
    .line 139
    if-ne p1, v4, :cond_e

    .line 140
    .line 141
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 142
    .line 143
    if-eqz p1, :cond_d

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotCustomBackOff(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    goto :goto_4

    .line 150
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    .line 151
    .line 152
    :goto_3
    move p1, v3

    .line 153
    goto :goto_4

    .line 154
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :goto_4
    const-string v4, "SemWifiCoexManager"

    .line 158
    .line 159
    if-eqz p1, :cond_11

    .line 160
    .line 161
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_f

    .line 168
    .line 169
    const-string v1, "CBO is disabled"

    .line 170
    .line 171
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_f
    const-string v5, "CBO is enabled"

    .line 176
    .line 177
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v6, "UB="

    .line 183
    .line 184
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    .line 188
    .line 189
    if-eqz v6, :cond_10

    .line 190
    .line 191
    if-eqz v1, :cond_10

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_10
    move v2, v3

    .line 195
    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, " CFB="

    .line 199
    .line 200
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamFrontBackoffEnable:Z

    .line 204
    .line 205
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v1, " CBB="

    .line 209
    .line 210
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamBackBackoffEnable:Z

    .line 214
    .line 215
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, " RCV="

    .line 219
    .line 220
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsRcvEnabled:Z

    .line 224
    .line 225
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v1, " XRB="

    .line 229
    .line 230
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsControllerActive:Z

    .line 234
    .line 235
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    sget-boolean v1, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->DBG:Z

    .line 246
    .line 247
    if-eqz v1, :cond_12

    .line 248
    .line 249
    const-string v1, "CBO : "

    .line 250
    .line 251
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_11
    const-string v0, "CBO failed !!!"

    .line 260
    .line 261
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    .line 265
    .line 266
    :cond_12
    :goto_6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mPreBackOff:Ljava/lang/String;

    .line 267
    .line 268
    return p1
.end method

.method private startCameraBackoffHandler(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "CameraBackoffHandler"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Landroid/content/Context;Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCameraStateMonitor:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static writeToFile([B)V
    .locals 3

    .line 1
    const-string v0, "SemWifiCoexManager"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 4
    .line 5
    const-string v2, "/dev/drb"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 11
    .line 12
    .line 13
    const-string p0, "Data written successfully"

    .line 14
    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 34
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Failed to write data to kernel file: "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static writeWifiSystemInfoToFile(Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->calculateSize()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->calculateSize()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->calculateSize()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v1, v2

    .line 19
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SipcFmtHdr;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$WifiSystemCommonNotiType;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->writeToFile([B)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public getLaaActiveState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaActiveState:I

    .line 2
    .line 3
    return p0
.end method

.method public getLaaEnterState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaEnterState:I

    .line 2
    .line 3
    return p0
.end method

.method public getWifiUwbCoexMode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 10
    .line 11
    const-string v0, "wlan0"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "getWifiUwbCoexMode - return str = "

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "SemWifiCoexManager"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const-string p0, ""

    .line 30
    .line 31
    return-object p0
.end method

.method public handleWifiStateChanged(I)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    if-eq p1, v2, :cond_1

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mStaFreq:I

    .line 27
    .line 28
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->sendIpcMessageToRilForLteu(Z)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eq p1, v3, :cond_9

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    if-eq p1, v3, :cond_7

    .line 36
    .line 37
    if-eq p1, v2, :cond_3

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    if-eq p1, v2, :cond_3

    .line 41
    .line 42
    if-eq p1, v0, :cond_3

    .line 43
    .line 44
    const-string p0, "handleWifiStateChanged - unknown state ="

    .line 45
    .line 46
    const-string v0, "SemWifiCoexManager"

    .line 47
    .line 48
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiCustomBackoff(Z)Z

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwb1TxCxfor5GhzDefined:Z

    .line 60
    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwb1TxCxfor6GhzDefined:Z

    .line 64
    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCh:I

    .line 68
    .line 69
    const/16 v0, 0x9

    .line 70
    .line 71
    if-ne p1, v0, :cond_6

    .line 72
    .line 73
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setTxMode()V

    .line 74
    .line 75
    .line 76
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiChannelInfoForAdaptiveMipi()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCUSTOM_BACKOFF_DISABLE:Ljava/lang/String;

    .line 81
    .line 82
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mPreBackOff:Ljava/lang/String;

    .line 83
    .line 84
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiApState:I

    .line 85
    .line 86
    const/16 v0, 0xd

    .line 87
    .line 88
    if-ne p1, v0, :cond_a

    .line 89
    .line 90
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    .line 91
    .line 92
    if-nez p1, :cond_8

    .line 93
    .line 94
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamFrontBackoffEnable:Z

    .line 95
    .line 96
    if-nez p1, :cond_8

    .line 97
    .line 98
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mCamBackBackoffEnable:Z

    .line 99
    .line 100
    if-nez p1, :cond_8

    .line 101
    .line 102
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsControllerActive:Z

    .line 103
    .line 104
    if-eqz p1, :cond_a

    .line 105
    .line 106
    :cond_8
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiCustomBackoff(Z)Z

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_9
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiCustomBackoff(Z)Z

    .line 111
    .line 112
    .line 113
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 114
    .line 115
    if-eqz p1, :cond_a

    .line 116
    .line 117
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCh:I

    .line 118
    .line 119
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiUwbCoexEnabled(IZ)I

    .line 120
    .line 121
    .line 122
    :cond_a
    return-void
.end method

.method public isSupportMIPI()I
    .locals 2

    .line 1
    const-string p0, "wifi.adaptivie.mipi"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "isSupportMIPI() - cannot convert "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "SemWifiCoexManager"

    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 p0, -0x1

    .line 36
    return p0
.end method

.method public setLaaActiveState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaActiveState:I

    .line 2
    .line 3
    return-void
.end method

.method public setLaaEnterState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->laaEnterState:I

    .line 2
    .line 3
    return-void
.end method

.method public setWifiUwbCoexEnabled(IZ)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbBackoffDefined:Z

    .line 8
    .line 9
    const/4 v4, 0x5

    .line 10
    const/16 v5, 0x9

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz v3, :cond_2

    .line 14
    .line 15
    if-eq v1, v4, :cond_1

    .line 16
    .line 17
    if-ne v1, v5, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-boolean v6, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbBackoffEnable:Z

    .line 24
    .line 25
    :goto_1
    invoke-direct {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiCustomBackoff(Z)Z

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwb1TxCxfor5GhzDefined:Z

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    iget-boolean v7, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwb1TxCxfor6GhzDefined:Z

    .line 33
    .line 34
    if-eqz v7, :cond_3

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    move v7, v6

    .line 39
    :goto_2
    if-nez v3, :cond_4

    .line 40
    .line 41
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwb1TxCxfor6GhzDefined:Z

    .line 42
    .line 43
    if-eqz v3, :cond_5

    .line 44
    .line 45
    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCh:I

    .line 46
    .line 47
    if-ne v3, v5, :cond_5

    .line 48
    .line 49
    :cond_4
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setTxMode()V

    .line 50
    .line 51
    .line 52
    :cond_5
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCh:I

    .line 53
    .line 54
    const/16 v3, 0xbd

    .line 55
    .line 56
    const/16 v8, 0x41

    .line 57
    .line 58
    if-eqz v7, :cond_8

    .line 59
    .line 60
    iget-boolean v7, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh5Enabled:Z

    .line 61
    .line 62
    if-eqz v7, :cond_7

    .line 63
    .line 64
    if-ne v1, v4, :cond_7

    .line 65
    .line 66
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 67
    .line 68
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxfor6GhzDefined:Z

    .line 69
    .line 70
    if-eqz v2, :cond_6

    .line 71
    .line 72
    iget v8, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart6gCh:I

    .line 73
    .line 74
    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd6gCh:I

    .line 75
    .line 76
    :cond_6
    move v13, v3

    .line 77
    move v14, v6

    .line 78
    move v15, v14

    .line 79
    :goto_3
    move v12, v8

    .line 80
    goto :goto_5

    .line 81
    :cond_7
    iput-boolean v6, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_8
    iget-boolean v7, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh5Enabled:Z

    .line 85
    .line 86
    if-eqz v7, :cond_9

    .line 87
    .line 88
    if-eq v1, v4, :cond_a

    .line 89
    .line 90
    :cond_9
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh9Enabled:Z

    .line 91
    .line 92
    if-eqz v4, :cond_c

    .line 93
    .line 94
    if-ne v1, v5, :cond_c

    .line 95
    .line 96
    :cond_a
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 97
    .line 98
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxfor6GhzDefined:Z

    .line 99
    .line 100
    if-eqz v2, :cond_b

    .line 101
    .line 102
    iget v8, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart6gCh:I

    .line 103
    .line 104
    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd6gCh:I

    .line 105
    .line 106
    :cond_b
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxfor5GhzDefined:Z

    .line 107
    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    iget v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxStart5gCh:I

    .line 111
    .line 112
    iget v4, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->uwbCxEnd5gCh:I

    .line 113
    .line 114
    move v14, v2

    .line 115
    move v13, v3

    .line 116
    move v15, v4

    .line 117
    goto :goto_3

    .line 118
    :cond_c
    iput-boolean v6, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 119
    .line 120
    :goto_4
    move v12, v6

    .line 121
    move v13, v12

    .line 122
    move v14, v13

    .line 123
    move v15, v14

    .line 124
    :goto_5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_12

    .line 131
    .line 132
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 133
    .line 134
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_12

    .line 143
    .line 144
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxTypefor5GhzDefined:Z

    .line 145
    .line 146
    const-string v4, " m6gUwbCxType = "

    .line 147
    .line 148
    const-string v7, " result = "

    .line 149
    .line 150
    const-string v8, " ch = "

    .line 151
    .line 152
    const-string v9, "setWifiUwbCoexEnabled - enable = "

    .line 153
    .line 154
    const-string v11, "SemWifiCoexManager"

    .line 155
    .line 156
    if-eqz v2, :cond_e

    .line 157
    .line 158
    move-object v2, v9

    .line 159
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 160
    .line 161
    move-object v5, v11

    .line 162
    iget-boolean v11, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 163
    .line 164
    const/16 p2, 0x2

    .line 165
    .line 166
    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType6g:I

    .line 167
    .line 168
    iget v6, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType5g:I

    .line 169
    .line 170
    move/from16 v16, v3

    .line 171
    .line 172
    move-object v3, v5

    .line 173
    move/from16 v17, v6

    .line 174
    .line 175
    invoke-virtual/range {v9 .. v17}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIIII)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_d

    .line 180
    .line 181
    const/4 v6, 0x0

    .line 182
    goto :goto_6

    .line 183
    :cond_d
    move/from16 v6, p2

    .line 184
    .line 185
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 191
    .line 192
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType6g:I

    .line 205
    .line 206
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v1, " m5gUwbCxType = "

    .line 210
    .line 211
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType5g:I

    .line 215
    .line 216
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    return v6

    .line 233
    :cond_e
    move-object v2, v9

    .line 234
    move-object v3, v11

    .line 235
    const/16 p2, 0x2

    .line 236
    .line 237
    iget-boolean v6, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxTypefor6GhzDefined:Z

    .line 238
    .line 239
    if-eqz v6, :cond_10

    .line 240
    .line 241
    iget-boolean v6, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxCh9Enabled:Z

    .line 242
    .line 243
    if-eqz v6, :cond_10

    .line 244
    .line 245
    if-ne v1, v5, :cond_10

    .line 246
    .line 247
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 248
    .line 249
    iget-boolean v11, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 250
    .line 251
    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType6g:I

    .line 252
    .line 253
    move/from16 v16, v5

    .line 254
    .line 255
    invoke-virtual/range {v9 .. v16}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIII)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_f

    .line 260
    .line 261
    const/4 v6, 0x0

    .line 262
    goto :goto_7

    .line 263
    :cond_f
    move/from16 v6, p2

    .line 264
    .line 265
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 271
    .line 272
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mUwbCxType6g:I

    .line 285
    .line 286
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    return v6

    .line 303
    :cond_10
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 304
    .line 305
    iget-boolean v11, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 306
    .line 307
    invoke-virtual/range {v9 .. v15}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-eqz v4, :cond_11

    .line 312
    .line 313
    const/4 v6, 0x0

    .line 314
    goto :goto_8

    .line 315
    :cond_11
    move/from16 v6, p2

    .line 316
    .line 317
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->mIsUwbCxEnabled:Z

    .line 323
    .line 324
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    return v6

    .line 347
    :cond_12
    const/16 p2, 0x2

    .line 348
    .line 349
    return p2
.end method
