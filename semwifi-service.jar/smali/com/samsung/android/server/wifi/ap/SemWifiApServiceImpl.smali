.class public Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;
    }
.end annotation


# static fields
.field private static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z = true

.field static final DESKTOP_MODE_UI_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field private static final HOTSPOT_DEBUG_LOG_MAX_COUNT:I = 0xa

.field private static final HOTSPOT_DEBUG_LOG_MAX_SIZE:J = 0x1100000L

.field private static final MAX_NAME_LENGTH:I = 0x20

.field private static final MAX_PACKET_RECORDS:I = 0x1f4

.field private static final MAX_PASSWORD_LENGTH:I = 0x3f

.field private static final MIN_PASSWORD_LENGTH:I = 0x8

.field private static final NUM_SOFT_AP_CALLBACKS_WARN_LIMIT:I = 0xa

.field private static final NUM_SOFT_AP_CALLBACKS_WTF_LIMIT:I = 0x14

.field static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final SOFT_AP_POWER_SAVE:I = 0x3

.field static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "SemWifiApServiceImpl"

.field private static final WLAN_ADVANCED_DEBUG_DISC:I = 0x4

.field private static final WLAN_ADVANCED_DEBUG_HOTSPOT:I = 0x40

.field private static final WLAN_ADVANCED_DEBUG_HOTSPOT_ANTENNA:I = 0x80

.field private static final WLAN_ADVANCED_DEBUG_PKT:I = 0x1

.field private static final WLAN_ADVANCED_DEBUG_RESET:I = 0x0

.field private static final WLAN_ADVANCED_DEBUG_UNWANTED:I = 0x2

.field private static final WLAN_ADVANCED_DEBUG_UNWANTED_PANIC:I = 0x10

.field public static mCountries2GOnly:[Ljava/lang/String; = null

.field private static final mFreq2ChannelNum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIndoorChannelFilePath:Ljava/lang/String; = "/system/etc/indoorchannel.info"


# instance fields
.field private canRetryToEnableMHS:I

.field private isAutohotspotEnablingMHS:Z

.field private isHotspotLogRunning:Z

.field private isUsingNonTerrestrialNetwork:Z

.field private mAutohotspotWifiScanner:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

.field private mCSCRegion:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field mCountryChannel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCountryChannelList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugLogThread:Ljava/lang/Thread;

.field private mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

.field private mLOHSState:I

.field private mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

.field private mMHSExConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mNetdService:Landroid/net/INetd;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrev5GNewRadioState:I

.field private mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/wifi/ISemWifiApSmartCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

.field private mSAFamilySupportedCountries:[Ljava/lang/String;

.field private mSemAutohotspotServiceBind:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

.field private mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

.field private mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

.field private mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

.field private mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

.field private mSemWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

.field private final mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private mStartTetheringCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTetheredData:I

.field private mTetheringManager:Landroid/net/TetheringManager;

.field private mWifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

.field private mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

.field private mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

.field private mWifiApSmartMhsMac:Ljava/lang/String;

.field private mWifiApSmartState:I

.field private mWifiApState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWlanAdvancedDebugState:I

.field private redirect_socket_calls_hooked:Ljava/lang/String;

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$9LUKqv4tZCcTU0B3s6D-f4Cl9S4(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$handleWifiApStateChange$3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$CWpfjqrH5Eq3ybb0TygYkwD9Jl0(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$handleBootCompleted$5()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$F0XXy6if5aB8H7Nlsb_crkb8IXY(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$unRegisterWifiApDataUsageCallback$13(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$IEk6Xfv7-WaAJu4kycse7QeXkCc(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$setWifiApEnabled$7(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$LkKzSAAa7hLFR4QeKMiV3asaNms(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$registerForBroadcasts$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$NuMKcnWt9uAEw821r-2ONxgvyic(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$changeHotspotAntenna$16(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$OPF2OSYml5xO1BXlR2rafbbhCPM(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$unregisterClientDataUsageCallback$9(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$PRV0hg-k8cD_2gr3-Jdr8wx9P7g(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$registerWifiApDataUsageCallback$12(ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$QKpRnFFebtTHGokBCzIfbHcOGOE(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$initialize$0(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$TLDBjnQ6-0wmZUWJeEVYB5LJXQ0(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$unregisterClientListDataUsageCallback$8(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Xs1bl1NrwwOB7Zlcz8oub2nVItM(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApSmartCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$registerWifiApSmartCallback$10(ILcom/samsung/android/wifi/ISemWifiApSmartCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ZkgswEW0fE3wINRypdJzg11biL8(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$setWifiApConfigurationToDefault$15()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$avUrtxBc9Yq0Jl9bFFPudMtlndU(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)[I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$getSoftApBands$14()[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$kMIjPfjL9Wm3oEZ9L1BE52FKOak(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$handleWifiApStateChange$4(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$pFclMlqPgqzsDbsU0YG1snHtQQ0(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$handleBootCompleted$6(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$xT9zTvrl_dab88lrN5dzTS7WlE0(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$isDataSaverModeEnabled$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$xX6r42UZIqJwfUUTFF8w6hBWCUk(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->lambda$unregisterWifiApSmartCallback$11(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisAutohotspotEnablingMHS(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isAutohotspotEnablingMHS:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisUsingNonTerrestrialNetwork(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isUsingNonTerrestrialNetwork:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHotspotMobileDataLimit(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisteredWifiApSmartCallbacks(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReservation(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiInjector(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWlanAdvancedDebugState:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisUsingNonTerrestrialNetwork(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isUsingNonTerrestrialNetwork:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReservation(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApSmartMhsMac(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartMhsMac:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApSmartState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartState:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWlanAdvancedDebugState:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeHotspotAntenna(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->changeHotspotAntenna()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndDeleteOldLog(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->checkAndDeleteOldLog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndSarBackoffSoftApModeFor5GmmWave(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->checkAndSarBackoffSoftApModeFor5GmmWave(Landroid/telephony/ServiceState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTimeToStringSec(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTimeToStringSec()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetHotspotAntenna(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->resetHotspotAntenna()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mrunHotspotDebugLog(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->runHotspotDebugLog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopHotspotDebugLog(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->stopHotspotDebugLog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFreq2ChannelNum:Landroid/util/SparseArray;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/16 v2, 0x96c

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    const/16 v4, 0x971

    .line 20
    .line 21
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    const/16 v2, 0x976

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    const/16 v4, 0x97b

    .line 29
    .line 30
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x5

    .line 34
    const/16 v2, 0x980

    .line 35
    .line 36
    const/4 v3, 0x6

    .line 37
    const/16 v4, 0x985

    .line 38
    .line 39
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x7

    .line 43
    const/16 v2, 0x98a

    .line 44
    .line 45
    const/16 v3, 0x8

    .line 46
    .line 47
    const/16 v4, 0x98f

    .line 48
    .line 49
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 50
    .line 51
    .line 52
    const/16 v1, 0x9

    .line 53
    .line 54
    const/16 v2, 0x994

    .line 55
    .line 56
    const/16 v3, 0xa

    .line 57
    .line 58
    const/16 v4, 0x999

    .line 59
    .line 60
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 61
    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    const/16 v2, 0x99e

    .line 66
    .line 67
    const/16 v3, 0xc

    .line 68
    .line 69
    const/16 v4, 0x9a3

    .line 70
    .line 71
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 72
    .line 73
    .line 74
    const/16 v1, 0xd

    .line 75
    .line 76
    const/16 v2, 0x9a8

    .line 77
    .line 78
    const/16 v3, 0xe

    .line 79
    .line 80
    const/16 v4, 0x9b4

    .line 81
    .line 82
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 83
    .line 84
    .line 85
    const/16 v1, 0x22

    .line 86
    .line 87
    const/16 v2, 0x1432

    .line 88
    .line 89
    const/16 v3, 0x24

    .line 90
    .line 91
    const/16 v4, 0x143c

    .line 92
    .line 93
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x26

    .line 97
    .line 98
    const/16 v2, 0x1446

    .line 99
    .line 100
    const/16 v3, 0x28

    .line 101
    .line 102
    const/16 v4, 0x1450

    .line 103
    .line 104
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 105
    .line 106
    .line 107
    const/16 v1, 0x2a

    .line 108
    .line 109
    const/16 v2, 0x145a

    .line 110
    .line 111
    const/16 v3, 0x2c

    .line 112
    .line 113
    const/16 v4, 0x1464

    .line 114
    .line 115
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 116
    .line 117
    .line 118
    const/16 v1, 0x2e

    .line 119
    .line 120
    const/16 v2, 0x146e

    .line 121
    .line 122
    const/16 v3, 0x30

    .line 123
    .line 124
    const/16 v4, 0x1478

    .line 125
    .line 126
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 127
    .line 128
    .line 129
    const/16 v1, 0x34

    .line 130
    .line 131
    const/16 v2, 0x148c

    .line 132
    .line 133
    const/16 v3, 0x38

    .line 134
    .line 135
    const/16 v4, 0x14a0

    .line 136
    .line 137
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 138
    .line 139
    .line 140
    const/16 v1, 0x3c

    .line 141
    .line 142
    const/16 v2, 0x14b4

    .line 143
    .line 144
    const/16 v3, 0x40

    .line 145
    .line 146
    const/16 v4, 0x14c8

    .line 147
    .line 148
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 149
    .line 150
    .line 151
    const/16 v1, 0x64

    .line 152
    .line 153
    const/16 v2, 0x157c

    .line 154
    .line 155
    const/16 v3, 0x68

    .line 156
    .line 157
    const/16 v4, 0x1590

    .line 158
    .line 159
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 160
    .line 161
    .line 162
    const/16 v1, 0x6c

    .line 163
    .line 164
    const/16 v2, 0x15a4

    .line 165
    .line 166
    const/16 v3, 0x70

    .line 167
    .line 168
    const/16 v4, 0x15b8

    .line 169
    .line 170
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 171
    .line 172
    .line 173
    const/16 v1, 0x74

    .line 174
    .line 175
    const/16 v2, 0x15cc

    .line 176
    .line 177
    const/16 v3, 0x78

    .line 178
    .line 179
    const/16 v4, 0x15e0

    .line 180
    .line 181
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 182
    .line 183
    .line 184
    const/16 v1, 0x7c

    .line 185
    .line 186
    const/16 v2, 0x15f4

    .line 187
    .line 188
    const/16 v3, 0x80

    .line 189
    .line 190
    const/16 v4, 0x1608

    .line 191
    .line 192
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 193
    .line 194
    .line 195
    const/16 v1, 0x84

    .line 196
    .line 197
    const/16 v2, 0x161c

    .line 198
    .line 199
    const/16 v3, 0x88

    .line 200
    .line 201
    const/16 v4, 0x1630

    .line 202
    .line 203
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 204
    .line 205
    .line 206
    const/16 v1, 0x8c

    .line 207
    .line 208
    const/16 v2, 0x1644

    .line 209
    .line 210
    const/16 v3, 0x90

    .line 211
    .line 212
    const/16 v4, 0x1658

    .line 213
    .line 214
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 215
    .line 216
    .line 217
    const/16 v1, 0x95

    .line 218
    .line 219
    const/16 v2, 0x1671

    .line 220
    .line 221
    const/16 v3, 0x99

    .line 222
    .line 223
    const/16 v4, 0x1685

    .line 224
    .line 225
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 226
    .line 227
    .line 228
    const/16 v1, 0x9d

    .line 229
    .line 230
    const/16 v2, 0x1699

    .line 231
    .line 232
    const/16 v3, 0xa1

    .line 233
    .line 234
    const/16 v4, 0x16ad

    .line 235
    .line 236
    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    .line 237
    .line 238
    .line 239
    const/16 v1, 0xa5

    .line 240
    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    const/16 v2, 0x16c1

    .line 246
    .line 247
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mStartTetheringCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;

    .line 12
    .line 13
    const-string v2, "false"

    .line 14
    .line 15
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v2, 0xb

    .line 18
    .line 19
    iput v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApState:I

    .line 20
    .line 21
    iput v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLOHSState:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    iput v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->canRetryToEnableMHS:I

    .line 25
    .line 26
    new-instance v2, Ljava/util/HashMap;

    .line 27
    .line 28
    const/4 v3, 0x5

    .line 29
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    .line 33
    .line 34
    new-instance v2, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    .line 40
    .line 41
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    iput v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartState:I

    .line 50
    .line 51
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartMhsMac:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 54
    .line 55
    iput v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    .line 56
    .line 57
    const-string v23, "CH"

    .line 58
    .line 59
    const-string v24, "GB"

    .line 60
    .line 61
    const-string v3, "US"

    .line 62
    .line 63
    const-string v4, "KR"

    .line 64
    .line 65
    const-string v5, "CN"

    .line 66
    .line 67
    const-string v6, "RS"

    .line 68
    .line 69
    const-string v7, "ES"

    .line 70
    .line 71
    const-string v8, "LU"

    .line 72
    .line 73
    const-string v9, "BG"

    .line 74
    .line 75
    const-string v10, "SI"

    .line 76
    .line 77
    const-string v11, "GR"

    .line 78
    .line 79
    const-string v12, "CZ"

    .line 80
    .line 81
    const-string v13, "SE"

    .line 82
    .line 83
    const-string v14, "FR"

    .line 84
    .line 85
    const-string v15, "DE"

    .line 86
    .line 87
    const-string v16, "HU"

    .line 88
    .line 89
    const-string v17, "IT"

    .line 90
    .line 91
    const-string v18, "NL"

    .line 92
    .line 93
    const-string v19, "PL"

    .line 94
    .line 95
    const-string v20, "PT"

    .line 96
    .line 97
    const-string v21, "RO"

    .line 98
    .line 99
    const-string v22, "SK"

    .line 100
    .line 101
    filled-new-array/range {v3 .. v24}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSAFamilySupportedCountries:[Ljava/lang/String;

    .line 106
    .line 107
    iput v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWlanAdvancedDebugState:I

    .line 108
    .line 109
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mDebugLogThread:Ljava/lang/Thread;

    .line 110
    .line 111
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    .line 112
    .line 113
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 114
    .line 115
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 116
    .line 117
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isUsingNonTerrestrialNetwork:Z

    .line 118
    .line 119
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;

    .line 120
    .line 121
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 122
    .line 123
    .line 124
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 125
    .line 126
    move-object/from16 v1, p1

    .line 127
    .line 128
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    move-object/from16 v1, p2

    .line 131
    .line 132
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 139
    .line 140
    return-void
.end method

.method private bindNetdNativeService()V
    .locals 3

    .line 1
    const-string v0, "SemWifiApServiceImpl"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "netd"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mNetdService:Landroid/net/INetd;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string p0, "Failed to bind service netd, error"

    .line 18
    .line 19
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Failed to bind service netd, error="

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    const-string p0, "Can\'t bind service netd"

    .line 46
    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private changeHotspotAntenna()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getHotspotAntMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SemWifiApServiceImpl"

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v0, v3, :cond_0

    .line 10
    .line 11
    const-string v3, "MHS antenna set to SISO"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    const-string v2, "MHS antenna set to MIMO"

    .line 17
    .line 18
    move v6, v3

    .line 19
    move-object v3, v2

    .line 20
    move v2, v6

    .line 21
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v5, "changeHotspotAntenna() currentMode:"

    .line 24
    .line 25
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " changeMode:"

    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    new-instance v0, Landroid/os/Handler;

    .line 47
    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda13;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-direct {v1, p0, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setHotspotAntMode(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    const-string p0, "changeHotspotAntenna() error currentMode:"

    .line 69
    .line 70
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private checkAndDeleteOldLog()V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/log/wifi"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$10;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$10;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v0, p0

    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    const-string v2, "SemWifiApServiceImpl"

    .line 21
    .line 22
    if-lt v0, v1, :cond_4

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    move v3, v1

    .line 31
    :goto_0
    array-length v4, p0

    .line 32
    if-ge v3, v4, :cond_0

    .line 33
    .line 34
    aget-object v4, p0, v3

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 52
    .line 53
    const-string v4, "yyyyMMddHHmmss"

    .line 54
    .line 55
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    move v5, v1

    .line 63
    :goto_1
    if-ge v5, v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    check-cast v6, Ljava/lang/String;

    .line 72
    .line 73
    const/16 v7, 0x8

    .line 74
    .line 75
    const/16 v8, 0x16

    .line 76
    .line 77
    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception v6

    .line 90
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    add-int/lit8 v0, v0, -0x9

    .line 102
    .line 103
    :goto_2
    if-ge v1, v0, :cond_3

    .line 104
    .line 105
    new-instance v4, Ljava/io/File;

    .line 106
    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v6, "/data/log/wifi/net_dev_"

    .line 110
    .line 111
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Ljava/util/Date;

    .line 119
    .line 120
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v6, ".txt"

    .line 128
    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_2

    .line 144
    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v6, "Deleted! old Hotspot debug log file "

    .line 148
    .line 149
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v6, "Failed deleting old Hotspot debug log file "

    .line 170
    .line 171
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_3
    return-void

    .line 192
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v1, "not need to delete old Hotspot debug log file, current log file count: "

    .line 195
    .line 196
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    array-length p0, p0

    .line 200
    invoke-static {v2, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method private checkAndSarBackoffSoftApModeFor5GmmWave(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "serviceState.getNrFrequencyRange="

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " / mPrev5GNewRadioState="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "SemWifiApServiceImpl"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v0, 0x1

    .line 48
    const/4 v1, 0x2

    .line 49
    if-eq p1, v0, :cond_5

    .line 50
    .line 51
    if-eq p1, v1, :cond_5

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    if-eq p1, v0, :cond_5

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    if-eq p1, v2, :cond_3

    .line 58
    .line 59
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    .line 60
    .line 61
    if-ne p1, v2, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-ne p1, v1, :cond_2

    .line 72
    .line 73
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    const/4 v0, 0x5

    .line 78
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    .line 86
    .line 87
    if-eq p1, v2, :cond_4

    .line 88
    .line 89
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    .line 94
    .line 95
    .line 96
    :cond_4
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    .line 97
    .line 98
    return-void

    .line 99
    :cond_5
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    .line 100
    .line 101
    if-eq p1, v1, :cond_6

    .line 102
    .line 103
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    const/4 v0, 0x6

    .line 108
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspotBackOff(I)V

    .line 109
    .line 110
    .line 111
    :cond_6
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPrev5GNewRadioState:I

    .line 112
    .line 113
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 4
    .line 5
    const-string v1, "SemWifiService"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private enforceChangePermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    .line 4
    .line 5
    const-string v1, "SemWifiService"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private enforceNetworkSettingsPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.NETWORK_SETTINGS"

    .line 4
    .line 5
    const-string v1, "SemWifiService"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private enforceNetworkStackPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.NETWORK_STACK"

    .line 4
    .line 5
    const-string v1, "SemWifiService"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private getAospWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getIndoorSupportStatus()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Device country code : "

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "SemWifiApServiceImpl"

    .line 14
    .line 15
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, -0x1

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ne v5, v4, :cond_1

    .line 45
    .line 46
    const-string p0, "Device is not connected to any WIFI network. Disconnected Flag:"

    .line 47
    .line 48
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/lang/String;

    .line 59
    .line 60
    const-string v0, " "

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v6, "Current network frequency : "

    .line 75
    .line 76
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move v0, v4

    .line 95
    :goto_0
    if-eq v0, v4, :cond_4

    .line 96
    .line 97
    const/16 v3, 0x170c

    .line 98
    .line 99
    if-ge v0, v3, :cond_4

    .line 100
    .line 101
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFreq2ChannelNum:Landroid/util/SparseArray;

    .line 102
    .line 103
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v5, "Channel number :"

    .line 116
    .line 117
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v5, " for frequency : "

    .line 124
    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move v0, v1

    .line 139
    :goto_1
    array-length v4, p0

    .line 140
    if-ge v0, v4, :cond_4

    .line 141
    .line 142
    aget-object v4, p0, v0

    .line 143
    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_3

    .line 153
    .line 154
    const-string p0, "STA connected to indoor channel. Take the user consent for turning on MHS"

    .line 155
    .line 156
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    const/4 p0, 0x1

    .line 160
    return p0

    .line 161
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_4
    return v1

    .line 165
    :cond_5
    :goto_2
    const-string p0, "Country doesn\'t support indoor channel."

    .line 166
    .line 167
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    return v1
.end method

.method private getSoftApChannel()I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string v0, "GET_CHANNEL"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p0, -0x1

    .line 21
    return p0
.end method

.method private getStaInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "phone"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getTetheringManager()Landroid/net/TetheringManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTetheringManager:Landroid/net/TetheringManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "tethering"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/TetheringManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTetheringManager:Landroid/net/TetheringManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTetheringManager:Landroid/net/TetheringManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getTimeToStringSec()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/text/DecimalFormat;

    .line 6
    .line 7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "00"

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    add-int/2addr v1, v2

    .line 25
    int-to-long v3, v1

    .line 26
    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x5

    .line 31
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    int-to-long v3, v3

    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/16 v4, 0xb

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    int-to-long v4, v4

    .line 47
    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/16 v5, 0xc

    .line 52
    .line 53
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    int-to-long v5, v5

    .line 58
    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/16 v6, 0xd

    .line 63
    .line 64
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    int-to-long v6, v6

    .line 69
    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const-string v0, "getTimeToStringSec : "

    .line 105
    .line 106
    const-string v1, "SemWifiApServiceImpl"

    .line 107
    .line 108
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object p0
.end method

.method private handleWifiApStateChange(IIILjava/lang/String;I)V
    .locals 3

    .line 1
    const-string v0, "handleWifiApStateChange: currentState="

    .line 2
    .line 3
    const-string v1, " previousState="

    .line 4
    .line 5
    const-string v2, " errorCode= "

    .line 6
    .line 7
    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p3, " ifaceName="

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p3, " mode="

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string p3, "SemWifiApServiceImpl"

    .line 35
    .line 36
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApState:I

    .line 40
    .line 41
    const/4 p2, 0x2

    .line 42
    if-ne p5, p2, :cond_0

    .line 43
    .line 44
    const-string p4, "Local only hotspot state:"

    .line 45
    .line 46
    invoke-static {p4, p1, p3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLOHSState:I

    .line 50
    .line 51
    :cond_0
    const/16 p4, 0xa

    .line 52
    .line 53
    if-ne p1, p4, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 62
    .line 63
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    const-string p1, "setting indoor channel info when wifi turns on"

    .line 72
    .line 73
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda2;

    .line 83
    .line 84
    const/4 p3, 0x1

    .line 85
    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    const/4 p3, 0x1

    .line 93
    if-ne p5, p3, :cond_2

    .line 94
    .line 95
    const/16 p4, 0xc

    .line 96
    .line 97
    if-ne p1, p4, :cond_2

    .line 98
    .line 99
    iget-object p4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    const-string p5, "softap_modified"

    .line 102
    .line 103
    const-string v0, "1"

    .line 104
    .line 105
    invoke-static {p4, p5, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    const/16 p4, 0xd

    .line 109
    .line 110
    if-ne p1, p4, :cond_5

    .line 111
    .line 112
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->canRetryToEnableMHS:I

    .line 113
    .line 114
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportVerizonProvisioning()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_3

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    const/4 p4, -0x1

    .line 135
    if-eq p1, p4, :cond_3

    .line 136
    .line 137
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const p4, 0x1041117

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance p4, Landroid/os/Handler;

    .line 151
    .line 152
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 153
    .line 154
    .line 155
    move-result-object p5

    .line 156
    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 157
    .line 158
    .line 159
    new-instance p5, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda13;

    .line 160
    .line 161
    const/4 v0, 0x1

    .line 162
    invoke-direct {p5, p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p4, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    .line 167
    .line 168
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-eqz p0, :cond_5

    .line 175
    .line 176
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_5

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getWifiApMacAclMode()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-ne p1, p3, :cond_4

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readAllowListFileToSendHostapd()V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getWifiApMacAclMode()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-ne p1, p2, :cond_5

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readDenyListFileToSendHostapd()V

    .line 203
    .line 204
    .line 205
    :cond_5
    return-void
.end method

.method private insertBigdataForHotSpotEnabled(ZLjava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/Exception;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x2

    .line 11
    aget-object v0, v0, v1

    .line 12
    .line 13
    new-instance v2, Ljava/lang/Throwable;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "insertBigdataForHotSpotEnabled"

    .line 23
    .line 24
    const-string v4, "SemWifiApServiceImpl"

    .line 25
    .line 26
    invoke-static {v3, v2, v4}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isAutohotspotEnablingMHS:Z

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const-string v5, "SemWifiApSmartGattServer"

    .line 38
    .line 39
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isAutohotspotEnablingMHS:Z

    .line 46
    .line 47
    const-string v2, "AutohotspotEnablingMHS"

    .line 48
    .line 49
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v5, "wifi_ap_smart_tethering_user_type"

    .line 59
    .line 60
    const/4 v6, -0x1

    .line 61
    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v6, "setWifiApEnabled() "

    .line 68
    .line 69
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v6, " package: "

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const-string v6, "WifiApSmart"

    .line 95
    .line 96
    if-eqz v5, :cond_1

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_2

    .line 107
    .line 108
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_6

    .line 117
    .line 118
    :cond_2
    if-ne v2, v3, :cond_3

    .line 119
    .line 120
    const-string v1, "auto.hotspot.user"

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    if-ne v2, v1, :cond_4

    .line 124
    .line 125
    const-string v1, "auto.hotspot.family"

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    const/4 v1, 0x3

    .line 129
    if-ne v2, v1, :cond_5

    .line 130
    .line 131
    const-string v1, "auto.hotspot.allowed"

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    const-string v1, "auto.hotspot"

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    move-object v1, p2

    .line 138
    :goto_0
    const-string v3, "insertBigdataForHotSpotEnabled() : OriginalCallingPackage: "

    .line 139
    .line 140
    const-string v5, ", packageName: "

    .line 141
    .line 142
    const-string v6, ", isEnabled: "

    .line 143
    .line 144
    invoke-static {v3, p2, v5, v1, v6}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v3, ", val: "

    .line 152
    .line 153
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, ", callerElement.getClassName(): "

    .line 160
    .line 161
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    if-eqz p1, :cond_7

    .line 179
    .line 180
    const-string p1, "1 "

    .line 181
    .line 182
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    goto :goto_1

    .line 187
    :cond_7
    const-string p1, "0 "

    .line 188
    .line 189
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    :goto_1
    const-string p2, "MHOF"

    .line 194
    .line 195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :catchall_0
    move-exception p0

    .line 207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    .line 209
    .line 210
    throw p0
.end method

.method private isDataSaverModeEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "netpolicy"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/NetworkPolicyManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda2;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method private isWifiApBlocked()Z
    .locals 7

    .line 1
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const-string v4, "isWifiTetheringEnabled"

    .line 17
    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 26
    .line 27
    .line 28
    const-string v2, "isWifiTetheringEnabled"

    .line 29
    .line 30
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "false"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object p0, v0

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_0
    move v2, v0

    .line 55
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v3, "CarrierFeature_Common_Support_Satellite"

    .line 60
    .line 61
    invoke-virtual {v1, v0, v3, v0, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v4, 0x1

    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v4, v3, v0, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    const-string p0, "SemWifiApServiceImpl"

    .line 95
    .line 96
    const-string v0, "MHS is disabled due to satellite mode"

    .line 97
    .line 98
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return v4

    .line 102
    :cond_2
    return v2
.end method

.method private isWifiConnected()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

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

.method private synthetic lambda$changeHotspotAntenna$16(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$getSoftApBands$14()[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private synthetic lambda$handleBootCompleted$5()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setIndoorChannelsToDriver(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private synthetic lambda$handleBootCompleted$6(I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda2;

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private synthetic lambda$handleWifiApStateChange$3()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setIndoorChannelsToDriver(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private synthetic lambda$handleWifiApStateChange$4(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$initialize$0(IIILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SemWifiApServiceImpl"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "State ="

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "#tag_wifi_ap_lab_channel_switch_event#"

    .line 28
    .line 29
    packed-switch p1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    const-string v1, "Hotspot state unknown"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    const-string v2, "Hotspot on"

    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    const-string v1, "Hotspot Enabled"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_1
    const-string v1, "Hotspot Enabling"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    const-string v2, "Hotspot off"

    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    const-string v1, "Hotspot Disabled"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_3
    const-string v1, "Hotspot Disabling"

    .line 55
    .line 56
    :goto_0
    const-string v2, ",, Reason = "

    .line 57
    .line 58
    const-string v3, ",, iface ="

    .line 59
    .line 60
    invoke-static {v0, v1, v2, p2, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ",, Mode ="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, "#tag_wifi_ap_lab_hotspot_connection_event#"

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move v4, p1

    .line 84
    move-object v2, p0

    .line 85
    move v3, p1

    .line 86
    move v5, p2

    .line 87
    move v7, p3

    .line 88
    move-object v6, p4

    .line 89
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->handleWifiApStateChange(IIILjava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$isDataSaverModeEnabled$2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x10408dc

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private synthetic lambda$registerForBroadcasts$1()V
    .locals 5

    .line 1
    const-string v0, "chameleon_tethereddata"

    .line 2
    .line 3
    const-string v1, "Boot_completed, mTetheredData = "

    .line 4
    .line 5
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 6
    .line 7
    const-string v3, "SemWifiApServiceImpl"

    .line 8
    .line 9
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportChameleon()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTetheredData:I

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTetheredData:I

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    const-string v1, "Settings.SettingNotFoundException for CHAMELEON_TETHEREDDATA"

    .line 51
    .line 52
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/16 v2, 0xc

    .line 62
    .line 63
    const/4 v3, -0x1

    .line 64
    const-string v4, "persist.sys.tether_data"

    .line 65
    .line 66
    if-eq v1, v2, :cond_0

    .line 67
    .line 68
    const/16 v2, 0xd

    .line 69
    .line 70
    if-eq v1, v2, :cond_0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 73
    .line 74
    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTetheredData:I

    .line 79
    .line 80
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {v2, p0, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_0
    const/4 v1, 0x0

    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 91
    .line 92
    .line 93
    const-wide/16 v1, 0x258

    .line 94
    .line 95
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 104
    .line 105
    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mTetheredData:I

    .line 110
    .line 111
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 112
    .line 113
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {v2, p0, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 116
    .line 117
    .line 118
    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$registerWifiApDataUsageCallback$12(ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->addDataUsageCallback(ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->getUsage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p2, p0}, Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;->onDataUsageChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "registerSemWifiApSmartCallback: remote exception -- "

    .line 18
    .line 19
    const-string p2, "SemWifiApServiceImpl"

    .line 20
    .line 21
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private synthetic lambda$registerWifiApSmartCallback$10(ILcom/samsung/android/wifi/ISemWifiApSmartCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "registerSemWifiApSmartCallback: callbackIdentifier-"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "callback "

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "SemWifiApServiceImpl"

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/16 v1, 0x14

    .line 44
    .line 45
    const-string v2, "Too many SemWifiApSmartCallback AP callbacks: "

    .line 46
    .line 47
    if-le p1, v1, :cond_0

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    const/16 v1, 0xa

    .line 78
    .line 79
    if-le p1, v1, :cond_1

    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    :try_start_0
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartState:I

    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartMhsMac:Ljava/lang/String;

    .line 105
    .line 106
    invoke-interface {p2, p1, p0}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback;->onStateChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :catch_0
    move-exception p0

    .line 111
    const-string p1, "registerSemWifiApSmartCallback: remote exception -- "

    .line 112
    .line 113
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private synthetic lambda$setWifiApConfigurationToDefault$15()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setWifiApConfigurationToDefault(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$setWifiApEnabled$7(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$unRegisterWifiApDataUsageCallback$13(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->removeDataUsageCallback(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterClientDataUsageCallback$9(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->unregisterClientDataUsageCallback(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$unregisterClientListDataUsageCallback$8(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->unregisterClientListDataUsageCallback(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$unregisterWifiApSmartCallback$11(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mRegisteredWifiApSmartCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string p0, " mRegisteredWifiApSmartCallbacks callback "

    .line 16
    .line 17
    const-string v0, "SemWifiApServiceImpl"

    .line 18
    .line 19
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private mapIndoorCountryToChannel()V
    .locals 6

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    const-string v2, "/system/etc/indoorchannel.info"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "mIndoorChannelFilePath:/system/etc/indoorchannel.info"

    .line 11
    .line 12
    const-string v3, "SemWifiApServiceImpl"

    .line 13
    .line 14
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "Indoor channel filename:"

    .line 20
    .line 21
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, "indoorChannelFile.exists() :"

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    :try_start_0
    const-string v4, "Reading the file for indoor channel/system/etc/indoorchannel.info"

    .line 58
    .line 59
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/io/FileInputStream;

    .line 63
    .line 64
    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Ljava/io/InputStreamReader;

    .line 68
    .line 69
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-direct {v1, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 72
    .line 73
    .line 74
    new-instance v4, Ljava/io/BufferedReader;

    .line 75
    .line 76
    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    .line 78
    .line 79
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    array-length v2, v2

    .line 90
    const/4 v5, 0x1

    .line 91
    if-le v2, v5, :cond_0

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    aget-object v0, v0, v5

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    move-object v2, v4

    .line 102
    goto :goto_3

    .line 103
    :catch_0
    move-exception v0

    .line 104
    move-object v2, v4

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    const/4 v5, 0x2

    .line 116
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const/4 v5, 0x3

    .line 121
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catch_1
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catchall_1
    move-exception p0

    .line 139
    goto :goto_3

    .line 140
    :catch_2
    move-exception v0

    .line 141
    :goto_1
    :try_start_3
    const-string v1, "Indoor channel file access fail:/system/etc/indoorchannel.inforead from hardcoded channels"

    .line 142
    .line 143
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->initializeChannelInfo()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    .line 151
    .line 152
    if-eqz v2, :cond_2

    .line 153
    .line 154
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 155
    .line 156
    .line 157
    :cond_2
    :goto_2
    return-void

    .line 158
    :goto_3
    if-eqz v2, :cond_3

    .line 159
    .line 160
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :catch_3
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    :cond_3
    :goto_4
    throw p0

    .line 169
    :cond_4
    const-string v0, "Indoor channel file does not exist:/system/etc/indoorchannel.info,read from hardcoded channels"

    .line 170
    .line 171
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->initializeChannelInfo()V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method private registerForBroadcasts()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApBroadcastReceiver()Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startTracking()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda9;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 25
    .line 26
    .line 27
    new-instance p0, Landroid/content/IntentFilter;

    .line 28
    .line 29
    const-string v2, "com.samsung.android.WLAN_ADVANCED_DEBUG"

    .line 30
    .line 31
    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private removeSecurityLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, ",\""

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, ""

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    array-length v2, p1

    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    aget-object v2, p1, v1

    .line 19
    .line 20
    const-string v3, "password"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    aget-object v2, p1, v1

    .line 33
    .line 34
    invoke-static {v0, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string v2, "password\":\"removed\",\""

    .line 40
    .line 41
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-object v0
.end method

.method private resetHotspotAntenna()V
    .locals 2

    .line 1
    const-string v0, "SemWifiApServiceImpl"

    .line 2
    .line 3
    const-string v1, "resetHotspotAntenna() set to MIMO"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setHotspotAntMode(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private resetWifiApProvisioningDB()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v3, "wifi_ap_provision_success"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method private runHotspotDebugLog()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->stopHotspotDebugLog()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v1, "TPUT_DEBUG_MODE_ENABLE"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/lang/Thread;

    .line 26
    .line 27
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mDebugLogThread:Ljava/lang/Thread;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method private startTethering(Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mStartTetheringCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mStartTetheringCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;

    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroid/net/TetheringManager$TetheringRequest$Builder;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/net/TetheringManager$TetheringRequest$Builder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/net/TetheringManager$TetheringRequest$Builder;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/TetheringManager$TetheringRequest$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;->setShouldShowEntitlementUi(Z)Landroid/net/TetheringManager$TetheringRequest$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;->setExemptFromEntitlementCheck(Z)Landroid/net/TetheringManager$TetheringRequest$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/net/TetheringManager$TetheringRequest$Builder;->build()Landroid/net/TetheringManager$TetheringRequest;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTetheringManager()Landroid/net/TetheringManager;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mStartTetheringCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;

    .line 46
    .line 47
    invoke-virtual {v1, p1, v2, p0}, Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    .line 48
    .line 49
    .line 50
    return v0
.end method

.method private stopHotspotDebugLog()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v1, "TPUT_DEBUG_MODE_DISABLE"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mDebugLogThread:Ljava/lang/Thread;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mDebugLogThread:Ljava/lang/Thread;

    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method private supportBridgedApStaConcurrency()Z
    .locals 2

    .line 1
    sget-boolean p0, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    const-string p0, "vendor.wifiap.debug.BridgedApSta"

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne p0, v1, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    :cond_0
    const-string p0, "supportBridgedApStaConcurrency() "

    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, "SemWifiApServiceImpl"

    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1
    return v0
.end method


# virtual methods
.method public autohotspotWifiScanConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mAutohotspotWifiScanner:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->autohotspotWifiScanConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/16 p0, -0xa

    .line 11
    .line 12
    return p0
.end method

.method public canAutoHotspotBeEnabled()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->canAutoHotspotBeEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public canSmartMHSLocked()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->canSmartMHSLocked()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public clearAutoHotspotLists()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->clearLocalResults()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9
    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0
.end method

.method public connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    move-object v4, p1

    .line 23
    move v5, p2

    .line 24
    move v6, p3

    .line 25
    move/from16 v7, p4

    .line 26
    .line 27
    move-object/from16 v8, p5

    .line 28
    .line 29
    move-object/from16 v9, p6

    .line 30
    .line 31
    move/from16 v10, p7

    .line 32
    .line 33
    move/from16 v11, p8

    .line 34
    .line 35
    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object p0, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    return p0

    .line 48
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "mSAFamilySupportedCountries:"

    .line 10
    .line 11
    const-string v5, "--provisioning apps length:"

    .line 12
    .line 13
    const-string v6, "wifisharinglite:"

    .line 14
    .line 15
    const-string v7, "wifisharing:"

    .line 16
    .line 17
    const-string v8, "maxClient:"

    .line 18
    .line 19
    const-string v9, "6g_Country:"

    .line 20
    .line 21
    const-string v10, "5g_Country:"

    .line 22
    .line 23
    const-string v11, "MHS Clients\n"

    .line 24
    .line 25
    const-string v12, "isWifiSharingEnabled:"

    .line 26
    .line 27
    const-string v13, "Provision Success:"

    .line 28
    .line 29
    const-string v14, "destroyed:"

    .line 30
    .line 31
    const-string v15, "created:"

    .line 32
    .line 33
    move-object/from16 v16, v4

    .line 34
    .line 35
    const-string v4, "Instant Hotspot feature com.samsung.android.feature.INSTANT_HOTSPOT_NOT_SUPPORTED:"

    .line 36
    .line 37
    move-object/from16 v17, v5

    .line 38
    .line 39
    const-string v5, "isSatelliteModeOn:"

    .line 40
    .line 41
    move-object/from16 v18, v6

    .line 42
    .line 43
    const-string v6, "mCSCRegion:"

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 46
    .line 47
    .line 48
    move-object/from16 v19, v7

    .line 49
    .line 50
    const-string v7, "MHS dump ----- start -----\n"

    .line 51
    .line 52
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    .line 57
    .line 58
    move-result-wide v20

    .line 59
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v6, " isRegionFor5GCountry:"

    .line 70
    .line 71
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isRegionFor5GCountry()Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-eqz v5, :cond_0

    .line 116
    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v4, "com.samsung.android.feature.INSTANT_HOTSPOT_NOT_SUPPORTED"

    .line 123
    .line 124
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_0
    const-string v4, "Instant Hotspot feature com.samsung.android.feature.INSTANT_HOTSPOT_NOT_SUPPORTED , packageManager is null"

    .line 143
    .line 144
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_0
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 148
    .line 149
    if-eqz v4, :cond_1

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDumpLogs()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_1
    const-string v4, "mWifiApConfigStore is null while taking dumpstate  -----\n"

    .line 160
    .line 161
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :goto_1
    const-string v4, "WifiApWarning - dump"

    .line 165
    .line 166
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    const-string v6, "wifi_ap_wifiapwarning_enabled_history"

    .line 181
    .line 182
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 202
    .line 203
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    const-string v6, "wifi_ap_wifiapwarning_destroyed_history"

    .line 208
    .line 209
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 224
    .line 225
    .line 226
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 227
    .line 228
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getDumpLogs()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 240
    .line 241
    .line 242
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 243
    .line 244
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->getDumpLogs()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 256
    .line 257
    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getProvisionSuccess()I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 278
    .line 279
    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 286
    .line 287
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 288
    .line 289
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApStaList()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 323
    .line 324
    .line 325
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 326
    .line 327
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->getDumpLogs()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 339
    .line 340
    .line 341
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 342
    .line 343
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getHostapdHal()Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->getDumpLogs()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 355
    .line 356
    .line 357
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 358
    .line 359
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTimeOutImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v4, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 367
    .line 368
    .line 369
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 370
    .line 371
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getDumpLogs()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 383
    .line 384
    .line 385
    const-string v4, "--api"

    .line 386
    .line 387
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp5GBasedOnCountry()Z

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp6GBasedOnCountry()Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    move-object/from16 v5, v19

    .line 450
    .line 451
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    .line 455
    .line 456
    .line 457
    move-result v5

    .line 458
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    move-object/from16 v5, v18

    .line 471
    .line 472
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 490
    .line 491
    .line 492
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 493
    .line 494
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    const v5, 0x107012b

    .line 499
    .line 500
    .line 501
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    if-eqz v4, :cond_2

    .line 506
    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    move-object/from16 v6, v17

    .line 510
    .line 511
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    array-length v6, v4

    .line 515
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    array-length v5, v4

    .line 526
    const/4 v6, 0x2

    .line 527
    if-ne v5, v6, :cond_2

    .line 528
    .line 529
    new-instance v5, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .line 533
    .line 534
    const/4 v6, 0x0

    .line 535
    aget-object v6, v4, v6

    .line 536
    .line 537
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    const-string v6, ","

    .line 541
    .line 542
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const/4 v6, 0x1

    .line 546
    aget-object v4, v4, v6

    .line 547
    .line 548
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    :cond_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 559
    .line 560
    .line 561
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    if-nez v4, :cond_3

    .line 566
    .line 567
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 568
    .line 569
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isEnhancedMobileApModeForLiteOrWifiOnlyLite()Z

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    if-eqz v4, :cond_3

    .line 574
    .line 575
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 576
    .line 577
    .line 578
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 579
    .line 580
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartLocalLog()Landroid/util/LocalLog;

    .line 581
    .line 582
    .line 583
    move-result-object v4

    .line 584
    invoke-virtual {v4, v1, v2, v3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 588
    .line 589
    .line 590
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 591
    .line 592
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 593
    .line 594
    .line 595
    move-result-object v4

    .line 596
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDumpLogs()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 607
    .line 608
    .line 609
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 610
    .line 611
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getDumpLogs()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 623
    .line 624
    .line 625
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 626
    .line 627
    if-eqz v4, :cond_3

    .line 628
    .line 629
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 630
    .line 631
    .line 632
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 633
    .line 634
    invoke-virtual {v4, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 638
    .line 639
    .line 640
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 641
    .line 642
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getDumpLogs()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    :cond_3
    const-string v4, "SemWifiApServiceImpl connectivity packet log:"

    .line 650
    .line 651
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 655
    .line 656
    .line 657
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 658
    .line 659
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTrafficPoller()Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    invoke-virtual {v4, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->getPacketDumpLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 667
    .line 668
    .line 669
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 670
    .line 671
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getDumpLogs()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 683
    .line 684
    .line 685
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 686
    .line 687
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 692
    .line 693
    .line 694
    move-result v1

    .line 695
    if-eqz v1, :cond_4

    .line 696
    .line 697
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->getDumpLogs()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 705
    .line 706
    .line 707
    :cond_4
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 708
    .line 709
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTrafficPoller()Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->getDumpLogs()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 721
    .line 722
    .line 723
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 724
    .line 725
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    if-eqz v1, :cond_5

    .line 730
    .line 731
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 732
    .line 733
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getDumpLogs()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 745
    .line 746
    .line 747
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 748
    .line 749
    move-object/from16 v3, v16

    .line 750
    .line 751
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSAFamilySupportedCountries:[Ljava/lang/String;

    .line 755
    .line 756
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 771
    .line 772
    .line 773
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 774
    .line 775
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    if-eqz v1, :cond_6

    .line 780
    .line 781
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 782
    .line 783
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->getDumpLogs()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 795
    .line 796
    .line 797
    :cond_6
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 798
    .line 799
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    const/4 v1, 0x3

    .line 804
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    if-eqz v0, :cond_7

    .line 809
    .line 810
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApPowerSaveImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    if-eqz v0, :cond_7

    .line 819
    .line 820
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApPowerSaveImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->getDumpLogs()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    :cond_7
    const-string v0, "SemWifiApContentProvider=========="

    .line 832
    .line 833
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    invoke-static {}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->getDumpLogs()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    const-string v0, "HotspotLabs Logs==========>"

    .line 844
    .line 845
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->getDumpLogs()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    const-string v0, "MHS dump ----- end -----\n"

    .line 856
    .line 857
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    .line 865
    .line 866
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 867
    .line 868
    .line 869
    return-void

    .line 870
    :goto_2
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    .line 872
    .line 873
    throw v0
.end method

.method public enableHotspotTsfInfo(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public factoryReset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->factoryReset()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isEnhancedMobileApModeForD2dOrWifiOnlyLite()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->factoryReset()V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->factoryReset()V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->factoryReset()V

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->receiveSoftNetworkReset()V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSettingsSoftResetHandler()Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->resetHotspotSettings()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public generateMhsDataUsageDummyData(IZ)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "generateMhsDataUsageDummyData maxClientPerDay: "

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, " create: "

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "SemWifiApServiceImpl"

    .line 24
    .line 25
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public getAdvancedAutohotspotConnectSettings()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return p0

    .line 21
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public getAdvancedAutohotspotLCDSettings()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return p0

    .line 21
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public getDataConsumedValues()[J
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getDataConsumedValues()[J

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_0
    return-object v0

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getHotspotAntMode()I
    .locals 4

    .line 1
    const-string v0, "getHotspotAntMode() mode : "

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    const-string v2, "GET_HOTSPOT_ANTENNA_MODE"

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v2, "GET_HOTSPOT_ANTENNA_MODE "

    .line 18
    .line 19
    const-string v3, ""

    .line 20
    .line 21
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v2, "SemWifiApServiceImpl"

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    return v1

    .line 49
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return p0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :cond_1
    return v1
.end method

.method public getIndoorStatus()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getIndoorSupportStatus()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public getMHSClientTrafficDetails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public getMHSConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 7
    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0
.end method

.method public getMHSMacFromInterface()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->getMHSMacFromInterface()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public getMcfConnectedStatus(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public getMcfScanDetail()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    new-instance p0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public getMonthlyDataUsage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getMonthlyDataUsage()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public getNRTTrafficbandwidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->getAllocatedBw()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public getProvisionSuccess()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportVerizonProvisioning()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 13
    .line 14
    const-string v1, "vendor.wifiap.provisioning.disable"

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "1"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string v1, "wifi_ap_provision_success"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const-string v0, "isProvisioning successful  "

    .line 44
    .line 45
    const-string v1, "SemWifiApServiceImpl"

    .line 46
    .line 47
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return p0
.end method

.method public getRVFModeStatus()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public getSmartApConnectedStatus(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSmartApConnectedStatus(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public getSmartD2DClientConnectedStatus(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public getSmartMHSLockStatus()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->getSmartMHSLockStatus()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getSoftApBands()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda5;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, [I

    .line 18
    .line 19
    return-object p0
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApConfigStore()Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public getSoftApFreq()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->getSoftApFreq()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public getSoftApSecurityType()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->getSoftApSecurityType()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public getSoftApUpStreamNetworkType()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->getSoftApUpStreamNetworkType()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public getStationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getStaInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public getTopHotspotClientsToday(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTopHotspotClientsToday(II)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public getTopHotspotClientsTodayAsString(II)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public getWifiApBleD2DScanDetail()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->getWifiApBleD2DScanResults()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public getWifiApBleScanDetail()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->getWifiApBleScanResults()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public getWifiApChannel()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0xd

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApChannel()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 p0, -0x1

    .line 27
    return p0
.end method

.method public getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public getWifiApConnectedStationCount()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getNumOfConnectedDevices()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public getWifiApDailyDataLimit()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getDailyMhsDataLimit()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_0
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    return-wide v0
.end method

.method public getWifiApFreq()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    const-string v1, "GET_FREQ"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return v0
.end method

.method public getWifiApGuestPassword()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getWifiApGuestPassword()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getWifiApHostapdFreq()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "GET_FREQ"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, ""

    .line 23
    .line 24
    return-object p0
.end method

.method public getWifiApHostapdSecurtiy()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "SAE_SECURITY"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, ""

    .line 23
    .line 24
    return-object p0
.end method

.method public getWifiApInterfaceName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getSoftApInterfaceName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public getWifiApInterfaceNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getSoftApInterfaceNames()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public getWifiApIsolate()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public getWifiApLOHSState()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLOHSState:I

    .line 5
    .line 6
    return p0
.end method

.method public getWifiApMacAclMode()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getWifiApMacAclMode()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public getWifiApMaxClient()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    const-string v1, "vendor.wifiap.debug.maxclient"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-boolean v1, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 14
    .line 15
    const-string v2, "SemWifiApServiceImpl"

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "changed max client "

    .line 24
    .line 25
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const-string v1, "wifi_ap_chip_maxclient"

    .line 44
    .line 45
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/16 v0, 0xa

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    const-string v1, "na"

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v3, "exception : "

    .line 71
    .line 72
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move p0, v0

    .line 86
    :goto_0
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    return p0

    .line 95
    :cond_2
    :goto_1
    return v0
.end method

.method public getWifiApMaxClientFromFramework()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getWifiApMaxClientFromFramework()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v0, "GET_STA_LIST"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public getWifiApStaListDetail()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getWifiApStaListDetail()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public getWifiApState()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getAospWifiManager()Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getAospWifiManager()Landroid/net/wifi/WifiManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/16 p0, 0xb

    .line 17
    .line 18
    return p0
.end method

.method public getWifiApTodaysTotalDataUsage()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_0
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    return-wide v0
.end method

.method public getWifiApWarningActivityRunningState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiApWarningActivityRunningState()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public getWifiApWpsPbc()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public getWifiMACAddress()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->getWifiMACAddress()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public handleBootCompleted()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 6
    .line 7
    const/16 v2, 0x41

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApBroadcastReceiver()Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startTracking()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->startTracking()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleBootCompleted()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApSmartPrioritySupported()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceDetector()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceDetector()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->handleBootCompleted()V

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isEnhancedMobileApModeForLiteOrWifiOnlyLite()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->handleBootCompleted()V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->handleBootCompleted()V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->handleBootCompleted()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->handleBootCompleted()V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->handleBootCompleted()V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->handleBootCompleted()V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$2;

    .line 157
    .line 158
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isEnhancedMobileApModeForD2dOrWifiOnlyLite()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_1

    .line 175
    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->handleBootCompleted()V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->handleBootCompleted()V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->handleBootCompleted()V

    .line 201
    .line 202
    .line 203
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_2

    .line 210
    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 212
    .line 213
    if-eqz v0, :cond_2

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->handleBootCompleted()V

    .line 216
    .line 217
    .line 218
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 219
    .line 220
    if-eqz v0, :cond_3

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->handleBootCompleted()V

    .line 223
    .line 224
    .line 225
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTrafficPoller()Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->handleBootCompleted()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_4

    .line 245
    .line 246
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 247
    .line 248
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda10;

    .line 249
    .line 250
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mapIndoorCountryToChannel()V

    .line 257
    .line 258
    .line 259
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleBootCompleted()V

    .line 266
    .line 267
    .line 268
    return-void
.end method

.method public handleUserSwitch(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isEnhancedMobileApModeForLiteOrWifiOnlyLite()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isTablet()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->handleUserSwitch(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->handleUserSwitch(I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->handleUserSwitch(I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    const-string v1, "SemWifiApServiceImpl"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 26
    .line 27
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 52
    .line 53
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->getRegion()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v2, "checkAndStartMHS start, mCSCRegion:"

    .line 62
    .line 63
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    .line 90
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 98
    .line 99
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 100
    .line 101
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda4;

    .line 102
    .line 103
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerForBroadcasts()V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 139
    .line 140
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotMHSLcdOnOff()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    .line 147
    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    .line 155
    .line 156
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 163
    .line 164
    return-void
.end method

.method public initializeChannelInfo()V
    .locals 8

    .line 1
    const-string v0, "Initialize the indoor channel info"

    .line 2
    .line 3
    const-string v1, "SemWifiApServiceImpl"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    .line 9
    .line 10
    const-string v2, "IN"

    .line 11
    .line 12
    const-string v3, "36 40 44 48 52 56 60 64 149 153 157 161"

    .line 13
    .line 14
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    .line 18
    .line 19
    const-string v2, "KR,BB,VE,VN,AR,UY,CL,CA,CO,PA"

    .line 20
    .line 21
    const-string v3, "36 40 44 48"

    .line 22
    .line 23
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    .line 27
    .line 28
    const-string v2, "BO"

    .line 29
    .line 30
    const-string v3, "52 56 60 64 149 153 157 161 165"

    .line 31
    .line 32
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    .line 36
    .line 37
    const-string v2, "QA"

    .line 38
    .line 39
    const-string v3, "149 153 157 161 165"

    .line 40
    .line 41
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    .line 45
    .line 46
    const-string v2, "GH,GG,GR,GL,ZA,NL,NO,NF,NZ,NU,DK,DE,LV,RO,LU,LY,LT,LI,MK,IM,MC,MA,ME,MV,MT,BH,VA,BE,BA,BG,BR,SA,SM,PM,RS,SE,CH,ES,SK,SI,AE,IS,IE,AL,EE,GB,IO,OM,AU,AT,UA,IL,EG,IT,JP,JE,GE,CN,GI,CZ,CC,CL,CA,CC,CO,KW,CK,HR,CY,TH,TR,TK,FO,PT,PL,FR,TF,PF,FJ,FI,PN,HM,HU,HK"

    .line 47
    .line 48
    const-string v3, "36 40 44 48 52 56 60 64"

    .line 49
    .line 50
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannel:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Ljava/lang/String;

    .line 86
    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v6, "Country = "

    .line 90
    .line 91
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, ", channels = "

    .line 104
    .line 105
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    const-string v2, ","

    .line 119
    .line 120
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    array-length v3, v2

    .line 125
    const/4 v5, 0x0

    .line 126
    :goto_0
    if-ge v5, v3, :cond_0

    .line 127
    .line 128
    aget-object v6, v2, v5

    .line 129
    .line 130
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    .line 131
    .line 132
    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    add-int/lit8 v5, v5, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    return-void
.end method

.method public isClientAcceptedWifiProfileSharing(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isClientAcceptedWifiProfileSharing(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public isDataSaverEnabled()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->isDataSaverEnabled()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public isMCFClientAutohotspotSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isNeededToShowWifiApDatalimitReachedDialog()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isNeededToShowWifiApDatalimitReachedDialog()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const-string p0, "SemWifiApServiceImpl"

    .line 24
    .line 25
    const-string v0, " Global limit is reached"

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public isOverAllMhsDataLimitReached()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isOverAllMhsDataLimitReached()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public isOverAllMhsDataLimitSet()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isOverAllMhsDataLimitSet()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public isP2pConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isP2pConnected()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isRegionFor5GCountry()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "JPN"

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v5, "SemWifiApServiceImpl"

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string v1, "JP"

    .line 28
    .line 29
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 30
    .line 31
    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v6, "set country code : "

    .line 36
    .line 37
    invoke-static {v6, v1, v5}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 41
    .line 42
    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 63
    .line 64
    const-string v8, "ro.product.first_api_level"

    .line 65
    .line 66
    const/4 v9, -0x1

    .line 67
    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    const-string v8, "S_LSI"

    .line 72
    .line 73
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    const/16 v6, 0x1d

    .line 80
    .line 81
    if-ge v7, v6, :cond_2

    .line 82
    .line 83
    const-string v15, "IR"

    .line 84
    .line 85
    const-string v16, "SD"

    .line 86
    .line 87
    const-string v8, "BO"

    .line 88
    .line 89
    const-string v9, "QA"

    .line 90
    .line 91
    const-string v10, "KZ"

    .line 92
    .line 93
    const-string v11, "RU"

    .line 94
    .line 95
    const-string v12, "KP"

    .line 96
    .line 97
    const-string v13, "SY"

    .line 98
    .line 99
    const-string v14, "CU"

    .line 100
    .line 101
    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    sput-object v6, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountries2GOnly:[Ljava/lang/String;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const-string v13, "IR"

    .line 109
    .line 110
    const-string v14, "SD"

    .line 111
    .line 112
    const-string v7, "QA"

    .line 113
    .line 114
    const-string v8, "KZ"

    .line 115
    .line 116
    const-string v9, "RU"

    .line 117
    .line 118
    const-string v10, "KP"

    .line 119
    .line 120
    const-string v11, "SY"

    .line 121
    .line 122
    const-string v12, "CU"

    .line 123
    .line 124
    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    sput-object v6, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountries2GOnly:[Ljava/lang/String;

    .line 129
    .line 130
    :goto_0
    move v6, v3

    .line 131
    :goto_1
    sget-object v7, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountries2GOnly:[Ljava/lang/String;

    .line 132
    .line 133
    array-length v8, v7

    .line 134
    if-ge v6, v8, :cond_4

    .line 135
    .line 136
    aget-object v7, v7, v6

    .line 137
    .line 138
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_3

    .line 143
    .line 144
    const-string v1, " only 2G supported countries"

    .line 145
    .line 146
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    move v3, v4

    .line 154
    :goto_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_5

    .line 161
    .line 162
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    return v4

    .line 171
    :cond_5
    return v3
.end method

.method public isRegionFor6GCountry()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    const-string v1, "ro.csc.countryiso_code"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "AU"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v1, :cond_9

    .line 19
    .line 20
    const-string v1, "BR"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_9

    .line 27
    .line 28
    const-string v1, "NZ"

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_9

    .line 35
    .line 36
    const-string v1, "CR"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_9

    .line 43
    .line 44
    const-string v1, "SG"

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_9

    .line 51
    .line 52
    const-string v1, "PH"

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_9

    .line 59
    .line 60
    const-string v1, "PK"

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_9

    .line 67
    .line 68
    const-string v1, "DO"

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_9

    .line 75
    .line 76
    const-string v1, "MX"

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_9

    .line 83
    .line 84
    const-string v1, "ID"

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_9

    .line 91
    .line 92
    const-string v1, "PY"

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :cond_0
    const-string v1, "HK"

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 111
    .line 112
    const-string v3, "S906"

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_1

    .line 119
    .line 120
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 121
    .line 122
    const-string v3, "S908"

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_1

    .line 129
    .line 130
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 131
    .line 132
    const-string v3, "X706"

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_1

    .line 139
    .line 140
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 141
    .line 142
    const-string v3, "X806"

    .line 143
    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_1

    .line 149
    .line 150
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 151
    .line 152
    const-string v3, "X906"

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_1

    .line 159
    .line 160
    return v2

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 162
    .line 163
    const-string v3, "ro.product.first_api_level"

    .line 164
    .line 165
    const/4 v4, -0x1

    .line 166
    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    const-string v3, "JPN"

    .line 171
    .line 172
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    const/16 v4, 0x21

    .line 179
    .line 180
    if-nez v3, :cond_2

    .line 181
    .line 182
    const-string v3, "MA"

    .line 183
    .line 184
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_2

    .line 189
    .line 190
    const-string v3, "TW"

    .line 191
    .line 192
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_2

    .line 197
    .line 198
    const-string v3, "MY"

    .line 199
    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_3

    .line 205
    .line 206
    :cond_2
    if-lt v1, v4, :cond_3

    .line 207
    .line 208
    return v2

    .line 209
    :cond_3
    const-string v3, "RU"

    .line 210
    .line 211
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_4

    .line 216
    .line 217
    const-string v3, "TH"

    .line 218
    .line 219
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_5

    .line 224
    .line 225
    :cond_4
    if-lt v1, v4, :cond_5

    .line 226
    .line 227
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 228
    .line 229
    const-string v4, "S911"

    .line 230
    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-nez v3, :cond_5

    .line 236
    .line 237
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 238
    .line 239
    const-string v4, "S916"

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-nez v3, :cond_5

    .line 246
    .line 247
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 248
    .line 249
    const-string v4, "S918"

    .line 250
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-nez v3, :cond_5

    .line 256
    .line 257
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 258
    .line 259
    const-string v4, "S711"

    .line 260
    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-nez v3, :cond_5

    .line 266
    .line 267
    return v2

    .line 268
    :cond_5
    const-string v3, "NA"

    .line 269
    .line 270
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-nez v3, :cond_6

    .line 277
    .line 278
    const-string v3, "PR"

    .line 279
    .line 280
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_7

    .line 285
    .line 286
    :cond_6
    const/16 v0, 0x23

    .line 287
    .line 288
    if-lt v1, v0, :cond_7

    .line 289
    .line 290
    return v2

    .line 291
    :cond_7
    const-string v0, "KOR"

    .line 292
    .line 293
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-nez v0, :cond_9

    .line 300
    .line 301
    const-string v0, "EUR"

    .line 302
    .line 303
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCSCRegion:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    if-eqz p0, :cond_8

    .line 310
    .line 311
    goto :goto_0

    .line 312
    :cond_8
    const/4 p0, 0x0

    .line 313
    return p0

    .line 314
    :cond_9
    :goto_0
    return v2
.end method

.method public isSAFamilySupportedBasedOnCountry()Z
    .locals 7

    .line 1
    const-string v0, "ro.build.version.oneui"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const v3, 0x11170

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-ge v0, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ","

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_0
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 30
    .line 31
    const-string v3, "ro.csc.countryiso_code"

    .line 32
    .line 33
    const-string v5, ""

    .line 34
    .line 35
    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSAFamilySupportedCountries:[Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v5, ",countryISO:"

    .line 51
    .line 52
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSAFamilySupportedCountries:[Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    move v0, v4

    .line 78
    :goto_0
    sget-boolean v3, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 79
    .line 80
    const-string v5, "SemWifiApServiceImpl"

    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 85
    .line 86
    const-string v6, "vendor.wifiap.force.safamily"

    .line 87
    .line 88
    invoke-virtual {v3, v6, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-ne v3, v4, :cond_2

    .line 93
    .line 94
    const-string p0, "vendor.wifiap.force.safamily is true"

    .line 95
    .line 96
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 101
    .line 102
    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    const/4 v3, 0x2

    .line 107
    if-ne p0, v3, :cond_3

    .line 108
    .line 109
    const-string p0, "vendor.wifiap.force.safamily is disabled"

    .line 110
    .line 111
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move v4, v1

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    move v4, v0

    .line 117
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v0, ",isSAFamilySupportedBasedOnCountry:"

    .line 120
    .line 121
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    return v1
.end method

.method public isSoftAp6ENetwork()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->isSoftAp6ENetwork()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public isSoftap11axEnabled()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->isSoftap11axEnabled()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public isThisSoftApFeatureSupported(I)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public isUsingNonTerrestrialNetwork()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isUsingNonTerrestrialNetwork:Z

    .line 2
    .line 3
    return p0
.end method

.method public isWifiApEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/16 v0, 0xd

    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public isWifiApEnabledWithDualBand()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isWifiApEnabledWithDualBand()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public isWifiApGuestClient(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isWifiApGuestClient(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public isWifiApGuestModeEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isWifiApGuestModeEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public isWifiApGuestModeIsolationEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isWifiApGuestModeIsolationEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public isWifiApMacAclEnabled()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public isWifiApWpa3Supported()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0
.end method

.method public isWifiSharingEnabled()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v2, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public isWifiSharingLiteSupported()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharingLite()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const-string v0, "supportWifiSharingLite() "

    .line 15
    .line 16
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SemWifiApServiceImpl"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return p0
.end method

.method public isWifiSharingSupported()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public launchWifiApWarningForMcfMHS(IIZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemAutohotspotServiceBind:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->launchWifiApWarningForMcfMHS(IIZ)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public logWifiAp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "[D]"

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    const-string p0, "[E]"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    invoke-static {p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-static {p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public declared-synchronized manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5

    .line 1
    const-string v0, "manageWifiApMacAclList,mac:"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x3

    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne p4, v4, :cond_2

    .line 23
    .line 24
    if-ne p3, v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->addStaToAllowListInFramework(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_0
    if-ne p3, v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->removeStaInAllowedListInFramework(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    if-ne p1, v4, :cond_6

    .line 53
    .line 54
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApDisassocSta(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    if-ne p3, v2, :cond_5

    .line 59
    .line 60
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->modifyAllowedListInFramework(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    if-ne p4, v3, :cond_5

    .line 66
    .line 67
    if-ne p3, v4, :cond_3

    .line 68
    .line 69
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->addStaToDenyListInFramework(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabled()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    if-ne p1, v4, :cond_6

    .line 86
    .line 87
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApDisassocSta(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    if-ne p3, v3, :cond_4

    .line 92
    .line 93
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->removeStaInDenyListInFramework(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    if-ne p3, v2, :cond_5

    .line 99
    .line 100
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->modifyDenyListInFramework(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    goto :goto_0

    .line 105
    :cond_5
    const/4 p1, -0x1

    .line 106
    :cond_6
    :goto_0
    const-string v1, "SemWifiApServiceImpl"

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p2, ", add_or_delete_modify:"

    .line 117
    .line 118
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p2, ",allow_or_deny:"

    .line 125
    .line 126
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p2, ",retValue:"

    .line 133
    .line 134
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    .line 147
    monitor-exit p0

    .line 148
    return p1

    .line 149
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw p1
.end method

.method public declared-synchronized readWifiApMacAclList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readAllowList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    :try_start_1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readDenyList()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-object p1

    .line 41
    :cond_1
    monitor-exit p0

    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw p1
.end method

.method public registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public registerClientListDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v1, p1

    .line 16
    move-object v2, p2

    .line 17
    move v3, p3

    .line 18
    move v4, p4

    .line 19
    move v5, p5

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->registerClientListDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;III)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 22
    .line 23
    const-string v1, "registerWifiApDataUsageCallback uid=%"

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-long v1, v1

    .line 34
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 39
    .line 40
    .line 41
    :cond_1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/os/IBinder;I)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;

    .line 57
    .line 58
    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catch_0
    move-exception p0

    .line 66
    const-string p1, "Error on linkToDeath - "

    .line 67
    .line 68
    const-string p2, "SemWifiApServiceImpl"

    .line 69
    .line 70
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string p1, "Callback must not be null"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p1, "Binder must not be null"

    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 17
    .line 18
    const-string v1, "registerSemWifiApSmartCallback uid=%"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-long v1, v1

    .line 29
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/os/IBinder;I)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;

    .line 52
    .line 53
    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;ILcom/samsung/android/wifi/ISemWifiApSmartCallback;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    move-exception p0

    .line 61
    const-string p1, "Error on linkToDeath - "

    .line 62
    .line 63
    const-string p2, "SemWifiApServiceImpl"

    .line 64
    .line 65
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p1, "Callback must not be null"

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string p1, "Binder must not be null"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public reportBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSaLoggingHandler()Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object p0

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    return-void
.end method

.method public reportBigData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSaLoggingHandler()Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object p0

    .line 8
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    return-void
.end method

.method public reportHotspotDumpLogs(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->addMHSDumpLog(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public requestStopAutohotspotAdvertisement(Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setCancelledByUser(Z)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotDiscovery()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public resetSoftAp(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    check-cast p1, Landroid/net/wifi/SoftApConfiguration;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->resetSoftAp(Landroid/net/wifi/SoftApConfiguration;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->resetSoftAp()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public resetTotalPriorityDataConsumedValues()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->resetTotalPriorityDataConsumedValues()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public declared-synchronized runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mNetdService:Landroid/net/INetd;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->bindNetdNativeService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_1
    :goto_0
    :try_start_2
    const-string v0, ""

    .line 28
    .line 29
    const-string v2, "VPN_RULES"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v3, v4, :cond_2

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    rem-int/lit8 v5, v3, 0x9

    .line 51
    .line 52
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    xor-int/2addr v0, v5

    .line 57
    int-to-char v0, v0

    .line 58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_3

    .line 70
    :cond_2
    const-string v2, "SemWifiApServiceImpl"

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v4, "runCmd: cmd = {"

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, "} param = {"

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, "}"

    .line 94
    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    const-string v1, ""

    .line 106
    .line 107
    const-string v0, "SemWifiApServiceImpl"

    .line 108
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v3, "runCmd: ret = {"

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    const-string v3, "OK"

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    move-object v3, v1

    .line 129
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v3, "}"

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :goto_3
    :try_start_3
    const-string v2, "SemWifiApServiceImpl"

    .line 146
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v4, "Failed to run command: cmd="

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p1, ", error="

    .line 161
    .line 162
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    .line 178
    .line 179
    :goto_4
    monitor-exit p0

    .line 180
    return-object v1

    .line 181
    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    throw p1
.end method

.method public setAdvancedAutohotspotConnectSettings(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setAdvnacedConnectionSetting(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public setAdvancedAutohotspotLCDSettings(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setAdvnacedConnectionLcdOffSetting(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public setAntMode(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setSoftApAntMode(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setArdkPowerSaveMode(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setArdkPowerSaveMode(Z)I

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setAutohotspotToastMessage(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->notifyFromSettings(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public setHotspotAntMode(I)V
    .locals 2

    .line 1
    const-string v0, "SET_HOTSPOT_ANTENNA_MODE "

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public setIndoorChannelsToDriver(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiApServiceImpl"

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const-string v2, "Setting indoor channel info in driver"

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountryChannelList:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    const-string p0, "Wifi is off. So, not setting indoor channels to driver."

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    const-string v2, " "

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    array-length v2, v2

    .line 56
    const-string v3, "Number of indoor channels = "

    .line 57
    .line 58
    invoke-static {v2, v3}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const-string v3, "Indoor channel details(<ch1> <ch2> ...) : "

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const-string v0, ""

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    :goto_0
    const-string v3, "sending cmd SEC_COMMAND_ID_SET_INDOOR_CHANNELS to WiFiNative to set/reset indoor ch"

    .line 79
    .line 80
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    const-string p1, "set"

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const-string p1, "reset"

    .line 89
    .line 90
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setIndoorChannels(ILjava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_4

    .line 101
    .line 102
    const-string p0, "Indoor channels "

    .line 103
    .line 104
    const-string v0, " successfully"

    .line 105
    .line 106
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    const-string p0, "Error! Indoor channels not "

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_5
    :goto_2
    const-string p0, "Country doesn\'t support indoor channel."

    .line 125
    .line 126
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    const-string v5, "1"

    .line 12
    .line 13
    const-string v6, ""

    .line 14
    .line 15
    const-string v7, "false"

    .line 16
    .line 17
    const-string v8, "net.redirect_socket_calls.hooked"

    .line 18
    .line 19
    const-string v9, "mDisableRandomMac:"

    .line 20
    .line 21
    const-string v10, "recover redirect_socket_calls_hooked as "

    .line 22
    .line 23
    const-string v11, "redirect_socket_calls_hooked = "

    .line 24
    .line 25
    const-string v12, " setLocalOnlyHotspotEnabled "

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 28
    .line 29
    .line 30
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v13

    .line 36
    iget-object v14, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 37
    .line 38
    invoke-virtual {v14}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 39
    .line 40
    .line 41
    move-result-object v14

    .line 42
    iget-object v15, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    move-object/from16 v16, v5

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v14, v15, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const-string v14, "android"

    .line 55
    .line 56
    invoke-virtual {v13, v14, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    const-string v14, "setLocalOnlyHotspotEnabled clientPkgName : "

    .line 61
    .line 62
    const-string v15, " "

    .line 63
    .line 64
    invoke-static {v13, v14, v5, v15}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    move/from16 v17, v13

    .line 69
    .line 70
    const-string v13, "SemWifiApServiceImpl"

    .line 71
    .line 72
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    if-eqz v17, :cond_0

    .line 76
    .line 77
    const-string v14, "check network stack for "

    .line 78
    .line 79
    invoke-static {v14, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkStackPermission()V

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 90
    .line 91
    .line 92
    move-result-wide v17

    .line 93
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v12, " ssid:"

    .line 108
    .line 109
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v12, " band:"

    .line 116
    .line 117
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    iput-object v12, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    .line 135
    .line 136
    new-instance v12, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    const-string v11, "vendor.wifiap.twt"

    .line 154
    .line 155
    const-string v12, "true"

    .line 156
    .line 157
    const/4 v14, 0x0

    .line 158
    if-nez v1, :cond_1

    .line 159
    .line 160
    :try_start_1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 161
    .line 162
    if-eqz v1, :cond_14

    .line 163
    .line 164
    const-string v1, "call mReservation.close()"

    .line 165
    .line 166
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    const-string v1, "0"

    .line 170
    .line 171
    invoke-static {v11, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V

    .line 177
    .line 178
    .line 179
    iput-object v14, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 180
    .line 181
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_14

    .line 188
    .line 189
    invoke-static {v8, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    goto/16 :goto_8

    .line 210
    .line 211
    :catchall_0
    move-exception v0

    .line 212
    goto/16 :goto_b

    .line 213
    .line 214
    :cond_1
    iget v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLOHSState:I

    .line 215
    .line 216
    const/16 v10, 0xb

    .line 217
    .line 218
    const/16 v14, 0xe

    .line 219
    .line 220
    const/4 v15, 0x0

    .line 221
    if-eq v1, v14, :cond_2

    .line 222
    .line 223
    if-ne v1, v10, :cond_3

    .line 224
    .line 225
    :cond_2
    iget v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApState:I

    .line 226
    .line 227
    if-eq v1, v10, :cond_4

    .line 228
    .line 229
    if-eq v1, v14, :cond_4

    .line 230
    .line 231
    :cond_3
    const-string v0, " mhs , lohs is not disabled"

    .line 232
    .line 233
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    .line 235
    .line 236
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 237
    .line 238
    .line 239
    return v15

    .line 240
    :cond_4
    const-string v1, " ssid is wrong"

    .line 241
    .line 242
    if-eqz v2, :cond_16

    .line 243
    .line 244
    :try_start_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    if-eqz v10, :cond_5

    .line 249
    .line 250
    goto/16 :goto_a

    .line 251
    .line 252
    :cond_5
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 253
    .line 254
    invoke-virtual {v2, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    if-eqz v10, :cond_15

    .line 259
    .line 260
    array-length v14, v10

    .line 261
    const/4 v15, 0x1

    .line 262
    if-lt v14, v15, :cond_15

    .line 263
    .line 264
    array-length v10, v10

    .line 265
    const/16 v14, 0x20

    .line 266
    .line 267
    if-le v10, v14, :cond_6

    .line 268
    .line 269
    goto/16 :goto_9

    .line 270
    .line 271
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    new-instance v10, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 276
    .line 277
    invoke-direct {v10, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 281
    .line 282
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    const-string v14, "wifi_ap_disable_random_mac"

    .line 287
    .line 288
    const/4 v15, 0x0

    .line 289
    invoke-static {v1, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    const/4 v15, 0x1

    .line 294
    if-ne v1, v15, :cond_7

    .line 295
    .line 296
    const/4 v1, 0x1

    .line 297
    goto :goto_0

    .line 298
    :cond_7
    const/4 v1, 0x0

    .line 299
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    if-nez v1, :cond_8

    .line 315
    .line 316
    const/4 v1, 0x0

    .line 317
    invoke-virtual {v10, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 318
    .line 319
    .line 320
    :cond_8
    invoke-virtual {v10, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    .line 322
    .line 323
    const-string v1, "com.samsung.android.app.xr.sample"

    .line 324
    .line 325
    const-string v2, "com.samsung.android.app.ar.phoneservice"

    .line 326
    .line 327
    const/4 v9, 0x6

    .line 328
    if-eqz v3, :cond_9

    .line 329
    .line 330
    :try_start_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    if-eqz v6, :cond_a

    .line 335
    .line 336
    :cond_9
    const/4 v3, 0x0

    .line 337
    const/4 v15, 0x0

    .line 338
    goto :goto_4

    .line 339
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    array-length v6, v6

    .line 344
    const/16 v14, 0x8

    .line 345
    .line 346
    if-lt v6, v14, :cond_e

    .line 347
    .line 348
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    array-length v6, v6

    .line 353
    const/16 v14, 0x3f

    .line 354
    .line 355
    if-le v6, v14, :cond_b

    .line 356
    .line 357
    goto :goto_2

    .line 358
    :cond_b
    const/4 v6, 0x3

    .line 359
    if-ne v4, v9, :cond_c

    .line 360
    .line 361
    invoke-virtual {v10, v3, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 362
    .line 363
    .line 364
    goto :goto_1

    .line 365
    :cond_c
    const/4 v15, 0x1

    .line 366
    invoke-virtual {v10, v3, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 367
    .line 368
    .line 369
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v14

    .line 373
    if-nez v14, :cond_d

    .line 374
    .line 375
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v14

    .line 379
    if-eqz v14, :cond_f

    .line 380
    .line 381
    :cond_d
    invoke-virtual {v10, v3, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 382
    .line 383
    .line 384
    goto :goto_5

    .line 385
    :cond_e
    :goto_2
    const-string v0, " password is wrong"

    .line 386
    .line 387
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    .line 389
    .line 390
    :goto_3
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    .line 392
    .line 393
    const/4 v15, 0x0

    .line 394
    return v15

    .line 395
    :goto_4
    :try_start_4
    invoke-virtual {v10, v3, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 396
    .line 397
    .line 398
    :cond_f
    :goto_5
    const/4 v3, 0x5

    .line 399
    if-ne v4, v3, :cond_10

    .line 400
    .line 401
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;

    .line 402
    .line 403
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v10, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 407
    .line 408
    .line 409
    :goto_6
    const/4 v15, 0x1

    .line 410
    goto :goto_7

    .line 411
    :cond_10
    if-ne v4, v9, :cond_11

    .line 412
    .line 413
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;

    .line 414
    .line 415
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$6;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v10, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 419
    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_11
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$7;

    .line 423
    .line 424
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$7;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v10, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 428
    .line 429
    .line 430
    goto :goto_6

    .line 431
    :goto_7
    invoke-virtual {v10, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mMHSExConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 439
    .line 440
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    if-nez v2, :cond_12

    .line 445
    .line 446
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-eqz v1, :cond_13

    .line 451
    .line 452
    :cond_12
    move-object/from16 v1, v16

    .line 453
    .line 454
    invoke-static {v11, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    const-string v2, "vendor.wifiap.axmode"

    .line 458
    .line 459
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->redirect_socket_calls_hooked:Ljava/lang/String;

    .line 463
    .line 464
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    if-eqz v1, :cond_13

    .line 469
    .line 470
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    const-string v1, "set redirect_socket_calls_hooked as false"

    .line 474
    .line 475
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    :cond_13
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 479
    .line 480
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mMHSExConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 481
    .line 482
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$8;

    .line 483
    .line 484
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$8;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 485
    .line 486
    .line 487
    const/4 v0, 0x0

    .line 488
    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->startLocalOnlyHotspot(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 489
    .line 490
    .line 491
    :cond_14
    :goto_8
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    .line 493
    .line 494
    const/16 v19, 0x1

    .line 495
    .line 496
    return v19

    .line 497
    :cond_15
    :goto_9
    :try_start_5
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    goto :goto_3

    .line 501
    :cond_16
    :goto_a
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 502
    .line 503
    .line 504
    goto :goto_3

    .line 505
    :goto_b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    .line 507
    .line 508
    throw v0
.end method

.method public setMHSConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "semSetMHSConfig()  "

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "error"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "SemWifiApServiceImpl"

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " "

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->removeSecurityLog(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-object v2
.end method

.method public setPowerSavingTime(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTrafficPoller()Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTrafficPoller()Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->setPowerSavingTime(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public setProvisionSuccess(Z)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Provision variable set to "

    .line 5
    .line 6
    const-string v1, "SemWifiApServiceImpl"

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const-string v1, "wifi_ap_provision_success"

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1, p0, v1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-virtual {p1, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    :goto_0
    return v0
.end method

.method public setRVFmodeStatus(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSmartMHSLocked(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->setSmartMHSLocked(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "android"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v2, "clientPkgName : "

    .line 29
    .line 30
    const-string v3, " "

    .line 31
    .line 32
    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "SemWifiApServiceImpl"

    .line 37
    .line 38
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const-string v0, "check network stack for "

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkStackPermission()V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    const-string v0, ""

    .line 64
    .line 65
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public setWifiApClientDataPaused(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->setWifiApClientDataPaused(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setWifiApClientEditedName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->setWifiApClientEditedDeviceName(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setWifiApClientMobileDataLimit(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->setClientDataLimit(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setWifiApClientTimeLimit(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->setClientTimeLimit(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setWifiApConfigurationToDefault()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda2;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setWifiApDailyDataLimit(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->setDailyMhsDataLimit(J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "Exception occur : "

    .line 8
    .line 9
    const-string v4, " skip due to  "

    .line 10
    .line 11
    const-string v5, "WifiConnected freq:"

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 14
    .line 15
    .line 16
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    iget-object v7, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 23
    .line 24
    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    const-string v8, "android"

    .line 35
    .line 36
    invoke-virtual {v6, v8, v7}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const-string v8, "clientPkgName : "

    .line 41
    .line 42
    const-string v9, " "

    .line 43
    .line 44
    invoke-static {v6, v8, v7, v9}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    const-string v9, "SemWifiApServiceImpl"

    .line 49
    .line 50
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const/4 v8, 0x1

    .line 54
    const/4 v10, 0x0

    .line 55
    if-eqz v7, :cond_2

    .line 56
    .line 57
    const-string v11, "com.samsung.android.smartmirroring:smartview"

    .line 58
    .line 59
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    if-nez v11, :cond_1

    .line 64
    .line 65
    const-string v11, "com.samsung.android.smartmirroring"

    .line 66
    .line 67
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-nez v11, :cond_1

    .line 72
    .line 73
    const-string v11, "com.samsung.android.secondscreen:secondscreen"

    .line 74
    .line 75
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move v11, v10

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    move v11, v8

    .line 85
    :goto_1
    const-string v12, "com.samsung.sept"

    .line 86
    .line 87
    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    if-eqz v12, :cond_3

    .line 92
    .line 93
    const-string v12, "skip provision check for sep TC"

    .line 94
    .line 95
    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setProvisionSuccess(Z)Z

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    move v11, v10

    .line 107
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 108
    .line 109
    if-nez v11, :cond_4

    .line 110
    .line 111
    const-string v6, "check network stack for "

    .line 112
    .line 113
    invoke-static {v6, v7}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkStackPermission()V

    .line 121
    .line 122
    .line 123
    :cond_4
    invoke-direct {v1, v2, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->insertBigdataForHotSpotEnabled(ZLjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 127
    .line 128
    .line 129
    move-result-wide v11

    .line 130
    const-string v6, "wifiap_persistent_state"

    .line 131
    .line 132
    const-string v13, "#tag_wifi_ap_lab_hotspot_connection_event#"

    .line 133
    .line 134
    const-string v14, ",, Provisioning success state ="

    .line 135
    .line 136
    if-eqz v2, :cond_18

    .line 137
    .line 138
    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApBlocked()Z

    .line 145
    .line 146
    .line 147
    move-result v15

    .line 148
    if-eqz v15, :cond_5

    .line 149
    .line 150
    const-string v0, "MHS is disabled due to Knox MDM Restrcition Policy or satellite mode"

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .line 154
    .line 155
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    .line 157
    .line 158
    return v10

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    goto/16 :goto_b

    .line 161
    .line 162
    :catch_0
    move-exception v0

    .line 163
    goto/16 :goto_a

    .line 164
    .line 165
    :cond_5
    :try_start_1
    iget-object v15, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    invoke-static {v15}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    .line 168
    .line 169
    .line 170
    move-result v15

    .line 171
    if-eqz v15, :cond_6

    .line 172
    .line 173
    const-string v0, "MHS can\'t be enabled due to satellite mode is ON"

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .line 177
    .line 178
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    .line 180
    .line 181
    return v10

    .line 182
    :cond_6
    :try_start_2
    iget-object v15, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 183
    .line 184
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    if-nez v15, :cond_7

    .line 189
    .line 190
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isDataSaverModeEnabled()Z

    .line 191
    .line 192
    .line 193
    move-result v15

    .line 194
    if-eqz v15, :cond_7

    .line 195
    .line 196
    const-string v0, "MHS is disabled due to DataSaverModeEnabled"

    .line 197
    .line 198
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    .line 200
    .line 201
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    .line 203
    .line 204
    return v10

    .line 205
    :cond_7
    const/16 v15, 0xd

    .line 206
    .line 207
    if-eq v2, v15, :cond_17

    .line 208
    .line 209
    const/16 v15, 0xc

    .line 210
    .line 211
    if-ne v2, v15, :cond_8

    .line 212
    .line 213
    goto/16 :goto_8

    .line 214
    .line 215
    :cond_8
    :try_start_3
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 216
    .line 217
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_9

    .line 222
    .line 223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-static {v2}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isWifiStateChangeAllowed(I)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_9

    .line 232
    .line 233
    new-instance v0, Landroid/content/Intent;

    .line 234
    .line 235
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 236
    .line 237
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string v2, "wifi_state"

    .line 241
    .line 242
    const/16 v4, 0xe

    .line 243
    .line 244
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    .line 246
    .line 247
    const-string v2, "previous_wifi_state"

    .line 248
    .line 249
    const/16 v4, 0xb

    .line 250
    .line 251
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    .line 253
    .line 254
    const-string v2, "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"

    .line 255
    .line 256
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    .line 258
    .line 259
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 260
    .line 261
    const-string v4, "android.permission.OVERRIDE_WIFI_CONFIG"

    .line 262
    .line 263
    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v2, "com.android.settings"

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    .line 270
    .line 271
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 272
    .line 273
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    .line 275
    .line 276
    const-string v2, "com.android.systemui"

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 282
    .line 283
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    .line 285
    .line 286
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    .line 288
    .line 289
    return v10

    .line 290
    :cond_9
    :try_start_4
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDevicePolicyManager()Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isAllowToUseHotspot()Z

    .line 297
    .line 298
    .line 299
    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 300
    if-nez v2, :cond_a

    .line 301
    .line 302
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    .line 304
    .line 305
    return v10

    .line 306
    :cond_a
    if-nez v0, :cond_b

    .line 307
    .line 308
    :try_start_5
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-nez v4, :cond_d

    .line 317
    .line 318
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    invoke-static {v4}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isNotAllowedOpenMobileHotspot(I)Z

    .line 323
    .line 324
    .line 325
    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 326
    if-eqz v4, :cond_d

    .line 327
    .line 328
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    .line 330
    .line 331
    return v10

    .line 332
    :cond_b
    :try_start_6
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-nez v2, :cond_c

    .line 337
    .line 338
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    invoke-static {v2}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isNotAllowedOpenMobileHotspot(I)Z

    .line 343
    .line 344
    .line 345
    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 346
    if-eqz v2, :cond_c

    .line 347
    .line 348
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    .line 350
    .line 351
    return v10

    .line 352
    :cond_c
    const/4 v2, 0x0

    .line 353
    :cond_d
    if-nez v2, :cond_e

    .line 354
    .line 355
    :try_start_7
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 356
    .line 357
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {v2, v0, v8}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;Z)Landroid/net/wifi/SoftApConfiguration;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    :goto_3
    move-object v2, v0

    .line 366
    goto :goto_4

    .line 367
    :cond_e
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 368
    .line 369
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0, v2, v10}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;Z)Landroid/net/wifi/SoftApConfiguration;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    goto :goto_3

    .line 378
    :goto_4
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_10

    .line 383
    .line 384
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 385
    .line 386
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 387
    .line 388
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_10

    .line 393
    .line 394
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getIndoorSupportStatus()Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_f

    .line 399
    .line 400
    const-string v0, "Wifi is connected to indoor channel, so discconnect wifi"

    .line 401
    .line 402
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getAospWifiManager()Landroid/net/wifi/WifiManager;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 410
    .line 411
    .line 412
    const-wide/16 v15, 0x12c

    .line 413
    .line 414
    :try_start_8
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 415
    .line 416
    .line 417
    goto :goto_5

    .line 418
    :catch_1
    move-exception v0

    .line 419
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 427
    .line 428
    .line 429
    :cond_f
    :goto_5
    invoke-virtual {v1, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setIndoorChannelsToDriver(Z)V

    .line 430
    .line 431
    .line 432
    :cond_10
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 433
    .line 434
    const-string v4, "hotspot_enabled_history"

    .line 435
    .line 436
    const-string v15, "1"

    .line 437
    .line 438
    invoke-static {v0, v4, v15}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 442
    .line 443
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_11

    .line 448
    .line 449
    if-eqz v2, :cond_11

    .line 450
    .line 451
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-ne v0, v8, :cond_11

    .line 456
    .line 457
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 458
    .line 459
    const-string v4, "vendor.wifiap.5gindoor"

    .line 460
    .line 461
    const-string v15, "0"

    .line 462
    .line 463
    invoke-virtual {v0, v4, v15}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    :cond_11
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp6GBasedOnCountry()Z

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    if-eqz v0, :cond_14

    .line 471
    .line 472
    if-eqz v2, :cond_12

    .line 473
    .line 474
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    and-int/lit8 v0, v0, 0x4

    .line 479
    .line 480
    if-eqz v0, :cond_14

    .line 481
    .line 482
    goto :goto_6

    .line 483
    :cond_12
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    and-int/lit8 v0, v0, 0x4

    .line 492
    .line 493
    if-eqz v0, :cond_14

    .line 494
    .line 495
    :goto_6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 496
    .line 497
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    if-eqz v0, :cond_14

    .line 502
    .line 503
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    const/4 v15, -0x1

    .line 508
    if-eq v4, v15, :cond_14

    .line 509
    .line 510
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 515
    .line 516
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    const v15, 0x104110e

    .line 521
    .line 522
    .line 523
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    iget-object v15, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 528
    .line 529
    const-string v8, "CountryISO"

    .line 530
    .line 531
    invoke-virtual {v15, v8}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringCscFeature(Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    if-eqz v8, :cond_13

    .line 536
    .line 537
    const-string v15, "JP"

    .line 538
    .line 539
    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 540
    .line 541
    .line 542
    move-result v15

    .line 543
    if-eqz v15, :cond_13

    .line 544
    .line 545
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 546
    .line 547
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    const v15, 0x104110f

    .line 552
    .line 553
    .line 554
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    :cond_13
    new-instance v15, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    const-string v5, ",country:"

    .line 567
    .line 568
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    const/16 v5, 0x141e

    .line 582
    .line 583
    if-lt v0, v5, :cond_14

    .line 584
    .line 585
    const/16 v5, 0x16da

    .line 586
    .line 587
    if-gt v0, v5, :cond_14

    .line 588
    .line 589
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiSharingLite()Z

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-nez v0, :cond_14

    .line 594
    .line 595
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiSharing()Z

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    if-eqz v0, :cond_14

    .line 600
    .line 601
    new-instance v0, Landroid/os/Handler;

    .line 602
    .line 603
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 604
    .line 605
    .line 606
    move-result-object v5

    .line 607
    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 608
    .line 609
    .line 610
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda13;

    .line 611
    .line 612
    const/4 v8, 0x2

    .line 613
    invoke-direct {v5, v1, v4, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;I)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 617
    .line 618
    .line 619
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 622
    .line 623
    const-string v5, "Hotspot enable process initiated"

    .line 624
    .line 625
    invoke-static {v4, v2, v5, v7}, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->prepareHotspotLabLog(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getProvisionSuccess()I

    .line 636
    .line 637
    .line 638
    move-result v4

    .line 639
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-static {v13, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 654
    .line 655
    .line 656
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->startTethering(Landroid/net/wifi/SoftApConfiguration;)Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    if-nez v0, :cond_15

    .line 661
    .line 662
    const-string v2, "Mainline Softap is not enabled"

    .line 663
    .line 664
    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 668
    .line 669
    .line 670
    move-result v2

    .line 671
    if-eqz v2, :cond_16

    .line 672
    .line 673
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 674
    .line 675
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 676
    .line 677
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    if-eqz v2, :cond_16

    .line 682
    .line 683
    invoke-virtual {v1, v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setIndoorChannelsToDriver(Z)V

    .line 684
    .line 685
    .line 686
    goto :goto_7

    .line 687
    :cond_15
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 688
    .line 689
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    if-eqz v2, :cond_16

    .line 694
    .line 695
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 696
    .line 697
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 698
    .line 699
    const/4 v4, 0x1

    .line 700
    invoke-virtual {v2, v1, v6, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 701
    .line 702
    .line 703
    :cond_16
    :goto_7
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    .line 705
    .line 706
    return v0

    .line 707
    :cond_17
    :goto_8
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 720
    .line 721
    .line 722
    :goto_9
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    .line 724
    .line 725
    const/16 v16, 0x1

    .line 726
    .line 727
    return v16

    .line 728
    :cond_18
    :try_start_b
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 729
    .line 730
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 731
    .line 732
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 733
    .line 734
    .line 735
    move-result v2

    .line 736
    if-eqz v2, :cond_19

    .line 737
    .line 738
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->resetWifiApProvisioningDB()V

    .line 739
    .line 740
    .line 741
    :cond_19
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 742
    .line 743
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    if-eqz v2, :cond_1a

    .line 748
    .line 749
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 750
    .line 751
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 752
    .line 753
    invoke-virtual {v2, v4, v6, v10}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 754
    .line 755
    .line 756
    :cond_1a
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 757
    .line 758
    .line 759
    move-result v2

    .line 760
    if-eqz v2, :cond_1b

    .line 761
    .line 762
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 763
    .line 764
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 765
    .line 766
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    if-eqz v2, :cond_1b

    .line 771
    .line 772
    invoke-virtual {v1, v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setIndoorChannelsToDriver(Z)V

    .line 773
    .line 774
    .line 775
    :cond_1b
    iget-boolean v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isHotspotLogRunning:Z

    .line 776
    .line 777
    if-eqz v2, :cond_1c

    .line 778
    .line 779
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->stopHotspotDebugLog()V

    .line 780
    .line 781
    .line 782
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 783
    .line 784
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 785
    .line 786
    const-string v5, "Hotspot disable process initiated"

    .line 787
    .line 788
    invoke-static {v4, v0, v5, v7}, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->prepareHotspotLabLog(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getProvisionSuccess()I

    .line 799
    .line 800
    .line 801
    move-result v0

    .line 802
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .line 811
    .line 812
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    invoke-static {v13, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 817
    .line 818
    .line 819
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTetheringManager()Landroid/net/TetheringManager;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-virtual {v0, v10}, Landroid/net/TetheringManager;->stopTethering(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 824
    .line 825
    .line 826
    goto :goto_9

    .line 827
    :goto_a
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 828
    .line 829
    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 847
    .line 848
    .line 849
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 850
    .line 851
    .line 852
    return v10

    .line 853
    :goto_b
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 854
    .line 855
    .line 856
    throw v0
.end method

.method public setWifiApGuestModeEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApGuestModeEnabled(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setWifiApGuestModeIsolationEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApGuestModeIsolationEnabled(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setWifiApGuestPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApGuestPassword(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setWifiApIsolate(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setWifiApMacAclEnable(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->setWifiApMacAclEnable(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "SemWifiApMacAclList  setWifiApMacAclEnable: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setWifiApMacAclMode(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->setWifiApMacAclMode(I)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "SemWifiApMacAclList  setWifiApMacAclMode: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setWifiApMaxClient(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "SET_MAXCLIENT "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setWifiApMaxClientToFramework(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApMaxClientToFramework(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setWifiApWarningActivityRunning(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setWifiApWarningActivityRunning(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setWifiApWpsPbc(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setWifiSettingsForegroundState(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "android"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v2, "setWifiSettingsForegroundState clientPkgName : "

    .line 26
    .line 27
    const-string v3, " "

    .line 28
    .line 29
    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "SemWifiApServiceImpl"

    .line 34
    .line 35
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const-string v0, "check Accesspermission for "

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setWifiSettingsForegroundState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public setWifiSharingEnabled(Z)Z
    .locals 10

    .line 1
    const-string v0, "Wi-Fi Sharing mode : "

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "SemWifiApServiceImpl"

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p0, "Failed: Does not support Wi-Fi Sharing."

    .line 16
    .line 17
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    const-string v1, "MHWS"

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const/4 v6, 0x1

    .line 28
    const-string v7, "wifi_ap_wifi_sharing"

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 33
    .line 34
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v2, v8, v7, v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 37
    .line 38
    .line 39
    const-string v2, "ON"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 45
    .line 46
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v8, v9, v7, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 49
    .line 50
    .line 51
    const-string v2, "OFF"

    .line 52
    .line 53
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, " wifiApState: "

    .line 62
    .line 63
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiApState:I

    .line 67
    .line 68
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Landroid/content/Intent;

    .line 82
    .line 83
    const-string v0, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    return v6

    .line 97
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public setWifiSharingMenuState(Z)Z
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "android"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v2, "SemWifiApServiceImpl"

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string v0, "check network stack for "

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkStackPermission()V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    const-string p0, " Wi-FI sharing not supported B2B"

    .line 52
    .line 53
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    xor-int/lit8 v3, p1, 0x1

    .line 64
    .line 65
    const-string v4, "WIFI_AP_WIFI_SHARING_B2B_DISABLE"

    .line 66
    .line 67
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    const-string v0, "wifi_saved_state"

    .line 71
    .line 72
    const-string v3, "ap"

    .line 73
    .line 74
    const-string v4, "WIFI_AP_SMART_TETHERING_B2B_RESTORE"

    .line 75
    .line 76
    const-string v5, "WIFI_AP_WIFI_SHARING_B2B_RESTORE"

    .line 77
    .line 78
    const/16 v6, 0xa

    .line 79
    .line 80
    const/4 v7, 0x1

    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingEnabled()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v8, "wifi_ap_wifi_sharing"

    .line 96
    .line 97
    invoke-static {p1, v8, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabled()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    const-string p1, " Disabling WI-Fi because of WIFI_AP_WIFI_SHARING_B2B_DISABLE"

    .line 124
    .line 125
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 129
    .line 130
    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(ZLjava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p1, v0, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    .line 141
    .line 142
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string v0, "wifi_ap_smart_tethering_settings"

    .line 149
    .line 150
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-ne p1, v7, :cond_6

    .line 155
    .line 156
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p1, v4, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    .line 173
    .line 174
    const-string p1, " Disabling Autohotspot because of setWifiSharingMenuState"

    .line 175
    .line 176
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    const-string v0, "wifi_ap_smart_tethering_settings_with_family"

    .line 186
    .line 187
    invoke-static {p1, v0, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-ne p1, v7, :cond_6

    .line 192
    .line 193
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    const-string v3, "WIFI_AP_SMART_TETHERING_FAMILY_B2B_RESTORE"

    .line 200
    .line 201
    invoke-static {p1, v3, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    .line 212
    .line 213
    const-string p1, " Disabling family sharing because of setWifiSharingMenuState"

    .line 214
    .line 215
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-ne p1, v7, :cond_5

    .line 230
    .line 231
    const-string p1, " restoring WI-Fi Share state because of WIFI_AP_WIFI_SHARING_B2B_DISABLE"

    .line 232
    .line 233
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 237
    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-static {p1, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {p1, v0, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-ne p1, v7, :cond_5

    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-nez p1, :cond_5

    .line 262
    .line 263
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 264
    .line 265
    invoke-virtual {p1, v7, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(ZLjava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 269
    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {p1, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-ne p1, v7, :cond_6

    .line 279
    .line 280
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-static {p1, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    .line 288
    .line 289
    :cond_6
    :goto_0
    new-instance p1, Landroid/content/Intent;

    .line 290
    .line 291
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 292
    .line 293
    .line 294
    const-string v0, "com.samsung.android.server.wifi.softap.wifisharing.blocked.changed"

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    .line 298
    .line 299
    const-string v0, "com.android.settings"

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 305
    .line 306
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    .line 308
    .line 309
    return v7
.end method

.method public startMcfClientMHSDiscovery(Z)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9
    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0
.end method

.method public startMcfMHSAdvertisement(Z)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9
    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0
.end method

.method public supportWifiAp5GBasedOnCountry()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 11
    .line 12
    const-string v3, "vendor.wifiap.5gbandcountry"

    .line 13
    .line 14
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    const-string p0, "SemWifiApServiceImpl"

    .line 21
    .line 22
    const-string v0, "MHS vendor.wifiap.5gbandcountry is true"

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string v4, "wifi_ap_chip_support5g_baseon_country"

    .line 33
    .line 34
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string v5, "wifi_ap_chip_support5g"

    .line 43
    .line 44
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const-string v4, "na"

    .line 51
    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isRegionFor5GCountry()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    return v1

    .line 78
    :cond_2
    :goto_0
    return v2
.end method

.method public supportWifiAp6GBasedOnCountry()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 11
    .line 12
    const-string v3, "vendor.wifiap.6gbandcountry"

    .line 13
    .line 14
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    const-string p0, "SemWifiApServiceImpl"

    .line 21
    .line 22
    const-string v0, "MHS vendor.wifiap.6gbandcountry is true"

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportMobileAp6G()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isRegionFor6GCountry()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    return v1
.end method

.method public supportWifiSharing()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public supportWifiSharingLite()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public unRegisterWifiApDataUsageCallback(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mHotspotMobileDataLimit:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 18
    .line 19
    const-string v1, "unRegisterWifiApDataUsageCallback uid=%"

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-long v1, v1

    .line 30
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda7;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public unregisterClientDataUsageCallback(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda7;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public unregisterClientListDataUsageCallback(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda7;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public unregisterWifiApSmartCallback(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 13
    .line 14
    const-string v1, "unregisterWifiApSmartCallback uid=%"

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-long v1, v1

    .line 25
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda7;

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public updateHostapdMacList(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->backUpClientDataUsageSettingsInfo()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public wifiApBleClientRole(Z)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->setWifiApSmartClient(Z)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public wifiApBleD2DClientRole(Z)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->wifiApBleD2DClientRole(Z)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public wifiApBleD2DMhsRole(Z)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->wifiApBleD2DMhsRole(Z)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public wifiApBleMhsRole(Z)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->setWifiApSmartMHS(Z)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public wifiApDisassocSta(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->setAccessPointDisassocSta(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->disassociateSTA(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->restoreClientDataUsageSettingsInfo(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public wifiApRestoreDailyHotspotDataLimit(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mSemWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->restoreDailyHotspotDataLimit(J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
