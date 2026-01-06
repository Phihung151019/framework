.class public Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;,
        Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SemWifiTransportLayerMonitor"


# instance fields
.field private final mApInfoListLock:Ljava/lang/Object;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentWifiApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

.field private mCurrentWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageUpdateHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

.field private mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

.field private mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field private mUsageStatsPackageName:Ljava/lang/String;

.field private mUsageStatsUid:I

.field private final mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

.field private mWifiApInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiPackageInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiSwitchEnabledUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmApInfoListLock(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mApInfoListLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentUserId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageUpdateHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageUpdateHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageStatsUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsUid:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentUserId:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsageStatsPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsageStatsUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsUid:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetOrCreatePackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getOrCreatePackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPackageManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserIdBasedUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getUserIdBasedUid(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misCategoryUpdateable(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isCategoryUpdateable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$msendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->sendBigDataFeatureForTcpe(IIZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentUserId:I

    .line 20
    .line 21
    new-instance p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$3;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 27
    .line 28
    new-instance p2, Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mApInfoListLock:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const/4 p2, -0x1

    .line 38
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsUid:I

    .line 39
    .line 40
    const-string p2, "default"

    .line 41
    .line 42
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    .line 43
    .line 44
    :try_start_0
    const-string p2, "usagestats"

    .line 45
    .line 46
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p2}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 55
    .line 56
    invoke-interface {p2, p1}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    const-string p2, "Exception occured while register UsageStatWatcher "

    .line 62
    .line 63
    const-string p3, "SemWifiTransportLayerMonitor"

    .line 64
    .line 65
    invoke-static {p2, p1, p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->setupHandlers()V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->loadInfoFromFile()V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->setupBroadcastReceiver()V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->setAudioPlaybackCallback()V

    .line 78
    .line 79
    .line 80
    new-instance p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    .line 81
    .line 82
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-direct {p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    .line 88
    .line 89
    return-void
.end method

.method private createWifiPackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v0
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "CountryISO"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :catch_0
    :cond_0
    const-string p0, " "

    .line 15
    .line 16
    return-object p0
.end method

.method private getOrCreatePackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    const-string v1, "SemWifiTransportLayerMonitor"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "getOrCreatePackageInfo - "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " "

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string v0, "getOrCreatePackageInfo - create new info"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 44
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->createWifiPackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v2, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    :cond_2
    const-string v0, "getOrCreatePackageInfo - invalid packageName"

    .line 78
    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 83
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->createWifiPackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "NONE"

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 109
    .line 110
    const/4 v2, 0x6

    .line 111
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    .line 118
    .line 119
    :cond_4
    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    return-object p0
.end method

.method private getUserIdBasedUid(II)I
    .locals 0

    .line 1
    const p0, 0x186a0

    .line 2
    .line 3
    .line 4
    mul-int/2addr p2, p0

    .line 5
    add-int/2addr p2, p1

    .line 6
    return p2
.end method

.method private isCategoryUpdateable()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "isCategoryUpdateable - "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isNetworkConnected()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getCountryCode()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "SemWifiTransportLayerMonitor"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isNetworkConnected()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const-string v0, "CN"

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getCountryCode()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_1

    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    return p0

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    return p0
.end method

.method private isNetworkConnected()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

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
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method private loadInfoFromFile()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    const-string v1, "SemWifiTransportLayerMonitor"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v2, "loadInfoFromFile"

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->loadWifiPackageInfoFromFile()Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v4, "loadInfoFromFile - PACKAGE - "

    .line 55
    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->loadWifiApInfoFromFile()Ljava/util/HashMap;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    .line 81
    .line 82
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 83
    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 115
    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v4, "loadInfoFromFile - AP - "

    .line 119
    .line 120
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiTransportLayerFileManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->loadSwitchEnabledUidListFromFile()Ljava/util/ArrayList;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 145
    .line 146
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 147
    .line 148
    if-eqz v2, :cond_3

    .line 149
    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_3

    .line 157
    .line 158
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    const/4 v2, 0x0

    .line 165
    :goto_2
    if-ge v2, v0, :cond_3

    .line 166
    .line 167
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    check-cast v3, Ljava/lang/Integer;

    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    const-string v4, "loadInfoFromFile - Switch Enabed UID - "

    .line 180
    .line 181
    invoke-static {v3, v4}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_3
    return-void
.end method

.method private sendBigDataFeatureForTcpe(IIZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {v2, p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput p2, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    .line 17
    .line 18
    iget p1, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getCurrentWifiApInfo()Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget p1, v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->isSwitchEnabledApp(I)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    move v6, p3

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->sendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;ZZ)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-string p0, "SemWifiTransportLayerMonitor"

    .line 40
    .line 41
    const-string p1, "sendBigDataFeatureForTCPE - Failed to send bigdata"

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private setAudioPlaybackCallback()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiTransportLayerMonitor"

    .line 6
    .line 7
    const-string v1, "setAudioPlaybackCallback"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v1, "audio"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/media/AudioManager;

    .line 21
    .line 22
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$1;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, p0}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private setupBroadcastReceiver()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiTransportLayerMonitor"

    .line 6
    .line 7
    const-string v1, "setupBroadcastReceiver"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$2;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$2;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "package"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private setupHandlers()V
    .locals 2

    .line 1
    const-string v0, "NetworkStatsThread"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageUpdateHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public addWifiPackageDetectedCount(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\n\n[SWITCH ENABLED PACKAGE INFO]\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 9
    .line 10
    const-string v2, ", [UID] "

    .line 11
    .line 12
    const-string v3, "[INDEX] "

    .line 13
    .line 14
    const-string v4, "\n"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    move v7, v5

    .line 32
    move v8, v7

    .line 33
    :goto_0
    if-ge v8, v6, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    add-int/lit8 v8, v8, 0x1

    .line 40
    .line 41
    check-cast v9, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    new-instance v10, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v11, v7, 0x1

    .line 53
    .line 54
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v10, ", [PACKAGE] "

    .line 82
    .line 83
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move v7, v11

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    const-string v1, "\n\n[AP INFO]\n"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    .line 111
    .line 112
    const-string v6, ", [DetectedCount] "

    .line 113
    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_3

    .line 121
    .line 122
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    move v7, v5

    .line 133
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_4

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 144
    .line 145
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSwitchForIndivdiaulAppsDetectionCount()I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-lez v9, :cond_1

    .line 150
    .line 151
    new-instance v9, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v10, v7, 0x1

    .line 157
    .line 158
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v9, ", [SSID] "

    .line 171
    .line 172
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSsid()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v9, ", [ConnectionCount] "

    .line 192
    .line 193
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionCount()I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    new-instance v7, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v9, ", [ConnectionTime] "

    .line 213
    .line 214
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionTime()I

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v9, ", [DetectionCount] "

    .line 234
    .line 235
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSwitchForIndivdiaulAppsDetectionCount()I

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    if-eqz v7, :cond_2

    .line 260
    .line 261
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    if-nez v8, :cond_2

    .line 266
    .line 267
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v8

    .line 279
    if-eqz v8, :cond_2

    .line 280
    .line 281
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    check-cast v8, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 286
    .line 287
    new-instance v9, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v11, "  [DetectedPackage] "

    .line 290
    .line 291
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getPackageName()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v11

    .line 298
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    new-instance v9, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v11, ", [LastDetectedTime] "

    .line 311
    .line 312
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getLastDetectedTime()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v9

    .line 326
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    new-instance v9, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    .line 335
    .line 336
    .line 337
    move-result v11

    .line 338
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    new-instance v9, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    const-string v11, ", [PackageNormalOperationTime] "

    .line 351
    .line 352
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getPackageNormalOperationTime()I

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    goto :goto_2

    .line 373
    :cond_2
    move v7, v10

    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :cond_3
    const-string v1, "EMTPY\n"

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    :cond_4
    const-string v1, "\n\n[PACKAGE INFO]\n"

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    .line 387
    .line 388
    if-eqz v1, :cond_6

    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-nez v1, :cond_6

    .line 395
    .line 396
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    .line 397
    .line 398
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-eqz v1, :cond_6

    .line 411
    .line 412
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 417
    .line 418
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    if-nez v7, :cond_5

    .line 423
    .line 424
    new-instance v7, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    add-int/lit8 v8, v5, 0x1

    .line 430
    .line 431
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 447
    .line 448
    .line 449
    move-result v7

    .line 450
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    const-string v7, ", [PackageName] "

    .line 463
    .line 464
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    new-instance v5, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v7, ", [Switchable] "

    .line 484
    .line 485
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSwitchable()Z

    .line 489
    .line 490
    .line 491
    move-result v7

    .line 492
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    new-instance v5, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    const-string v7, ", [Category] "

    .line 505
    .line 506
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    new-instance v5, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDetectedCount()I

    .line 529
    .line 530
    .line 531
    move-result v7

    .line 532
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    const-string v7, ", [BrowsingApp] "

    .line 545
    .line 546
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isBrowsingApp()Z

    .line 550
    .line 551
    .line 552
    move-result v7

    .line 553
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    const-string v7, ", [ChatApp] "

    .line 566
    .line 567
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    .line 571
    .line 572
    .line 573
    move-result v7

    .line 574
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    const-string v7, ", [GamingApp] "

    .line 587
    .line 588
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isGamingApp()Z

    .line 592
    .line 593
    .line 594
    move-result v7

    .line 595
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    const-string v7, ", [Launchable] "

    .line 608
    .line 609
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isLaunchable()Z

    .line 613
    .line 614
    .line 615
    move-result v7

    .line 616
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v5

    .line 623
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    new-instance v5, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    const-string v7, ", [SystemApp] "

    .line 629
    .line 630
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    .line 634
    .line 635
    .line 636
    move-result v7

    .line 637
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v5

    .line 644
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    new-instance v5, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    const-string v7, ", [Voip] "

    .line 650
    .line 651
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isVoip()Z

    .line 655
    .line 656
    .line 657
    move-result v7

    .line 658
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v5

    .line 665
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    new-instance v5, Ljava/lang/StringBuilder;

    .line 669
    .line 670
    const-string v7, ", [UsagePattern] "

    .line 671
    .line 672
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUsagePattern()I

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    move v5, v8

    .line 693
    goto/16 :goto_3

    .line 694
    .line 695
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object p0

    .line 699
    return-object p0
.end method

.method public enableSwitchEnabledAppInfo(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public getCurrentPackageInfo()Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .locals 4

    .line 1
    const-string v0, "SemWifiTransportLayerMonitor"

    .line 2
    .line 3
    const-string v1, "getCurrentPackageInfo package changed - MATCH ANY USER: "

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v2, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_4

    .line 20
    .line 21
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_4

    .line 28
    .line 29
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception v1

    .line 44
    goto :goto_2

    .line 45
    :catch_2
    move-exception v1

    .line 46
    goto :goto_3

    .line 47
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const v3, 0x400080

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 59
    .line 60
    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentUserId:I

    .line 61
    .line 62
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getUserIdBasedUid(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iput v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsUid:I

    .line 67
    .line 68
    iput-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mUsageStatsPackageName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getOrCreatePackageInfo(ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :goto_1
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    const-string v2, "getCurrentPackageInfo - Exception"

    .line 82
    .line 83
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :goto_2
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 91
    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    const-string v2, "getCurrentPackageInfo - RemoteException"

    .line 95
    .line 96
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :goto_3
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 104
    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    const-string v2, "getCurrentPackageInfo - NameNotFoundException"

    .line 108
    .line 109
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiPackageInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 116
    .line 117
    return-object p0
.end method

.method public getCurrentWifiApInfo()Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiTransportLayerMonitor"

    .line 6
    .line 7
    const-string v1, "getCurrentWifiApInfo"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 13
    .line 14
    return-object p0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const-string p0, ""

    .line 33
    .line 34
    return-object p0
.end method

.method public getTcpeManager()Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpeManager:Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWifiApInfo(Ljava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiTransportLayerMonitor"

    .line 6
    .line 7
    const-string v1, "getWifiApInfo - "

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mApInfoListLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiApInfoList:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-object v1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    monitor-exit v0

    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public isSwitchEnabledApp(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public onBootCompleted()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiTransportLayerMonitor"

    .line 6
    .line 7
    const-string v1, "ACTION_BOOT_COMPLETED"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mWifiPackageInfoList:Ljava/util/HashMap;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mPackageUpdateHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public resetSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "resetSwitchForIndivdiaulAppsDetectionCount - "

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SemWifiTransportLayerMonitor"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x16

    .line 21
    .line 22
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public saveTcpMonitorFiles()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiTransportLayerMonitor"

    .line 6
    .line 7
    const-string v1, "saveTcpMonitorFiles"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x28

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setSsid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiTransportLayerMonitor"

    .line 6
    .line 7
    const-string v1, "setSsid"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiApInfo(Ljava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mCurrentWifiApInfo:Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 31
    .line 32
    return-object p0
.end method

.method public updateSwitchEnabledAppList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x1f

    .line 6
    .line 7
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "updateWifiApInfo - "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "SemWifiTransportLayerMonitor"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->mTcpMonitorHandler:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x14

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
