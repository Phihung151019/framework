.class public Lcom/samsung/android/server/wifi/SemWifiInjector;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiInjector"

.field private static sWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;


# instance fields
.field private final mAbTestControlHandlerThred:Landroid/os/HandlerThread;

.field private final mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

.field private final mAbTestScpmController:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;

.field private final mApServiceDetectionHandlerThread:Landroid/os/HandlerThread;

.field private mApeController:Lcom/samsung/android/server/wifi/SemApeController;

.field private mApeService:Lcom/samsung/android/server/wifi/SemApeService;

.field private final mAsyncChannelHandlerThread:Landroid/os/HandlerThread;

.field private mAutoTestHelper:Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

.field private mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

.field private final mAutoWifiLocalLog:Landroid/util/LocalLog;

.field private mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

.field private final mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private mConnectionPersonalizer:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

.field private final mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

.field private final mContext:Landroid/content/Context;

.field private mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

.field private final mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

.field private final mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

.field private final mIntelligentConnectionManager:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

.field private final mIntelligentConnectionManagerHandlerThread:Landroid/os/HandlerThread;

.field private final mIntelligentTrainingManager:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

.field private final mIntelligentTrainingManagerHandlerThread:Landroid/os/HandlerThread;

.field private mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

.field private mL4sController:Lcom/samsung/android/server/wifi/SemL4sController;

.field private final mLeakyApDetector:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

.field private final mLinkQualityMonitorHandlerThread:Landroid/os/HandlerThread;

.field private final mLnaControlHandlerThread:Landroid/os/HandlerThread;

.field private final mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

.field private final mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

.field private final mPktCaptureManager:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

.field private final mQboxController:Lcom/samsung/android/server/wifi/SemQboxController;

.field private final mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

.field private mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field private final mScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

.field private final mScheduledPmHandlerThread:Landroid/os/HandlerThread;

.field private mSemHalTestManager:Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;

.field private final mSemRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

.field private final mSemSoftApConfiguration:Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

.field private final mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

.field private mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

.field private mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

.field private mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

.field private mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

.field private mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

.field private final mSemWifiApLockManager:Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

.field private mSemWifiApTrafficPriority:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

.field private mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

.field private final mSemWifiRroChecker:Lcom/samsung/android/server/wifi/SemWifiRroChecker;

.field private final mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

.field private final mServiceDetectionHandlerThread:Landroid/os/HandlerThread;

.field private final mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

.field private final mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private final mSoftapUtils:Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

.field private mSrrSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

.field private final mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

.field private final mSupportedFeatureLogger:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

.field private final mSwitchBoardService:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

.field private final mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

.field private final mWifiApBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

.field private final mWifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

.field private final mWifiApClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

.field private mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

.field private mWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

.field private mWifiApContinuityClient:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

.field private mWifiApContinuityClientSession:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

.field private mWifiApContinuityMHS:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

.field private mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

.field private mWifiApDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

.field private final mWifiApDevicePolicyManager:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

.field private final mWifiApHandler:Landroid/os/Handler;

.field private final mWifiApHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

.field private final mWifiApMonitor:Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

.field private final mWifiApPowerSaveImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

.field private mWifiApSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;

.field private mWifiApServiceDetector:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

.field private final mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private mWifiApSmartBleScanner:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

.field private mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

.field private mWifiApSmartD2DClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

.field private mWifiApSmartD2DGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

.field private mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

.field private mWifiApSmartGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

.field private mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

.field private mWifiApSmartLocalLog:Landroid/util/LocalLog;

.field private mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

.field private mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

.field private final mWifiApTetheredClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

.field private final mWifiApThreadRunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

.field private final mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

.field private final mWifiApTrafficPoller:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

.field private mWifiAutojoinSettingsObserver:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

.field private final mWifiAwareNative:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

.field private final mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

.field private final mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

.field private final mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

.field private final mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

.field private mWifiCondUtil:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

.field private final mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

.field private final mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

.field private mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

.field private mWifiCtlFeatureMediatorHandlerThread:Landroid/os/HandlerThread;

.field private mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

.field private final mWifiDriverNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

.field private final mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

.field private mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

.field private mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

.field private final mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private mWifiGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

.field private mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

.field private final mWifiHandler:Landroid/os/Handler;

.field private final mWifiHandlerThread:Landroid/os/HandlerThread;

.field private mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

.field private final mWifiLinkInfoCollectorHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

.field private final mWifiLnaControl:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiMultiLinkControl:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

.field private final mWifiOffloadController:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

.field private final mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

.field private final mWifiOptimizerHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiP2pMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

.field private final mWifiP2pNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

.field private mWifiProfileAndQoSProvider:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

.field private final mWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

.field private final mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

.field private mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private mWifiScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

.field private final mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

.field private mWifiStateLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field private final mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

.field private final mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private final mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

.field private final mWifiTwtControlHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

.field private final mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

.field private final semSettingsSoftResetHandler:Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 28

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v10, Lcom/samsung/android/server/wifi/util/SemClock;

    .line 9
    .line 10
    invoke-direct {v10}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v10, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 14
    .line 15
    if-eqz v1, :cond_a

    .line 16
    .line 17
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiInjector;->sWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 18
    .line 19
    if-nez v0, :cond_9

    .line 20
    .line 21
    sput-object v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->sWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 22
    .line 23
    const-string v11, "SemWifiInjector"

    .line 24
    .line 25
    const-string v0, "SemWifiInjector start"

    .line 26
    .line 27
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    .line 31
    .line 32
    const-string v2, "SemAsyncChannelHandlerThread"

    .line 33
    .line 34
    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAsyncChannelHandlerThread:Landroid/os/HandlerThread;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    .line 41
    .line 42
    new-instance v12, Landroid/os/HandlerThread;

    .line 43
    .line 44
    const-string v0, "SemWifiHandlerThread"

    .line 45
    .line 46
    invoke-direct {v12, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v12, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 50
    .line 51
    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    new-instance v8, Landroid/os/Handler;

    .line 59
    .line 60
    invoke-direct {v8, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    .line 62
    .line 63
    iput-object v8, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandler:Landroid/os/Handler;

    .line 64
    .line 65
    new-instance v9, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 66
    .line 67
    invoke-direct {v9, v8}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;-><init>(Landroid/os/Handler;)V

    .line 68
    .line 69
    .line 70
    iput-object v9, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 71
    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    .line 73
    .line 74
    const-string v2, "SemWifiApHandlerThreads"

    .line 75
    .line 76
    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApHandlerThread:Landroid/os/HandlerThread;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v14, Landroid/os/Handler;

    .line 89
    .line 90
    invoke-direct {v14, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    .line 92
    .line 93
    iput-object v14, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApHandler:Landroid/os/Handler;

    .line 94
    .line 95
    new-instance v15, Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 96
    .line 97
    invoke-direct {v15}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v15, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 101
    .line 102
    iput-object v1, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    const-string v0, "wifi"

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    move-object v3, v0

    .line 111
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 112
    .line 113
    new-instance v0, Landroid/os/HandlerThread;

    .line 114
    .line 115
    const-string v2, "SemWifiManagerProxyHandlerThread"

    .line 116
    .line 117
    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v2, Landroid/os/Handler;

    .line 128
    .line 129
    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 133
    .line 134
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;-><init>(Landroid/os/Handler;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    new-instance v5, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 142
    .line 143
    new-instance v2, Landroid/os/HandlerExecutor;

    .line 144
    .line 145
    invoke-direct {v2, v8}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 146
    .line 147
    .line 148
    move-object v7, v0

    .line 149
    move-object v0, v5

    .line 150
    new-instance v5, Lcom/samsung/android/server/wifi/util/FeatureUtil;

    .line 151
    .line 152
    invoke-direct {v5, v15, v3}, Lcom/samsung/android/server/wifi/util/FeatureUtil;-><init>(Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/net/wifi/WifiManager;)V

    .line 153
    .line 154
    .line 155
    move-object/from16 v27, v4

    .line 156
    .line 157
    move-object v4, v3

    .line 158
    move-object v3, v7

    .line 159
    move-object/from16 v7, v27

    .line 160
    .line 161
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;-><init>(Landroid/content/Context;Landroid/os/HandlerExecutor;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Landroid/net/wifi/WifiManager;Lcom/samsung/android/server/wifi/util/FeatureUtil;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 162
    .line 163
    .line 164
    move-object v3, v4

    .line 165
    move-object v4, v7

    .line 166
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 167
    .line 168
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 169
    .line 170
    invoke-direct {v2, v1, v8, v0, v10}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/util/SemClock;)V

    .line 171
    .line 172
    .line 173
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 174
    .line 175
    new-instance v5, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 176
    .line 177
    invoke-direct {v5}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 181
    .line 182
    new-instance v5, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 183
    .line 184
    invoke-direct {v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 188
    .line 189
    new-instance v7, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 190
    .line 191
    invoke-direct {v7, v8}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;-><init>(Landroid/os/Handler;)V

    .line 192
    .line 193
    .line 194
    iput-object v7, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 195
    .line 196
    new-instance v7, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 197
    .line 198
    move-object/from16 v16, v0

    .line 199
    .line 200
    iget-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 201
    .line 202
    invoke-direct {v7, v0, v8}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Landroid/os/Handler;)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 206
    .line 207
    invoke-direct {v0, v1, v5, v15, v8}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;)V

    .line 208
    .line 209
    .line 210
    move-object/from16 v17, v2

    .line 211
    .line 212
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 213
    .line 214
    invoke-direct {v2, v7, v0, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V

    .line 215
    .line 216
    .line 217
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 218
    .line 219
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;

    .line 220
    .line 221
    move-object/from16 v18, v3

    .line 222
    .line 223
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    move-object/from16 v19, v5

    .line 228
    .line 229
    iget-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 230
    .line 231
    invoke-direct {v0, v1, v3, v5, v2}, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    .line 232
    .line 233
    .line 234
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemHalTestManager:Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;

    .line 235
    .line 236
    new-instance v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 237
    .line 238
    move-object v3, v9

    .line 239
    move-object v5, v15

    .line 240
    move-object/from16 v15, v18

    .line 241
    .line 242
    move-object v9, v4

    .line 243
    move-object v4, v2

    .line 244
    move-object v2, v8

    .line 245
    move-object v8, v6

    .line 246
    move-object/from16 v6, v16

    .line 247
    .line 248
    move-object/from16 v16, v12

    .line 249
    .line 250
    move-object v12, v7

    .line 251
    move-object/from16 v7, v17

    .line 252
    .line 253
    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 254
    .line 255
    .line 256
    move-object v8, v5

    .line 257
    move-object v7, v3

    .line 258
    move-object v3, v0

    .line 259
    move-object v0, v6

    .line 260
    move-object v6, v2

    .line 261
    move-object v2, v4

    .line 262
    move-object v4, v9

    .line 263
    iput-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 264
    .line 265
    new-instance v9, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 266
    .line 267
    invoke-direct {v9, v2}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;-><init>(Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;)V

    .line 268
    .line 269
    .line 270
    iput-object v9, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 271
    .line 272
    new-instance v3, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 273
    .line 274
    invoke-direct {v3, v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;-><init>(Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V

    .line 275
    .line 276
    .line 277
    iput-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 278
    .line 279
    new-instance v5, Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 280
    .line 281
    invoke-direct {v5, v1}, Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;-><init>(Landroid/content/Context;)V

    .line 282
    .line 283
    .line 284
    iput-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 285
    .line 286
    move-object/from16 v18, v3

    .line 287
    .line 288
    new-instance v3, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 289
    .line 290
    invoke-direct {v3, v0, v7, v5}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;)V

    .line 291
    .line 292
    .line 293
    iput-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 294
    .line 295
    new-instance v5, Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 296
    .line 297
    invoke-direct {v5, v1, v3}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)V

    .line 298
    .line 299
    .line 300
    iput-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 301
    .line 302
    new-instance v3, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 303
    .line 304
    invoke-virtual/range {v16 .. v16}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-direct {v3, v1, v5, v2, v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 309
    .line 310
    .line 311
    iput-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 312
    .line 313
    move-object v3, v0

    .line 314
    new-instance v0, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 315
    .line 316
    move-object v5, v4

    .line 317
    move-object v4, v1

    .line 318
    move-object v1, v2

    .line 319
    move-object/from16 v2, v19

    .line 320
    .line 321
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;-><init>(Lcom/samsung/android/server/wifi/pktcapture/NativePktCaptureCommand;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 322
    .line 323
    .line 324
    move-object/from16 v19, v3

    .line 325
    .line 326
    move-object v3, v1

    .line 327
    move-object v1, v4

    .line 328
    move-object v4, v0

    .line 329
    move-object v0, v5

    .line 330
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mPktCaptureManager:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 331
    .line 332
    new-instance v4, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 333
    .line 334
    invoke-direct {v4, v1, v3, v0, v8}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 335
    .line 336
    .line 337
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 338
    .line 339
    new-instance v4, Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 340
    .line 341
    invoke-direct {v4, v1, v6, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 342
    .line 343
    .line 344
    iput-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 345
    .line 346
    const-string v5, "WifiRouterInfoCollectorThread"

    .line 347
    .line 348
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    move-object/from16 v20, v5

    .line 353
    .line 354
    new-instance v5, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 355
    .line 356
    move-object/from16 v21, v2

    .line 357
    .line 358
    invoke-virtual/range {v20 .. v20}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-direct {v5, v1, v10, v2, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 363
    .line 364
    .line 365
    iput-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 366
    .line 367
    new-instance v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 368
    .line 369
    move-object v2, v3

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    move-object/from16 v1, v17

    .line 375
    .line 376
    move-object/from16 v17, v2

    .line 377
    .line 378
    move-object v2, v1

    .line 379
    move-object v1, v12

    .line 380
    move-object v12, v4

    .line 381
    move-object/from16 v4, v18

    .line 382
    .line 383
    move-object/from16 v18, v1

    .line 384
    .line 385
    move-object v1, v10

    .line 386
    move-object/from16 v22, v21

    .line 387
    .line 388
    move-object/from16 v10, p0

    .line 389
    .line 390
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;-><init>(Lcom/samsung/android/server/wifi/util/SemClock;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V

    .line 391
    .line 392
    .line 393
    move-object v3, v2

    .line 394
    move-object v2, v1

    .line 395
    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 396
    .line 397
    const-string v0, "WifiSilentRoamingThread"

    .line 398
    .line 399
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    move-object v1, v0

    .line 404
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 405
    .line 406
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    move-object v4, v9

    .line 411
    new-instance v9, Landroid/util/LocalLog;

    .line 412
    .line 413
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    const/16 v20, 0x12c

    .line 418
    .line 419
    if-eqz v5, :cond_0

    .line 420
    .line 421
    const/16 v5, 0x64

    .line 422
    .line 423
    goto :goto_0

    .line 424
    :cond_0
    move/from16 v5, v20

    .line 425
    .line 426
    :goto_0
    invoke-direct {v9, v5}, Landroid/util/LocalLog;-><init>(I)V

    .line 427
    .line 428
    .line 429
    move-object/from16 v24, v4

    .line 430
    .line 431
    move-object/from16 v23, v6

    .line 432
    .line 433
    move-object v10, v7

    .line 434
    move-object/from16 v4, v17

    .line 435
    .line 436
    move-object/from16 v5, v19

    .line 437
    .line 438
    move-object/from16 v7, p0

    .line 439
    .line 440
    move-object v6, v3

    .line 441
    move-object v3, v1

    .line 442
    move-object/from16 v1, p1

    .line 443
    .line 444
    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/util/LocalLog;)V

    .line 445
    .line 446
    .line 447
    move-object v9, v2

    .line 448
    move-object v2, v4

    .line 449
    move-object v4, v7

    .line 450
    move-object v7, v8

    .line 451
    move-object v8, v6

    .line 452
    move-object v6, v0

    .line 453
    iput-object v6, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 454
    .line 455
    new-instance v0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

    .line 456
    .line 457
    new-instance v3, Landroid/os/Handler;

    .line 458
    .line 459
    invoke-virtual/range {v16 .. v16}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 464
    .line 465
    .line 466
    invoke-direct {v0, v1, v7, v3, v4}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 467
    .line 468
    .line 469
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiAutojoinSettingsObserver:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

    .line 470
    .line 471
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 472
    .line 473
    invoke-virtual/range {v16 .. v16}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    iget-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 478
    .line 479
    invoke-direct {v0, v1, v3, v5}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;)V

    .line 480
    .line 481
    .line 482
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 483
    .line 484
    move-object/from16 v21, v6

    .line 485
    .line 486
    new-instance v6, Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 487
    .line 488
    invoke-direct {v6, v1, v13, v10, v4}, Lcom/samsung/android/server/wifi/SemClientModeManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 489
    .line 490
    .line 491
    iput-object v6, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 492
    .line 493
    new-instance v0, Landroid/util/LocalLog;

    .line 494
    .line 495
    const/16 v10, 0x64

    .line 496
    .line 497
    invoke-direct {v0, v10}, Landroid/util/LocalLog;-><init>(I)V

    .line 498
    .line 499
    .line 500
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoWifiLocalLog:Landroid/util/LocalLog;

    .line 501
    .line 502
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 503
    .line 504
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 509
    .line 510
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 511
    .line 512
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    move-object/from16 v10, v23

    .line 517
    .line 518
    invoke-direct {v3, v5, v0, v1, v10}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;-><init>(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;Landroid/content/Context;Landroid/os/Handler;)V

    .line 519
    .line 520
    .line 521
    iput-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 522
    .line 523
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 524
    .line 525
    invoke-direct {v0, v1, v13, v4, v7}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 526
    .line 527
    .line 528
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 529
    .line 530
    invoke-virtual {v6, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 531
    .line 532
    .line 533
    new-instance v5, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 534
    .line 535
    invoke-direct {v5, v1, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 536
    .line 537
    .line 538
    iput-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 539
    .line 540
    new-instance v5, Landroid/os/HandlerThread;

    .line 541
    .line 542
    move-object/from16 v23, v2

    .line 543
    .line 544
    const-string v2, "SemWifiServiceDetectionHandlerThread"

    .line 545
    .line 546
    invoke-direct {v5, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    iput-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mServiceDetectionHandlerThread:Landroid/os/HandlerThread;

    .line 550
    .line 551
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 552
    .line 553
    .line 554
    move-object/from16 v25, v8

    .line 555
    .line 556
    new-instance v8, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 557
    .line 558
    invoke-direct {v8, v4, v0, v5, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/HandlerThread;Landroid/content/Context;)V

    .line 559
    .line 560
    .line 561
    iput-object v8, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 562
    .line 563
    invoke-virtual {v6, v8}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 564
    .line 565
    .line 566
    new-instance v2, Landroid/os/HandlerThread;

    .line 567
    .line 568
    const-string v5, "SemWifiIntelligentTrainingManagerHandlerThread"

    .line 569
    .line 570
    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIntelligentTrainingManagerHandlerThread:Landroid/os/HandlerThread;

    .line 574
    .line 575
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 576
    .line 577
    .line 578
    new-instance v5, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 579
    .line 580
    invoke-direct {v5, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;)V

    .line 581
    .line 582
    .line 583
    iput-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIntelligentTrainingManager:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 584
    .line 585
    new-instance v2, Landroid/os/HandlerThread;

    .line 586
    .line 587
    const-string v5, "SemWifiLinkQualityMonitorHandlerThread"

    .line 588
    .line 589
    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mLinkQualityMonitorHandlerThread:Landroid/os/HandlerThread;

    .line 593
    .line 594
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 595
    .line 596
    .line 597
    new-instance v5, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 598
    .line 599
    invoke-direct {v5, v1, v4, v15, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/net/wifi/WifiManager;Landroid/os/HandlerThread;)V

    .line 600
    .line 601
    .line 602
    iput-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 603
    .line 604
    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 605
    .line 606
    .line 607
    new-instance v2, Landroid/os/HandlerThread;

    .line 608
    .line 609
    const-string v5, "SemWifiCtlFeatureMediatorHandlerThread"

    .line 610
    .line 611
    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCtlFeatureMediatorHandlerThread:Landroid/os/HandlerThread;

    .line 615
    .line 616
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 617
    .line 618
    .line 619
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 620
    .line 621
    iget-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCtlFeatureMediatorHandlerThread:Landroid/os/HandlerThread;

    .line 622
    .line 623
    invoke-direct {v2, v1, v4, v0, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/HandlerThread;)V

    .line 624
    .line 625
    .line 626
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 627
    .line 628
    invoke-virtual {v6, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 629
    .line 630
    .line 631
    new-instance v5, Landroid/os/HandlerThread;

    .line 632
    .line 633
    const-string v2, "SemWifiLnaControlHandlerThread"

    .line 634
    .line 635
    invoke-direct {v5, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    iput-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mLnaControlHandlerThread:Landroid/os/HandlerThread;

    .line 639
    .line 640
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 641
    .line 642
    .line 643
    move-object v2, v0

    .line 644
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 645
    .line 646
    move-object/from16 v27, v23

    .line 647
    .line 648
    move-object/from16 v23, v2

    .line 649
    .line 650
    move-object/from16 v2, v27

    .line 651
    .line 652
    move-object/from16 v27, v15

    .line 653
    .line 654
    move-object v15, v3

    .line 655
    move-object/from16 v3, v27

    .line 656
    .line 657
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Landroid/net/wifi/WifiManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;)V

    .line 658
    .line 659
    .line 660
    move-object/from16 v26, v3

    .line 661
    .line 662
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLnaControl:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 663
    .line 664
    invoke-virtual {v6, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 665
    .line 666
    .line 667
    new-instance v0, Landroid/os/HandlerThread;

    .line 668
    .line 669
    const-string v3, "AbTestControlHandlerThred"

    .line 670
    .line 671
    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAbTestControlHandlerThred:Landroid/os/HandlerThread;

    .line 675
    .line 676
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 677
    .line 678
    .line 679
    new-instance v3, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;

    .line 680
    .line 681
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-direct {v3, v1, v0, v12}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V

    .line 686
    .line 687
    .line 688
    iput-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAbTestScpmController:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;

    .line 689
    .line 690
    new-instance v0, Landroid/os/HandlerThread;

    .line 691
    .line 692
    const-string v3, "SemWifiApServiceDetectionHandlerThread"

    .line 693
    .line 694
    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApServiceDetectionHandlerThread:Landroid/os/HandlerThread;

    .line 698
    .line 699
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 700
    .line 701
    .line 702
    new-instance v0, Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 703
    .line 704
    move-object v3, v4

    .line 705
    move-object v4, v2

    .line 706
    move-object v2, v3

    .line 707
    move-object v3, v13

    .line 708
    move-object v5, v15

    .line 709
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemCellularStateManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 710
    .line 711
    .line 712
    move-object v12, v4

    .line 713
    move-object v4, v2

    .line 714
    move-object v2, v12

    .line 715
    move-object v12, v6

    .line 716
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 717
    .line 718
    const-string v0, "mWifiOptimizerHandlerThread start"

    .line 719
    .line 720
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .line 722
    .line 723
    move-object v5, v7

    .line 724
    new-instance v7, Landroid/os/HandlerThread;

    .line 725
    .line 726
    const-string v0, "SemWifiOptimizerThread"

    .line 727
    .line 728
    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    iput-object v7, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOptimizerHandlerThread:Landroid/os/HandlerThread;

    .line 732
    .line 733
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 734
    .line 735
    .line 736
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 737
    .line 738
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 739
    .line 740
    .line 741
    move-result-object v6

    .line 742
    move-object v13, v5

    .line 743
    move-object/from16 v15, v19

    .line 744
    .line 745
    move-object/from16 v5, v23

    .line 746
    .line 747
    move-object/from16 v3, v25

    .line 748
    .line 749
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 750
    .line 751
    .line 752
    move-object v7, v0

    .line 753
    iput-object v7, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 754
    .line 755
    invoke-virtual {v12, v7}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 756
    .line 757
    .line 758
    const-string v0, "mWifiTwtControlHandlerThread start"

    .line 759
    .line 760
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .line 762
    .line 763
    new-instance v0, Landroid/os/HandlerThread;

    .line 764
    .line 765
    const-string v1, "SemWifiTwtControlHandlerThread"

    .line 766
    .line 767
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtControlHandlerThread:Landroid/os/HandlerThread;

    .line 771
    .line 772
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 773
    .line 774
    .line 775
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 776
    .line 777
    invoke-direct {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;-><init>(Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    .line 778
    .line 779
    .line 780
    iput-object v1, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 781
    .line 782
    new-instance v0, Landroid/os/HandlerThread;

    .line 783
    .line 784
    const-string v1, "SemWifiScheduledPmControlHandlerThread"

    .line 785
    .line 786
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mScheduledPmHandlerThread:Landroid/os/HandlerThread;

    .line 790
    .line 791
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 792
    .line 793
    .line 794
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 795
    .line 796
    invoke-direct {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;-><init>(Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    .line 797
    .line 798
    .line 799
    iput-object v1, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 800
    .line 801
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->makeWifiLeakyApDetector(Lcom/samsung/android/server/wifi/SemWifiInjector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mLeakyApDetector:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 806
    .line 807
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 808
    .line 809
    move-object/from16 v1, p1

    .line 810
    .line 811
    move-object v3, v4

    .line 812
    move-object v4, v5

    .line 813
    move-object v5, v8

    .line 814
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 815
    .line 816
    .line 817
    move-object v8, v2

    .line 818
    move-object v4, v3

    .line 819
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 820
    .line 821
    invoke-virtual {v12, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 822
    .line 823
    .line 824
    const-string v0, "mWifiTrafficControl start"

    .line 825
    .line 826
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    .line 828
    .line 829
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 830
    .line 831
    invoke-direct {v0, v1, v8, v4}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 832
    .line 833
    .line 834
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiMultiLinkControl:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 835
    .line 836
    invoke-virtual {v12, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 837
    .line 838
    .line 839
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 840
    .line 841
    invoke-direct {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 842
    .line 843
    .line 844
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 845
    .line 846
    invoke-virtual {v12, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 847
    .line 848
    .line 849
    new-instance v0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 850
    .line 851
    invoke-direct {v0, v1, v10, v13, v15}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 852
    .line 853
    .line 854
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOffloadController:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 855
    .line 856
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    .line 857
    .line 858
    invoke-direct {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 859
    .line 860
    .line 861
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    .line 862
    .line 863
    new-instance v0, Landroid/os/HandlerThread;

    .line 864
    .line 865
    const-string v2, "SemWifiLinkInfoCollectorHandlerThread"

    .line 866
    .line 867
    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLinkInfoCollectorHandlerThread:Landroid/os/HandlerThread;

    .line 871
    .line 872
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 873
    .line 874
    .line 875
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 876
    .line 877
    invoke-direct {v2, v1, v15, v0, v8}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    .line 878
    .line 879
    .line 880
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 881
    .line 882
    invoke-virtual {v12, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 883
    .line 884
    .line 885
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 886
    .line 887
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;-><init>(Landroid/content/Context;)V

    .line 888
    .line 889
    .line 890
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiRroChecker:Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 891
    .line 892
    const-string v0, "mWifiApChipInfo start"

    .line 893
    .line 894
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .line 896
    .line 897
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 898
    .line 899
    invoke-direct {v0, v14}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;-><init>(Landroid/os/Handler;)V

    .line 900
    .line 901
    .line 902
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApThreadRunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 903
    .line 904
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 905
    .line 906
    invoke-direct {v0, v1, v14}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 907
    .line 908
    .line 909
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 910
    .line 911
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 912
    .line 913
    invoke-direct {v2, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 914
    .line 915
    .line 916
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApLockManager:Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 917
    .line 918
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;

    .line 919
    .line 920
    invoke-direct {v2, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 921
    .line 922
    .line 923
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->semSettingsSoftResetHandler:Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;

    .line 924
    .line 925
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 926
    .line 927
    invoke-direct {v2, v1, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 928
    .line 929
    .line 930
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 931
    .line 932
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 933
    .line 934
    invoke-direct {v2, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;-><init>(Landroid/content/Context;)V

    .line 935
    .line 936
    .line 937
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSoftapUtils:Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 938
    .line 939
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 940
    .line 941
    invoke-direct {v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;-><init>(Landroid/content/Context;)V

    .line 942
    .line 943
    .line 944
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 945
    .line 946
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 947
    .line 948
    invoke-direct {v2, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 949
    .line 950
    .line 951
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 952
    .line 953
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 954
    .line 955
    invoke-virtual/range {v16 .. v16}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 956
    .line 957
    .line 958
    move-result-object v2

    .line 959
    invoke-direct {v0, v1, v2, v15}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 960
    .line 961
    .line 962
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 963
    .line 964
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 965
    .line 966
    invoke-direct {v0, v1, v14}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 967
    .line 968
    .line 969
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTetheredClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 970
    .line 971
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    .line 972
    .line 973
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;-><init>()V

    .line 974
    .line 975
    .line 976
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApMonitor:Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    .line 977
    .line 978
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 979
    .line 980
    invoke-direct {v0, v1, v15}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 981
    .line 982
    .line 983
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 984
    .line 985
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    .line 986
    .line 987
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;-><init>(Landroid/content/Context;)V

    .line 988
    .line 989
    .line 990
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApPowerSaveImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    .line 991
    .line 992
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 993
    .line 994
    invoke-direct {v0, v1, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    .line 995
    .line 996
    .line 997
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTrafficPoller:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 998
    .line 999
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 1000
    .line 1001
    invoke-direct {v0, v1, v4, v13}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 1002
    .line 1003
    .line 1004
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 1005
    .line 1006
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 1007
    .line 1008
    invoke-direct {v0, v1, v15}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 1009
    .line 1010
    .line 1011
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 1012
    .line 1013
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 1014
    .line 1015
    invoke-direct {v0, v1, v13}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 1016
    .line 1017
    .line 1018
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemSoftApConfiguration:Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 1019
    .line 1020
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    .line 1021
    .line 1022
    invoke-direct {v0, v1, v15}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 1023
    .line 1024
    .line 1025
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApDevicePolicyManager:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    .line 1026
    .line 1027
    new-instance v0, Landroid/util/LocalLog;

    .line 1028
    .line 1029
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 1030
    .line 1031
    .line 1032
    move-result v2

    .line 1033
    if-eqz v2, :cond_1

    .line 1034
    .line 1035
    const/16 v2, 0x100

    .line 1036
    .line 1037
    goto :goto_1

    .line 1038
    :cond_1
    const/16 v2, 0x400

    .line 1039
    .line 1040
    :goto_1
    invoke-direct {v0, v2}, Landroid/util/LocalLog;-><init>(I)V

    .line 1041
    .line 1042
    .line 1043
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 1044
    .line 1045
    const-string v0, "SemWifiP2pMonitor start"

    .line 1046
    .line 1047
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .line 1049
    .line 1050
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 1051
    .line 1052
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;-><init>()V

    .line 1053
    .line 1054
    .line 1055
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiP2pMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 1056
    .line 1057
    new-instance v2, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 1058
    .line 1059
    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    .line 1060
    .line 1061
    .line 1062
    new-instance v3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 1063
    .line 1064
    iget-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 1065
    .line 1066
    move-object/from16 v6, v18

    .line 1067
    .line 1068
    invoke-direct {v3, v2, v5, v6, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;-><init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    .line 1069
    .line 1070
    .line 1071
    iput-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiP2pNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 1072
    .line 1073
    new-instance v0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 1074
    .line 1075
    iget-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 1076
    .line 1077
    invoke-direct {v0, v2, v6}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V

    .line 1078
    .line 1079
    .line 1080
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiAwareNative:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 1081
    .line 1082
    new-instance v0, Landroid/os/HandlerThread;

    .line 1083
    .line 1084
    sget-object v2, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->TAG:Ljava/lang/String;

    .line 1085
    .line 1086
    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1090
    .line 1091
    .line 1092
    new-instance v2, Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 1093
    .line 1094
    invoke-direct {v2, v1, v8, v9, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/HandlerThread;)V

    .line 1095
    .line 1096
    .line 1097
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSwitchBoardService:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 1098
    .line 1099
    invoke-virtual {v2, v12}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setClientModeManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 1100
    .line 1101
    .line 1102
    new-instance v0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    .line 1103
    .line 1104
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v2

    .line 1108
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v3

    .line 1112
    move-object/from16 v5, v22

    .line 1113
    .line 1114
    invoke-direct {v0, v2, v5, v3}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Landroid/os/Looper;)V

    .line 1115
    .line 1116
    .line 1117
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    .line 1118
    .line 1119
    new-instance v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    .line 1120
    .line 1121
    move-object/from16 v2, v24

    .line 1122
    .line 1123
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V

    .line 1124
    .line 1125
    .line 1126
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSupportedFeatureLogger:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    .line 1127
    .line 1128
    new-instance v5, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 1129
    .line 1130
    invoke-direct {v5, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;-><init>(Landroid/content/Context;)V

    .line 1131
    .line 1132
    .line 1133
    iput-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 1134
    .line 1135
    new-instance v0, Landroid/os/HandlerThread;

    .line 1136
    .line 1137
    const-string v2, "SemWifiIntelligentConnectionManagerHandlerThread"

    .line 1138
    .line 1139
    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIntelligentConnectionManagerHandlerThread:Landroid/os/HandlerThread;

    .line 1143
    .line 1144
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1145
    .line 1146
    .line 1147
    move-object v4, v0

    .line 1148
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 1149
    .line 1150
    move-object/from16 v2, p0

    .line 1151
    .line 1152
    move-object/from16 v6, v21

    .line 1153
    .line 1154
    move-object/from16 v3, v26

    .line 1155
    .line 1156
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/net/wifi/WifiManager;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1157
    .line 1158
    .line 1159
    move-object v4, v2

    .line 1160
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIntelligentConnectionManager:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 1161
    .line 1162
    invoke-virtual {v12, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 1163
    .line 1164
    .line 1165
    new-instance v0, Landroid/os/HandlerThread;

    .line 1166
    .line 1167
    const-string v1, "SemWifiUsageMonitorThread"

    .line 1168
    .line 1169
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1173
    .line 1174
    .line 1175
    move-object v1, v0

    .line 1176
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 1177
    .line 1178
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v3

    .line 1182
    new-instance v6, Landroid/util/LocalLog;

    .line 1183
    .line 1184
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 1185
    .line 1186
    .line 1187
    move-result v1

    .line 1188
    if-eqz v1, :cond_2

    .line 1189
    .line 1190
    const/16 v1, 0x64

    .line 1191
    .line 1192
    goto :goto_2

    .line 1193
    :cond_2
    move/from16 v1, v20

    .line 1194
    .line 1195
    :goto_2
    invoke-direct {v6, v1}, Landroid/util/LocalLog;-><init>(I)V

    .line 1196
    .line 1197
    .line 1198
    move-object/from16 v1, p1

    .line 1199
    .line 1200
    move-object v2, v9

    .line 1201
    move-object v5, v13

    .line 1202
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/util/LocalLog;)V

    .line 1203
    .line 1204
    .line 1205
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 1206
    .line 1207
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 1208
    .line 1209
    invoke-direct {v0, v4, v8, v2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/util/SemClock;)V

    .line 1210
    .line 1211
    .line 1212
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 1213
    .line 1214
    const-string v0, "ro.product.vendor.device"

    .line 1215
    .line 1216
    const/4 v2, 0x0

    .line 1217
    invoke-virtual {v5, v0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupported6Ghz()Z

    .line 1222
    .line 1223
    .line 1224
    move-result v3

    .line 1225
    if-eqz v3, :cond_3

    .line 1226
    .line 1227
    if-eqz v0, :cond_3

    .line 1228
    .line 1229
    const-string v3, "p3q"

    .line 1230
    .line 1231
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1232
    .line 1233
    .line 1234
    move-result v3

    .line 1235
    if-nez v3, :cond_3

    .line 1236
    .line 1237
    const-string v3, "p3s"

    .line 1238
    .line 1239
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1240
    .line 1241
    .line 1242
    move-result v0

    .line 1243
    if-nez v0, :cond_3

    .line 1244
    .line 1245
    new-instance v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 1246
    .line 1247
    invoke-direct {v0, v1, v4}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 1248
    .line 1249
    .line 1250
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 1251
    .line 1252
    const-string v0, "StrongRssiRoamingThread"

    .line 1253
    .line 1254
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    new-instance v3, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 1259
    .line 1260
    invoke-direct {v3, v1, v4, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;)V

    .line 1261
    .line 1262
    .line 1263
    iput-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 1264
    .line 1265
    goto :goto_3

    .line 1266
    :cond_3
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 1267
    .line 1268
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 1269
    .line 1270
    :goto_3
    const-string v0, "SemApeController start"

    .line 1271
    .line 1272
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    .line 1274
    .line 1275
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeController;

    .line 1276
    .line 1277
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v3

    .line 1281
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/server/wifi/SemApeController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 1282
    .line 1283
    .line 1284
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    .line 1285
    .line 1286
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v1

    .line 1290
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemApeController;->registerContentObserver(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 1291
    .line 1292
    .line 1293
    iget-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    .line 1294
    .line 1295
    invoke-virtual {v7, v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->setApeController(Lcom/samsung/android/server/wifi/SemApeController;)V

    .line 1296
    .line 1297
    .line 1298
    new-instance v0, Landroid/os/HandlerThread;

    .line 1299
    .line 1300
    const-string v1, "SemApeService"

    .line 1301
    .line 1302
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1306
    .line 1307
    .line 1308
    const/high16 v1, 0x41700000    # 15.0f

    .line 1309
    .line 1310
    :try_start_0
    const-string v3, "17.0"

    .line 1311
    .line 1312
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1313
    .line 1314
    .line 1315
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    goto :goto_4

    .line 1317
    :catch_0
    move v3, v1

    .line 1318
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    const-string v6, "SEP ver="

    .line 1321
    .line 1322
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v5

    .line 1332
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    .line 1334
    .line 1335
    cmpl-float v1, v3, v1

    .line 1336
    .line 1337
    if-lez v1, :cond_5

    .line 1338
    .line 1339
    new-instance v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1340
    .line 1341
    iget-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 1342
    .line 1343
    iget-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 1344
    .line 1345
    invoke-direct {v1, v3, v0, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 1346
    .line 1347
    .line 1348
    iget-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1349
    .line 1350
    if-eqz v0, :cond_4

    .line 1351
    .line 1352
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->setMediator(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)V

    .line 1353
    .line 1354
    .line 1355
    :cond_4
    iput-object v1, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeService:Lcom/samsung/android/server/wifi/SemApeService;

    .line 1356
    .line 1357
    goto :goto_5

    .line 1358
    :cond_5
    new-instance v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1359
    .line 1360
    iget-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 1361
    .line 1362
    iget-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 1363
    .line 1364
    invoke-direct {v1, v3, v0, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 1365
    .line 1366
    .line 1367
    iput-object v1, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeService:Lcom/samsung/android/server/wifi/SemApeService;

    .line 1368
    .line 1369
    :goto_5
    new-instance v0, Lcom/samsung/android/server/wifi/SemQboxController;

    .line 1370
    .line 1371
    iget-object v1, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 1372
    .line 1373
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v3

    .line 1377
    iget-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 1378
    .line 1379
    invoke-direct {v0, v1, v3, v5}, Lcom/samsung/android/server/wifi/SemQboxController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 1380
    .line 1381
    .line 1382
    iput-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mQboxController:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 1383
    .line 1384
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v1

    .line 1388
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemQboxController;->registerContentObserver(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 1389
    .line 1390
    .line 1391
    const-string v0, "1"

    .line 1392
    .line 1393
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1394
    .line 1395
    .line 1396
    move-result v1

    .line 1397
    if-lez v1, :cond_6

    .line 1398
    .line 1399
    const-string v1, "SemL4sController start"

    .line 1400
    .line 1401
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    .line 1403
    .line 1404
    new-instance v1, Lcom/samsung/android/server/wifi/SemL4sController;

    .line 1405
    .line 1406
    iget-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 1407
    .line 1408
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v5

    .line 1412
    iget-object v6, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 1413
    .line 1414
    invoke-direct {v1, v3, v5, v6}, Lcom/samsung/android/server/wifi/SemL4sController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 1415
    .line 1416
    .line 1417
    iput-object v1, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mL4sController:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 1418
    .line 1419
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v3

    .line 1423
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/SemL4sController;->registerContentObserver(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 1424
    .line 1425
    .line 1426
    :cond_6
    iget-object v1, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 1427
    .line 1428
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    .line 1429
    .line 1430
    .line 1431
    move-result v1

    .line 1432
    if-nez v1, :cond_7

    .line 1433
    .line 1434
    const-string v1, "0"

    .line 1435
    .line 1436
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1437
    .line 1438
    .line 1439
    move-result v1

    .line 1440
    if-lez v1, :cond_7

    .line 1441
    .line 1442
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1443
    .line 1444
    iget-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 1445
    .line 1446
    iget-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1447
    .line 1448
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 1449
    .line 1450
    .line 1451
    iput-object v1, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1452
    .line 1453
    iget-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 1454
    .line 1455
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->setDbsProvider(Lcom/samsung/android/server/wifi/DbsModeProvider;)V

    .line 1456
    .line 1457
    .line 1458
    goto :goto_6

    .line 1459
    :cond_7
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1460
    .line 1461
    :goto_6
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 1462
    .line 1463
    iget-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 1464
    .line 1465
    iget-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1466
    .line 1467
    iget-object v5, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1468
    .line 1469
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 1470
    .line 1471
    .line 1472
    iput-object v1, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 1473
    .line 1474
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1475
    .line 1476
    .line 1477
    move-result v0

    .line 1478
    if-lez v0, :cond_8

    .line 1479
    .line 1480
    const-string v1, "Conn.Personalizer"

    .line 1481
    .line 1482
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v1

    .line 1486
    new-instance v2, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 1487
    .line 1488
    iget-object v3, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 1489
    .line 1490
    invoke-direct {v2, v3, v4, v1, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;I)V

    .line 1491
    .line 1492
    .line 1493
    iput-object v2, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mConnectionPersonalizer:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 1494
    .line 1495
    iget-object v0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 1496
    .line 1497
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 1498
    .line 1499
    .line 1500
    :cond_8
    return-void

    .line 1501
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1502
    .line 1503
    const-string v1, "SemWifiInjector was already created, use getInstance instead."

    .line 1504
    .line 1505
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1506
    .line 1507
    .line 1508
    throw v0

    .line 1509
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1510
    .line 1511
    const-string v1, "SemWifiInjector should not be initialized with a null Context."

    .line 1512
    .line 1513
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1514
    .line 1515
    .line 1516
    throw v0
.end method

.method public static getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiInjector;->sWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Attempted to retrieve a SemWifiInjector instance before constructor was called."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->enableVerboseLogging(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->enableVerboseLogging(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApServiceDetector:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->enableVerboseLogging(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->enableVerboseLogging(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->enableVerboseLogging(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLnaControl:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->enableVerboseLogging(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->enableVerboseLogging(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->enableVerboseLogging(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIntelligentConnectionManager:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->enableVerboseLogging(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->enableVerboseLogging(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->enableVerboseLogging(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeService:Lcom/samsung/android/server/wifi/SemApeService;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->enableVerboseLogging(I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->enableVerboseLogging(I)V

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->enableVerboseLogging(I)V

    .line 87
    .line 88
    .line 89
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mConnectionPersonalizer:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->enableVerboseLogging(I)V

    .line 94
    .line 95
    .line 96
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 97
    .line 98
    if-eqz p0, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->enableVerboseLogging(I)V

    .line 101
    .line 102
    .line 103
    :cond_7
    return-void
.end method

.method public getAbTestManager()Lcom/samsung/android/server/wifi/abtest/AbTestManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAbTestScpmController()Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAbTestScpmController:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getApeController()Lcom/samsung/android/server/wifi/SemApeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getApeService()Lcom/samsung/android/server/wifi/SemApeService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeService:Lcom/samsung/android/server/wifi/SemApeService;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAsyncChannelHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAsyncChannelHandlerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAutoTestHelper()Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoTestHelper:Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoTestHelper:Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoTestHelper:Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

    .line 17
    .line 18
    return-object p0
.end method

.method public getAutoWifiController()Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AutoWifi"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 20
    .line 21
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoWifiLocalLog:Landroid/util/LocalLog;

    .line 22
    .line 23
    move-object v4, p0

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Landroid/util/LocalLog;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 28
    .line 29
    iget-object p0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v4, p0

    .line 36
    :goto_0
    iget-object p0, v4, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 37
    .line 38
    return-object p0
.end method

.method public getB2BPolicyManager()Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 19
    .line 20
    return-object p0
.end method

.method public getCellularStateManager()Lcom/samsung/android/server/wifi/SemCellularStateManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 2
    .line 3
    return-object p0
.end method

.method getClientModeManager()Lcom/samsung/android/server/wifi/SemClientModeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getClock()Lcom/samsung/android/server/wifi/util/SemClock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    return-object p0
.end method

.method public getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mConnectionPersonalizer:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 2
    .line 3
    return-object p0
.end method

.method public getConnectivityLogger()Lcom/samsung/android/server/wifi/SemConnectivityLogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    .line 2
    .line 3
    return-object p0
.end method

.method public getContinuityService()Lcom/samsung/android/server/wifi/share/WifiContinuityService;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 18
    .line 19
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 20
    .line 21
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 22
    .line 23
    move-object v8, p0

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v8, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v8, p0

    .line 31
    :goto_0
    iget-object p0, v8, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 32
    .line 33
    return-object p0
.end method

.method public getCountryCodeProperty()Lcom/samsung/android/server/wifi/util/CountryCodeProperty;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    .line 17
    .line 18
    return-object p0
.end method

.method public getDriverFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getDriverVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHostapdHal()Lcom/samsung/android/server/wifi/ap/SemHostapdHal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIntelligentConnectionManager:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIntelligentTrainingManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIntelligentTrainingManager:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIssueTrackerLogManager()Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 17
    .line 18
    return-object p0
.end method

.method public getL4sController()Lcom/samsung/android/server/wifi/SemL4sController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mL4sController:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMobileWipsFrameworkService()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPacketCaptureManager()Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mPktCaptureManager:Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPickerDialogController()Lcom/samsung/android/server/wifi/ui/PickerDialogController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mQboxController:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRoamingAssistant()Lcom/samsung/android/server/wifi/SemRoamingAssistant;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRoamingProcessor()Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 10
    .line 11
    const-string v3, "7GP-399-569797"

    .line 12
    .line 13
    const-string v4, "com.samsung.android.server.wifi"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 21
    .line 22
    return-object p0
.end method

.method public getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/util/ScanPool;->getInstance()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getSemHalTestManager()Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemHalTestManager:Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemHalTestManager:Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemHalTestManager:Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;

    .line 23
    .line 24
    return-object p0
.end method

.method public getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemSoftApConfiguration:Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSemThroughputPredictor()Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSemWifiApAdvancedAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 27
    .line 28
    return-object p0
.end method

.method public getSemWifiApAdvancedAutohotspotMHSLcdOnOff()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    .line 25
    .line 26
    return-object p0
.end method

.method public getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 27
    .line 28
    return-object p0
.end method

.method public getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    .line 23
    .line 24
    return-object p0
.end method

.method public getSemWifiApEbpf()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getSemWifiApEbpf()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 16
    .line 17
    return-object p0
.end method

.method public getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApTrafficPriority:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApTrafficPriority:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApTrafficPriority:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 16
    .line 17
    return-object p0
.end method

.method public getSemWifiBackupRestore()Lcom/samsung/android/server/wifi/SemWifiBackupRestore;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 15
    .line 16
    return-object p0
.end method

.method public getSemWifiUsageMonitor()Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSilentRoamingManager()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSoftapUtils:Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSrrSaLoggingHandler()Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSrrSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSrrSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSrrSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 25
    .line 26
    return-object p0
.end method

.method public getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSupportedFeatureLogger()Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSupportedFeatureLogger:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSwitchBoardService()Lcom/samsung/android/server/wifi/SemSwitchBoardService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSwitchBoardService:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUserConnectionSaLogging()Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApBroadcastReceiver()Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApConfigStore()Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 19
    .line 20
    return-object p0
.end method

.method public getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFAutohotspotSupported(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 25
    .line 26
    return-object p0
.end method

.method public getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClient:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFClientAutohotspotSupported(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClient:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClient:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 25
    .line 26
    return-object p0
.end method

.method public getWifiApContinuityClientSession()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClientSession:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFClientAutohotspotSupported(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClientSession:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClientSession:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 25
    .line 26
    return-object p0
.end method

.method public getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityMHS:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFAutohotspotSupported(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityMHS:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityMHS:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 25
    .line 26
    return-object p0
.end method

.method public getWifiApContinuityUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFAutohotspotSupported(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 25
    .line 26
    return-object p0
.end method

.method public getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 29
    .line 30
    return-object p0
.end method

.method public getWifiApDevicePolicyManager()Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApDevicePolicyManager:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApLockManager:Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApMonitor()Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApMonitor:Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApPowerSaveImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApPowerSaveImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApSaLoggingHandler()Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;

    .line 25
    .line 26
    return-object p0
.end method

.method public getWifiApServiceDetector()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApServiceDetector:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApSmartPrioritySupported()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApServiceDetectionHandlerThread:Landroid/os/HandlerThread;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApServiceDetector:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApServiceDetector:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 25
    .line 26
    return-object p0
.end method

.method public getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApSettingsSoftResetHandler()Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->semSettingsSoftResetHandler:Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartBleScanner:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartBleScanner:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartBleScanner:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 23
    .line 24
    return-object p0
.end method

.method public getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 23
    .line 24
    return-object p0
.end method

.method public getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    .line 21
    .line 22
    return-object p0
.end method

.method public getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 21
    .line 22
    return-object p0
.end method

.method public getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 21
    .line 22
    return-object p0
.end method

.method public getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 23
    .line 24
    return-object p0
.end method

.method public getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 23
    .line 24
    return-object p0
.end method

.method public getWifiApSmartLocalLog()Landroid/util/LocalLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 21
    .line 22
    return-object p0
.end method

.method public getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 19
    .line 20
    return-object p0
.end method

.method public getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTetheredClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApThreadRunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApTimeOutImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApTrafficPoller()Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTrafficPoller:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiAutojoinSettingsObserver()Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiAutojoinSettingsObserver:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiAwareNative()Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiAwareNative:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiBackOffController()Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiCarrierInfoManager()Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiCoexManager()Lcom/samsung/android/server/wifi/SemWifiCoexManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiControlHistoryManager()Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiControlMonitor()Lcom/samsung/android/server/wifi/db/WifiControlMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiCtlFeatureMediator()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCtlFeatureMediator:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiD2dSaLoggingHandler()Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiDriverCommandHelper()Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiEasySetupManager()Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WifiEasySetupThread"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    move-object v5, p0

    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, v5, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v5, p0

    .line 35
    :goto_0
    iget-object p0, v5, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 36
    .line 37
    return-object p0
.end method

.method public getWifiEnhancedFeatureController()Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiGeofenceManager()Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Geofence"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v2, v0, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 25
    .line 26
    return-object p0
.end method

.method public getWifiGuiderManagementService()Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "WifiGuiderThread"

    .line 12
    .line 13
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 26
    .line 27
    invoke-direct {v2, v3, v1, v4, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 33
    .line 34
    return-object p0
.end method

.method public getWifiHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string v0, "WifiIssueDetector"

    .line 16
    .line 17
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 37
    .line 38
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 39
    .line 40
    return-object p0
.end method

.method public getWifiIssueReporter()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v2, Lcom/samsung/android/server/wifi/util/SemClock;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;Lcom/samsung/android/server/wifi/util/SemClock;)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public getWifiLeakyApDetector()Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mLeakyApDetector:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiLinkInfoCollector()Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiLnaControl()Lcom/samsung/android/server/wifi/SemWifiLnaControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLnaControl:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiMultiLinkControl()Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiMultiLinkControl:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiNl80211Util()Lcom/samsung/android/server/wifi/util/WifiNl80211Util;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCondUtil:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCondUtil:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCondUtil:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 15
    .line 16
    return-object p0
.end method

.method public getWifiNotificationController()Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 21
    .line 22
    return-object p0
.end method

.method public getWifiOffloadController()Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOffloadController:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiOptimizer()Lcom/samsung/android/server/wifi/SemWifiOptimizer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiP2pMonitor()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiP2pMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiP2pNative()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiP2pNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiProfileAndQoSProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiProfileAndQoSProvider:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WifiProfileShare"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v2, v0, p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiProfileAndQoSProvider:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiProfileAndQoSProvider:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 25
    .line 26
    return-object p0
.end method

.method public getWifiResourceManager()Lcom/samsung/android/server/wifi/SemWifiResourceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiRouterInfoCollector()Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiRroChecker()Lcom/samsung/android/server/wifi/SemWifiRroChecker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiRroChecker:Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiSafeModeObserver()Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 10
    .line 11
    new-instance v3, Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 28
    .line 29
    return-object p0
.end method

.method public declared-synchronized getWifiScanner()Landroid/net/wifi/WifiScanner;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-class v1, Landroid/net/wifi/WifiScanner;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/net/wifi/WifiScanner;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-object v0

    .line 25
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method public getWifiScheduledPmControl()Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiScpmMonitor()Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v2, Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 26
    .line 27
    return-object p0
.end method

.method public getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiStateLoggingHandler(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;)Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiStateLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiHandlerThread()Landroid/os/HandlerThread;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 24
    .line 25
    move-object v7, p1

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiStateLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 30
    .line 31
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiStateLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 32
    .line 33
    return-object p0
.end method

.method public getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiTrafficControl()Lcom/samsung/android/server/wifi/SemWifiTrafficControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiUsabilityStatsMonitor()Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public makeClientModeImpl(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ISemClientModeImpl;
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 14
    .line 15
    move-object v6, p0

    .line 16
    move-object v2, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public makeLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public makeTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "phone"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    return-object p0
.end method

.method public makeWifiShellCommand(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiShellCommand;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public makeWsHelper(Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Landroid/app/ActivityManager;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/app/ActivityManager;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p1, v1, v2, p0}, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;-><init>(Landroid/os/WorkSource;Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
