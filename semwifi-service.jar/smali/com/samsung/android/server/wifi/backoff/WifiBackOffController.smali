.class public Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;,
        Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;
    }
.end annotation


# static fields
.field private static final DEBUG_LOW:Z

.field private static final TAG:Ljava/lang/String; = "SemWifiBackOff.Controller"


# instance fields
.field private final mBackOffStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/backoff/BackOffStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mCombinedTasManager:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mFccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

.field private final mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

.field private mSupportedTasMode:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;


# direct methods
.method public static synthetic $r8$lambda$LE5mpQT56CGtnPEaqokTtT3gqG4(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffStats;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffStats;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBackOffStats(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mBackOffStats:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSarManager(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/backoff/SemSarManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNetworkCountryIso(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getNetworkCountryIso()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetServiceState(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Landroid/telephony/ServiceState;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getServiceState()Landroid/telephony/ServiceState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.boot.debug_level"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "0x4f4c"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput-boolean v0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->DEBUG_LOW:Z

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 12

    .line 1
    new-instance v5, Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 2
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiDriverCommandHelper()Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    move-result-object v0

    move-object/from16 v4, p4

    invoke-direct {v5, p1, p2, v4, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V

    new-instance v6, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 3
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object v8

    .line 4
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    move-result-object v10

    move-object v7, p1

    move-object v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    move-object v0, p0

    move-object v3, p3

    move-object v1, v7

    move-object v2, v11

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "Not updated yet"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSupportedTasMode:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 9
    iput-object p3, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 11
    iput-object p5, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 12
    iput-object p6, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mCombinedTasManager:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 13
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mBackOffStats:Ljava/util/Map;

    .line 14
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)V

    .line 15
    new-instance p3, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    const/4 p6, 0x0

    invoke-direct {p3, p0, p2, p6}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;I)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    .line 16
    invoke-virtual {p5, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->setListener(Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;)V

    .line 17
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupported6Ghz()Z

    move-result p3

    invoke-direct {p2, p0, p1, p3, p6}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Landroid/content/Context;ZI)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mFccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    return-void
.end method

.method private checkAndGetTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    return-object p0
.end method

.method private getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->checkAndGetTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, ""

    .line 15
    .line 16
    return-object p0
.end method

.method private getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->checkAndGetTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffStats;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " "

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public blockFccChannelBackoff(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mFccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setEnable(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "WifiBackOffController:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mFccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->dump(Ljava/io/PrintWriter;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->dump(Ljava/io/PrintWriter;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->dump(Ljava/io/PrintWriter;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mBackOffStats:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v1, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mCombinedTasManager:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->dump(Ljava/io/PrintWriter;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public forceEnable5GmmWaveBackoff(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->forceEnableMWaveBackoff(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public forceEnableFccChannelBackoff(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mFccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->forceEnable(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBackOffCountForCurrentNetwork(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mBackOffStats:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->getTriggerInfoForCurrentNetwork()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTotalTriggerCount()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public getBackOffDurationSecondForCurrentNetwork(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mBackOffStats:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->getTriggerInfoForCurrentNetwork()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTotalDuration()J

    .line 19
    .line 20
    .line 21
    move-result-wide p0

    .line 22
    const-wide/16 v0, 0x3e8

    .line 23
    .line 24
    div-long/2addr p0, v0

    .line 25
    long-to-int p0, p0

    .line 26
    return p0
.end method

.method public getCurrentBackOffType(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->getCurrentSarBackOffMode()Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->getCurrentBackOffMode(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->toInt()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->toInt()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    or-int/2addr p0, p1

    .line 22
    return p0
.end method

.method public getFccBackOffStates(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mFccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->getFccBackOffStates(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getLastRequestedTasLevel()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mCombinedTasManager:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->requestTasLevel:I

    .line 4
    .line 5
    return p0
.end method

.method public getSarManagerNames()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->getSarManagerNames()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTasAverage()Ljava/util/Map;
    .locals 0
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mCombinedTasManager:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->getTasAverage()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTasMode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSupportedTasMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public isGripSensorMonitorEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->isGripSensorMonitorEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public notifyWifiConnection(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mBackOffStats:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getCurrentBackOffType(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->startGathering(I)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mBackOffStats:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->stopGathering()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public registerTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mCombinedTasManager:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->register(Lcom/samsung/android/wifi/SemTasPolicyListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDbsProvider(Lcom/samsung/android/server/wifi/DbsModeProvider;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mCombinedTasManager:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->setDbsProvider(Lcom/samsung/android/server/wifi/DbsModeProvider;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGripSensorMonitorEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->setGripSensorMonitorEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTasPolicy(II)Ljava/util/Map;
    .locals 0
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mCombinedTasManager:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->setTasPolicy(II)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public setTestSettings(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mCombinedTasManager:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->setTestSettings(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->start(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->update(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->DEBUG_LOW:Z

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->getSupportedTasMode(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v1, "\\r\\n|\\n"

    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSupportedTasMode:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const-string v0, "Not supported cmd"

    .line 40
    .line 41
    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSupportedTasMode:Ljava/lang/String;

    .line 42
    .line 43
    :goto_1
    const-string v0, "tasMode "

    .line 44
    .line 45
    const-string v1, " mSupportedTasMode "

    .line 46
    .line 47
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSupportedTasMode:Ljava/lang/String;

    .line 52
    .line 53
    const-string v0, "SemWifiBackOff.Controller"

    .line 54
    .line 55
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->stop(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mFccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->resetState(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->resetState(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public triggerBackoffRoutine(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->triggerBackoffRoutine(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unregisterTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mCombinedTasManager:Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->unregister(Lcom/samsung/android/wifi/SemTasPolicyListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mFccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->checkAndSetup(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->checkAndSetup(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
