.class public Lcom/samsung/android/server/wifi/SemWifiShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;,
        Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;,
        Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;,
        Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;,
        Lcom/samsung/android/server/wifi/SemWifiShellCommand$CommandHandler;
    }
.end annotation


# static fields
.field private static final NON_PRIVILEGED_COMMANDS:[Ljava/lang/String;

.field private static final NOT_SUPPORTED:Ljava/lang/String; = "Not Supported"

.field private static final SUPPORTED:Ljava/lang/String; = "Supported"


# instance fields
.field private final mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field private mContext:Landroid/content/Context;

.field private mDebuggingHandler:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;

.field private final mDeviceWiphyCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

.field private final mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiShellCommand$CommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceName:Ljava/lang/String;

.field private final mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

.field private final mSemWifiRroChecker:Lcom/samsung/android/server/wifi/SemWifiRroChecker;

.field private final mService:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

.field private mSqeHandler:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;

.field private final mSupportedFeatureLogger:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

.field private final mWifiBackController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiDriverFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

.field private final mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoWifiController(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiRroChecker(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiRroChecker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mSemWifiRroChecker:Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mService:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportedFeatureLogger(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mSupportedFeatureLogger:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiBackController(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mWifiBackController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiDriverFeatureProvider(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mWifiDriverFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiDriverVersionProvider(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNextArgRequiredTrueOrFalse(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Z
    .locals 2

    .line 1
    const-string v0, "enabled"

    .line 2
    .line 3
    const-string v1, "disabled"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->getNextArgRequiredTrueOrFalse(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSupportedChannelWidth(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->getSupportedChannelWidth()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$misPackageAvailable(Lcom/samsung/android/server/wifi/SemWifiShellCommand;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->isPackageAvailable(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->HELP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->HELP_HYPHEN:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->NON_PRIVILEGED_COMMANDS:[Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p4, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;

    .line 5
    .line 6
    invoke-direct {p4, p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)V

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mSqeHandler:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;

    .line 10
    .line 11
    new-instance p4, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;

    .line 12
    .line 13
    invoke-direct {p4, p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)V

    .line 14
    .line 15
    .line 16
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mDebuggingHandler:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;

    .line 17
    .line 18
    new-instance p4, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mHandlerMap:Ljava/util/Map;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mService:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getDriverVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSupportedFeatureLogger()Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mSupportedFeatureLogger:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getMobileWipsFrameworkService()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getDriverFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mWifiDriverFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getAutoWifiController()Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiBackOffController()Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mWifiBackController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 76
    .line 77
    const-string p2, "wifinl80211"

    .line 78
    .line 79
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 84
    .line 85
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getClientModeManager()Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiRroChecker()Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mSemWifiRroChecker:Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 98
    .line 99
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->getInterfaceName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p2, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mDeviceWiphyCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 108
    .line 109
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->initHandler()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mInterfaceName:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mInterfaceName:Ljava/lang/String;

    .line 14
    .line 15
    return-object p0
.end method

.method private getNextArgRequiredTrueOrFalse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v1, "Expected \'"

    .line 24
    .line 25
    const-string v2, "\' or \'"

    .line 26
    .line 27
    const-string v3, "\' as next arg but got \'"

    .line 28
    .line 29
    invoke-static {v1, p1, v2, p2, v3}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "\'"

    .line 34
    .line 35
    invoke-static {p1, p0, p2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method private getSupportedChannelWidth()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mDeviceWiphyCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "320MHZ"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mDeviceWiphyCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string p0, "80MHZ_PLUS_MHZ"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mDeviceWiphyCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const-string p0, "160MHZ"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mDeviceWiphyCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    const-string p0, "80MHZ"

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mDeviceWiphyCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    const-string p0, "40MHZ"

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mDeviceWiphyCapabilities:Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_5

    .line 69
    .line 70
    const-string p0, "20MHZ"

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_5
    const-string p0, ""

    .line 74
    .line 75
    return-object p0
.end method

.method private initHandler()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_0

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mHandlerMap:Ljava/util/Map;

    .line 13
    .line 14
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mSqeHandler:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;

    .line 19
    .line 20
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    array-length v1, v0

    .line 31
    :goto_1
    if-ge v2, v1, :cond_1

    .line 32
    .line 33
    aget-object v3, v0, v2

    .line 34
    .line 35
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mHandlerMap:Ljava/util/Map;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mDebuggingHandler:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;

    .line 42
    .line 43
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    return-void
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :catch_0
    :cond_0
    return v0
.end method

.method private onHelpPrivileged(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string p0, "  scan-qos"

    .line 2
    .line 3
    const-string v0, "    Start QoS scan and get results."

    .line 4
    .line 5
    const-string v1, "  chipset_info"

    .line 6
    .line 7
    const-string v2, "    Gets wifi chipset info."

    .line 8
    .line 9
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p0, "  driver_fw_ver"

    .line 13
    .line 14
    const-string v0, "    Gets wifi driver and firmware version."

    .line 15
    .line 16
    const-string v1, "  mode"

    .line 17
    .line 18
    const-string v2, "    Gets supported  802.11 mode."

    .line 19
    .line 20
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p0, "  support_6e"

    .line 24
    .line 25
    const-string v0, "    Check whether support 6GHz."

    .line 26
    .line 27
    const-string v1, "  api_level"

    .line 28
    .line 29
    const-string v2, "    Gets api_level and first_api_level."

    .line 30
    .line 31
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "  support_mimo"

    .line 35
    .line 36
    const-string v0, "    Check whether support mimo."

    .line 37
    .line 38
    const-string v1, "  steering"

    .line 39
    .line 40
    const-string v2, "    Gets supported steering mode."

    .line 41
    .line 42
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string p0, "  support_hs20"

    .line 46
    .line 47
    const-string v0, "    Check whether support hotspot 2.0 (passpoint)."

    .line 48
    .line 49
    const-string v1, "  support_eap"

    .line 50
    .line 51
    const-string v2, "    Gets supported eap types."

    .line 52
    .line 53
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p0, "  support_eap_feature"

    .line 57
    .line 58
    const-string v0, "    Gets supported eap feature types."

    .line 59
    .line 60
    const-string v1, "  support_security"

    .line 61
    .line 62
    const-string v2, "    Gets supported security types."

    .line 63
    .line 64
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p0, "  support_qr"

    .line 68
    .line 69
    const-string v0, "    Check whether support QR code connect."

    .line 70
    .line 71
    const-string v1, "  support_direct_concurrent"

    .line 72
    .line 73
    const-string v2, "    Gets supported wifi direct concurrent type."

    .line 74
    .line 75
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string p0, "  support_tdls"

    .line 79
    .line 80
    const-string v0, "    Gets supported tdls type."

    .line 81
    .line 82
    const-string v1, "  support_aware"

    .line 83
    .line 84
    const-string v2, "    Check whether support wifi aware for quick share."

    .line 85
    .line 86
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string p0, "  support_switch_to_mobile"

    .line 90
    .line 91
    const-string v0, "    Check whether support switch to mobile data."

    .line 92
    .line 93
    const-string v1, "  support_detect_suspicious"

    .line 94
    .line 95
    const-string v2, "    Check support whether detect suspicious network."

    .line 96
    .line 97
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string p0, "  support_profile_request"

    .line 101
    .line 102
    const-string v0, "    Check whether support profile request."

    .line 103
    .line 104
    const-string v1, "  support_together"

    .line 105
    .line 106
    const-string v2, "    Check whether support wifi together."

    .line 107
    .line 108
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p0, "  support_auto_profile_share"

    .line 112
    .line 113
    const-string v0, "    Check whether support auto profile share."

    .line 114
    .line 115
    const-string v1, "  support_show_network_quality"

    .line 116
    .line 117
    const-string v2, "    Check whether support show network quality info."

    .line 118
    .line 119
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string p0, "  support_auto_wifi"

    .line 123
    .line 124
    const-string v0, "    Check whether support auto wifi."

    .line 125
    .line 126
    const-string v1, "  support_adps"

    .line 127
    .line 128
    const-string v2, "    Check whether support adps."

    .line 129
    .line 130
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string p0, "  support_mhs_security"

    .line 134
    .line 135
    const-string v0, "    Gets supported mobile hotspot security types."

    .line 136
    .line 137
    const-string v1, "  support_mhs_pmf_onoff"

    .line 138
    .line 139
    const-string v2, "    Check whether support mobile hotspot PMF."

    .line 140
    .line 141
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string p0, "  support_wifi_sharing"

    .line 145
    .line 146
    const-string v0, "    Gets supported wifi sharing type."

    .line 147
    .line 148
    const-string v1, "  support_rsdb"

    .line 149
    .line 150
    const-string v2, "    Gets supported rsdb type."

    .line 151
    .line 152
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string p0, "  support_dual_soft_wifi"

    .line 156
    .line 157
    const-string v0, "    Check whether support 6GHz dual soft wifi."

    .line 158
    .line 159
    const-string v1, "  support_mhs_6e"

    .line 160
    .line 161
    const-string v2, "    Check whether support 6GHz mobile hotspot."

    .line 162
    .line 163
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string p0, "  support_mhs_power_saving"

    .line 167
    .line 168
    const-string v0, "    Check whether support mobile hotspot power saving."

    .line 169
    .line 170
    const-string v1, "  support_auto_hotspot"

    .line 171
    .line 172
    const-string v2, "    Check whether support auto hotspot."

    .line 173
    .line 174
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string p0, "  support_auto_connection_hotspot"

    .line 178
    .line 179
    const-string v0, "    Check whether support auto connect hotspot."

    .line 180
    .line 181
    const-string v1, "  support_secure_wifi"

    .line 182
    .line 183
    const-string v2, "    Check whether support secure wifi."

    .line 184
    .line 185
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string p0, "  support_twt"

    .line 189
    .line 190
    const-string v0, "    Check whether support twt."

    .line 191
    .line 192
    const-string v1, "  support_ape"

    .line 193
    .line 194
    const-string v2, "    Check whether support ape."

    .line 195
    .line 196
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-string p0, "  set_verbose_enabled enabled|disabled"

    .line 200
    .line 201
    const-string v0, "    Set the verbose logging enabled or disabled with log level."

    .line 202
    .line 203
    const-string v1, "  trigger_backoff"

    .line 204
    .line 205
    const-string v2, "    Trigger backoff routine immediately."

    .line 206
    .line 207
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string p0, "  should_show_autowifi_bubbletip"

    .line 211
    .line 212
    const-string v0, "    Check whether should show auto wifi bubble tip or not."

    .line 213
    .line 214
    const-string v1, "  get_autowifi_dump"

    .line 215
    .line 216
    const-string v2, "    Gets autowifi dump."

    .line 217
    .line 218
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string p0, "  get_wifi7_disabled_country"

    .line 222
    .line 223
    const-string v0, "    Get Wifi7 disabled Country."

    .line 224
    .line 225
    const-string v1, "  get_sar_managers"

    .line 226
    .line 227
    const-string v2, "    Gets supported sar manager list."

    .line 228
    .line 229
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string p0, "  set_pno_scan_enabled enabled|disabled enabled|disabled"

    .line 233
    .line 234
    const-string v0, "    Sets pno scan enable or disable."

    .line 235
    .line 236
    const-string v1, "      enabled|disabled"

    .line 237
    .line 238
    const-string v2, "        - Use \'enabled\' or \'disabled\' for enabled."

    .line 239
    .line 240
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string p0, "        - Use \'enabled\' or \'disabled\' for enablePnoScanAfterWifiToggle."

    .line 244
    .line 245
    const-string v0, "  set_pno_scan_state"

    .line 246
    .line 247
    const-string v2, "    Sets pno scan state."

    .line 248
    .line 249
    invoke-static {p1, v1, p0, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string p0, "      Just set pno scan state. enabled and enablePnoScanAfterWifiToggle options are determinded by current pno state"

    .line 253
    .line 254
    const-string v0, "        1 - PNO_SCAN_STATE_DISABLED_UNTIL_REBOOT"

    .line 255
    .line 256
    const-string v1, "        2 - PNO_SCAN_STATE_DISABLED_UNTIL_WIFI_TOGGLE"

    .line 257
    .line 258
    const-string v2, "        3 - PNO_SCAN_STATE_ENABLED"

    .line 259
    .line 260
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-string p0, "  get_autowifi_def_val"

    .line 264
    .line 265
    const-string v0, "    Check auto wifi default value is on or off."

    .line 266
    .line 267
    const-string v1, "  get_configured_network_locations"

    .line 268
    .line 269
    const-string v2, "    Get saved geofence location of auto wifi."

    .line 270
    .line 271
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string p0, "  has_configured_network_locations <wifiConfigKey>"

    .line 275
    .line 276
    const-string v0, "    Check saved network has location information."

    .line 277
    .line 278
    const-string v1, "  get_candidate_network_scores"

    .line 279
    .line 280
    const-string v2, "    Gets list of candidate network scores for SilentRoaming."

    .line 281
    .line 282
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const-string p0, "  get_last_selected_timestamp"

    .line 286
    .line 287
    const-string v0, "    Gets mLastSelectedTimeStamp of SilentRoamingManager for notifyConnect method."

    .line 288
    .line 289
    const-string v1, "  set_last_selected_timestamp"

    .line 290
    .line 291
    const-string v2, "    Sets mLastSelectedTimeStamp of SilentRoamingManager to elapsedSinceBootMillis for notifyConnect method."

    .line 292
    .line 293
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    const-string p0, "  get_last_selected_network_id"

    .line 297
    .line 298
    const-string v0, "    Gets mLastSelectedNetworkId of SilentRomingManager."

    .line 299
    .line 300
    const-string v1, "  set_last_selected_network_id <networkId>"

    .line 301
    .line 302
    const-string v2, "    Sets mLastSelectedNetworkId of SilentRomingManager."

    .line 303
    .line 304
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const-string p0, "  wifi_rro_test_with_toast"

    .line 308
    .line 309
    const-string v0, "    Checks for unauthorized RROs and displays a Toast message for 3 minutes if any are found. "

    .line 310
    .line 311
    const-string v1, "    Returns true if all RROs are authorized, false otherwise."

    .line 312
    .line 313
    const-string v2, "  wifi_rro_test_no_toast"

    .line 314
    .line 315
    invoke-static {p1, p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const-string p0, "    Checks for unauthorized RROs. "

    .line 319
    .line 320
    const-string v0, "  wifi_rro_test_get_list_with_toast"

    .line 321
    .line 322
    const-string v2, "    Checks for unauthorized RROs and returns them as a list."

    .line 323
    .line 324
    invoke-static {p1, p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string p0, "    Displays a Toast message for 3 minutes if any are found."

    .line 328
    .line 329
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string p0, "  wifi_rro_test_get_list_no_toast"

    .line 333
    .line 334
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string p0, "     Checks for unauthorized RROs. Returns them as a list."

    .line 338
    .line 339
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "help"

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->NON_PRIVILEGED_COMMANDS:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Uid "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " does not have access to "

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " wifi command (or such command doesn\'t exist)"

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :try_start_0
    sget-object v2, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SQE_ALL_COMMANDS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v3, 0x0

    .line 79
    aget-object v2, v2, v3

    .line 80
    .line 81
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mHandlerMap:Ljava/util/Map;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$CommandHandler;

    .line 92
    .line 93
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    array-length v4, v2

    .line 98
    move v5, v3

    .line 99
    :goto_1
    if-ge v5, v4, :cond_3

    .line 100
    .line 101
    aget-object v6, v2, v5

    .line 102
    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v8, "["

    .line 109
    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v8, "]"

    .line 121
    .line 122
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-interface {p0, v6, v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$CommandHandler;->process(Ljava/lang/String;Ljava/io/PrintWriter;)I

    .line 137
    .line 138
    .line 139
    add-int/lit8 v5, v5, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catch_0
    move-exception p0

    .line 143
    goto :goto_2

    .line 144
    :catch_1
    move-exception p0

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    return v3

    .line 147
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->mHandlerMap:Ljava/util/Map;

    .line 148
    .line 149
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    check-cast p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$CommandHandler;

    .line 154
    .line 155
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$CommandHandler;->process(Ljava/lang/String;Ljava/io/PrintWriter;)I

    .line 156
    .line 157
    .line 158
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return p0

    .line 160
    :goto_2
    const-string p1, "Exception while executing WifiShellCommand: "

    .line 161
    .line 162
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 166
    .line 167
    .line 168
    return v1

    .line 169
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v3, "Invalid args for "

    .line 172
    .line 173
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p1, ": "

    .line 180
    .line 181
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return v1
.end method

.method public onHelp()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEM Wi-Fi (sem_wifi) commands:"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "  help or -h"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->onHelpPrivileged(Ljava/io/PrintWriter;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
