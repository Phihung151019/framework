.class public Lcom/samsung/android/server/wifi/abtest/AbTestManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;,
        Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;
    }
.end annotation


# static fields
.field private static final ACCEPTABLE_TIME_DRIFT:J = 0x2710L

.field private static final CMD_24H_ABTEST_STATUS_LOGGING:I = 0x4

.field private static final CMD_ADD_ABTEST_CONFIGS:I = 0x2

.field private static final CMD_INITIALIZE:I = 0x1

.field private static final CMD_UPDATE_ABTEST_ACTIVATION:I = 0x3

.field private static final DAY_IN_MILLISECONDS:J = 0x5265c00L

.field private static final DBG:Z

.field private static final NETWORK_TIME_CHECK_PERIOD:J = 0x493e0L

.field private static final SA_DIMENSION_AB_TEST_ACTIVATION:Ljava/lang/String; = "dimension_1"

.field private static final SA_DIMENSION_ONGOING_AB_TESTS:Ljava/lang/String; = "dimension_2"

.field private static final SA_EVENT_AB_TEST_STATUS:Ljava/lang/String; = "ab_test_daily_status"

.field private static final TAG:Ljava/lang/String; = "AbTestManager"


# instance fields
.field mAbTestActivated:Z

.field private mAbTestActivationCondition:Ljava/lang/String;

.field private mAbTestByPushedFile:Z

.field private final mAbTestConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mAbTestEnabled:Z

.field private final mAbTestGroupController:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;

.field private final mAbTestMessageHandler:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;

.field private final mContext:Landroid/content/Context;

.field private final mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field mIsAtestOngoing:Z

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLock:Ljava/lang/Object;

.field private mProductShip:Ljava/lang/String;

.field private final mRegisteredAbTestObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mVerboseLoggingEnabled:Z

.field private mVersion:Ljava/lang/String;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAbTestGroupController(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestGroupController:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAbTestMessageHandler(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestMessageHandler:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProductShip(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mProductShip:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmProductShip(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mProductShip:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$menforceAccessPermission(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhidePrivateInfo(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->hidePrivateInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mindexToGroupName(Lcom/samsung/android/server/wifi/abtest/AbTestManager;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->indexToGroupName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterForSettingsChanges(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->registerForSettingsChanges()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAbTestActivated(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->updateAbTestActivated()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAbTestConfigurations(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->updateAbTestConfigurations(Ljava/util/Set;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->DBG:Z

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
    sput-boolean v0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mVersion:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestEnabled:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivated:Z

    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivationCondition:Ljava/lang/String;

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestByPushedFile:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mIsAtestOngoing:Z

    .line 27
    .line 28
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mRegisteredAbTestObservers:Landroid/os/RemoteCallbackList;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iput-object p3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 38
    .line 39
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 50
    .line 51
    new-instance p1, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p1, p0, p2, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;-><init>(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Landroid/os/Looper;I)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestMessageHandler:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;

    .line 61
    .line 62
    new-instance p1, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 68
    .line 69
    new-instance p1, Landroid/util/LocalLog;

    .line 70
    .line 71
    const/16 p2, 0x80

    .line 72
    .line 73
    invoke-direct {p1, p2}, Landroid/util/LocalLog;-><init>(I)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLocalLog:Landroid/util/LocalLog;

    .line 77
    .line 78
    new-instance p1, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;-><init>(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestGroupController:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;

    .line 84
    .line 85
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 4
    .line 5
    const-string v1, "AbTestManager"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private getAbTestConfigsSummary()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "Number of Configs: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "\nConfigurations:\n"

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "************** AbTestConfigurations Start ******************\n"

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, "\n"

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto :goto_1

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, "*************** AbTestConfigurations End *******************"

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    monitor-exit v1

    .line 125
    return-object p0

    .line 126
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0
.end method

.method private getAbTestObserversSummary()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "Number of Observers: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mRegisteredAbTestObservers:Landroid/os/RemoteCallbackList;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "\nObservers:\n"

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "************** AbTestObservers Start ******************\n"

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_0
    if-ge v3, v2, :cond_0

    .line 48
    .line 49
    iget-object v4, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mRegisteredAbTestObservers:Landroid/os/RemoteCallbackList;

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/String;

    .line 56
    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, "th observers module is = "

    .line 69
    .line 70
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, "\n"

    .line 89
    .line 90
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_1

    .line 102
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, "*************** AbTestObservers End *******************"

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mRegisteredAbTestObservers:Landroid/os/RemoteCallbackList;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 122
    .line 123
    .line 124
    monitor-exit v1

    .line 125
    return-object v0

    .line 126
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0
.end method

.method private getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string v1, "sem_wifi"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "AbTestManager"

    .line 21
    .line 22
    const-string v1, "[abtest] getSemWifiManager is null!! "

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 28
    .line 29
    return-object p0
.end method

.method private hasReliableTimeSource()Z
    .locals 12

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-wide v2, v0

    .line 17
    :catch_1
    :goto_0
    sub-long v4, v2, v0

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mIsAtestOngoing:Z

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-wide/16 v8, 0x0

    .line 30
    .line 31
    cmp-long v6, v0, v8

    .line 32
    .line 33
    if-lez v6, :cond_1

    .line 34
    .line 35
    cmp-long v6, v2, v8

    .line 36
    .line 37
    if-lez v6, :cond_1

    .line 38
    .line 39
    const-wide/16 v8, 0x2710

    .line 40
    .line 41
    cmp-long v6, v4, v8

    .line 42
    .line 43
    if-gez v6, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v7, 0x0

    .line 47
    :goto_1
    if-eqz v7, :cond_2

    .line 48
    .line 49
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivated:Z

    .line 50
    .line 51
    if-nez v6, :cond_3

    .line 52
    .line 53
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v8, "hasReliableTimeSource - AUTO_TIME: "

    .line 56
    .line 57
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v8, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 61
    .line 62
    iget-object v9, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const-string v10, "auto_time"

    .line 65
    .line 66
    const/4 v11, -0x1

    .line 67
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v8, ", NetworkTime: "

    .line 75
    .line 76
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ", SystemTime: "

    .line 83
    .line 84
    const-string v1, ", delta: "

    .line 85
    .line 86
    invoke-static {v6, v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return v7
.end method

.method private hidePrivateInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-ge p0, v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    div-int/lit8 v1, p0, 0x3

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move v2, v1

    .line 31
    :goto_0
    mul-int/lit8 v3, v1, 0x2

    .line 32
    .line 33
    if-ge v2, v3, :cond_1

    .line 34
    .line 35
    const-string v3, "*"

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_2
    :goto_1
    return-object p1
.end method

.method private indexToGroupName(I)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "A"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x1

    .line 7
    if-ne p1, p0, :cond_1

    .line 8
    .line 9
    const-string p0, "B"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 p0, 0x2

    .line 13
    if-ne p1, p0, :cond_2

    .line 14
    .line 15
    const-string p0, "C"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const-string p0, "none"

    .line 19
    .line 20
    return-object p0
.end method

.method private isAbTestGroupChanged(Ljava/lang/String;I)Z
    .locals 4

    .line 1
    const-string v0, "A/B Test for ["

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 21
    .line 22
    iget v3, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    .line 23
    .line 24
    if-eq v3, p2, :cond_0

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "] module - Group Changed from "

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget p1, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->indexToGroupName(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " to "

    .line 49
    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->indexToGroupName(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput p2, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    monitor-exit v1

    .line 71
    return p0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    monitor-exit v1

    .line 75
    const/4 p0, 0x0

    .line 76
    return p0

    .line 77
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestByPushedFile:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[isAbTestByPushedFile] "

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLocalLog:Landroid/util/LocalLog;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    sget-boolean p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->DBG:Z

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    const-string p0, "AbTestManager"

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method private registerForSettingsChanges()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "auto_time"

    .line 6
    .line 7
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Lcom/samsung/android/server/wifi/abtest/AbTestManager$1;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$1;-><init>(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string v2, "sem_wifi_abtest_user_activation"

    .line 26
    .line 27
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lcom/samsung/android/server/wifi/abtest/AbTestManager$2;

    .line 32
    .line 33
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$2;-><init>(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Landroid/os/Handler;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const-string v2, "sem_wifi_developer_option_visible"

    .line 44
    .line 45
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Lcom/samsung/android/server/wifi/abtest/AbTestManager$3;

    .line 50
    .line 51
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$3;-><init>(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Landroid/os/Handler;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4;-><init>(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Landroid/content/IntentFilter;

    .line 63
    .line 64
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "android.intent.action.DATE_CHANGED"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v2, "android.intent.action.TIME_SET"

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private reportSaLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestByPushedFile:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "AbTestManager"

    .line 6
    .line 7
    const-string p1, "reportSaLogging: Do not report SA Logging. This is A/B Test by pushed configuration file."

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    new-instance p2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 22
    .line 23
    invoke-direct {p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private updateAbTestActivated()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "sem_wifi_abtest_user_activation"

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0, v3, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v0, v2

    .line 29
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestByPushedFile:Z

    .line 30
    .line 31
    if-nez v3, :cond_3

    .line 32
    .line 33
    iget-object v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mProductShip:Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "false"

    .line 36
    .line 37
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    iget-object v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-string v5, "sem_wifi_developer_option_visible"

    .line 48
    .line 49
    invoke-virtual {v3, v4, v5, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ne v3, v1, :cond_2

    .line 54
    .line 55
    const-string v3, "The binary is not ship version. But Developer Option is enabled. Device may run A/B test."

    .line 56
    .line 57
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-string v3, "The binary is not ship version. Return TESTGROUP_INVALID."

    .line 62
    .line 63
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move v3, v2

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    :goto_1
    move v3, v1

    .line 69
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestGroupController:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->isCommonHashSeedReady()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->hasReliableTimeSource()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestEnabled:Z

    .line 80
    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    if-eqz v5, :cond_4

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    move v1, v2

    .line 93
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestEnabled:Z

    .line 99
    .line 100
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v6, "/"

    .line 104
    .line 105
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivationCondition:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_6

    .line 140
    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivated:Z

    .line 142
    .line 143
    iput-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivationCondition:Ljava/lang/String;

    .line 144
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v1, "A/B Test "

    .line 148
    .line 149
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivated:Z

    .line 153
    .line 154
    if-eqz v1, :cond_5

    .line 155
    .line 156
    const-string v1, "Activated. - "

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_5
    const-string v1, "Deactivated. - "

    .line 160
    .line 161
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivationCondition:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->updateAndNotifyAbTestGroupAllocations()V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestMessageHandler:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;

    .line 180
    .line 181
    const/4 v1, 0x3

    .line 182
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    .line 184
    .line 185
    if-nez v5, :cond_7

    .line 186
    .line 187
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestMessageHandler:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;

    .line 188
    .line 189
    const-wide/32 v2, 0x493e0

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 193
    .line 194
    .line 195
    :cond_7
    return-void
.end method

.method private updateAbTestConfigChanged(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "AbTestManager"

    .line 4
    .line 5
    const-string p1, "updateAbTestConfigChanged: configs is null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "updateAbTestConfigChanged config.moduleName  = "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v3, v1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mRegisteredAbTestObservers:Landroid/os/RemoteCallbackList;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x0

    .line 62
    :goto_1
    if-ge v3, v2, :cond_3

    .line 63
    .line 64
    iget-object v4, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mRegisteredAbTestObservers:Landroid/os/RemoteCallbackList;

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Ljava/lang/String;

    .line 71
    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, "th observers module is = "

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v5, v1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-nez v4, :cond_2

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mRegisteredAbTestObservers:Landroid/os/RemoteCallbackList;

    .line 105
    .line 106
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;

    .line 111
    .line 112
    invoke-interface {v4, v1}, Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;->notifyAbTestConfigUpdate(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_3

    .line 118
    :catch_0
    move-exception v4

    .line 119
    :try_start_2
    const-string v5, "AbTestManager"

    .line 120
    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v7, "updateAbTestConfigChanged: remote exception -- "

    .line 127
    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mRegisteredAbTestObservers:Landroid/os/RemoteCallbackList;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_4
    monitor-exit v0

    .line 152
    return-void

    .line 153
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    throw p0
.end method

.method private updateAbTestConfigurations(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 30
    .line 31
    iget-object v4, v3, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v5, -0x1

    .line 34
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->isAbTestGroupChanged(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    new-instance v4, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 41
    .line 42
    invoke-direct {v4, v3}, Lcom/samsung/android/wifi/SemAbTestConfiguration;-><init>(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->updateAbTestConfigChanged(Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 88
    .line 89
    iget-object v3, v1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v4, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 92
    .line 93
    invoke-direct {v4, v1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;-><init>(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    sget-boolean p1, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->DBG:Z

    .line 101
    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    const-string p1, "AbTestManager"

    .line 105
    .line 106
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->getAbTestConfigsSummary()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_4
    monitor-exit v0

    .line 114
    return-void

    .line 115
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0
.end method

.method private updateAndNotifyAbTestGroupAllocations()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 30
    .line 31
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivated:Z

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget-object v4, v3, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestGroupController:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;

    .line 38
    .line 39
    invoke-virtual {v5, v3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->getGroupIndex(Lcom/samsung/android/wifi/SemAbTestConfiguration;)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->isAbTestGroupChanged(Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    new-instance v4, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 50
    .line 51
    invoke-direct {v4, v3}, Lcom/samsung/android/wifi/SemAbTestConfiguration;-><init>(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v4, v3, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 61
    .line 62
    const/4 v5, -0x1

    .line 63
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->isAbTestGroupChanged(Ljava/lang/String;I)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    new-instance v4, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 70
    .line 71
    invoke-direct {v4, v3}, Lcom/samsung/android/wifi/SemAbTestConfiguration;-><init>(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->updateAbTestConfigChanged(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    monitor-exit v0

    .line 94
    return-void

    .line 95
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0
.end method


# virtual methods
.method public addAbTestConfigurations(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestMessageHandler:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "Dump of AbTestManager:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Version:"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->getAbTestVersion()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "isAbTestEnabled:"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->isAbTestEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, "userActivation: "

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    const-string v3, "sem_wifi_abtest_user_activation"

    .line 60
    .line 61
    const/4 v4, -0x1

    .line 62
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x1

    .line 67
    if-ne v1, v2, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 v2, 0x0

    .line 71
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v1, "mProductShip: "

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mProductShip:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v1, "isCommonHashSeedReady: "

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestGroupController:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->isCommonHashSeedReady()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v1, "hasReliableTimeSource: "

    .line 126
    .line 127
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->hasReliableTimeSource()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v1, "isAbTestByPushedFile: "

    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->isAbTestByPushedFile()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v0, "AbTestConfigurations:"

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->getAbTestConfigsSummary()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v0, "AbTestObservers:"

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->getAbTestObserversSummary()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v0, "AbTestManager - Log Begin ----"

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLocalLog:Landroid/util/LocalLog;

    .line 195
    .line 196
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 197
    .line 198
    .line 199
    const-string p0, "AbTestManager - Log End ----"

    .line 200
    .line 201
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getAbTestConfiguration(Ljava/lang/String;)Lcom/samsung/android/wifi/SemAbTestConfiguration;
    .locals 2

    .line 1
    const-string v0, "getAbTestConfiguration : "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/SemAbTestConfiguration;-><init>(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-object v1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    monitor-exit v0

    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0

    .line 41
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public getAbTestConfigurations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 30
    .line 31
    new-instance v3, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 32
    .line 33
    invoke-direct {v3, v2}, Lcom/samsung/android/wifi/SemAbTestConfiguration;-><init>(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    return-object v1

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public getAbTestVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public initialize()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestMessageHandler:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public isAbTestByPushedFile()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestByPushedFile:Z

    .line 2
    .line 3
    return p0
.end method

.method public isAbTestEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public registerAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "registerAbTestConfigUpdateObserver : module = "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, " uid/pid = "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "/"

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ")"

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mRegisteredAbTestObservers:Landroid/os/RemoteCallbackList;

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public reportAbTestDailyStatus()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestByPushedFile:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "AbTestManager"

    .line 6
    .line 7
    const-string v0, "reportAbTestDailyStatus: Do not report DailyStatus SA Logging. This is A/B Test by pushed configuration file."

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "[ACTIVATION_STATUS] "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivated:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v1, "Activated"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v1, "Deactivated"

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, " [ACTIVATION_CONDITION] "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivationCondition:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " [VERSION] "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mVersion:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    const-string v1, "CONFIGURATION_NOT_AVAILABLE"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mVersion:Ljava/lang/String;

    .line 59
    .line 60
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "reportAbTestDailyStatus - "

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "ab_test_daily_status"

    .line 77
    .line 78
    const-string v2, "dimension_1"

    .line 79
    .line 80
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->reportSaLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivated:Z

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 111
    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v4, "[ONGOING_TEST] ["

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v4, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mVersion:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v4, "] ["

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v4, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v4, "] ["

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v4, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;->id:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v4, "] "

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget v2, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    .line 153
    .line 154
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->indexToGroupName(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v4, "reportAbTestDailyStatus - "

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v3, "ab_test_daily_status"

    .line 186
    .line 187
    const-string v4, "dimension_2"

    .line 188
    .line 189
    invoke-direct {p0, v3, v4, v2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->reportSaLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :catchall_0
    move-exception p0

    .line 194
    goto :goto_3

    .line 195
    :cond_3
    monitor-exit v0

    .line 196
    return-void

    .line 197
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    throw p0

    .line 199
    :cond_4
    return-void
.end method

.method public reportAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "reportAbTestResult - "

    .line 2
    .line 3
    const-string v1, "reportAbTestResult - "

    .line 4
    .line 5
    const-string v2, "reportAbTestResult - "

    .line 6
    .line 7
    const-string v3, "reportAbTestResult - "

    .line 8
    .line 9
    const-string v4, "reportAbTestResult - "

    .line 10
    .line 11
    iget-object v5, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->updateAbTestActivated()V

    .line 15
    .line 16
    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v7, "/"

    .line 26
    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v7, "/"

    .line 34
    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestEnabled:Z

    .line 46
    .line 47
    if-nez v7, :cond_0

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p2, " - DO NOT REPORT - A/B test is disabled."

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    monitor-exit v5

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestConfigs:Ljava/util/Map;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-interface {v4, p1, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 82
    .line 83
    if-nez p1, :cond_1

    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p2, " - DO NOT REPORT - config not found."

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    monitor-exit v5

    .line 106
    return-void

    .line 107
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestActivated:Z

    .line 108
    .line 109
    if-eqz v3, :cond_b

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->isAbTestInProgress()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_2

    .line 116
    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :cond_2
    iget v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    .line 120
    .line 121
    const/4 v3, -0x1

    .line 122
    if-ne v0, v3, :cond_3

    .line 123
    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p2, " - DO NOT REPORT - Test group not allocated."

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    monitor-exit v5

    .line 145
    return-void

    .line 146
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getMyOutputList()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_4

    .line 155
    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p2, " - DO NOT REPORT - outputName is not defined in the config."

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    monitor-exit v5

    .line 177
    return-void

    .line 178
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getTestOutputList()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    move-object v1, v7

    .line 187
    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_8

    .line 192
    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;

    .line 198
    .line 199
    iget-object v3, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->name:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_5

    .line 206
    .line 207
    iget v3, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    .line 208
    .line 209
    if-nez v3, :cond_6

    .line 210
    .line 211
    iget-object v1, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->event:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 212
    .line 213
    iget-object v1, v1, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupA:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v2, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->dimension:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 216
    .line 217
    iget-object v2, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupA:Ljava/lang/String;

    .line 218
    .line 219
    :goto_1
    move-object v7, v1

    .line 220
    move-object v1, v2

    .line 221
    goto :goto_0

    .line 222
    :cond_6
    const/4 v4, 0x1

    .line 223
    if-ne v3, v4, :cond_7

    .line 224
    .line 225
    iget-object v1, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->event:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 226
    .line 227
    iget-object v1, v1, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupB:Ljava/lang/String;

    .line 228
    .line 229
    iget-object v2, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->dimension:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 230
    .line 231
    iget-object v2, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupB:Ljava/lang/String;

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_7
    const/4 v4, 0x2

    .line 235
    if-ne v3, v4, :cond_5

    .line 236
    .line 237
    iget-object v1, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->event:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 238
    .line 239
    iget-object v1, v1, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupC:Ljava/lang/String;

    .line 240
    .line 241
    iget-object v2, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->dimension:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 242
    .line 243
    iget-object v2, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupC:Ljava/lang/String;

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-nez v0, :cond_a

    .line 251
    .line 252
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_9

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v2, "["

    .line 265
    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget-object v2, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v2, "][id:"

    .line 275
    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget-object v2, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->id:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v2, "][group:"

    .line 285
    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    iget p1, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    .line 290
    .line 291
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->indexToGroupName(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string p1, "][outputName:"

    .line 299
    .line 300
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string p1, "] "

    .line 307
    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p3, "reportAbTestResult - "

    .line 324
    .line 325
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string p3, " - REPORT to SALogging "

    .line 332
    .line 333
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string p3, "/"

    .line 340
    .line 341
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string p3, " - "

    .line 348
    .line 349
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-direct {p0, v7, v1, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->reportSaLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    monitor-exit v5

    .line 366
    return-void

    .line 367
    :cond_a
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    const-string p2, "reportAbTestResult - "

    .line 373
    .line 374
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string p2, " - DO NOT REPORT - saEvent/saDimension not defined."

    .line 381
    .line 382
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    monitor-exit v5

    .line 393
    return-void

    .line 394
    :cond_b
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string p2, " - DO NOT REPORT - AB test not activated or not in progress."

    .line 403
    .line 404
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    monitor-exit v5

    .line 415
    return-void

    .line 416
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    throw p0
.end method

.method public setAbTestByPushedFile(Z)V
    .locals 1

    .line 1
    const-string v0, "mAbTestByPushedFile: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestByPushedFile:Z

    .line 11
    .line 12
    return-void
.end method

.method public setAbTestVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "setAbTestVersion: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mVersion:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public setEnableAbTest(Z)V
    .locals 1

    .line 1
    const-string v0, "setEnableAbTest: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestEnabled:Z

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mAbTestMessageHandler:Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public unregisterAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "unregisterAbTestConfigUpdateObserver : uid/pid = "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, "/"

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ")"

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->localLog(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->mRegisteredAbTestObservers:Landroid/os/RemoteCallbackList;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method
