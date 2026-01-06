.class public Lcom/samsung/android/server/wifi/SemWifiServiceImpl;
.super Lcom/samsung/android/server/wifi/SemBaseWifiService;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiServiceImpl$WifiStateLoggingAdapter;
    }
.end annotation


# static fields
.field private static final PRODUCT_DEV:Z

.field private static final TAG:Ljava/lang/String; = "SemWifiService"


# instance fields
.field private final mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

.field private final mAutoTestModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

.field private final mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

.field private final mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

.field private final mContext:Landroid/content/Context;

.field private mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

.field private final mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mIsBootComplete:Z

.field private mIsNoSimState:Z

.field private final mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

.field private final mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field private mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

.field private mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

.field private final mSemWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

.field private final mSemWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

.field private final mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

.field private final mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

.field private final mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

.field private final mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

.field private final mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private final mWifiAutojoinSettingsObserver:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

.field private final mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

.field private mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

.field private mWifiDeveloperModeEnabled:Z

.field private final mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

.field private final mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

.field private mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

.field private final mWifiHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private mWifiIssueReporter:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNetworkStateRepeater:Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;

.field private final mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

.field private final mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

.field private mWifiStateLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field private final mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

.field private final mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;


# direct methods
.method public static synthetic $r8$lambda$0e5_wtfQ09Fz-A_pKQwR5vSwY2w(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$set5GmmWaveSarBackoffEnabled$8(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$2gjh38JxZKH0IKbGyhtBRqNtyRI(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/util/List;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$getQoSScores$14(Ljava/util/List;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$5x14gXW-Yxz6DHBVle8rvT5XU-A(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$sendReassociationRequestFrame$28(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$6oKD8sShuSVIG2Wb7lc6R3udnls(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$checkAndStartWifi$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$9khUHfC6xZPHERWeHrGKaqUw_q4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setFccChannelBackoffEnabled$5(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$FSpei4U99UEGfcE5RVF3nZ3Chgo(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$checkAndStartWifi$0(Ljava/lang/String;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$FpelGbaIGLCZy7UFsGRDAswFmOs(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setOptimizerForceControlMode$29(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$KTeZ70zk1buG1VK16gKQndEkWHg(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setFccChannelBackoffEnabled$7(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$L2UOcjpdvTZaP8q5_SCN6kaXT5o(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$handleBootCompleted$3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$L3phl_gzY8tci8Tn6B_tWAvNYbA(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$sendReassociationFrequencyRequestFrame$34(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$LWOx5mxoDKUDR3oL2NzJk40Mqkk(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$getAutoShareDump$16()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$O-SfW_9yVEfpdj7Wqa9yDaZ2hEE(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$sendVendorSpecificActionFrame$27(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$OYvO8FhdquGxuxvrhFGRwlu-TAE(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setTdlsEnabled$33(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$P2DZu87xPq8GM_u5EuLbMPEq3q0(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setNCHOModeEnabled$23(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$R8t7XVCDL87Ju8lgsyL74SVr80s(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$getProfileShareDump$15()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$SFwiJQpPpNFZRP-hyK0PjZdjOOo(ILcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setWifiUwbCoexEnabled$30(IZ)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$XamZeVkEnP82mSCjH1cbtY5j7-w(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleLazyBootCompleted()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$YJwwBXWZWM8b-7cEz7Mi86U7Iuw(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$getDiagnosisResults$13()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$YkauupnyHMvPKipZ5q_cjziJ4fI(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamScanPeriod$20(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$aEdreDaRC5ETwfqJyA23c91Jb5U(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setFccChannelBackoffEnabled$6(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$bKecy0hyuYzvLfMQein0plNfvwI(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$addOrUpdateNetwork$9(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$gIE7S4yTGSYH9Vrnc24zKre0TZg(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;[Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamScanChannels$25([Ljava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$gWS5shf0IUBrRyxD-UIO-s7lVlU(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setWesModeEnabled$26(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$hKSy724CVNT53hjRYiQHZU6FKG4(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$checkAppForWiFiOffloading$31(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$j-ASlrZUWGJ4aREMY0iD8osJw2g(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamBand$21(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$jWznGLnhPpcO2DL0L0_wx1x6mSA(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$removeNetwork$10(Ljava/lang/String;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$k2a06dNY9JGjnbznwl3SRB8Hf8c(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamScanEnabled$24(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$kNG0dSxTPe_pbm3ucISTEuxT2m8(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$getWifiApStaListDetail$4()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$kyd8nPvGAIelsxSj02TmXhLiLys(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$handleBootCompleted$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$mzB6TELR1Bw1Jp-JAF2O2m4y7Vc(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$runAutoShareForCurrent$17(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$r0c5Hu6-Au5H8KIcQKXOU-P30pE(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamDelta$19(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$r0fjo-sAxm0zxOw1OgaUmIwBRwY(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$notifyConnect$32(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$r5bgMg51DuqLTwyUqrw5Wso_-EU(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamTrigger$18(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$vBjS4fZLvCdvCIwmDazqSlNtIqA(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$factoryReset$11()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$wpIr9juluaEGkq7_uTJ_KOPHyaM()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$resetDeveloperOptionsSettings$12()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ySqZJi7qQUGXDqSl5HEplQvTHh8(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setCountryRev$22(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNoSimState(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIsNoSimState:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileShare(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnectivityMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNoSimState(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIsNoSimState:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShutDown(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleShutDown()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misAirplaneModeEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isAirplaneModeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mreport(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->report(ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "eng"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "userdebug"

    .line 13
    .line 14
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string v0, "ro.product_ship"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :cond_1
    :goto_0
    sput-boolean v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->PRODUCT_DEV:Z

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/android/internal/util/AsyncChannel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemBaseWifiService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIsNoSimState:Z

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDeveloperModeEnabled:Z

    .line 9
    .line 10
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$3;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 16
    .line 17
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;

    .line 18
    .line 19
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiHandlerThread()Landroid/os/HandlerThread;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getClientModeManager()Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiDriverCommandHelper()Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 69
    .line 70
    const-string v1, "SemWifiService"

    .line 71
    .line 72
    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getAbTestManager()Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiAutojoinSettingsObserver()Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiAutojoinSettingsObserver:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getClock()Lcom/samsung/android/server/wifi/util/SemClock;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiBackOffController()Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSilentRoamingManager()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiUsageMonitor()Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiRouterInfoCollector()Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getCountryCodeProperty()Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getUserConnectionSaLogging()Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 155
    .line 156
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiEasySetupManager()Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 161
    .line 162
    new-instance v2, Ljava/util/HashMap;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    .line 168
    .line 169
    sget-boolean v3, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->PRODUCT_DEV:Z

    .line 170
    .line 171
    if-eqz v3, :cond_0

    .line 172
    .line 173
    const/4 v3, 0x3

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getAutoTestHelper()Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    const/4 v3, 0x6

    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    const/4 v1, 0x7

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemHalTestManager()Lcom/samsung/android/server/wifi/halclient/SemHalTestManager;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    :cond_0
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->makeSemWifiSwitchForIndividualAppsService(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 210
    .line 211
    invoke-static {p1, p2, p3, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->makeWifiConnectivityMonitor(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 216
    .line 217
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getMobileWipsFrameworkService()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 218
    .line 219
    .line 220
    move-result-object p3

    .line 221
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 222
    .line 223
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiOptimizer()Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 224
    .line 225
    .line 226
    move-result-object p3

    .line 227
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 228
    .line 229
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficControl()Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 230
    .line 231
    .line 232
    move-result-object p3

    .line 233
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCoexManager()Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 236
    .line 237
    .line 238
    move-result-object p3

    .line 239
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 240
    .line 241
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiUsabilityStatsMonitor()Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    .line 242
    .line 243
    .line 244
    move-result-object p3

    .line 245
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 248
    .line 249
    .line 250
    move-result p3

    .line 251
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enableVerboseLoggingInternal(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectivityLogger()Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    .line 259
    .line 260
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiControlHistoryManager()Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 261
    .line 262
    .line 263
    move-result-object p3

    .line 264
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 265
    .line 266
    new-instance p3, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;

    .line 267
    .line 268
    invoke-direct {p3, p1}, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;-><init>(Landroid/content/Context;)V

    .line 269
    .line 270
    .line 271
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiNetworkStateRepeater:Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;

    .line 272
    .line 273
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiResourceManager()Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 278
    .line 279
    return-void
.end method

.method private checkNetworkSettingsPermission(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.NETWORK_SETTINGS"

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method private enableVerboseLoggingInternal(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setVerboseLoggingState(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->enableVerboseLogging(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->enableVerboseLogging(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enableVerboseLogging(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->enableVerboseLogging(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->enableVerboseLogging(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->enableVerboseLogging(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->enableVerboseLogging(I)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->enableVerboseLogging(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

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

.method private enforceFactoryTestPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "com.samsung.permission.WIFI_FACTORY_TEST"

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

.method private enforceLocationPermissionInManifest(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 15
    .line 16
    invoke-virtual {p0, v0, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    .line 25
    const-string v0, "UID "

    .line 26
    .line 27
    const-string v1, " does not have Location permission"

    .line 28
    .line 29
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceNetworkSettingsPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

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

.method private enforceWifiDiagnosticsProviderPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "com.samsung.permission.WIFI_DIAGNOSTICS_PROVIDER"

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

.method private handleLazyBootCompleted()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSepStandardModel(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiGuiderManagementService()Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->checkAndStart()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getDriverFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->checkChipsetCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getB2BPolicyManager()Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLeakyApDetector()Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 84
    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->handleLazyBootCompleted()V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSwitchBoardService()Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSwitchBoardService()Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->handleLazyBootCompleted()V

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->handleLazyBootCompleted()V

    .line 122
    .line 123
    .line 124
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScpmMonitor()Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 131
    .line 132
    const/4 v2, 0x0

    .line 133
    if-eqz v1, :cond_6

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->checkAndStart()V

    .line 136
    .line 137
    .line 138
    move v1, v2

    .line 139
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getScpmCount()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-ge v1, v3, :cond_4

    .line 150
    .line 151
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 152
    .line 153
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 154
    .line 155
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getScpmExecutorList()[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    aget-object v4, v4, v1

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 172
    .line 173
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 183
    .line 184
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLnaControl()Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getScpmExecutor()Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 198
    .line 199
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getAbTestScpmController()Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->getScpmExecutor()Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    .line 213
    .line 214
    const/4 v3, 0x4

    .line 215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 220
    .line 221
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    if-eqz v1, :cond_5

    .line 231
    .line 232
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateScpmState()V

    .line 239
    .line 240
    .line 241
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 242
    .line 243
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 244
    .line 245
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiEnhancedFeatureController()Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->getmWifiScpmExecutor()Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 254
    .line 255
    .line 256
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 257
    .line 258
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedContinuity()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_7

    .line 263
    .line 264
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 265
    .line 266
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getContinuityService()Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 271
    .line 272
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isSupportEasySetup()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_8

    .line 277
    .line 278
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->checkAndStart()V

    .line 281
    .line 282
    .line 283
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->needToStartSilentRoaming()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    const-string v3, "sem_wifi_switch_to_better_wifi_supported"

    .line 288
    .line 289
    const/4 v4, 0x1

    .line 290
    const/4 v5, -0x1

    .line 291
    if-eqz v1, :cond_b

    .line 292
    .line 293
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 294
    .line 295
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 296
    .line 297
    invoke-virtual {v1, v6, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 298
    .line 299
    .line 300
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 301
    .line 302
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 303
    .line 304
    const-string v6, "sem_wifi_switch_to_better_wifi_enabled"

    .line 305
    .line 306
    invoke-virtual {v1, v3, v6, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-ne v1, v5, :cond_a

    .line 311
    .line 312
    const-string v1, "ro.csc.sales_code"

    .line 313
    .line 314
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    const-string v3, "VZW"

    .line 319
    .line 320
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_9

    .line 325
    .line 326
    const-string v1, "SemWifiService"

    .line 327
    .line 328
    const-string v3, "Set SilentRoamingManager to disable. Carrier is VZW"

    .line 329
    .line 330
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 334
    .line 335
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 336
    .line 337
    invoke-virtual {v1, v3, v6, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 338
    .line 339
    .line 340
    goto :goto_1

    .line 341
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 342
    .line 343
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 344
    .line 345
    invoke-virtual {v1, v3, v6, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 346
    .line 347
    .line 348
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 349
    .line 350
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->checkAndStart()V

    .line 351
    .line 352
    .line 353
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    .line 354
    .line 355
    const/4 v3, 0x5

    .line 356
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 361
    .line 362
    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 366
    .line 367
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 368
    .line 369
    const-string v6, "sem_wifi_switch_to_better_wifi_on_screen_enabled"

    .line 370
    .line 371
    invoke-virtual {v1, v3, v6, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-ne v1, v5, :cond_c

    .line 376
    .line 377
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 378
    .line 379
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 380
    .line 381
    invoke-virtual {v1, v3, v6, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 382
    .line 383
    .line 384
    goto :goto_2

    .line 385
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 386
    .line 387
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 388
    .line 389
    invoke-virtual {v1, v6, v3, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 390
    .line 391
    .line 392
    :cond_c
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 393
    .line 394
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 399
    .line 400
    .line 401
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 402
    .line 403
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 404
    .line 405
    const-string v2, "wifi_switch_to_mobile_data_ai_mode_2"

    .line 406
    .line 407
    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-ne v0, v5, :cond_d

    .line 412
    .line 413
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 414
    .line 415
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIlaConfiguration()I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-lez v0, :cond_d

    .line 420
    .line 421
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 422
    .line 423
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 424
    .line 425
    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 426
    .line 427
    .line 428
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 429
    .line 430
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 431
    .line 432
    const-string v2, "wifi_handover_ai_mode"

    .line 433
    .line 434
    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-ne v0, v5, :cond_e

    .line 439
    .line 440
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 441
    .line 442
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-lez v0, :cond_e

    .line 447
    .line 448
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 449
    .line 450
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 451
    .line 452
    invoke-virtual {v0, p0, v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 453
    .line 454
    .line 455
    :cond_e
    return-void
.end method

.method private handleShutDown()V
    .locals 1

    .line 1
    const-string p0, "SemWifiService"

    .line 2
    .line 3
    const-string v0, "shutdown"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private isAirplaneModeEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "airplane_mode_on"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    return v2
.end method

.method private isSupportEasySetup()Z
    .locals 3

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
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 9
    .line 10
    .line 11
    const v2, 0xc3b4

    .line 12
    .line 13
    .line 14
    if-lt v0, v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportEasySetup()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    return v1
.end method

.method private isSupportSilentRoaming()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportSilentRoaming()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private synthetic lambda$addOrUpdateNetwork$9(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$checkAndStartWifi$0(Ljava/lang/String;ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0xc9

    .line 6
    .line 7
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataFromBigDataParamsOfONOF(ZLjava/lang/String;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiStateLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p2, p1, p3}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;->processBigdataLogging(ZLjava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method private synthetic lambda$checkAndStartWifi$1()V
    .locals 3

    .line 1
    const-string v0, "SemWifiService"

    .line 2
    .line 3
    const-string v1, "SemWifiService starting up"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->initialize()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->initialize()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->initialize()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->loadFromDb()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->registerForBroadcasts()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemRilUtil;->isWifiOnly(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getAutoWifiController()Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiStateLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 76
    .line 77
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$WifiStateLoggingAdapter;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$WifiStateLoggingAdapter;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiStateLoggingHandler(Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;)Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiStateLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;

    .line 88
    .line 89
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 90
    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiControlMonitor()Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 100
    .line 101
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda18;

    .line 102
    .line 103
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->registerListener(Lcom/samsung/android/server/wifi/db/WifiControlListener;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 116
    .line 117
    const/16 v1, 0x41

    .line 118
    .line 119
    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method private synthetic lambda$checkAppForWiFiOffloading$31(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiOffloadController()Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->checkAppForOffloading(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$factoryReset$11()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->clearAllNetworks()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;->removeAllHistories()Z

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->factoryReset()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private synthetic lambda$getAutoShareDump$16()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->getSharedReport()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getDiagnosisResults$13()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->getCachedDiagnosisResults()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getProfileShareDump$15()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->dump()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getQoSScores$14(Ljava/util/List;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getWifiApStaListDetail$4()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApStaListDetail()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$handleBootCompleted$2()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "wips"

    .line 6
    .line 7
    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->updateQoSData(Ljava/lang/String;ZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$handleBootCompleted$3()V
    .locals 3

    .line 1
    const-string v0, "SemWifiService"

    .line 2
    .line 3
    const-string v1, "Handle boot completed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->handleBootCompleted()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 14
    .line 15
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda24;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda24;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->handleBootCompleted(Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->loadSavedNetworks()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->onBootPhase()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->onBootCompleted()V

    .line 36
    .line 37
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "android.intent.action.SERVICE_STATE"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    .line 67
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->checkAndStart()V

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSepStandardModel(Landroid/content/Context;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedMcfService()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 108
    .line 109
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiProfileAndQoSProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->checkAndStart()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    .line 124
    .line 125
    const/4 v1, 0x2

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 136
    .line 137
    if-eqz v0, :cond_1

    .line 138
    .line 139
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;

    .line 140
    .line 141
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->registerOpenNetworkQosCallback(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;)V

    .line 145
    .line 146
    .line 147
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 148
    .line 149
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda24;

    .line 150
    .line 151
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda24;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->registerWipsDetectionsChangedCallback(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;)V

    .line 155
    .line 156
    .line 157
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->initialize()V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->checkAndStart()V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->checkAndStart()V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->onBootCompleted()V

    .line 175
    .line 176
    .line 177
    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIsBootComplete:Z

    .line 179
    .line 180
    return-void
.end method

.method private synthetic lambda$notifyConnect$32(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    const-string v0, "notifyConnect: clearDisableReason for network = "

    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "SemWifiService"

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->clearDisableReason(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private synthetic lambda$removeNetwork$10(Ljava/lang/String;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->removeNetwork(Ljava/lang/String;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic lambda$resetDeveloperOptionsSettings$12()V
    .locals 0

    .line 1
    return-void
.end method

.method private synthetic lambda$runAutoShareForCurrent$17(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->runForCurrent(Ljava/util/Set;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$sendReassociationFrequencyRequestFrame$34(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->sendReassociationFrequencyRequestFrame(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$sendReassociationRequestFrame$28(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->sendReassociationRequestFrame(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$sendVendorSpecificActionFrame$27(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemClientModeManager;->sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$set5GmmWaveSarBackoffEnabled$8(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getInterfaces()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 24
    .line 25
    invoke-virtual {v2, v1, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->forceEnable5GmmWaveBackoff(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private synthetic lambda$setCountryRev$22(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setCountryRev(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$setFccChannelBackoffEnabled$5(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private synthetic lambda$setFccChannelBackoffEnabled$6(ZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->forceEnableFccChannelBackoff(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$setFccChannelBackoffEnabled$7(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getInterfaces()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda28;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda28;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda29;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private synthetic lambda$setNCHOModeEnabled$23(Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setNCHOModeEnabled(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setOptimizerForceControlMode$29(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->setOptimizerForceControlMode(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setRoamBand$21(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamBand(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setRoamDelta$19(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamDelta(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setRoamScanChannels$25([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamScanChannels([Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setRoamScanEnabled$24(Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamScanEnabled(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setRoamScanPeriod$20(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamScanPeriod(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setRoamTrigger$18(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamTrigger(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setTdlsEnabled$33(Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setTdlsEnabled(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setWesModeEnabled$26(Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setWesModeEnabled(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setWifiUwbCoexEnabled$30(IZ)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiUwbCoexEnabled(IZ)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private needToStartSilentRoaming()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isSupportSilentRoaming()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "SemWifiService"

    .line 8
    .line 9
    const-string v0, "Do not start SilentRoamingManager. WifiScpmPolicy"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method private registerForBroadcasts()V
    .locals 6

    .line 1
    new-instance v2, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiNetworkStateRepeater:Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;->start()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$5;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Landroid/content/IntentFilter;

    .line 57
    .line 58
    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 59
    .line 60
    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private report(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCaptivePortalMode(ILandroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method


# virtual methods
.method public addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "addOrUpdateNetwork uid = "

    .line 13
    .line 14
    const-string v3, " configKey "

    .line 15
    .line 16
    invoke-static {v2, v1, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 21
    .line 22
    const-string v4, "SemWifiService"

    .line 23
    .line 24
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 34
    .line 35
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda41;

    .line 36
    .line 37
    const/4 v7, 0x3

    .line 38
    invoke-direct {v6, p0, p1, v1, v7}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda41;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 47
    .line 48
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    sub-long/2addr v5, v2

    .line 55
    invoke-static {v5, v6}, Ljava/lang/StrictMath;->toIntExact(J)I

    .line 56
    .line 57
    .line 58
    move-result v2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    const/4 v2, -0x1

    .line 61
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 62
    .line 63
    new-instance v3, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 64
    .line 65
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const-string v5, "add_or_update_network_duration_ms"

    .line 77
    .line 78
    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 79
    .line 80
    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v3, "Adding or updating network completed in "

    .line 84
    .line 85
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, " ms."

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    if-nez v1, :cond_1

    .line 104
    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v1, "failed to add or update network "

    .line 108
    .line 109
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return v0

    .line 125
    :cond_1
    const/4 p0, 0x1

    .line 126
    return p0
.end method

.method public addOrUpdateWifiControlHistory(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;->addOrUpdateHistory(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public allowAutojoinPasspoint(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->allowAutojoinPasspoint(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public autohotspotWifiScanConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->autohotspotWifiScanConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public blockFccChannelBackoff(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->blockFccChannelBackoff(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public canAutoHotspotBeEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->canAutoHotspotBeEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public canSmartMHSLocked()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->canSmartMHSLocked()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public checkAndGetUnauthorizedRro()Ljava/util/List;
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiRroChecker()Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkAndGetUnauthorizedRro()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public checkAndGetUnauthorizedRroWithoutToast()Ljava/util/List;
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiRroChecker()Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkAndGetUnauthorizedRroWithoutToast()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public checkAndStartWifi()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda8;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const-string v1, "setup default country code "

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "SemWifiService"

    .line 33
    .line 34
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setDefaultCountryCode(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public checkAppForWiFiOffloading(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda49;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda49;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    const-wide/16 p0, 0x3e8

    .line 19
    .line 20
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public checkUnauthorizedRro()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiRroChecker()Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkUnauthorizedRro()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public checkUnauthorizedRroWithoutToast()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiRroChecker()Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkUnauthorizedRroWithoutToast()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public clearAutoHotspotLists()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->clearAutoHotspotLists()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public disableRandomMac()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->disableRandomMac()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public disconnectApBlockAutojoin(Z)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.DUMP"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p1, "Permission Denial: can\'t dump WifiService from from pid="

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", uid="

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->dump(Ljava/io/PrintWriter;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const-string v0, "========SWITCH FOR INDIVIDUAL APPS========"

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->dump()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v0, ""

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 92
    .line 93
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemClientModeManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 97
    .line 98
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->dump(Ljava/io/PrintWriter;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCarrierInfoManager()Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->dump(Ljava/io/PrintWriter;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/util/ScanPool;->dump(Ljava/io/PrintWriter;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 120
    .line 121
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->dump(Ljava/io/PrintWriter;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 125
    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->dump(Ljava/io/PrintWriter;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 132
    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 139
    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 153
    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 160
    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 164
    .line 165
    .line 166
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 167
    .line 168
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 172
    .line 173
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->dump(Ljava/io/PrintWriter;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiAutojoinSettingsObserver:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

    .line 177
    .line 178
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->dump(Ljava/io/PrintWriter;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 182
    .line 183
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 187
    .line 188
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mUserConnectionSaLogging:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 192
    .line 193
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->dump(Ljava/io/PrintWriter;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_9

    .line 212
    .line 213
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->dump(Ljava/io/PrintWriter;)V

    .line 220
    .line 221
    .line 222
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCtlFeatureMediator()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_a

    .line 229
    .line 230
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCtlFeatureMediator()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->dump(Ljava/io/PrintWriter;)V

    .line 237
    .line 238
    .line 239
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMultiLinkControl()Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    if-eqz v0, :cond_b

    .line 246
    .line 247
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMultiLinkControl()Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->dump(Ljava/io/PrintWriter;)V

    .line 254
    .line 255
    .line 256
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLnaControl()Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->dump(Ljava/io/PrintWriter;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentTrainingManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->dump(Ljava/io/PrintWriter;)V

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->dump(Ljava/io/PrintWriter;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 293
    .line 294
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 299
    .line 300
    .line 301
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectivityLogger()Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->dump(Ljava/io/PrintWriter;)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSupportedFeatureLogger()Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->dump(Ljava/io/PrintWriter;)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    if-eqz v0, :cond_c

    .line 326
    .line 327
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->getLogger()Lcom/samsung/android/server/wifi/connection/Logger;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/connection/Logger;->dump(Ljava/io/PrintWriter;)V

    .line 338
    .line 339
    .line 340
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 341
    .line 342
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 346
    .line 347
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeController()Lcom/samsung/android/server/wifi/SemApeController;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    if-eqz v0, :cond_d

    .line 352
    .line 353
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeController()Lcom/samsung/android/server/wifi/SemApeController;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemApeController;->dump(Ljava/io/PrintWriter;)V

    .line 360
    .line 361
    .line 362
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeService()Lcom/samsung/android/server/wifi/SemApeService;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    if-eqz v0, :cond_e

    .line 369
    .line 370
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 371
    .line 372
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeService()Lcom/samsung/android/server/wifi/SemApeService;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemApeService;->dump(Ljava/io/PrintWriter;)V

    .line 377
    .line 378
    .line 379
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 380
    .line 381
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    if-eqz v0, :cond_f

    .line 386
    .line 387
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->dump(Ljava/io/PrintWriter;)V

    .line 394
    .line 395
    .line 396
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 397
    .line 398
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficControl()Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->dump(Ljava/io/PrintWriter;)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 406
    .line 407
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemQboxController;->dump(Ljava/io/PrintWriter;)V

    .line 412
    .line 413
    .line 414
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 415
    .line 416
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    return-void
.end method

.method public enableHotspotTsfInfo(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enableHotspotTsfInfo(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableTxPowerLogging(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->enableTxPowerLogging(ZI)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method enableWifiDeveloperModeInternal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDeveloperModeEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public externalTwtInterface(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->externalTwtInterface(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public factoryReset()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda8;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public getAbTestConfigs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->getAbTestConfigurations()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getAbTestConfiguredModule(Ljava/lang/String;)Lcom/samsung/android/wifi/SemAbTestConfiguration;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->getAbTestConfiguration(Ljava/lang/String;)Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getAdvancedAutohotspotConnectSettings()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getAdvancedAutohotspotConnectSettings()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getAdvancedAutohotspotLCDSettings()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getAdvancedAutohotspotLCDSettings()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getAntInfo()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getAntInfo()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public getAutoShareDump()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 10
    .line 11
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda3;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    return-object v1
.end method

.method public getAutoWifiDefaultValue()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getAutoWifiDefaultValue()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public getAutoWifiDump()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getDebugString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string p0, "UNSUPPORTED"

    .line 14
    .line 15
    return-object p0
.end method

.method public getCandidateNetworkScores()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getCandidateNetworkScores()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getChannelUtilization()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 15
    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public getChannelUtilizationExtended()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/util/Map;

    .line 27
    .line 28
    return-object p0
.end method

.method public getConfiguredNetworkLocations()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getNetworkLocations()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 14
    .line 15
    return-object p0
.end method

.method public getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda11;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->getDataBy(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string p0, ""

    .line 14
    .line 15
    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getCountryRev()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 26
    .line 27
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/String;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    return-object v1
.end method

.method public getCtlFeatureState()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCtlFeatureMediator()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->getFeatureState()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public getCurrentL2TransitionMode()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getCurrentL2TransitionMode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public getCurrentStateAndEnterTime()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getCurrentStateAndEnterTime()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getCurrentStatusMode()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentStatusMode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public getCurrentWifiRouterInfo()Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getCurrentWifiRouterInfo()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getDailyUsageInfo(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getDailyUsageInfo(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getDataConsumedValues()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getDataConsumedValues()[J

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getDcxoCalibrationData()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiDriverCommandHelper()Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getDcxoCalibrationData()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public getDiagnosisResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 9
    .line 10
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda3;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/util/List;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 26
    .line 27
    return-object p0
.end method

.method public getDynamicFeatureStatus()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiResourceManager:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getDynamicFeatureStatus()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string p0, ""

    .line 14
    .line 15
    return-object p0
.end method

.method public getEasySetupScanSettings()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->getEasySetupScanSettings()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "getEasySetupScanSettings size:"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SemWifiService"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public getFactoryMacAddress()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddressFromFile()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public getFrameburstInfo()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getFrameburstInfo()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public getHotspotAntMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getHotspotAntMode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getIccState()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getIccState()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getIndoorStatus()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getIndoorStatus()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getIsPacketCaptureSupportedByDriver()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getPacketCaptureManager()Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->getIsPacketCaptureSupportedByDriver()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getIssueDetectorDump(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->getRawData(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string p0, ""

    .line 14
    .line 15
    return-object p0
.end method

.method public getIwhState()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getIwhState()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public getL2TransitionLog()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getL2TransitionLog()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public getLastSelectedNetworkIdForSilentRoaming()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getLastSelectedNetworkIdForSilentRoaming()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getLastSelectedTimeStampForSilentRoaming()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getLastSelectedTimeStampForSilentRoaming()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMHSClientTrafficDetails()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getMHSConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getMHSMacFromInterface()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMHSMacFromInterface()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getMaxTdlsSession()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 16
    .line 17
    .line 18
    const/4 p0, -0x1

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public getMcfConnectedStatus(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMcfConnectedStatus(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getMcfScanDetail()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMcfScanDetail()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getMonthlyDataUsage()Ljava/util/List;
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMonthlyDataUsage()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getNRTTrafficbandwidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getNRTTrafficbandwidth()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getNetworkLastUpdatedTimeMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getNetworkLastUpdatedTimeMap()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getNetworkUsageInfo(Ljava/lang/String;)[J
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiUsageMonitor:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getNetworkUsageInfo(Ljava/lang/String;)[J

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getNumOfTdlsSession()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 15
    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public getNumOfWifiAnt()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public getNumberOfDataInEachRssiLevel()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getNumberOfDataInEachRssiLevel()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public getOptimizerForceControlMode()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda11;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public getOptimizerState()[I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->getOptimizerState()[I

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getPasspointConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getPasspointConfigurations()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public getProfileShareDump()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 10
    .line 11
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda3;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    return-object v1
.end method

.method public getProvisionSuccess()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getProvisionSuccess()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getPsmInfo()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getPsmInfo()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public getQoSScores(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 9
    .line 10
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/util/Map;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 26
    .line 27
    return-object p0
.end method

.method public getRoamBand()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 26
    .line 27
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const/16 v3, 0xc

    .line 33
    .line 34
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_0
    return v1
.end method

.method public getRoamDelta()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 26
    .line 27
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const/16 v3, 0xd

    .line 33
    .line 34
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_0
    return v1
.end method

.method public getRoamScanPeriod()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 26
    .line 27
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const/16 v3, 0xb

    .line 33
    .line 34
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_0
    return v1
.end method

.method public getRoamTrigger()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 26
    .line 27
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const/16 v3, 0x8

    .line 33
    .line 34
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_0
    return v1
.end method

.method public getRssi(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "not exist "

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " interface"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "SemWifiService"

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/16 p0, -0xc8

    .line 41
    .line 42
    return p0

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getRssi(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public getSamsungIwhCtrl()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->getSamsungIwhCtrl()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public getSamsungMloCtrl()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMultiLinkControl()Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->getSamsungMloCtrl()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public getServiceDetectionResult()[I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->getServiceDetectionResult()[I

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public getSilentRoamingDump(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getRawData(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string p0, ""

    .line 14
    .line 15
    return-object p0
.end method

.method public getSmartApConnectedStatus(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSmartApConnectedStatus(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSmartD2DClientConnectedStatus(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSmartMHSLockStatus()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSmartMHSLockStatus()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSoftApBands()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApBands()[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getSoftApFreq()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApFreq()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSoftApSecurityType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApSecurityType()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSoftApUpStreamNetworkType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApUpStreamNetworkType()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getStationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTWTParams()[I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getTWTParams()[I

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public getTasAverage()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getTasAverage()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public getTasMode()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getTasMode()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getTcpMonitorAllSocketHistory(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getTcpMonitorAllSocketHistory(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public getTcpMonitorDnsHistory(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getTcpMonitorDnsHistory(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public getTopHotspotClientsToday(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTopHotspotClientsToday(II)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTopHotspotClientsTodayAsString(II)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTopHotspotClientsTodayAsString(II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTxPower()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string p0, "SemWifiService"

    .line 17
    .line 18
    const-string v0, "Interface is not exist"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getTxPower(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public getValidState()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getValidState()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public getWcmEverQualityTested()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getEverQualityTested()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public getWifi7DisabledCountry()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/String;

    .line 23
    .line 24
    return-object p0
.end method

.method public getWifiApBleD2DScanDetail()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApBleD2DScanDetail()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiApBleScanDetail()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApBleScanDetail()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiApChannel()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApChannel()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiApConnectedStationCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApConnectedStationCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiApDailyDataLimit()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApDailyDataLimit()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getWifiApFreq()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApFreq()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiApGuestPassword()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApGuestPassword()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiApHostapdFreq()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApHostapdFreq()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiApHostapdSecurtiy()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApHostapdSecurtiy()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiApInterfaceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApInterfaceName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApInterfaceNames()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiApIsolate()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApIsolate()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiApLOHSState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApLOHSState()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiApMacAclMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMacAclMode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiApMaxClient()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiApMaxClientFromFramework()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClientFromFramework()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApStaList()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiApStaListDetail()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/List;

    .line 15
    .line 16
    return-object p0
.end method

.method public getWifiApState()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public getWifiApTodaysTotalDataUsage()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApTodaysTotalDataUsage()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getWifiApWarningActivityRunningState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApWarningActivityRunningState()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiApWpsPbc()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApWpsPbc()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getWifiCid()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getCidInfo()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public getWifiEnableHistory()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;->dumpHistories()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getWifiFirmwareVersion()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public getWifiIconVisibility()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getWifiIconVisibility()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public getWifiMACAddress()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiMACAddress()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiRouterInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfo(Ljava/lang/String;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getWifiRouterInfoBestEffortByBssid(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoBestEffortByBssid(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getWifiRouterInfoByBssid(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoByBssid(Ljava/lang/String;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getWifiRouterInfoPresentable(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoPresentable(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getWifiRouterInfoPresentableByBssid(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoPresentableByBssid(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getWifiStaInfo()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string p0, "SemWifiService"

    .line 17
    .line 18
    const-string v0, "Interface is not exist"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public getWifiSupportedFeatureSet()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getFeatureInfo()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public getWifiUsabilityStatsEntry(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->getWifiUsabilityStatsEntry(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getWifiVersions()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getAllVersions()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public handleBootCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda8;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIsBootComplete:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "SemWifiService"

    .line 6
    .line 7
    const-string p1, "Received shell command when boot is not complete!"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    return p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeWifiShellCommand(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    move-object v2, p0

    .line 33
    move-object v6, p4

    .line 34
    invoke-virtual/range {v1 .. v6}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public handleUserStop(I)V
    .locals 0

    .line 1
    const-string p0, "Handle user stop "

    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "SemWifiService"

    .line 8
    .line 9
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public handleUserSwitch(I)V
    .locals 2

    .line 1
    const-string v0, "Handle user switch "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiService"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "Handle mWifiApServiceImpl user switch "

    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->handleUserSwitch(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public handleUserUnlock(I)V
    .locals 0

    .line 1
    const-string p0, "Handle user unlock "

    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "SemWifiService"

    .line 8
    .line 9
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public hasConfiguredNetworkLocations(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->hasNetworkLocations(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public isAvailableAutoWifiScan()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAvailable()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

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

.method public isAvailableTdls()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public isCaptureRunning()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getPacketCaptureManager()Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->isCaptureRunning()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public isClientAcceptedWifiProfileSharing(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isClientAcceptedWifiProfileSharing(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isDataSaverEnabled()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isDataSaverEnabled()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isGripSensorMonitorEnabled()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->isGripSensorMonitorEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public isIndividualAppSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isIndividualAppSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isMCFClientAutohotspotSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isMCFClientAutohotspotSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isNCHOModeEnabled()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 25
    .line 26
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    const/4 v2, 0x6

    .line 32
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    return p0
.end method

.method public isNeededToShowWifiApDatalimitReachedDialog()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isNeededToShowWifiApDatalimitReachedDialog()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isOverAllMhsDataLimitReached()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isOverAllMhsDataLimitReached()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isOverAllMhsDataLimitSet()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isOverAllMhsDataLimitSet()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isP2pConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isP2pConnected()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isSAFamilySupportedBasedOnCountry()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isSAFamilySupportedBasedOnCountry()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isScanningEnabled()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->isScanningEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public isSoftAp6ENetwork()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isSoftAp6ENetwork()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isSoftap11axEnabled()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isSoftap11axEnabled()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isSupportedAutoWifi()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public isSupportedProfileRequest()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportWifiProfileRequest()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public isSupportedQoSProvider()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportSamsungNetworkScore()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public isSwitchToMobileDataDefaultOff()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isSwitchToMobileDataDefaultOff()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isThisSoftApFeatureSupported(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isThisSoftApFeatureSupported(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isUploadModeEnabled()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->isUploadModeEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public isUsingNonTerrestrialNetwork()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isUsingNonTerrestrialNetwork()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public isWesModeEnabled()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public isWiderBandwidthTdlsSupported()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/16 v2, 0x9

    .line 14
    .line 15
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public isWifiApEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabledWithDualBand()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWifiApGuestClient(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApGuestClient(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWifiApGuestModeEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApGuestModeEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWifiApGuestModeIsolationEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApGuestModeIsolationEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWifiApMacAclEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApMacAclEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWifiApWpa3Supported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApWpa3Supported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWifiDeveloperModeEnabled()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 5
    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDeveloperModeEnabled:Z

    .line 8
    .line 9
    return p0
.end method

.method public isWifiSharingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWifiSharingLiteSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWifiSharingSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public iwhIntendedDisconnection()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->iwhIntendedDisconnection()Z

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->launchWifiApWarningForMcfMHS(IIZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public linkQosQuery(JJJIJ)Z
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-wide v1, p1

    .line 11
    move-wide v3, p3

    .line 12
    move-wide v5, p5

    .line 13
    move/from16 v7, p7

    .line 14
    .line 15
    move-wide/from16 v8, p8

    .line 16
    .line 17
    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkQosQuery(JJJIJ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public logWifiAp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->logWifiAp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public notifyConnect(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->notifyConnect(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->updateFromNotifyconnect(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    const-string v0, ""

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->setConnectionAttemptInfo(IZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p2, -0x1

    .line 22
    if-ne p1, p2, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 26
    .line 27
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda50;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda50;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public notifyReachabilityLost()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->notifyReachabilityLost()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->notifyReachabilityLost()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->readWifiApMacAclList(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public registerAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->registerAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "observer must not be null"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public registerClientListDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerClientListDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p1, "argument should not be null"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public registerTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->registerTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeExcludedNetwork(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeExcludedNetwork(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public removeFactoryMacAddress()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->removeFactoryMacAddress()Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public removeNetwork(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "removeNetwork uid = "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, " configKey "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "SemWifiService"

    .line 39
    .line 40
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 50
    .line 51
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda41;

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    invoke-direct {v6, p0, p1, v0, v7}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda41;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {v2, v6, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 63
    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v6

    .line 70
    sub-long/2addr v6, v4

    .line 71
    invoke-static {v6, v7}, Ljava/lang/StrictMath;->toIntExact(J)I

    .line 72
    .line 73
    .line 74
    move-result v2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    const/4 v2, -0x1

    .line 77
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 78
    .line 79
    new-instance v4, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 80
    .line 81
    invoke-direct {v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v5, "remove_network_duration_ms"

    .line 93
    .line 94
    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 95
    .line 96
    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v4, "Removing network completed in "

    .line 100
    .line 101
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, " ms."

    .line 108
    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    if-nez v0, :cond_1

    .line 120
    .line 121
    const-string p0, "failed to remove network "

    .line 122
    .line 123
    invoke-static {p0, p1, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return v1

    .line 127
    :cond_1
    const/4 p0, 0x1

    .line 128
    return p0
.end method

.method public removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public reportAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->reportAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public reportBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public reportHotspotDumpLogs(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public reportIssue(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->report(ILandroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public requestPassword(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->requestPassword(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public requestStopAutohotspotAdvertisement(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->requestStopAutohotspotAdvertisement(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resetCallbackCondition(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->resetCallbackCondition(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public resetComebackCondition()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->resetComebackCondition()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public resetDeveloperOptionsSettings()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda35;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public resetSoftAp(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->resetSoftAp(Landroid/os/Message;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resetTotalPriorityDataConsumedValues()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->resetTotalPriorityDataConsumedValues()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public restoreSemConfigurationsBackupData(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiBackupRestore()Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->restoreSemConfigurationsBackupData(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public retrieveSemWifiConfigsBackupData()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda11;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v3, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/List;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiBackupRestore()Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 36
    .line 37
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->retrieveSemWifiConfigsBackupData(Ljava/util/List;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public runAutoShareForCurrent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 9
    .line 10
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda49;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda49;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public declared-synchronized runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public saveFwDump()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->saveFwDump()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public sendReassociationFrequencyRequestFrame(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda41;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda41;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda41;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda41;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda2;

    .line 7
    .line 8
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move v4, p2

    .line 11
    move v5, p3

    .line 12
    move-object v6, p4

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;IILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public set5GmmWaveSarBackoffEnabled(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda33;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda33;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setAdvancedAutohotspotConnectSettings(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setAdvancedAutohotspotConnectSettings(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdvancedAutohotspotLCDSettings(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setAdvancedAutohotspotLCDSettings(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAllowWifiScan(ZLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setScanningEnable(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public setAntInfo(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setAntInfo(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public setAntMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setAntMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setArdkPowerSaveMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setArdkPowerSaveMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAutohotspotToastMessage(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setAutohotspotToastMessage(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBtmOptionUserDisabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->changeBtmOption(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setBtmOptionUserEnabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->changeBtmOption(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setConnectionAttemptInfo(IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setConnectionAttemptInfo(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setConnectivityCheckDisabled(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setConnectivityCheckDisabled(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public setDcxoCalibrationData(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setDcxoCalibrationData(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public setDtimInSuspendMode(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 5
    .line 6
    const-string v1, "setDtimInSuspendMode uid=% verbose=%"

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    int-to-long v1, p1

    .line 22
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setDtimInSuspendMode(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    .locals 7

    .line 1
    const-string v0, "SemWifiService"

    .line 2
    .line 3
    const-string v1, "Permission violation - setEasySetupScanSettings not allowed for uid="

    .line 4
    .line 5
    const-string v2, "setEasySetupScanSettings for "

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    :try_start_0
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->checkNetworkSettingsPermission(I)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceLocationPermissionInManifest(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 30
    .line 31
    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, ", reason="

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public setFactoryMacAddress(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setFactoryMacAddress(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public setFccChannelBackoffEnabled(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda17;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setFrameburstInfo(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setFrameburstInfo(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public setGripSensorMonitorEnabled(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->setGripSensorMonitorEnabled(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setHotspotAntMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setHotspotAntMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIlaTrainingResult(DLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->setIlaTrainingResult(DLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setImsCallEstablished(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 5
    .line 6
    const-string v1, "setImsCallEstablished uid=% isEstablished=%"

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Z)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setImsCallEstablished(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setInsInferenceResult(IFFFFLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move v1, p1

    .line 11
    move v2, p2

    .line 12
    move v3, p3

    .line 13
    move v4, p4

    .line 14
    move v5, p5

    .line 15
    move-object v6, p6

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->setInsInferenceResult(IFFFFLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setKeepConnection(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setUserSelection(ZZ)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setAcceptUnvalidated(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setKeepConnectionAlways(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setUserSelection(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setAcceptUnvalidated(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setKeepConnectionBigData(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setUserSelectionBigData(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setLastSelectedNetworkIdForSilentRoaming(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setLastSelectedNetworkIdForSilentRoaming(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLastSelectedTimeStampForSilentRoaming()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setLastSelectedTimeStampForSilentRoaming()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLatencyCritical(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setLatencyCritical(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setMHSConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public setMaxDtimInSuspendMode(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 5
    .line 6
    const-string v1, "setMaxDtimInSuspendMode uid=% verbose=%"

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Z)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setMaxDtimInSuspendMode(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setMcfMultiControlMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->setMcfMultiControlMode(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setMhsAiServiceNsdResult([I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceDetector()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->setMhsAiServiceNsdResult([I[Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setMhsAiServiceState(Z[I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceDetector()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->setMhsAiServiceState(Z[I[I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setNCHOModeEnabled(Z)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda7;

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v1, v2, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda7;-><init>(ILcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public setOptimizerForceControlMode(I)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;II)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public setPowerSavingTime(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setPowerSavingTime(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProvisionSuccess(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setProvisionSuccess(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setPsmInfo(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setPsmInfo(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public setRoamBand(I)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;II)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public setRoamDelta(I)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;II)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public setRoamScanChannels([Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public setRoamScanEnabled(Z)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda7;

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    invoke-direct {v1, v2, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda7;-><init>(ILcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;II)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public setRoamTrigger(I)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;II)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public setSamsungIwhCtrl(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->setSamsungIwhCtrl(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setSamsungMloCtrl(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMultiLinkControl()Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->setSamsungMloCtrl(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setSmartMHSLocked(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setSmartMHSLocked(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTCRule(ZLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->setTCRule(ZLjava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setTasPolicy(II)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "invalid tas policy: "

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    if-ltz p1, :cond_1

    .line 11
    .line 12
    const/4 v3, 0x5

    .line 13
    if-le p1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->setTasPolicy(II)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    :try_start_1
    const-string p0, "SemWifiService"

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " window:"

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public setTdlsEnabled(Z)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda7;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda7;-><init>(ILcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public setTestMode(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->setTestMode(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setTestSettings(ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "unsupported auto test provider id: "

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->PRODUCT_DEV:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-interface {p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;->setTestSettings(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p1, "Unavailable test method (product dev only)"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public setTrafficPatternTestSettings(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->PRODUCT_DEV:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->setTrafficPatternTestSettings(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string p1, "Unavailable test method (product dev only)"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public setUploadModeEnabled(Z)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setUploadModeEnabled(Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public setUserConfirmForSharingPassword(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->setUserConfirm(ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public setVerboseLoggingEnabled(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 8
    .line 9
    const-string v1, "semSetVerboseLoggingEnabled uid=% verbose=%"

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-long v1, v1

    .line 20
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Z)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enableVerboseLoggingInternal(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setWesModeEnabled(Z)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda7;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda7;-><init>(ILcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public setWifiAiIccInferenceConfidence([F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setWifiAiIccInferenceConfidence([F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setWifiAiIccInferenceResult([Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setWifiAiIccInferenceResult([Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setWifiAiIccInferenceResult2([F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setWifiAiIccInferenceResult2([F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setWifiAiIccTrainingResult(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setWifiAiIccTrainingResult(Ljava/lang/String;III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setWifiAiIwhInferenceResult([Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->setWifiAiIwhInferenceResult([Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setWifiAiIwhTrainingResult(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->setWifiAiIwhTrainingResult(Ljava/lang/String;III)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setWifiAiServiceNsdResult([I[I[I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->setWifiAiServiceNsdResult([I[I[I[Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setWifiAiServiceState(Z[I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->setWifiAiServiceState(Z[I[I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setWifiApClientDataPaused(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApClientDataPaused(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApClientEditedName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApClientEditedName(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApClientMobileDataLimit(Ljava/lang/String;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApClientMobileDataLimit(Ljava/lang/String;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApClientTimeLimit(Ljava/lang/String;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApClientTimeLimit(Ljava/lang/String;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApConfigurationToDefault()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApConfigurationToDefault()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApDailyDataLimit(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApDailyDataLimit(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setWifiApGuestModeEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApGuestModeEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApGuestModeIsolationEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApGuestModeIsolationEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApGuestPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApGuestPassword(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApIsolate(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApIsolate(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApMacAclEnable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApMacAclEnable(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApMacAclMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApMacAclMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApMaxClient(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApMaxClient(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApMaxClientToFramework(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApMaxClientToFramework(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApWarningActivityRunning(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApWarningActivityRunning(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiApWpsPbc(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApWpsPbc(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiDeveloperModeEnabled(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 8
    .line 9
    const-string v1, "setWifiDeveloperModeEnabled uid=% verbose=%"

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-long v1, v1

    .line 20
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Z)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enableWifiDeveloperModeInternal(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setWifiSettingsForegroundState(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiSettingsForegroundState(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWifiSharingEnabled(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiSharingEnabled(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setWifiSharingMenuState(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiSharingMenuState(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setWifiUwbCoexEnabled(IZ)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda36;

    .line 7
    .line 8
    invoke-direct {v1, p1, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda36;-><init>(ILcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public shouldShowAutoWifiBubbleTip()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->shouldShowBubbleTip()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

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

.method public startCapture(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getPacketCaptureManager()Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->startCapture(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public startIssueMonitoring(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "SemWifiService"

    .line 11
    .line 12
    const-string p1, "device doesn\'t support issue detector feature"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueReporter:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueReporter()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueReporter:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    .line 29
    .line 30
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueReporter:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->startMonitoring(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void

    .line 38
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p1, "setting is empty"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public startMcfClientMHSDiscovery(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->startMcfClientMHSDiscovery(Z)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startMcfMHSAdvertisement(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->startMcfMHSAdvertisement(Z)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startScan(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->startScan()Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public startTimerForWifiOffload()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiOffloadController()Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->startTimer()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public stopCapture()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getPacketCaptureManager()Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/pktcapture/SemPacketCaptureManager;->stopCapture()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public supportWifiAp5GBasedOnCountry()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp5GBasedOnCountry()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public supportWifiAp6GBasedOnCountry()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp6GBasedOnCountry()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public triggerBackoffRoutine(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->triggerBackoffRoutine(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public unRegisterWifiApDataUsageCallback(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->unRegisterWifiApDataUsageCallback(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unregisterAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->unregisterAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "A/B Test observer must not be null"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public unregisterClientDataUsageCallback(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->unregisterClientDataUsageCallback(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unregisterClientListDataUsageCallback(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->unregisterClientListDataUsageCallback(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->unregisterPasswordCallback()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public unregisterTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->unregisterTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public unregisterWifiApSmartCallback(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->unregisterWifiApSmartCallback(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateGuiderFeature(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->setFeatureDefaults(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p1, "argument should not be null"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public updateHostapdMacList(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->updateHostapdMacList(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public wifiApBleClientRole(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApBleClientRole(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public wifiApBleD2DClientRole(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApBleD2DClientRole(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public wifiApBleD2DMhsRole(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApBleD2DMhsRole(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public wifiApBleMhsRole(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApBleMhsRole(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public wifiApDisassocSta(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApDisassocSta(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public wifiApRestoreDailyHotspotDataLimit(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApRestoreDailyHotspotDataLimit(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
