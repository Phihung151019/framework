.class public Lcom/samsung/android/server/wifi/SemWifiResourceManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/DbsModeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;,
        Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;,
        Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;,
        Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;
    }
.end annotation


# static fields
.field private static final BW_160:I = 0x3

.field private static final BW_20:I = 0x0

.field private static final BW_320:I = 0x4

.field private static final BW_40:I = 0x1

.field private static final BW_80:I = 0x2

.field private static final BW_UNKNOWN:I = -0x1

.field private static final BYTE_MASK:I = 0xff

.field private static final C_TAS:I = 0x8

.field private static final C_TAS_WINDOW:I = 0x1e

.field private static final DBG:Z

.field private static final DSI_ID_HIGH_MODE:I = 0x14

.field private static final DSI_ID_LOW_MODE:I = 0x12

.field private static final DSI_ID_MID_MODE:I = 0x13

.field private static final DSI_ID_UNDER_HIGH_MODE:I = 0x1a

.field private static final DSI_ID_UNDER_LOW_MODE:I = 0x18

.field private static final DSI_ID_UNDER_MID_MODE:I = 0x19

.field private static final DYNAMIC_BW:I = 0x4

.field private static final DYNAMIC_BW_AVG_TPUT_THERESHOLD:D = 0.1

.field private static final DYNAMIC_BW_MARGIN:I = 0x64

.field private static final DYNAMIC_BW_PEAK_TPUT_THERESHOLD:I = 0x1

.field private static final DYNAMIC_BW_RESTORE_PEAK_TPUT_THERESHOLD:I = 0x64

.field private static final DYNAMIC_PCIE:I = 0x1

.field private static final DYNAMIC_PCIE_GEN1_1_UPPER_THRESHOLD:I = 0xc8

.field private static final DYNAMIC_PCIE_GEN2_1_LOWER_THRESHOLD:I = 0x64

.field private static final DYNAMIC_PCIE_GEN2_1_UPPER_THRESHOLD:I = 0x258

.field private static final DYNAMIC_PCIE_GEN3_1_LOWER_THRESHOLD:I = 0x190

.field private static final DYNAMIC_PCIE_GEN3_1_UPPER_THRESHOLD:I = 0x4b0

.field private static final DYNAMIC_PCIE_GEN3_2_LOWER_THRESHOLD:I = 0x384

.field private static final DYNAMIC_TIME_WINDOW:I = 0x1e

.field private static final DYNAMIC_TX:I = 0x2

.field private static final DYNAMIC_TX_AVG_TPUT_THERESHOLD:D = 0.001

.field private static final DYNAMIC_TX_PEAK_TPUT_THERESHOLD:D = 0.1

.field private static final DYNAMIC_TX_RESTORE_CU_THERESHOLD:I = 0x64

.field private static final DYNAMIC_TX_RESTORE_PEAK_RX_TPUT_THERESHOLD:I = 0x64

.field private static final DYNAMIC_TX_RESTORE_PEAK_TX_TPUT_THERESHOLD:I = 0xa

.field private static final DYNAMIC_TX_RESTORE_TXBAD_THERESHOLD:I = 0xa

.field private static final DYNAMIC_TX_RSSI_1TX_THERESHOLD:I = -0x3c

.field private static final DYNAMIC_TX_RSSI_2TX_THERESHOLD:I = -0x41

.field private static final FILE_NAME:Ljava/lang/String; = "tx_power_log.txt"

.field private static final HE_CAPABILITY_IE_MIN_LENGTH:I = 0x15

.field private static final HT_CAPABILITY_IE_MIN_LENGTH:I = 0x1a

.field private static final INTERFACE_NAME_AWARE:Ljava/lang/String; = "aware_data0"

.field private static final INTERFACE_NAME_MHS:Ljava/lang/String; = "swlan0"

.field private static final INTERFACE_NAME_MTK_P2P:Ljava/lang/String; = "p2p0"

.field private static final INTERFACE_NAME_P2P:Ljava/lang/String; = "p2p-wlan0-0"

.field private static final INTERFACE_NAME_STA:Ljava/lang/String; = "wlan0"

.field private static final LOG_DEBUG_PATH:Ljava/lang/String; = "/data/log/wifi/"

.field private static final MAX_BW_SWITCH_TRIAL:I = 0x2

.field private static final PCIE_GEN1_1_MODE:I = 0x1

.field private static final PCIE_GEN2_1_MODE:I = 0x2

.field private static final PCIE_GEN3_1_MODE:I = 0x3

.field private static final PCIE_GEN3_2_MODE:I = 0x4

.field private static final PCIE_UNKNOWN_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemWifiResourceManager"

.field private static final TAS_POLICY_HIGH:I = 0x2

.field private static final TAS_POLICY_LOW:I = 0x0

.field private static final TAS_POLICY_MID:I = 0x1

.field private static final TAS_POLICY_UNDER_HIGH:I = 0x5

.field private static final TAS_POLICY_UNDER_LOW:I = 0x3

.field private static final TAS_POLICY_UNDER_MID:I = 0x4

.field private static final TDLS_REQUEST_SETUP:I = 0x0

.field private static final TDLS_REQUEST_TEARDOWN:I = 0x1

.field private static final TX_ANT1:I = 0x1

.field private static final TX_ANT2:I = 0x2

.field private static final TX_ANT_SEL:I = 0x3

.field private static final TX_BOTH:I = 0x0

.field private static final VHT_CAPABILITY_IE_MIN_LENGTH:I = 0xc

.field private static final WIFI_CHANNEL_UTILIZATION_2G:I = 0x50

.field private static final WIFI_CHANNEL_UTILIZATION_5G:I = 0xf

.field private static final WIFI_CHANNEL_UTILIZATION_6G:I = 0xa

.field private static final WIFI_FEATURE_UPDATED:I = 0x4

.field private static final WIFI_LINK_STAT_SIZE:I = 0x5

.field private static final WIFI_MAX_TX_POWER_DBS_ANT1:I = 0x2

.field private static final WIFI_MAX_TX_POWER_DBS_ANT2:I = 0x3

.field private static final WIFI_MAX_TX_POWER_NON_DBS_ANT1:I = 0x0

.field private static final WIFI_MAX_TX_POWER_NON_DBS_ANT2:I = 0x1

.field private static final WIFI_SAFE_MODE_CHANGED:I = 0x5

.field public static final WIFI_STATE_CHANNEL_SWITCH_COMPLETED:I = 0x6

.field public static final WIFI_STATE_CONNECTED_STATE_ENTER:I = 0x3

.field public static final WIFI_STATE_CONNECTED_STATE_EXIT:I = 0x4

.field public static final WIFI_STATE_CONNECT_MODE_STATE_ENTER:I = 0x1

.field public static final WIFI_STATE_CONNECT_MODE_STATE_EXIT:I = 0x2

.field public static final WIFI_STATE_DONGLE_ROAM:I = 0x5

.field private static final WIFI_TRAFFIC_POLLING_INTERVAL:I = 0xbb8

.field private static final WIFI_TRAFFIC_STATS_UPDATED:I = 0x1

.field private static final WIFI_TRAFFIC_STAT_SIZE:I = 0x1e

.field private static final WIFI_TX_POWER_ANT1:I = 0x4

.field private static final WIFI_TX_POWER_ANT2:I = 0x5

.field private static final WIFI_TX_POWER_DUMP_SIZE:I = 0x5dc

.field private static final WIFI_TX_POWER_LOGGING:I = 0x3

.field private static final WIFI_TX_POWER_LOGGING_INTERVAL:I = 0x1f4

.field private static final WIFI_USABILITY_STATS_UPDATED:I = 0x2


# instance fields
.field private DYNAMIC_SUPPORT:I

.field private bwCurrentConsumptioGain:F

.field private bwThroughputLoss:F

.field private isBwSwitchSupported:Z

.field private isCtasSupported:Z

.field private isPcieSwitchSupported:Z

.field private isTxModeSwitchSupported:Z

.field private lastDbsTime:J

.field private mAvgCu:I

.field private mAvgDataRateMbps:D

.field private mAvgPredictThroughputList:[D

.field private mAvgRssi:I

.field private mAvgRxRateMbps:D

.field private mAvgTxBad:J

.field private mAvgTxRateMbps:D

.field private mAvgTxRetries:J

.field private mAvgTxSuccessCnt:J

.field private mAwareCountDataPath:I

.field private mAwareRxBytes:J

.field private mAwareRxRateMbps:D

.field private mAwareTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private mAwareTxBytes:J

.field private mAwareTxRateMbps:D

.field private final mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBwSwitchCnt:I

.field private mChannelWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentBssid:Ljava/lang/String;

.field private mCurrentFrequency:I

.field private mDeviceCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

.field private mDynamicDisabledbyTdls:Z

.field private mIsBwReduceRequired:Z

.field private mIsBwReduced:Z

.field private mIsEnableTxPowerLogging:Z

.field private mIsLinkStatsReady:Z

.field private mIsMobileHotspotEnabled:Z

.field private mIsP2pConnected:Z

.field private mIsStaConnected:Z

.field private mIsStaEnabled:Z

.field private final mIsSupportedWifiAware:Z

.field private final mIsSupportedWifiP2p:Z

.field private mIsTrafficStatsReady:Z

.field private mIsTxModeReduceRequired:Z

.field private mIsTxModeReduced:Z

.field private mIsWifiTrafficPollerRegistered:Z

.field private mLowestPcieMode:I

.field private mMaxBwIndex:I

.field private mMaxNumberSpatialStreams:I

.field private mMaxNumberSpatialStreamsFromHeCap:I

.field private mMaxNumberSpatialStreamsFromHtCap:I

.field private mMaxNumberSpatialStreamsFromVhtCap:I

.field private mMediatorBwSwitchGranted:Z

.field private mMediatorTxModeGranted:Z

.field private mMhsRxBytes:J

.field private mMhsRxRateMbps:D

.field private mMhsTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private mMhsTxBytes:J

.field private mMhsTxRateMbps:D

.field private mNumofMloLink:I

.field private final mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

.field private mP2pInterfaceName:Ljava/lang/String;

.field private mP2pRxBytes:J

.field private mP2pRxRateMbps:D

.field private mP2pTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private mP2pTxBytes:J

.field private mP2pTxRateMbps:D

.field private mPeakDataRateMbps:D

.field private mPeakRxRateMbps:D

.field private mPeakTxRateMbps:D

.field private mRxBytes:J

.field private mRxRateMbps:D

.field private mSafeModeEnabled:Z

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private mScpmBwSwitchDisable:Z

.field private mScpmTxModeDisabled:Z

.field private mSelectedBwIndex:I

.field private mSelectedPcieMode:I

.field private mSelectedTxMode:I

.field private final mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

.field private final mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private mStaTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private mTrafficStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiTrafficStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTxBad:J

.field private mTxBytes:J

.field private mTxModeDisabled:Z

.field private mTxRateMbps:D

.field private mTxRetries:J

.field private mTxSuccessCnt:J

.field private mVerboseLog:Z

.field protected mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

.field private final mWifiCtlFeatureMediatorBwGrantCallback:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

.field private final mWifiCtlFeatureMediatorBwPerformanceQuery:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

.field private final mWifiCtlFeatureMediatorTxNssGrantCallback:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

.field private final mWifiCtlFeatureMediatorTxNssPerformanceQuery:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

.field private mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

.field private final mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiLinkStatsHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiResourceHandler:Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;

.field private final mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

.field private mWifiStandard:I

.field private final mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;

.field private final mWifiTrafficStatsHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiTxPowerHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

.field private txModeCurrentConsumptioGain:F

.field private txModeThroughputLoss:F

.field private txPowerFromDsiTable:Ljava/lang/String;

.field private final wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;


# direct methods
.method static bridge synthetic -$$Nest$fgetbwCurrentConsumptioGain(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->bwCurrentConsumptioGain:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbwThroughputLoss(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->bwThroughputLoss:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisBwSwitchSupported(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isBwSwitchSupported:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisCtasSupported(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isCtasSupported:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisPcieSwitchSupported(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isPcieSwitchSupported:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisTxModeSwitchSupported(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isTxModeSwitchSupported:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAwareCountDataPath(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareCountDataPath:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAwareRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareRxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmAwareRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareRxRateMbps:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmAwareTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAwareTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareTxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmAwareTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareTxRateMbps:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmBackOffController(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBwSwitchCnt(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mBwSwitchCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelWidth(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mChannelWidth:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentFrequency(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mCurrentFrequency:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDynamicDisabledbyTdls(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mDynamicDisabledbyTdls:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBwReduceRequired(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduceRequired:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBwReduced(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduced:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnableTxPowerLogging(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsEnableTxPowerLogging:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMobileHotspotEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsMobileHotspotEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsP2pConnected(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsP2pConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsStaConnected(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTxModeReduceRequired(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduceRequired:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTxModeReduced(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduced:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediatorBwSwitchGranted(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorBwSwitchGranted:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediatorTxModeGranted(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorTxModeGranted:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMhsRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsRxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMhsRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsRxRateMbps:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMhsTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMhsTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsTxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMhsTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsTxRateMbps:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pInterfaceName(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pRxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pRxRateMbps:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pTxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pTxRateMbps:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mRxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mRxRateMbps:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSafeModeEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSafeModeEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScpmBwSwitchDisable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mScpmBwSwitchDisable:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScpmTxModeDisabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mScpmTxModeDisabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedTxMode(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedTxMode:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mStaTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTrafficStats:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTxBad(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxBad:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTxModeDisabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxModeDisabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxRateMbps:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTxRetries(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxRetries:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTxSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxSuccessCnt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLog(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mVerboseLog:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiResourceHandler(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiResourceHandler:Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiStandard(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiStandard:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxModeCurrentConsumptioGain(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->txModeCurrentConsumptioGain:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettxModeThroughputLoss(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->txModeThroughputLoss:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettxPowerFromDsiTable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->txPowerFromDsiTable:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastDbsTime(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->lastDbsTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAwareCountDataPath(Lcom/samsung/android/server/wifi/SemWifiResourceManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareCountDataPath:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAwareRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareRxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAwareRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareRxRateMbps:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAwareTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAwareTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareTxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAwareTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareTxRateMbps:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMobileHotspotEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsMobileHotspotEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsP2pConnected(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsP2pConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMediatorBwSwitchGranted(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorBwSwitchGranted:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMediatorTxModeGranted(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorTxModeGranted:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMhsRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsRxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMhsRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsRxRateMbps:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMhsTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMhsTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsTxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMhsTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsTxRateMbps:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmP2pRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pRxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmP2pRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pRxRateMbps:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmP2pTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmP2pTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pTxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmP2pTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pTxRateMbps:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mRxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mRxRateMbps:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSafeModeEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSafeModeEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScpmBwSwitchDisable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mScpmBwSwitchDisable:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScpmTxModeDisabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mScpmTxModeDisabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mStaTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTrafficStats:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxBad(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxBad:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxModeDisabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxModeDisabled:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxRateMbps:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxRetries(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxRetries:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxSuccessCnt:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtxPowerFromDsiTable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->txPowerFromDsiTable:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndGetAwareManager(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Landroid/net/wifi/aware/WifiAwareManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->checkAndGetAwareManager()Landroid/net/wifi/aware/WifiAwareManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndRegisterWifiTrafficPollerCallbackForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->checkAndRegisterWifiTrafficPollerCallbackForAllIfaces()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTime(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getTime()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUtilizationRatio(Lcom/samsung/android/server/wifi/SemWifiResourceManager;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getUtilizationRatio(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$msetBandwidth(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setBandwidth()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetPcieMode(Lcom/samsung/android/server/wifi/SemWifiResourceManager;DD)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieMode(DD)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetTxMode(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setTxMode()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetTxMode$1(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setTxMode(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAvgAndPeakTxRxRates(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V
    .locals 1

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateAvgAndPeakTxRxRates(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAvgWifiLinkStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateAvgWifiLinkStats(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePredictThroughput(Lcom/samsung/android/server/wifi/SemWifiResourceManager;IIIJJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updatePredictThroughput(IIIJJJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiTrafficStatsHistory(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateWifiTrafficStatsHistory(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiTxPowerHistory(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateWifiTxPowerHistory(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v2, "0"

    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->DYNAMIC_SUPPORT:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    and-int/lit8 v4, v2, 0x1

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-lez v4, :cond_0

    .line 19
    .line 20
    move v4, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v4, v5

    .line 23
    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isPcieSwitchSupported:Z

    .line 24
    .line 25
    and-int/lit8 v4, v2, 0x2

    .line 26
    .line 27
    if-lez v4, :cond_1

    .line 28
    .line 29
    move v4, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v4, v5

    .line 32
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isTxModeSwitchSupported:Z

    .line 33
    .line 34
    and-int/lit8 v4, v2, 0x4

    .line 35
    .line 36
    if-lez v4, :cond_2

    .line 37
    .line 38
    move v4, v3

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v4, v5

    .line 41
    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isBwSwitchSupported:Z

    .line 42
    .line 43
    and-int/lit8 v2, v2, 0x8

    .line 44
    .line 45
    if-lez v2, :cond_3

    .line 46
    .line 47
    move v2, v3

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v2, v5

    .line 50
    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isCtasSupported:Z

    .line 51
    .line 52
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsMobileHotspotEnabled:Z

    .line 53
    .line 54
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaEnabled:Z

    .line 55
    .line 56
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaConnected:Z

    .line 57
    .line 58
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsP2pConnected:Z

    .line 59
    .line 60
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareCountDataPath:I

    .line 61
    .line 62
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mVerboseLog:Z

    .line 63
    .line 64
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTrafficStatsReady:Z

    .line 65
    .line 66
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsLinkStatsReady:Z

    .line 67
    .line 68
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorBwSwitchGranted:Z

    .line 69
    .line 70
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduced:Z

    .line 71
    .line 72
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduceRequired:Z

    .line 73
    .line 74
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorTxModeGranted:Z

    .line 75
    .line 76
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduced:Z

    .line 77
    .line 78
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduceRequired:Z

    .line 79
    .line 80
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsWifiTrafficPollerRegistered:Z

    .line 81
    .line 82
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsEnableTxPowerLogging:Z

    .line 83
    .line 84
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mScpmTxModeDisabled:Z

    .line 85
    .line 86
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mScpmBwSwitchDisable:Z

    .line 87
    .line 88
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxModeDisabled:Z

    .line 89
    .line 90
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mDynamicDisabledbyTdls:Z

    .line 91
    .line 92
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSafeModeEnabled:Z

    .line 93
    .line 94
    const-wide/16 v6, 0x0

    .line 95
    .line 96
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxBytes:J

    .line 97
    .line 98
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mRxBytes:J

    .line 99
    .line 100
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxSuccessCnt:J

    .line 101
    .line 102
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxRetries:J

    .line 103
    .line 104
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxBad:J

    .line 105
    .line 106
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxRateMbps:D

    .line 107
    .line 108
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mRxRateMbps:D

    .line 109
    .line 110
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRateMbps:D

    .line 111
    .line 112
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRxRateMbps:D

    .line 113
    .line 114
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgDataRateMbps:D

    .line 115
    .line 116
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakTxRateMbps:D

    .line 117
    .line 118
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakRxRateMbps:D

    .line 119
    .line 120
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakDataRateMbps:D

    .line 121
    .line 122
    const/4 v2, 0x5

    .line 123
    new-array v2, v2, [D

    .line 124
    .line 125
    fill-array-data v2, :array_0

    .line 126
    .line 127
    .line 128
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgPredictThroughputList:[D

    .line 129
    .line 130
    const/4 v2, -0x1

    .line 131
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiStandard:I

    .line 132
    .line 133
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mCurrentFrequency:I

    .line 134
    .line 135
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreams:I

    .line 136
    .line 137
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromHeCap:I

    .line 138
    .line 139
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromVhtCap:I

    .line 140
    .line 141
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromHtCap:I

    .line 142
    .line 143
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mNumofMloLink:I

    .line 144
    .line 145
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRssi:I

    .line 146
    .line 147
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgCu:I

    .line 148
    .line 149
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxSuccessCnt:J

    .line 150
    .line 151
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRetries:J

    .line 152
    .line 153
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxBad:J

    .line 154
    .line 155
    const-string v4, ""

    .line 156
    .line 157
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mCurrentBssid:Ljava/lang/String;

    .line 158
    .line 159
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pInterfaceName:Ljava/lang/String;

    .line 160
    .line 161
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mChannelWidth:I

    .line 162
    .line 163
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedBwIndex:I

    .line 164
    .line 165
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxBwIndex:I

    .line 166
    .line 167
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mBwSwitchCnt:I

    .line 168
    .line 169
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedTxMode:I

    .line 170
    .line 171
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 172
    .line 173
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mLowestPcieMode:I

    .line 174
    .line 175
    const v2, 0x3f333333    # 0.7f

    .line 176
    .line 177
    .line 178
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->bwCurrentConsumptioGain:F

    .line 179
    .line 180
    const/high16 v2, 0x3f000000    # 0.5f

    .line 181
    .line 182
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->bwThroughputLoss:F

    .line 183
    .line 184
    const v5, 0x3f666666    # 0.9f

    .line 185
    .line 186
    .line 187
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->txModeCurrentConsumptioGain:F

    .line 188
    .line 189
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->txModeThroughputLoss:F

    .line 190
    .line 191
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pTxBytes:J

    .line 192
    .line 193
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pRxBytes:J

    .line 194
    .line 195
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pTxRateMbps:D

    .line 196
    .line 197
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pRxRateMbps:D

    .line 198
    .line 199
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareTxBytes:J

    .line 200
    .line 201
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareRxBytes:J

    .line 202
    .line 203
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareTxRateMbps:D

    .line 204
    .line 205
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareRxRateMbps:D

    .line 206
    .line 207
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsTxBytes:J

    .line 208
    .line 209
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsRxBytes:J

    .line 210
    .line 211
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsTxRateMbps:D

    .line 212
    .line 213
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMhsRxRateMbps:D

    .line 214
    .line 215
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->lastDbsTime:J

    .line 216
    .line 217
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->txPowerFromDsiTable:Ljava/lang/String;

    .line 218
    .line 219
    new-instance v0, Ljava/util/LinkedList;

    .line 220
    .line 221
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 222
    .line 223
    .line 224
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsHistory:Ljava/util/LinkedList;

    .line 225
    .line 226
    new-instance v0, Ljava/util/LinkedList;

    .line 227
    .line 228
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 229
    .line 230
    .line 231
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiLinkStatsHistory:Ljava/util/LinkedList;

    .line 232
    .line 233
    new-instance v0, Ljava/util/LinkedList;

    .line 234
    .line 235
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 236
    .line 237
    .line 238
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTxPowerHistory:Ljava/util/LinkedList;

    .line 239
    .line 240
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$1;

    .line 241
    .line 242
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 243
    .line 244
    .line 245
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;

    .line 246
    .line 247
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$2;

    .line 248
    .line 249
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 250
    .line 251
    .line 252
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

    .line 253
    .line 254
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$3;

    .line 255
    .line 256
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 257
    .line 258
    .line 259
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 260
    .line 261
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiResourceManager$4;

    .line 262
    .line 263
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 264
    .line 265
    .line 266
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;

    .line 267
    .line 268
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;

    .line 269
    .line 270
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 271
    .line 272
    .line 273
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    .line 275
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiResourceManager$6;

    .line 276
    .line 277
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$6;-><init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 278
    .line 279
    .line 280
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiCtlFeatureMediatorBwGrantCallback:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 281
    .line 282
    new-instance v4, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;

    .line 283
    .line 284
    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$7;-><init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 285
    .line 286
    .line 287
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiCtlFeatureMediatorBwPerformanceQuery:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

    .line 288
    .line 289
    new-instance v5, Lcom/samsung/android/server/wifi/SemWifiResourceManager$8;

    .line 290
    .line 291
    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$8;-><init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 292
    .line 293
    .line 294
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiCtlFeatureMediatorTxNssGrantCallback:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 295
    .line 296
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiResourceManager$9;

    .line 297
    .line 298
    invoke-direct {v6, p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$9;-><init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 299
    .line 300
    .line 301
    iput-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiCtlFeatureMediatorTxNssPerformanceQuery:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

    .line 302
    .line 303
    const-string v7, "SemWifiResourceManager"

    .line 304
    .line 305
    invoke-static {v7, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mContext:Landroid/content/Context;

    .line 309
    .line 310
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 311
    .line 312
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 313
    .line 314
    const-string p2, "wifi"

    .line 315
    .line 316
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 321
    .line 322
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 323
    .line 324
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 329
    .line 330
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiEnhancedFeatureController()Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 335
    .line 336
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemThroughputPredictor()Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    iput-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 341
    .line 342
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiBackOffController()Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    iput-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 347
    .line 348
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    iput-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 353
    .line 354
    const-string v8, "wifinl80211"

    .line 355
    .line 356
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    check-cast v8, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 361
    .line 362
    iput-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 363
    .line 364
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiSafeModeObserver()Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 365
    .line 366
    .line 367
    move-result-object v8

    .line 368
    iput-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 369
    .line 370
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 371
    .line 372
    .line 373
    move-result-object v8

    .line 374
    iput-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 375
    .line 376
    new-instance v8, Ljava/util/HashMap;

    .line 377
    .line 378
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 379
    .line 380
    .line 381
    iput-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTrafficStats:Ljava/util/HashMap;

    .line 382
    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    const-string v9, "android.hardware.wifi.direct"

    .line 388
    .line 389
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    iput-boolean v9, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsSupportedWifiP2p:Z

    .line 394
    .line 395
    const-string v9, "android.hardware.wifi.aware"

    .line 396
    .line 397
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsSupportedWifiAware:Z

    .line 402
    .line 403
    new-instance v8, Landroid/content/IntentFilter;

    .line 404
    .line 405
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 406
    .line 407
    .line 408
    const-string v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 409
    .line 410
    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const-string v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 414
    .line 415
    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const-string v9, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 419
    .line 420
    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    .line 425
    .line 426
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isTxModeSwitchSupported:Z

    .line 427
    .line 428
    if-nez p1, :cond_4

    .line 429
    .line 430
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isBwSwitchSupported:Z

    .line 431
    .line 432
    if-eqz p1, :cond_5

    .line 433
    .line 434
    :cond_4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 439
    .line 440
    .line 441
    :cond_5
    const-string p1, "WifiResourceHandlerThread"

    .line 442
    .line 443
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;

    .line 448
    .line 449
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Landroid/os/Looper;)V

    .line 454
    .line 455
    .line 456
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiResourceHandler:Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;

    .line 457
    .line 458
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCtlFeatureMediator()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 463
    .line 464
    if-nez p1, :cond_6

    .line 465
    .line 466
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorBwSwitchGranted:Z

    .line 467
    .line 468
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorTxModeGranted:Z

    .line 469
    .line 470
    goto :goto_4

    .line 471
    :cond_6
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isBwSwitchSupported:Z

    .line 472
    .line 473
    if-eqz p2, :cond_7

    .line 474
    .line 475
    const-string p2, "BW"

    .line 476
    .line 477
    invoke-virtual {p1, v2, p2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1, v4, p2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->registerQuery(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    :cond_7
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isTxModeSwitchSupported:Z

    .line 484
    .line 485
    if-eqz p2, :cond_8

    .line 486
    .line 487
    const-string p2, "NSS"

    .line 488
    .line 489
    invoke-virtual {p1, v5, p2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p1, v6, p2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->registerQuery(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiEnhancedFeatureCallback:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;

    .line 496
    .line 497
    invoke-virtual {v7, p0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;)V

    .line 498
    .line 499
    .line 500
    return-void

    .line 501
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private checkAndGetAwareManager()Landroid/net/wifi/aware/WifiAwareManager;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsSupportedWifiAware:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "wifiaware"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 25
    .line 26
    const-string v0, "unsupported Wi-Fi Aware feature"

    .line 27
    .line 28
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private checkAndRegisterWifiTrafficPollerCallbackForAllIfaces()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaConnected:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0xbb8

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsMobileHotspotEnabled:Z

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsP2pConnected:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAwareCountDataPath:I

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsWifiTrafficPollerRegistered:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;

    .line 28
    .line 29
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallbackForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;I)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsWifiTrafficPollerRegistered:Z

    .line 34
    .line 35
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isPcieSwitchSupported:Z

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsWifiTrafficPollerRegistered:Z

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;

    .line 50
    .line 51
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallbackForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;I)V

    .line 52
    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsWifiTrafficPollerRegistered:Z

    .line 55
    .line 56
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isPcieSwitchSupported:Z

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mLowestPcieMode:I

    .line 61
    .line 62
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 63
    .line 64
    if-le v0, v1, :cond_4

    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 67
    .line 68
    .line 69
    :cond_4
    return-void
.end method

.method private convertBwIndexToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_3

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p1, p0, :cond_2

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    if-eq p1, p0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x4

    .line 13
    if-eq p1, p0, :cond_0

    .line 14
    .line 15
    const-string p0, "na"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "320"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string p0, "160"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    const-string p0, "80"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    const-string p0, "40"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const-string p0, "20"

    .line 31
    .line 32
    return-object p0
.end method

.method private convertPcieModeToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_3

    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_2

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    if-eq p1, p0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x4

    .line 11
    if-eq p1, p0, :cond_0

    .line 12
    .line 13
    const-string p0, "na"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "3x2"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    const-string p0, "3x1"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    const-string p0, "2x1"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_3
    const-string p0, "1x1"

    .line 26
    .line 27
    return-object p0
.end method

.method private createDirectory(Ljava/lang/String;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method private createFile(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    const-string p0, "could not dump to log file:"

    .line 29
    .line 30
    const-string v0, "SemWifiResourceManager"

    .line 31
    .line 32
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_1
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method private doDynamicPcieChange(D)V
    .locals 5

    .line 1
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    .line 2
    .line 3
    cmpg-double v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-gtz v0, :cond_2

    .line 7
    .line 8
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-le v0, v2, :cond_0

    .line 12
    .line 13
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 14
    .line 15
    cmpl-double p1, p1, v3

    .line 16
    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mLowestPcieMode:I

    .line 24
    .line 25
    if-le p1, v2, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private doDynamicPcieChangeFor11be(D)V
    .locals 5

    .line 1
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    .line 2
    .line 3
    cmpg-double v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-gtz v0, :cond_2

    .line 7
    .line 8
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-le v0, v2, :cond_0

    .line 12
    .line 13
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 14
    .line 15
    cmpl-double p1, p1, v3

    .line 16
    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mLowestPcieMode:I

    .line 24
    .line 25
    if-le p1, v2, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const-wide v2, 0x4082c00000000000L    # 600.0

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    cmpg-double v0, p1, v2

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    if-gtz v0, :cond_4

    .line 44
    .line 45
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 46
    .line 47
    if-le v0, v1, :cond_3

    .line 48
    .line 49
    const-wide/high16 v3, 0x4079000000000000L    # 400.0

    .line 50
    .line 51
    cmpl-double p1, p1, v3

    .line 52
    .line 53
    if-lez p1, :cond_3

    .line 54
    .line 55
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    const-wide v0, 0x4092c00000000000L    # 1200.0

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    cmpg-double v0, p1, v0

    .line 69
    .line 70
    const/4 v1, 0x4

    .line 71
    if-gtz v0, :cond_6

    .line 72
    .line 73
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 74
    .line 75
    if-le v0, v2, :cond_5

    .line 76
    .line 77
    const-wide v3, 0x408c200000000000L    # 900.0

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    cmpl-double p1, p1, v3

    .line 83
    .line 84
    if-lez p1, :cond_5

    .line 85
    .line 86
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private dumpToLogFile()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTxPowerHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTxPowerHistory:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;

    .line 6
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgetstart(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgettime(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgetindex(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I

    move-result v2

    const-string v4, "\n"

    .line 8
    invoke-static {v4, v2, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 9
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgetstart(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I

    move-result v3

    if-nez v3, :cond_2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgettime(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgetindex(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I

    move-result v2

    const-string v4, "\n"

    .line 11
    invoke-static {v4, v2, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 12
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgettime(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgetfrequeny(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgettxPowerAnt1(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgettxPowerAnt2(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgettasLevel(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgetavgTxPower(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgetwindowSize(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " 0.7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fgettargetSarMidPlimit(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x0

    .line 13
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->dumpToLogFile(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 14
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    return-void

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private dumpToLogFile(Ljava/lang/String;Z)V
    .locals 3

    .line 22
    const-string v0, "/data/log/wifi/"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->createDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    const-string v0, "/data/log/wifi/tx_power_log.txt"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->createFile(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_5

    :cond_0
    const/4 p0, 0x0

    if-eqz p2, :cond_1

    .line 24
    :try_start_0
    new-instance p2, Ljava/io/FileWriter;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    :goto_0
    move-object p0, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 25
    :cond_1
    new-instance p2, Ljava/io/FileWriter;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    goto :goto_0

    .line 26
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 27
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 30
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_4

    .line 31
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :goto_3
    if-eqz p0, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 33
    :cond_3
    :goto_4
    throw p1

    :cond_4
    :goto_5
    return-void
.end method

.method private getBwIndexFromChannelWidth(I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_1

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p1, p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    if-eq p1, p0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x5

    .line 13
    if-eq p1, p0, :cond_0

    .line 14
    .line 15
    const-string p0, "unsupported channelWidth = "

    .line 16
    .line 17
    const-string v0, "SemWifiResourceManager"

    .line 18
    .line 19
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x4

    .line 25
    :cond_1
    return p0

    .line 26
    :cond_2
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method private getChannelWidthFromIndex(I)I
    .locals 0

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_1

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p1, p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    if-eq p1, p0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x4

    .line 13
    if-eq p1, p0, :cond_0

    .line 14
    .line 15
    const-string p0, "SemWifiResourceManager"

    .line 16
    .line 17
    const-string p1, "unsupported Bandwidth"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x5

    .line 25
    :cond_1
    return p0

    .line 26
    :cond_2
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method private getMaxNumberSpatialStreams(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromHeCap:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromVhtCap:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromHtCap:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 31
    .line 32
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateMaxNumberSpatialStreamsFromIes(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromHeCap:I

    .line 49
    .line 50
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromVhtCap:I

    .line 51
    .line 52
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromHtCap:I

    .line 53
    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreams:I

    .line 63
    .line 64
    return p1
.end method

.method private getPredictThroughputDump([D)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "BW20 "

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    aget-wide v0, p1, v0

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "%.3f"

    .line 20
    .line 21
    const-string v2, ", BW40 "

    .line 22
    .line 23
    invoke-static {v1, v0, p0, v2}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    aget-wide v2, p1, v0

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, ", BW80 "

    .line 38
    .line 39
    invoke-static {v1, v0, p0, v2}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    aget-wide v2, p1, v0

    .line 44
    .line 45
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, ", BW160 "

    .line 54
    .line 55
    invoke-static {v1, v0, p0, v2}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x3

    .line 59
    aget-wide v2, p1, v0

    .line 60
    .line 61
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v2, ", BW320 "

    .line 70
    .line 71
    invoke-static {v1, v0, p0, v2}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x4

    .line 75
    aget-wide v2, p1, v0

    .line 76
    .line 77
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method

.method private getTime()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance p0, Ljava/util/Date;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private getUtilizationRatio(I)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x50

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/16 p0, 0xf

    .line 17
    .line 18
    return p0

    .line 19
    :cond_1
    const/16 p0, 0xa

    .line 20
    .line 21
    return p0
.end method

.method private initAvgAndPeakTxRxRates()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRateMbps:D

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRxRateMbps:D

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakTxRateMbps:D

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakRxRateMbps:D

    .line 10
    .line 11
    return-void
.end method

.method private initAvgLinkLayerStats()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x5

    .line 4
    if-ge v1, v2, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgPredictThroughputList:[D

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    aput-wide v3, v2, v1

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRssi:I

    .line 16
    .line 17
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgCu:I

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxSuccessCnt:J

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRetries:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxBad:J

    .line 26
    .line 27
    return-void
.end method

.method private initDynamicSwitchMode()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorBwSwitchGranted:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduced:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduceRequired:Z

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mBwSwitchCnt:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorTxModeGranted:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduced:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduceRequired:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxModeDisabled:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mDynamicDisabledbyTdls:Z

    .line 20
    .line 21
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedTxMode:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsHistory:Ljava/util/LinkedList;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsHistory:Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 29
    .line 30
    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiLinkStatsHistory:Ljava/util/LinkedList;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiLinkStatsHistory:Ljava/util/LinkedList;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 38
    .line 39
    .line 40
    monitor-exit v1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    throw p0
.end method

.method private static mcsMapToStreamMap(II)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    shr-int/2addr p0, p1

    .line 6
    and-int/lit8 p0, p0, 0x3

    .line 7
    .line 8
    return p0
.end method

.method private static parseMaxNumberSpatialStreamsFromMcsMap(I)I
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    :goto_0
    const/4 v1, 0x1

    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mcsMapToStreamMap(II)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v1
.end method

.method private setBandwidth()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTrafficStatsReady:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsLinkStatsReady:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mChannelWidth:I

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v2, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgPredictThroughputList:[D

    .line 16
    .line 17
    aget-wide v3, v0, v1

    .line 18
    .line 19
    double-to-int v3, v3

    .line 20
    aget-wide v4, v0, v2

    .line 21
    .line 22
    double-to-int v0, v4

    .line 23
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setMaxBandwidth(IIII)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/4 v1, 0x5

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgPredictThroughputList:[D

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    aget-wide v3, v0, v1

    .line 34
    .line 35
    double-to-int v3, v3

    .line 36
    aget-wide v4, v0, v2

    .line 37
    .line 38
    double-to-int v0, v4

    .line 39
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setMaxBandwidth(IIII)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method private setMaxBandwidth()V
    .locals 6

    .line 36
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedBwIndex:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getChannelWidthFromIndex(I)I

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    const-string v2, "wlan0"

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMaxBandwidth(Ljava/lang/String;III)Z

    move-result v1

    .line 38
    const-string v2, "SemWifiResourceManager"

    if-eqz v1, :cond_1

    .line 39
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mChannelWidth:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduced:Z

    .line 40
    const-string v1, "setMaxBandwidth: BW mode = "

    const-string v3, ", Switch required = "

    .line 41
    invoke-static {v1, v0, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduceRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Granted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorBwSwitchGranted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", BwReduced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", avgTxMbps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRateMbps:D

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.3f"

    const-string v4, ", avgRxMbps = "

    .line 44
    invoke-static {v3, v1, v0, v4}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 45
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRxRateMbps:D

    .line 46
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, ", peakTxMbps = "

    .line 47
    invoke-static {v3, v1, v0, v4}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakTxRateMbps:D

    .line 49
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, ", peakRxMbps = "

    .line 50
    invoke-static {v3, v1, v0, v4}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 51
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakRxRateMbps:D

    .line 52
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PredictThroughput:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgPredictThroughputList:[D

    .line 55
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getPredictThroughputDump([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AvgRssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AvgCu = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgCu:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMaxBandwidth fail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mChannelWidth:I

    .line 58
    invoke-static {v2, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    return-void
.end method

.method private setMaxBandwidth(IIII)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorBwSwitchGranted:Z

    const/4 v5, 0x0

    const-string v6, "SemWifiResourceManager"

    if-nez v4, :cond_0

    iget-boolean v7, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduced:Z

    if-eqz v7, :cond_0

    .line 2
    const-string v2, "recover bandwidth because of no-grant, upperBw: "

    .line 3
    invoke-static {v1, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedBwIndex:I

    .line 6
    iput-boolean v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduceRequired:Z

    .line 7
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setMaxBandwidth()V

    return-void

    .line 8
    :cond_0
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgDataRateMbps:D

    const-wide v9, 0x3fb999999999999aL    # 0.1

    cmpl-double v11, v7, v9

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    if-lez v11, :cond_1

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakDataRateMbps:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v14, v16

    if-lez v11, :cond_1

    cmpg-double v11, v14, v12

    if-gtz v11, :cond_1

    int-to-double v14, v3

    move-wide/from16 v16, v9

    iget-wide v9, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxRateMbps:D

    move-wide/from16 v18, v12

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mRxRateMbps:D

    add-double/2addr v9, v12

    add-double v9, v9, v18

    cmpl-double v9, v14, v9

    if-lez v9, :cond_2

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduceRequired:Z

    .line 10
    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedBwIndex:I

    if-ne v3, v1, :cond_4

    if-eqz v4, :cond_4

    .line 11
    const-string v1, "reduce bandwidth, lowerBw: "

    .line 12
    invoke-static {v2, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedBwIndex:I

    .line 15
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setMaxBandwidth()V

    return-void

    :cond_1
    move-wide/from16 v16, v9

    move-wide/from16 v18, v12

    :cond_2
    cmpg-double v4, v7, v16

    if-lez v4, :cond_3

    .line 16
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakDataRateMbps:D

    cmpl-double v4, v7, v18

    if-lez v4, :cond_4

    .line 17
    :cond_3
    iget v4, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedBwIndex:I

    if-ne v4, v2, :cond_4

    move/from16 v2, p2

    if-ge v3, v2, :cond_4

    .line 18
    const-string v2, "recover bandwidth, upperBw: "

    .line 19
    invoke-static {v1, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedBwIndex:I

    .line 22
    iput-boolean v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduceRequired:Z

    .line 23
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setMaxBandwidth()V

    :cond_4
    return-void
.end method

.method private setPcieMode(DD)V
    .locals 0

    .line 1
    add-double/2addr p1, p3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->doDynamicPcieChange(D)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private setPcieModeInternal(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "setPcieModeInternal - change to "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->convertPcieModeToString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SemWifiResourceManager"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const-string v0, "wlan0"

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-eq p1, v1, :cond_7

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    if-eq p1, v2, :cond_5

    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    if-eq p1, v3, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    if-eq p1, v1, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsMobileHotspotEnabled:Z

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaEnabled:Z

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 60
    .line 61
    const-string p1, "SET_PCIE_MODE 3 2"

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 68
    .line 69
    invoke-virtual {p0, v0, v3, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setPcieMode(Ljava/lang/String;II)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsMobileHotspotEnabled:Z

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaEnabled:Z

    .line 78
    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 82
    .line 83
    const-string p1, "SET_PCIE_MODE 3 1"

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 90
    .line 91
    invoke-virtual {p0, v0, v3, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setPcieMode(Ljava/lang/String;II)Z

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsMobileHotspotEnabled:Z

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaEnabled:Z

    .line 100
    .line 101
    if-nez p1, :cond_6

    .line 102
    .line 103
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 104
    .line 105
    const-string p1, "SET_PCIE_MODE 2 1"

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 112
    .line 113
    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setPcieMode(Ljava/lang/String;II)Z

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_7
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsMobileHotspotEnabled:Z

    .line 118
    .line 119
    if-eqz p1, :cond_8

    .line 120
    .line 121
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaEnabled:Z

    .line 122
    .line 123
    if-nez p1, :cond_8

    .line 124
    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 126
    .line 127
    const-string p1, "SET_PCIE_MODE 1 1"

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 134
    .line 135
    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setPcieMode(Ljava/lang/String;II)Z

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private setTxMode()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTrafficStatsReady:Z

    if-eqz v1, :cond_3

    .line 2
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorTxModeGranted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduced:Z

    if-eqz v3, :cond_0

    .line 3
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setTxMode(I)V

    return-void

    .line 4
    :cond_0
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRateMbps:D

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v7, v3, v5

    const/4 v8, 0x3

    const/16 v9, 0x64

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    if-lez v7, :cond_1

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakTxRateMbps:D

    const-wide v16, 0x3fb999999999999aL    # 0.1

    cmpl-double v7, v14, v16

    if-lez v7, :cond_1

    cmpg-double v7, v14, v12

    if-gtz v7, :cond_1

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakRxRateMbps:D

    cmpg-double v7, v14, v10

    if-gtz v7, :cond_1

    iget v7, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRssi:I

    const/16 v14, -0x3c

    if-le v7, v14, :cond_1

    iget v7, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgCu:I

    if-gt v7, v9, :cond_1

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduceRequired:Z

    .line 6
    iget v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedTxMode:I

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 7
    invoke-direct {v0, v8}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setTxMode(I)V

    return-void

    :cond_1
    cmpg-double v1, v3, v5

    if-lez v1, :cond_2

    .line 8
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakTxRateMbps:D

    cmpl-double v1, v3, v12

    if-gtz v1, :cond_2

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakRxRateMbps:D

    cmpl-double v1, v3, v10

    if-gtz v1, :cond_2

    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRssi:I

    const/16 v3, -0x41

    if-le v1, v3, :cond_2

    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgCu:I

    if-le v1, v9, :cond_3

    .line 9
    :cond_2
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduceRequired:Z

    .line 10
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedTxMode:I

    if-ne v1, v8, :cond_3

    .line 11
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setTxMode(I)V

    :cond_3
    return-void
.end method

.method private setTxMode(I)V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    const-string v1, "wlan0"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setTxMode(Ljava/lang/String;I)Z

    move-result v0

    .line 13
    const-string v2, "SemWifiResourceManager"

    if-eqz v0, :cond_1

    .line 14
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedTxMode:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduced:Z

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setTxMode: Tx Mode = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedTxMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Switch required = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduceRequired:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", Granted = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMediatorTxModeGranted:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", TxModeReduced = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduced:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", avgTxMbps = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRateMbps:D

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.3f"

    const-string v3, ", avgRxMbps = "

    .line 18
    invoke-static {v1, v0, p1, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 19
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRxRateMbps:D

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, ", peakTxMbps = "

    .line 21
    invoke-static {v1, v0, p1, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakTxRateMbps:D

    .line 23
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, ", peakRxMbps = "

    .line 24
    invoke-static {v1, v0, p1, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakRxRateMbps:D

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, ", AvgRssi = "

    .line 27
    invoke-static {v1, v0, p1, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRssi:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", AvgCu = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgCu:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getTxMode(Ljava/lang/String;)I

    move-result p0

    .line 31
    const-string p1, "setTxMode fail: "

    .line 32
    invoke-static {p1, p0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private updateAvgAndPeakTxRxRates(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->initAvgAndPeakTxRxRates()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;

    .line 39
    .line 40
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRateMbps:D

    .line 41
    .line 42
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->-$$Nest$fgettxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)D

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    add-double/2addr v3, v5

    .line 47
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRateMbps:D

    .line 48
    .line 49
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRxRateMbps:D

    .line 50
    .line 51
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->-$$Nest$fgetrxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)D

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    add-double/2addr v3, v5

    .line 56
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRxRateMbps:D

    .line 57
    .line 58
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakTxRateMbps:D

    .line 59
    .line 60
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->-$$Nest$fgettxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)D

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    cmpg-double v3, v3, v5

    .line 65
    .line 66
    if-gez v3, :cond_2

    .line 67
    .line 68
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->-$$Nest$fgettxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)D

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakTxRateMbps:D

    .line 73
    .line 74
    :cond_2
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakRxRateMbps:D

    .line 75
    .line 76
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->-$$Nest$fgetrxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)D

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    cmpg-double v3, v3, v5

    .line 81
    .line 82
    if-gez v3, :cond_1

    .line 83
    .line 84
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->-$$Nest$fgetrxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)D

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakRxRateMbps:D

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRateMbps:D

    .line 100
    .line 101
    int-to-double v4, p1

    .line 102
    div-double/2addr v2, v4

    .line 103
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRateMbps:D

    .line 104
    .line 105
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRxRateMbps:D

    .line 106
    .line 107
    div-double/2addr v6, v4

    .line 108
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRxRateMbps:D

    .line 109
    .line 110
    add-double/2addr v2, v6

    .line 111
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgDataRateMbps:D

    .line 112
    .line 113
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakTxRateMbps:D

    .line 114
    .line 115
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakRxRateMbps:D

    .line 116
    .line 117
    add-double/2addr v2, v4

    .line 118
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mPeakDataRateMbps:D

    .line 119
    .line 120
    const/16 v0, 0x1e

    .line 121
    .line 122
    if-ne p1, v0, :cond_4

    .line 123
    .line 124
    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTrafficStatsReady:Z

    .line 126
    .line 127
    :cond_4
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_1
    return-void

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0
.end method

.method private updateAvgWifiLinkStats(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiLinkStatsHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiLinkStatsHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->initAvgLinkLayerStats()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x5

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;

    .line 42
    .line 43
    :goto_1
    if-ge v3, v4, :cond_1

    .line 44
    .line 45
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgPredictThroughputList:[D

    .line 46
    .line 47
    aget-wide v6, v5, v3

    .line 48
    .line 49
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fgetpredictThroughputList(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)[D

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    aget-wide v8, v8, v3

    .line 54
    .line 55
    add-double/2addr v6, v8

    .line 56
    aput-wide v6, v5, v3

    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRssi:I

    .line 62
    .line 63
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    add-int/2addr v3, v4

    .line 68
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRssi:I

    .line 69
    .line 70
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgCu:I

    .line 71
    .line 72
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fgetcu(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    add-int/2addr v3, v4

    .line 77
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgCu:I

    .line 78
    .line 79
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxSuccessCnt:J

    .line 80
    .line 81
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fgettxSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    add-long/2addr v3, v5

    .line 86
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxSuccessCnt:J

    .line 87
    .line 88
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRetries:J

    .line 89
    .line 90
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fgettxRetries(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    add-long/2addr v3, v5

    .line 95
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRetries:J

    .line 96
    .line 97
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxBad:J

    .line 98
    .line 99
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fgettxBad(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    add-long/2addr v3, v5

    .line 104
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxBad:J

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    :goto_2
    if-ge v3, v4, :cond_3

    .line 116
    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgPredictThroughputList:[D

    .line 118
    .line 119
    aget-wide v5, v0, v3

    .line 120
    .line 121
    int-to-double v7, p1

    .line 122
    div-double/2addr v5, v7

    .line 123
    aput-wide v5, v0, v3

    .line 124
    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRssi:I

    .line 129
    .line 130
    div-int/2addr v0, p1

    .line 131
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgRssi:I

    .line 132
    .line 133
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgCu:I

    .line 134
    .line 135
    div-int/2addr v0, p1

    .line 136
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgCu:I

    .line 137
    .line 138
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxSuccessCnt:J

    .line 139
    .line 140
    int-to-long v5, p1

    .line 141
    div-long/2addr v2, v5

    .line 142
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxSuccessCnt:J

    .line 143
    .line 144
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRetries:J

    .line 145
    .line 146
    div-long/2addr v2, v5

    .line 147
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxRetries:J

    .line 148
    .line 149
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxBad:J

    .line 150
    .line 151
    div-long/2addr v2, v5

    .line 152
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mAvgTxBad:J

    .line 153
    .line 154
    if-ne p1, v4, :cond_4

    .line 155
    .line 156
    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsLinkStatsReady:Z

    .line 158
    .line 159
    :cond_4
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 160
    .line 161
    .line 162
    :cond_5
    :goto_3
    return-void

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    throw p0
.end method

.method private updateMaxNumberSpatialStreamsFromHeCap(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    const/16 v1, 0x15

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Invalid HE_CAPABILITIES len: "

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 22
    .line 23
    array-length p1, p1

    .line 24
    const-string v0, "SemWifiResourceManager"

    .line 25
    .line 26
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 31
    .line 32
    const/16 v1, 0x12

    .line 33
    .line 34
    aget-byte v0, v0, v1

    .line 35
    .line 36
    and-int/lit16 v0, v0, 0xff

    .line 37
    .line 38
    shl-int/lit8 v0, v0, 0x8

    .line 39
    .line 40
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 41
    .line 42
    const/16 v1, 0x11

    .line 43
    .line 44
    aget-byte p1, p1, v1

    .line 45
    .line 46
    and-int/lit16 p1, p1, 0xff

    .line 47
    .line 48
    add-int/2addr v0, p1

    .line 49
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->parseMaxNumberSpatialStreamsFromMcsMap(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromHeCap:I

    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method private updateMaxNumberSpatialStreamsFromHtCap(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "Invalid HtCapabilities len: "

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 16
    .line 17
    array-length p1, p1

    .line 18
    const-string v0, "SemWifiResourceManager"

    .line 19
    .line 20
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    aget-byte v0, v0, v1

    .line 28
    .line 29
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    aget-byte v0, v0, v2

    .line 33
    .line 34
    and-int/lit16 v0, v0, 0xff

    .line 35
    .line 36
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 37
    .line 38
    const/4 v4, 0x5

    .line 39
    aget-byte v3, v3, v4

    .line 40
    .line 41
    and-int/lit16 v3, v3, 0xff

    .line 42
    .line 43
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 44
    .line 45
    const/4 v4, 0x6

    .line 46
    aget-byte p1, p1, v4

    .line 47
    .line 48
    and-int/lit16 p1, p1, 0xff

    .line 49
    .line 50
    if-lez p1, :cond_1

    .line 51
    .line 52
    move v1, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-lez v3, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-lez v0, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v1, 0x1

    .line 62
    :goto_0
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromHtCap:I

    .line 63
    .line 64
    return-void
.end method

.method private updateMaxNumberSpatialStreamsFromIes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/net/wifi/ScanResult$InformationElement;

    .line 16
    .line 17
    iget v1, v0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 18
    .line 19
    const/16 v2, 0x2d

    .line 20
    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    const/16 v2, 0xbf

    .line 24
    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    const/16 v2, 0xff

    .line 28
    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateMaxNumberSpatialStreamsFromHeCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateMaxNumberSpatialStreamsFromVhtCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateMaxNumberSpatialStreamsFromHtCap(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    return-void
.end method

.method private updateMaxNumberSpatialStreamsFromVhtCap(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/16 v1, 0xc

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "Invalid VHT_CAPABILITIES len: "

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 16
    .line 17
    array-length p1, p1

    .line 18
    const-string v0, "SemWifiResourceManager"

    .line 19
    .line 20
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    aget-byte v0, v0, v1

    .line 28
    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v0, v0, 0x8

    .line 32
    .line 33
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    aget-byte p1, p1, v1

    .line 37
    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    add-int/2addr v0, p1

    .line 41
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->parseMaxNumberSpatialStreamsFromMcsMap(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreamsFromVhtCap:I

    .line 46
    .line 47
    return-void
.end method

.method private updateP2pInterfaceName()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChipsetVendorName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v1, "MTK"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "p2p0"

    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pInterfaceName:Ljava/lang/String;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const-string v0, "p2p-wlan0-0"

    .line 35
    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mP2pInterfaceName:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method private updatePredictThroughput(IIIJJJ)V
    .locals 13

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    new-array v1, v1, [D

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fputpredictThroughputList(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;[D)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mDeviceCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxBwIndex:I

    .line 25
    .line 26
    :goto_0
    if-ltz v1, :cond_0

    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fgetpredictThroughputList(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)[D

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mDeviceCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 35
    .line 36
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiStandard:I

    .line 37
    .line 38
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getChannelWidthFromIndex(I)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    iget v8, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mCurrentFrequency:I

    .line 43
    .line 44
    iget v9, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreams:I

    .line 45
    .line 46
    const/4 v12, 0x0

    .line 47
    move v7, p1

    .line 48
    move v10, p2

    .line 49
    move/from16 v11, p3

    .line 50
    .line 51
    invoke-virtual/range {v3 .. v12}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    int-to-double v3, v3

    .line 56
    aput-wide v3, v2, v1

    .line 57
    .line 58
    add-int/lit8 v1, v1, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fputrssi(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fputcu(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;I)V

    .line 65
    .line 66
    .line 67
    move-wide/from16 p1, p4

    .line 68
    .line 69
    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fputtxSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;J)V

    .line 70
    .line 71
    .line 72
    move-wide/from16 p1, p6

    .line 73
    .line 74
    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fputtxRetries(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;J)V

    .line 75
    .line 76
    .line 77
    move-wide/from16 p1, p8

    .line 78
    .line 79
    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;->-$$Nest$fputtxBad(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;J)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateWifiLinkStatsHistory(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private updateWifiLinkStatsHistory(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiLinkStats;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiLinkStatsHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiLinkStatsHistory:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiLinkStatsHistory:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x5

    .line 16
    if-le p1, v1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiLinkStatsHistory:Ljava/util/LinkedList;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method private updateWifiTrafficStatsHistory(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsHistory:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsHistory:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v1, 0x1e

    .line 16
    .line 17
    if-le p1, v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTrafficStatsHistory:Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method private updateWifiTxPowerHistory(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTxPowerHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTxPowerHistory:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTxPowerHistory:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v1, 0x5dc

    .line 16
    .line 17
    if-le p1, v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiTxPowerHistory:Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method


# virtual methods
.method public bwSwitchedEvent(II)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedBwIndex:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getChannelWidthFromIndex(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    const-string v1, "wlan0"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "SemWifiResourceManager"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne p2, v4, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 17
    .line 18
    invoke-virtual {p2, v1, v0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMaxBandwidth(Ljava/lang/String;III)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p1, "bw switch success"

    .line 25
    .line 26
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "bw switch fail"

    .line 31
    .line 32
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mBwSwitchCnt:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget p2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mBwSwitchCnt:I

    .line 39
    .line 40
    add-int/2addr p2, v4

    .line 41
    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mBwSwitchCnt:I

    .line 42
    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v5, "bwSwitched fail cnt: "

    .line 46
    .line 47
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mBwSwitchCnt:I

    .line 51
    .line 52
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v5, ", freq: "

    .line 56
    .line 57
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mCurrentFrequency:I

    .line 61
    .line 62
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v5, ", width: "

    .line 66
    .line 67
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mChannelWidth:I

    .line 71
    .line 72
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v5, ", selBw: "

    .line 76
    .line 77
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget p2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mBwSwitchCnt:I

    .line 91
    .line 92
    const/4 v5, 0x2

    .line 93
    if-ge p2, v5, :cond_2

    .line 94
    .line 95
    const-string p2, "try again"

    .line 96
    .line 97
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 101
    .line 102
    invoke-virtual {p0, v1, v0, p1, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMaxBandwidth(Ljava/lang/String;III)Z

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduceRequired:Z

    .line 107
    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    const-string p1, "restore and do not try again"

    .line 111
    .line 112
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 116
    .line 117
    iget p2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mChannelWidth:I

    .line 118
    .line 119
    invoke-virtual {p1, v1, v0, p2, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMaxBandwidth(Ljava/lang/String;III)Z

    .line 120
    .line 121
    .line 122
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduced:Z

    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    const-string p1, "restore failed, do not try again"

    .line 126
    .line 127
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 131
    .line 132
    invoke-virtual {p1, v1, v0, v5, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMaxBandwidth(Ljava/lang/String;III)Z

    .line 133
    .line 134
    .line 135
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsBwReduced:Z

    .line 136
    .line 137
    return-void
.end method

.method public enableTxPowerLogging(ZI)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isCtasSupported:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "enableTxPowerLogging, enable = "

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
    const-string v1, ", id = "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", mIsEnableTxPowerLogging = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsEnableTxPowerLogging:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "SemWifiResourceManager"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getTime()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputtime(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputstart(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputindex(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateWifiTxPowerHistory(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)V

    .line 63
    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsEnableTxPowerLogging:Z

    .line 68
    .line 69
    if-nez p2, :cond_1

    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsEnableTxPowerLogging:Z

    .line 73
    .line 74
    const-string p2, "format: time frequeny(MHz) txPowerAnt1(dBm) txPowerAnt2(dBm) setTasLevel(0/1/2) getTasLevel(0/1/2) windowSize(sec) TargetSarMid(W/kg) TargetSarPlimitMid(dBm)\n"

    .line 75
    .line 76
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiResourceHandler:Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;

    .line 80
    .line 81
    const/4 p1, 0x3

    .line 82
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    if-nez p1, :cond_2

    .line 91
    .line 92
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsEnableTxPowerLogging:Z

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->dumpToLogFile()V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 2

    .line 1
    const-string v0, "enableVerboseLogging "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiResourceManager"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mVerboseLog:Z

    .line 18
    .line 19
    return-void
.end method

.method public getDbsMode()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->lastDbsTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-double v0, v0

    .line 9
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    div-double/2addr v0, v2

    .line 15
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    .line 16
    .line 17
    cmpg-double v0, v0, v2

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mVerboseLog:Z

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const-string p0, "dbsMode = "

    .line 29
    .line 30
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v1, "SemWifiResourceManager"

    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    return v0
.end method

.method public getDynamicFeatureStatus()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isBwSwitchSupported:Z

    .line 7
    .line 8
    const-string v2, ","

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "BW "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedBwIndex:I

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->convertBwIndexToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isTxModeSwitchSupported:Z

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const-string v1, "NSS "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedTxMode:I

    .line 39
    .line 40
    if-lez v1, :cond_1

    .line 41
    .line 42
    const-string v1, "1Tx"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v1, "2Tx"

    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isPcieSwitchSupported:Z

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    const-string v1, "PCIe "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 63
    .line 64
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->convertPcieModeToString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public getRxBandwidth()I
    .locals 6

    .line 1
    const-string v0, "SemWifiResourceManager"

    .line 2
    .line 3
    const-string v1, "Rx bandwidth="

    .line 4
    .line 5
    const-string v2, "GET_STA_DUMP="

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 8
    .line 9
    const-string v4, "wlan0"

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, -0x1

    .line 16
    :try_start_0
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mVerboseLog:Z

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move v2, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    const-string v2, "rxbandwidth"

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const-string v5, "MHz t"

    .line 45
    .line 46
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    add-int/lit8 v2, v2, 0xc

    .line 51
    .line 52
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :try_start_1
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mVerboseLog:Z

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, " MHz"

    .line 73
    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catch_1
    :goto_1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mVerboseLog:Z

    .line 86
    .line 87
    if-eqz p0, :cond_1

    .line 88
    .line 89
    const-string p0, "String parsing error in getRxBandwidth"

    .line 90
    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_2
    const/16 p0, 0x14

    .line 95
    .line 96
    if-eq v2, p0, :cond_6

    .line 97
    .line 98
    const/16 p0, 0x28

    .line 99
    .line 100
    if-eq v2, p0, :cond_5

    .line 101
    .line 102
    const/16 p0, 0x50

    .line 103
    .line 104
    if-eq v2, p0, :cond_4

    .line 105
    .line 106
    const/16 p0, 0xa0

    .line 107
    .line 108
    if-eq v2, p0, :cond_3

    .line 109
    .line 110
    const/16 p0, 0x140

    .line 111
    .line 112
    if-eq v2, p0, :cond_2

    .line 113
    .line 114
    const-string p0, "unsupported Bandwidth"

    .line 115
    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    return v4

    .line 120
    :cond_2
    const/4 p0, 0x5

    .line 121
    return p0

    .line 122
    :cond_3
    const/4 p0, 0x3

    .line 123
    return p0

    .line 124
    :cond_4
    const/4 p0, 0x2

    .line 125
    return p0

    .line 126
    :cond_5
    const/4 p0, 0x1

    .line 127
    return p0

    .line 128
    :cond_6
    const/4 p0, 0x0

    .line 129
    return p0
.end method

.method public handleWifiStateChanged(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "SemWifiResourceManager"

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p0, "handleWifiStateChanged - unknown state ="

    .line 9
    .line 10
    invoke-static {p0, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    const-string v1, "handleWifiStateChanged - Wi-Fi dongle roam completed"

    .line 15
    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :pswitch_1
    const/4 v1, 0x6

    .line 20
    if-ne p1, v1, :cond_0

    .line 21
    .line 22
    const-string v1, "handleWifiStateChanged - Wi-Fi channel switch completed"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_2
    const-string p1, "handleWifiStateChanged - Wi-Fi disconnected"

    .line 29
    .line 30
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaConnected:Z

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->initDynamicSwitchMode()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->checkAndRegisterWifiTrafficPollerCallbackForAllIfaces()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    :goto_0
    :pswitch_3
    const/4 v1, 0x3

    .line 43
    if-ne p1, v1, :cond_1

    .line 44
    .line 45
    const-string p1, "handleWifiStateChanged - Wi-Fi connected"

    .line 46
    .line 47
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaConnected:Z

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->initDynamicSwitchMode()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateWifiConnectionInfo()V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->checkAndRegisterWifiTrafficPollerCallbackForAllIfaces()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_4
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaEnabled:Z

    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->unregisterListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateP2pInterfaceName()V

    .line 73
    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsStaEnabled:Z

    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->registerListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isWifiSafeModeEnabled()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSafeModeEnabled:Z

    .line 91
    .line 92
    sget-boolean p1, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->DBG:Z

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->updateDynamicSupportDbg()V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isPcieSwitchSupported:Z

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsMobileHotspotEnabled:Z

    .line 104
    .line 105
    if-nez p1, :cond_3

    .line 106
    .line 107
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedPcieMode:I

    .line 108
    .line 109
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setPcieModeInternal(I)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setUwbTxMode(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mVerboseLog:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "setUwbTxMode = "

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SemWifiResourceManager"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedTxMode:I

    .line 17
    .line 18
    if-lez p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mIsTxModeReduced:Z

    .line 24
    .line 25
    return-void
.end method

.method public tdlsRequestEvent(I)V
    .locals 3

    .line 1
    const-string v0, "SemWifiResourceManager"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedTxMode:I

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setTxMode(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mDynamicDisabledbyTdls:Z

    .line 15
    .line 16
    const-string p0, "set Dynamic Switch disabled because of TDLS_REQUEST_SETUP"

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mDynamicDisabledbyTdls:Z

    .line 25
    .line 26
    const-string p0, "set Dynamic Switch enabled because of TDLS_REQUEST_TEARDOWN"

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public updateDynamicSupportDbg()V
    .locals 5

    .line 1
    const-string v0, "vendor.wifi.dynamicsupport"

    .line 2
    .line 3
    const-string v1, "SemWifiResourceManager"

    .line 4
    .line 5
    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-ltz v0, :cond_4

    .line 14
    .line 15
    and-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    move v2, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v3

    .line 24
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isPcieSwitchSupported:Z

    .line 25
    .line 26
    and-int/lit8 v2, v0, 0x2

    .line 27
    .line 28
    if-lez v2, :cond_1

    .line 29
    .line 30
    move v2, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v3

    .line 33
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isTxModeSwitchSupported:Z

    .line 34
    .line 35
    and-int/lit8 v2, v0, 0x4

    .line 36
    .line 37
    if-lez v2, :cond_2

    .line 38
    .line 39
    move v2, v4

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v2, v3

    .line 42
    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isBwSwitchSupported:Z

    .line 43
    .line 44
    and-int/lit8 v0, v0, 0x8

    .line 45
    .line 46
    if-lez v0, :cond_3

    .line 47
    .line 48
    move v3, v4

    .line 49
    :cond_3
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isCtasSupported:Z

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "updateDynamicSupportDbg() - update dynamic series as DynamicPCIeSwitch: "

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isPcieSwitchSupported:Z

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, ", DynamicTxModeSwitch: "

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isTxModeSwitchSupported:Z

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ", DynamicBWSwitch: "

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isBwSwitchSupported:Z

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, ", CTAS: "

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->isCtasSupported:Z

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    const-string p0, "updateDynamicSupportDbg() - mDynamicSupportDbg is below zero"

    .line 102
    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v2, "updateDynamicSupportDbg() - cannot convert "

    .line 110
    .line 111
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public updateWifiConnectionInfo()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 10
    .line 11
    const-string v1, "wlan0"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mDeviceCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 20
    .line 21
    if-eqz v1, :cond_a

    .line 22
    .line 23
    if-eqz v0, :cond_a

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiStandard:I

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mCurrentFrequency:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mCurrentBssid:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mNumofMloLink:I

    .line 49
    .line 50
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiStandard:I

    .line 51
    .line 52
    const/16 v2, 0x8

    .line 53
    .line 54
    if-ne v1, v2, :cond_0

    .line 55
    .line 56
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getAffiliatedMloLinks()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mNumofMloLink:I

    .line 69
    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getRxBandwidth()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mChannelWidth:I

    .line 75
    .line 76
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getBwIndexFromChannelWidth(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxBwIndex:I

    .line 81
    .line 82
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedBwIndex:I

    .line 83
    .line 84
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mDeviceCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->getMaxNumberTxSpatialStreams()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mDeviceCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->getMaxNumberRxSpatialStreams()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mCurrentBssid:Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getMaxNumberSpatialStreams(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreams:I

    .line 111
    .line 112
    const/4 v4, 0x2

    .line 113
    const/4 v5, 0x1

    .line 114
    if-ltz v3, :cond_1

    .line 115
    .line 116
    if-le v3, v4, :cond_2

    .line 117
    .line 118
    :cond_1
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreams:I

    .line 119
    .line 120
    :cond_2
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mLowestPcieMode:I

    .line 121
    .line 122
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mCurrentFrequency:I

    .line 123
    .line 124
    const/16 v6, 0x960

    .line 125
    .line 126
    if-le v3, v6, :cond_3

    .line 127
    .line 128
    const/16 v6, 0x9c4

    .line 129
    .line 130
    if-ge v3, v6, :cond_3

    .line 131
    .line 132
    move v3, v5

    .line 133
    goto :goto_0

    .line 134
    :cond_3
    move v3, v0

    .line 135
    :goto_0
    if-eqz v3, :cond_4

    .line 136
    .line 137
    iget v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mNumofMloLink:I

    .line 138
    .line 139
    if-le v6, v5, :cond_6

    .line 140
    .line 141
    :cond_4
    iget v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mNumofMloLink:I

    .line 142
    .line 143
    if-gt v6, v5, :cond_5

    .line 144
    .line 145
    iget v6, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mChannelWidth:I

    .line 146
    .line 147
    if-ge v6, v4, :cond_5

    .line 148
    .line 149
    if-gez v6, :cond_6

    .line 150
    .line 151
    :cond_5
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mLowestPcieMode:I

    .line 152
    .line 153
    :cond_6
    if-nez v3, :cond_8

    .line 154
    .line 155
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mMaxNumberSpatialStreams:I

    .line 156
    .line 157
    if-lt v3, v4, :cond_8

    .line 158
    .line 159
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mNumofMloLink:I

    .line 160
    .line 161
    if-le v3, v5, :cond_7

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_7
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxModeDisabled:Z

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_8
    :goto_1
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxModeDisabled:Z

    .line 168
    .line 169
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mSelectedTxMode:I

    .line 170
    .line 171
    const/4 v4, 0x3

    .line 172
    if-ne v3, v4, :cond_9

    .line 173
    .line 174
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->setTxMode(I)V

    .line 175
    .line 176
    .line 177
    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v3, "Wi-Fi Standard "

    .line 180
    .line 181
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mWifiStandard:I

    .line 185
    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v3, ", Frequency "

    .line 190
    .line 191
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mCurrentFrequency:I

    .line 195
    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v3, ", ChannelWidth "

    .line 200
    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mChannelWidth:I

    .line 205
    .line 206
    const-string v4, ", maxNssDevice "

    .line 207
    .line 208
    const-string v5, ", maxNssAp "

    .line 209
    .line 210
    invoke-static {v0, v3, v4, v1, v5}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", numofMloLink "

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mNumofMloLink:I

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", TxModeDisabled "

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->mTxModeDisabled:Z

    .line 232
    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    const-string v0, "SemWifiResourceManager"

    .line 241
    .line 242
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    :cond_a
    return-void
.end method
