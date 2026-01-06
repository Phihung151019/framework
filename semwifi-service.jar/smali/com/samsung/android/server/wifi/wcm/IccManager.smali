.class public Lcom/samsung/android/server/wifi/wcm/IccManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;,
        Lcom/samsung/android/server/wifi/wcm/IccManager$HandlerMessage;,
        Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;,
        Lcom/samsung/android/server/wifi/wcm/IccManager$BssidGroup;,
        Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;,
        Lcom/samsung/android/server/wifi/wcm/IccManager$InfResult;,
        Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;
    }
.end annotation


# static fields
.field private static final DUMP_LOG_MAX_SIZE:I = 0x3e8

.field private static final ICC_DISABLE_TIME:J = 0x1d4c0L

.field private static final ICC_WIFI_CONNECTION_TIME:J = 0x2bf20L

.field private static final TRAINING_DATA_MAX_SIZE:I = 0x64

.field private static final dbsearchTh:I = 0x1e

.field private static final numOfFp:I = 0xa


# instance fields
.field private final DBG:Z

.field private InfKeyGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final TAG:Ljava/lang/String;

.field private final TRAINING_DATA_ROOT_PATH:Ljava/lang/String;

.field private final hookCallback:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;

.field private final iccInfServiceIntent:Landroid/content/Intent;

.field private iccStateLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final iccTrServiceIntent:Landroid/content/Intent;

.field private infConfidence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private infResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private infResult2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private infResultDB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private infreqTime:Ljava/lang/String;

.field private isEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mConnectedTime:J

.field private final mContext:Landroid/content/Context;

.field private mDataElement:Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIccHandler:Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

.field private final mIccInfServiceConnection:Landroid/content/ServiceConnection;

.field private final mIccTrServiceConnection:Landroid/content/ServiceConnection;

.field private mInfServicePid:I

.field private mInferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;",
            ">;"
        }
    .end annotation
.end field

.field private mInvalidTimeStamp:J

.field private mIsAlreadyTimeout:Z

.field private mLastScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnceDisabledNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreScanResultProcessor:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

.field private mScanResultConnected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mTrServicePid:I

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

.field private final mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final msTomin:J

.field private tfConf:Ljava/lang/String;

.field private trainInProgress:Z


# direct methods
.method public static synthetic $r8$lambda$QMzKCst0w1AFGjSoMnXt31d3U1c(Landroid/net/wifi/nl80211/NativeScanResult;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->lambda$iccInferenceList$0(Landroid/net/wifi/nl80211/NativeScanResult;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetInfKeyGroupList(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->InfKeyGroupList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethookCallback(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->hookCallback:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinfResultDB(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infResultDB:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisEnabled(Lcom/samsung/android/server/wifi/wcm/IccManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->isEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/app/ActivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedTime(Lcom/samsung/android/server/wifi/wcm/IccManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mConnectedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mDataElement:Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIccHandler(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccHandler:Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfServicePid(Lcom/samsung/android/server/wifi/wcm/IccManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mInfServicePid:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInferenceList(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mInferenceList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInvalidTimeStamp(Lcom/samsung/android/server/wifi/wcm/IccManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mInvalidTimeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAlreadyTimeout(Lcom/samsung/android/server/wifi/wcm/IccManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIsAlreadyTimeout:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastScanResults(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mLastScanResults:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnceDisabledNetworkMap(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mOnceDisabledNetworkMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreScanResultProcessor(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mPreScanResultProcessor:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanResultConnected(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mScanResultConnected:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrServicePid(Lcom/samsung/android/server/wifi/wcm/IccManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mTrServicePid:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnectivityMonitor(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettrainInProgress(Lcom/samsung/android/server/wifi/wcm/IccManager;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->trainInProgress:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputInfKeyGroupList(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->InfKeyGroupList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputinfConfidence(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infConfidence:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputinfResult(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infResult:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputinfResult2(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infResult2:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputinfResultDB(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infResultDB:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputinfreqTime(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infreqTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisEnabled(Lcom/samsung/android/server/wifi/wcm/IccManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->isEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectedTime(Lcom/samsung/android/server/wifi/wcm/IccManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mConnectedTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mDataElement:Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInfServicePid(Lcom/samsung/android/server/wifi/wcm/IccManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mInfServicePid:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInvalidTimeStamp(Lcom/samsung/android/server/wifi/wcm/IccManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mInvalidTimeStamp:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAlreadyTimeout(Lcom/samsung/android/server/wifi/wcm/IccManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIsAlreadyTimeout:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastScanResults(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mLastScanResults:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScanResultConnected(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mScanResultConnected:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrServicePid(Lcom/samsung/android/server/wifi/wcm/IccManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mTrServicePid:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/wcm/IccManager;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->getDataElement()Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetKeyFromConfig(Lcom/samsung/android/server/wifi/wcm/IccManager;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->getKeyFromConfig(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$minferenceByDB(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/lang/String;Ljava/util/List;)[Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/IccManager;->inferenceByDB(Ljava/lang/String;Ljava/util/List;)[Z

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateInferenceList(Lcom/samsung/android/server/wifi/wcm/IccManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->updateInferenceList()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "IccManager"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->DBG:Z

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mTrServicePid:I

    .line 16
    .line 17
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mInfServicePid:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->trainInProgress:Z

    .line 21
    .line 22
    const-string v2, ""

    .line 23
    .line 24
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->tfConf:Ljava/lang/String;

    .line 25
    .line 26
    const-wide/32 v2, 0xea60

    .line 27
    .line 28
    .line 29
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->msTomin:J

    .line 30
    .line 31
    new-instance v2, Ljava/util/LinkedList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mHistory:Ljava/util/LinkedList;

    .line 37
    .line 38
    const-string v2, "/data/data/com.samsung.android.wifi.intelligence/files/icc"

    .line 39
    .line 40
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TRAINING_DATA_ROOT_PATH:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v2, Landroid/content/Intent;

    .line 43
    .line 44
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "com.samsung.android.wifi.intelligence.icc.IccTrService"

    .line 48
    .line 49
    const-string v4, "com.samsung.android.wifi.intelligence"

    .line 50
    .line 51
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->iccTrServiceIntent:Landroid/content/Intent;

    .line 56
    .line 57
    new-instance v2, Landroid/content/Intent;

    .line 58
    .line 59
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, "com.samsung.android.wifi.intelligence.icc.IccInfService"

    .line 63
    .line 64
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->iccInfServiceIntent:Landroid/content/Intent;

    .line 69
    .line 70
    new-instance v2, Lcom/samsung/android/server/wifi/wcm/IccManager$1;

    .line 71
    .line 72
    const-class v3, Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 73
    .line 74
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/wcm/IccManager$1;-><init>(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->hookCallback:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;

    .line 78
    .line 79
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/IccManager$2;

    .line 80
    .line 81
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/wcm/IccManager$2;-><init>(Lcom/samsung/android/server/wifi/wcm/IccManager;)V

    .line 82
    .line 83
    .line 84
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccInfServiceConnection:Landroid/content/ServiceConnection;

    .line 85
    .line 86
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/IccManager$3;

    .line 87
    .line 88
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/wcm/IccManager$3;-><init>(Lcom/samsung/android/server/wifi/wcm/IccManager;)V

    .line 89
    .line 90
    .line 91
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccTrServiceConnection:Landroid/content/ServiceConnection;

    .line 92
    .line 93
    const-string v3, "IccHandlerThread"

    .line 94
    .line 95
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    new-instance v4, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-direct {v4, p0, v3}, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;-><init>(Lcom/samsung/android/server/wifi/wcm/IccManager;Landroid/os/Looper;)V

    .line 106
    .line 107
    .line 108
    iput-object v4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccHandler:Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 109
    .line 110
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mPreScanResultProcessor:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiEnhancedFeatureController()Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    iput-object v4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiEnhancedFeatureController:Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;

    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    iput-object v5, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiManager:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 143
    .line 144
    new-instance v5, Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 147
    .line 148
    .line 149
    iput-object v5, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mOnceDisabledNetworkMap:Ljava/util/HashMap;

    .line 150
    .line 151
    const-string v5, "wifi_intelligent_connection_control_enabled"

    .line 152
    .line 153
    invoke-virtual {p3, p1, v5, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    const/4 v7, 0x1

    .line 158
    if-ne v6, v0, :cond_0

    .line 159
    .line 160
    invoke-virtual {p3, p1, v5, v7}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 161
    .line 162
    .line 163
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/IccManager$4;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/wcm/IccManager$4;-><init>(Lcom/samsung/android/server/wifi/wcm/IccManager;)V

    .line 166
    .line 167
    .line 168
    if-eqz v4, :cond_1

    .line 169
    .line 170
    invoke-virtual {v4, v0}, Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;)V

    .line 171
    .line 172
    .line 173
    :cond_1
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/IccManager$5;

    .line 174
    .line 175
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccHandler:Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 176
    .line 177
    invoke-direct {v0, p0, v4}, Lcom/samsung/android/server/wifi/wcm/IccManager$5;-><init>(Lcom/samsung/android/server/wifi/wcm/IccManager;Landroid/os/Handler;)V

    .line 178
    .line 179
    .line 180
    new-instance v4, Lcom/samsung/android/server/wifi/wcm/IccManager$6;

    .line 181
    .line 182
    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/wcm/IccManager$6;-><init>(Lcom/samsung/android/server/wifi/wcm/IccManager;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p3, p1, v5, v7}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-ne p2, v7, :cond_2

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_2
    move v7, v1

    .line 196
    :goto_0
    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->isEnabled:Z

    .line 197
    .line 198
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->registerHookCallback(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;)Z

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p3, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    invoke-virtual {p2, p3, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    .line 211
    .line 212
    const-string p2, "activity"

    .line 213
    .line 214
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Landroid/app/ActivityManager;

    .line 219
    .line 220
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 221
    .line 222
    return-void
.end method

.method private EuclideanDist([F[F)F
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    const/16 v1, 0xa

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    aget v1, p1, v0

    .line 8
    .line 9
    aget v2, p2, v0

    .line 10
    .line 11
    sub-float/2addr v1, v2

    .line 12
    mul-float/2addr v1, v1

    .line 13
    add-float/2addr p0, v1

    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    float-to-double p0, p0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide p0

    .line 22
    double-to-float p0, p0

    .line 23
    return p0
.end method

.method private checkOptDb(Ljava/lang/String;)F
    .locals 5

    .line 1
    const-string v0, "optDBcheck : "

    .line 2
    .line 3
    const-string v1, "/data/data/com.samsung.android.wifi.intelligence/files/icc/"

    .line 4
    .line 5
    const-string v2, "/OptDB.csv"

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/high16 p1, -0x40800000    # -1.0f

    .line 29
    .line 30
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 31
    .line 32
    new-instance v3, Ljava/io/FileReader;

    .line 33
    .line 34
    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    const-string v0, ","

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x0

    .line 70
    aget-object v0, v0, v1

    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 73
    .line 74
    .line 75
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .line 81
    .line 82
    return p1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    goto :goto_3

    .line 85
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_1
    move-exception v1

    .line 90
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 94
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, "OptDb info err : "

    .line 99
    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    return p1
.end method

.method private checkTrData(Ljava/lang/String;)[I
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "true"

    .line 19
    .line 20
    const-string v1, "false"

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    new-array v2, v2, [I

    .line 24
    .line 25
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 26
    .line 27
    new-instance v4, Ljava/io/FileReader;

    .line 28
    .line 29
    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    move v4, v0

    .line 37
    move v5, v4

    .line 38
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    const-string v7, ","

    .line 45
    .line 46
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    aget-object v7, v6, v0

    .line 51
    .line 52
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_1

    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    aget-object v6, v6, v0

    .line 62
    .line 63
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_0

    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    aput v4, v2, v0

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    aput v5, v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .line 81
    .line 82
    return-object v2

    .line 83
    :catch_0
    move-exception p1

    .line 84
    goto :goto_3

    .line 85
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 94
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "Exception on checkData : "

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return-object v2
.end method

.method private connectionControl(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/IccManager$InfResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mOnceDisabledNetworkMap:Ljava/util/HashMap;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_4

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/IccManager$InfResult;

    .line 23
    .line 24
    iget-object v4, v3, Lcom/samsung/android/server/wifi/wcm/IccManager$InfResult;->element:Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->wifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 27
    .line 28
    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/wcm/IccManager$InfResult;->result:Z

    .line 29
    .line 30
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v5}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    if-nez v3, :cond_3

    .line 65
    .line 66
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mOnceDisabledNetworkMap:Ljava/util/HashMap;

    .line 67
    .line 68
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 69
    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    const-wide/32 v5, 0x1d4c0

    .line 79
    .line 80
    .line 81
    if-nez v3, :cond_2

    .line 82
    .line 83
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mOnceDisabledNetworkMap:Ljava/util/HashMap;

    .line 84
    .line 85
    iget v7, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 86
    .line 87
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/wcm/IccManager;->disableNetworkByIcc(Landroid/net/wifi/WifiConfiguration;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_0

    .line 103
    .line 104
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccHandler:Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 105
    .line 106
    const/16 v7, 0xb

    .line 107
    .line 108
    invoke-static {v3, v7, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccHandler:Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 113
    .line 114
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mOnceDisabledNetworkMap:Ljava/util/HashMap;

    .line 119
    .line 120
    iget v7, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 121
    .line 122
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Ljava/lang/Long;

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 133
    .line 134
    .line 135
    move-result-wide v7

    .line 136
    sub-long v7, v0, v7

    .line 137
    .line 138
    cmp-long v3, v7, v5

    .line 139
    .line 140
    if-lez v3, :cond_0

    .line 141
    .line 142
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/wcm/IccManager;->enableNetworkByIcc(Landroid/net/wifi/WifiConfiguration;)Z

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mOnceDisabledNetworkMap:Ljava/util/HashMap;

    .line 148
    .line 149
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 150
    .line 151
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_0

    .line 160
    .line 161
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mOnceDisabledNetworkMap:Ljava/util/HashMap;

    .line 162
    .line 163
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 164
    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/wcm/IccManager;->enableNetworkByIcc(Landroid/net/wifi/WifiConfiguration;)Z

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_4
    monitor-exit v2

    .line 178
    return-void

    .line 179
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    throw p0
.end method

.method private disableNetworkByIcc(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x2

    .line 27
    if-ne v1, v3, :cond_0

    .line 28
    .line 29
    iget v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiManager:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 35
    .line 36
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->disableNetwork(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, "Failed to disable the network"

    .line 47
    .line 48
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move v1, v2

    .line 62
    :goto_0
    if-eqz v1, :cond_1

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    iput v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 66
    .line 67
    iput-boolean v2, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 68
    .line 69
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 76
    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, " disabled by ICC"

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    return v1

    .line 103
    :cond_2
    :goto_1
    return v2
.end method

.method private enableNetworkByIcc(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiManager:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 22
    .line 23
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 24
    .line 25
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v4, "Failed to enable the entwork"

    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move v1, v2

    .line 49
    :goto_0
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    if-ne v3, v4, :cond_1

    .line 55
    .line 56
    iput v2, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 57
    .line 58
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 65
    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " enabled by ICC"

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return v1

    .line 92
    :cond_2
    :goto_1
    return v2
.end method

.method private getCandidatesFromScanResult(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Landroid/net/wifi/nl80211/NativeScanResult;

    .line 36
    .line 37
    new-instance v5, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/net/wifi/nl80211/NativeScanResult;->getSsid()[B

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 46
    .line 47
    .line 48
    const-string v6, "\""

    .line 49
    .line 50
    invoke-static {v6, v5, v6}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4}, Landroid/net/wifi/nl80211/NativeScanResult;->getBssid()Landroid/net/MacAddress;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v6}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v6}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSecurityTypeFromScanResult(Landroid/net/wifi/nl80211/NativeScanResult;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_0

    .line 83
    .line 84
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Landroid/net/wifi/SecurityParams;

    .line 89
    .line 90
    invoke-direct {p0, v5, v7, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->getMatchedNetwork(Ljava/lang/String;Landroid/net/wifi/SecurityParams;Ljava/util/List;)Landroid/net/wifi/WifiConfiguration;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    if-eqz v8, :cond_1

    .line 95
    .line 96
    invoke-static {v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-virtual {v7}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-direct {p0, v7, v6}, Lcom/samsung/android/server/wifi/wcm/IccManager;->getGroupId(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    const/4 v10, -0x1

    .line 116
    if-eq v9, v10, :cond_1

    .line 117
    .line 118
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-nez v10, :cond_1

    .line 123
    .line 124
    new-instance v10, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 125
    .line 126
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    invoke-direct {v10, v7, v11, v12, v8}, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    return-object v2
.end method

.method private getDataElement()Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "/data/data/com.samsung.android.wifi.intelligence/files/icc/"

    .line 31
    .line 32
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Ljava/io/File;

    .line 42
    .line 43
    const-string v5, "/key-map-table.csv"

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v6, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const/4 v8, 0x0

    .line 67
    if-nez v7, :cond_0

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_0

    .line 74
    .line 75
    return-object v8

    .line 76
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const/4 v7, 0x0

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 84
    .line 85
    new-instance v9, Ljava/io/FileReader;

    .line 86
    .line 87
    invoke-direct {v9, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    if-eqz v10, :cond_2

    .line 106
    .line 107
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    const-string v11, ","

    .line 111
    .line 112
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    array-length v11, v10

    .line 117
    const/4 v12, 0x2

    .line 118
    if-ge v11, v12, :cond_1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    aget-object v11, v10, v7

    .line 122
    .line 123
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    const/4 v12, 0x1

    .line 132
    aget-object v10, v10, v12

    .line 133
    .line 134
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    move-object v2, v0

    .line 148
    goto :goto_1

    .line 149
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :catch_0
    move-exception v0

    .line 154
    goto :goto_3

    .line 155
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catchall_1
    move-exception v0

    .line 160
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 164
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object v8

    .line 172
    :cond_3
    move v9, v7

    .line 173
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v10, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->mScanResultConnected:Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    const/4 v11, -0x1

    .line 185
    move v12, v11

    .line 186
    :cond_4
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    if-eqz v13, :cond_7

    .line 191
    .line 192
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    check-cast v13, Landroid/net/wifi/ScanResult;

    .line 197
    .line 198
    iget-object v14, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 199
    .line 200
    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v14

    .line 204
    iget-object v15, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 205
    .line 206
    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    invoke-direct {v1, v14, v15, v13}, Lcom/samsung/android/server/wifi/wcm/IccManager;->isMatched(Ljava/lang/String;ILandroid/net/wifi/ScanResult;)Z

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    if-eqz v14, :cond_4

    .line 215
    .line 216
    if-ne v12, v11, :cond_6

    .line 217
    .line 218
    iget-object v14, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 219
    .line 220
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    invoke-static {v14}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 225
    .line 226
    .line 227
    move-result v14

    .line 228
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    if-eqz v14, :cond_5

    .line 237
    .line 238
    iget-object v12, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 239
    .line 240
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    invoke-static {v12}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    check-cast v12, Ljava/lang/Integer;

    .line 257
    .line 258
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    goto :goto_5

    .line 263
    :cond_5
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_6
    iget-object v14, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 268
    .line 269
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v14

    .line 273
    invoke-static {v14}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v14

    .line 281
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v14

    .line 285
    if-nez v14, :cond_4

    .line 286
    .line 287
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_7
    if-ne v12, v11, :cond_9

    .line 292
    .line 293
    iget-object v10, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 294
    .line 295
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    invoke-static {v10}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v10

    .line 315
    if-eqz v10, :cond_8

    .line 316
    .line 317
    iget-object v10, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 318
    .line 319
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v10

    .line 327
    invoke-static {v10}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 328
    .line 329
    .line 330
    move-result v10

    .line 331
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    check-cast v6, Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    move/from16 v16, v9

    .line 346
    .line 347
    move v9, v6

    .line 348
    move/from16 v6, v16

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_8
    add-int/lit8 v6, v9, 0x1

    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_9
    move v6, v9

    .line 355
    move v9, v12

    .line 356
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 357
    .line 358
    .line 359
    move-result v10

    .line 360
    move v12, v7

    .line 361
    :goto_7
    if-ge v12, v10, :cond_a

    .line 362
    .line 363
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v13

    .line 367
    add-int/lit8 v12, v12, 0x1

    .line 368
    .line 369
    check-cast v13, Landroid/net/wifi/ScanResult;

    .line 370
    .line 371
    iget-object v13, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 372
    .line 373
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v13

    .line 377
    invoke-static {v13}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v13

    .line 385
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v14

    .line 389
    filled-new-array {v13, v14}, [Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v13

    .line 393
    const-string v14, "%d,%d"

    .line 394
    .line 395
    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v13

    .line 399
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    goto :goto_7

    .line 403
    :cond_a
    :try_start_5
    new-instance v3, Ljava/io/BufferedWriter;

    .line 404
    .line 405
    new-instance v10, Ljava/io/FileWriter;

    .line 406
    .line 407
    invoke-direct {v10, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 408
    .line 409
    .line 410
    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 411
    .line 412
    .line 413
    :try_start_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    :goto_8
    if-ge v7, v4, :cond_b

    .line 428
    .line 429
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    add-int/lit8 v7, v7, 0x1

    .line 434
    .line 435
    check-cast v6, Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 441
    .line 442
    .line 443
    goto :goto_8

    .line 444
    :catchall_2
    move-exception v0

    .line 445
    move-object v2, v0

    .line 446
    goto :goto_9

    .line 447
    :cond_b
    new-instance v4, Ljava/io/File;

    .line 448
    .line 449
    const-string v5, "%s/%d"

    .line 450
    .line 451
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    if-nez v5, :cond_d

    .line 471
    .line 472
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    new-instance v5, Ljava/io/File;

    .line 477
    .line 478
    const-string v6, "%s/%d/TrData.csv"

    .line 479
    .line 480
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    filled-new-array {v2, v7}, [Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 496
    .line 497
    .line 498
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 499
    if-eqz v4, :cond_c

    .line 500
    .line 501
    if-nez v2, :cond_d

    .line 502
    .line 503
    :cond_c
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 504
    .line 505
    .line 506
    return-object v8

    .line 507
    :catch_1
    move-exception v0

    .line 508
    goto :goto_b

    .line 509
    :cond_d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 510
    .line 511
    .line 512
    new-instance v2, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 513
    .line 514
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;-><init>()V

    .line 515
    .line 516
    .line 517
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 518
    .line 519
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    iput-object v1, v2, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->bssid:Ljava/lang/Integer;

    .line 536
    .line 537
    iput-object v0, v2, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->key:Ljava/lang/String;

    .line 538
    .line 539
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    iput-object v0, v2, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->groupId:Ljava/lang/Integer;

    .line 544
    .line 545
    if-ne v9, v11, :cond_e

    .line 546
    .line 547
    return-object v8

    .line 548
    :cond_e
    return-object v2

    .line 549
    :goto_9
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 550
    .line 551
    .line 552
    goto :goto_a

    .line 553
    :catchall_3
    move-exception v0

    .line 554
    :try_start_9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 555
    .line 556
    .line 557
    :goto_a
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 558
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    return-object v8
.end method

.method private getDataFromScanResult(Ljava/lang/String;)Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, ","

    .line 6
    .line 7
    const-string v4, "\\|"

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    new-array v0, v5, [I

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    aput v6, v0, v6

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    aput v6, v0, v7

    .line 17
    .line 18
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v9, v0

    .line 25
    check-cast v9, [[F

    .line 26
    .line 27
    new-array v0, v5, [I

    .line 28
    .line 29
    aput v6, v0, v6

    .line 30
    .line 31
    aput v6, v0, v7

    .line 32
    .line 33
    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v8, v0

    .line 38
    check-cast v8, [[F

    .line 39
    .line 40
    new-instance v10, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;

    .line 41
    .line 42
    invoke-direct {v10, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;-><init>(Lcom/samsung/android/server/wifi/wcm/IccManager;)V

    .line 43
    .line 44
    .line 45
    new-instance v11, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v12, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v13, "true"

    .line 56
    .line 57
    const-string v14, "false"

    .line 58
    .line 59
    const-string v0, "/data/data/com.samsung.android.wifi.intelligence/files/icc/"

    .line 60
    .line 61
    const-string v15, "/TrData.csv"

    .line 62
    .line 63
    invoke-static {v0, v2, v15}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v15, Ljava/io/File;

    .line 68
    .line 69
    move/from16 v16, v6

    .line 70
    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    move/from16 v17, v7

    .line 87
    .line 88
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 89
    .line 90
    new-instance v0, Ljava/io/FileReader;

    .line 91
    .line 92
    invoke-direct {v0, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    .line 97
    .line 98
    move/from16 v0, v17

    .line 99
    .line 100
    move/from16 v18, v0

    .line 101
    .line 102
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 106
    if-eqz v5, :cond_4

    .line 107
    .line 108
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    aget-object v6, v5, v17

    .line 113
    .line 114
    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_0

    .line 119
    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_0
    aget-object v6, v5, v17

    .line 124
    .line 125
    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_1

    .line 130
    .line 131
    add-int/lit8 v18, v18, 0x1

    .line 132
    .line 133
    :cond_1
    :goto_1
    move/from16 v21, v0

    .line 134
    .line 135
    const/4 v6, 0x2

    .line 136
    :goto_2
    array-length v0, v5

    .line 137
    if-ge v6, v0, :cond_3

    .line 138
    .line 139
    aget-object v0, v5, v6

    .line 140
    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    move-object/from16 v22, v0

    .line 146
    .line 147
    aget-object v0, v22, v17

    .line 148
    .line 149
    aget-object v22, v22, v16

    .line 150
    .line 151
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 152
    .line 153
    .line 154
    move-result v22

    .line 155
    const/16 v23, 0x0

    .line 156
    .line 157
    cmpg-float v22, v22, v23

    .line 158
    .line 159
    if-gez v22, :cond_2

    .line 160
    .line 161
    move-object/from16 v22, v5

    .line 162
    .line 163
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v11, v0, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Ljava/lang/Integer;

    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v11, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    move-object v5, v0

    .line 189
    move-object/from16 v21, v7

    .line 190
    .line 191
    :goto_3
    const/16 v19, 0x2

    .line 192
    .line 193
    goto/16 :goto_8

    .line 194
    .line 195
    :cond_2
    move-object/from16 v22, v5

    .line 196
    .line 197
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 198
    .line 199
    move-object/from16 v5, v22

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_3
    move/from16 v0, v21

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_4
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    .line 213
    .line 214
    new-instance v6, Lcom/samsung/android/server/wifi/wcm/IccManager$7;

    .line 215
    .line 216
    invoke-direct {v6, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager$7;-><init>(Lcom/samsung/android/server/wifi/wcm/IccManager;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 223
    .line 224
    .line 225
    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 226
    move-object/from16 v21, v7

    .line 227
    .line 228
    const/16 v7, 0xa

    .line 229
    .line 230
    :try_start_4
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 231
    .line 232
    .line 233
    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 234
    move/from16 v7, v17

    .line 235
    .line 236
    :goto_5
    if-ge v7, v6, :cond_5

    .line 237
    .line 238
    :try_start_5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v22

    .line 242
    check-cast v22, Ljava/util/Map$Entry;

    .line 243
    .line 244
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v22

    .line 248
    move/from16 v23, v0

    .line 249
    .line 250
    move-object/from16 v0, v22

    .line 251
    .line 252
    check-cast v0, Ljava/lang/String;

    .line 253
    .line 254
    move-object/from16 v22, v5

    .line 255
    .line 256
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v12, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 261
    .line 262
    .line 263
    add-int/lit8 v7, v7, 0x1

    .line 264
    .line 265
    move-object/from16 v5, v22

    .line 266
    .line 267
    move/from16 v0, v23

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :catchall_1
    move-exception v0

    .line 271
    move-object v5, v0

    .line 272
    goto :goto_3

    .line 273
    :cond_5
    move/from16 v23, v0

    .line 274
    .line 275
    const/4 v5, 0x2

    .line 276
    :try_start_6
    new-array v0, v5, [I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 277
    .line 278
    const/16 v5, 0xb

    .line 279
    .line 280
    :try_start_7
    aput v5, v0, v16

    .line 281
    .line 282
    aput v23, v0, v17

    .line 283
    .line 284
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 285
    .line 286
    invoke-static {v6, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    move-object v7, v0

    .line 291
    check-cast v7, [[F
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 292
    .line 293
    const/4 v9, 0x2

    .line 294
    :try_start_8
    new-array v0, v9, [I

    .line 295
    .line 296
    aput v5, v0, v16

    .line 297
    .line 298
    aput v18, v0, v17

    .line 299
    .line 300
    invoke-static {v6, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    move-object v5, v0

    .line 305
    check-cast v5, [[F
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 306
    .line 307
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 308
    .line 309
    .line 310
    move/from16 v19, v9

    .line 311
    .line 312
    goto :goto_b

    .line 313
    :catch_0
    move-exception v0

    .line 314
    move-object v8, v5

    .line 315
    move/from16 v19, v9

    .line 316
    .line 317
    move-object v9, v7

    .line 318
    goto :goto_a

    .line 319
    :catchall_2
    move-exception v0

    .line 320
    move-object v5, v0

    .line 321
    move/from16 v19, v9

    .line 322
    .line 323
    move-object v9, v7

    .line 324
    goto :goto_8

    .line 325
    :catchall_3
    move-exception v0

    .line 326
    :goto_6
    const/16 v19, 0x2

    .line 327
    .line 328
    :goto_7
    move-object v5, v0

    .line 329
    goto :goto_8

    .line 330
    :catchall_4
    move-exception v0

    .line 331
    move/from16 v19, v5

    .line 332
    .line 333
    goto :goto_7

    .line 334
    :catchall_5
    move-exception v0

    .line 335
    move-object/from16 v21, v7

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :goto_8
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 339
    .line 340
    .line 341
    goto :goto_9

    .line 342
    :catchall_6
    move-exception v0

    .line 343
    :try_start_b
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 344
    .line 345
    .line 346
    :goto_9
    throw v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 347
    :catch_1
    move-exception v0

    .line 348
    goto :goto_a

    .line 349
    :catch_2
    move-exception v0

    .line 350
    move/from16 v19, v5

    .line 351
    .line 352
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    .line 354
    .line 355
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 356
    .line 357
    const-string v5, "get data error1"

    .line 358
    .line 359
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-object v5, v8

    .line 363
    move-object v7, v9

    .line 364
    :goto_b
    :try_start_c
    new-instance v6, Ljava/io/BufferedReader;

    .line 365
    .line 366
    new-instance v0, Ljava/io/FileReader;

    .line 367
    .line 368
    invoke-direct {v0, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 369
    .line 370
    .line 371
    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 372
    .line 373
    .line 374
    move/from16 v0, v17

    .line 375
    .line 376
    move v8, v0

    .line 377
    :goto_c
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    if-eqz v9, :cond_c

    .line 382
    .line 383
    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v9

    .line 387
    aget-object v15, v9, v17

    .line 388
    .line 389
    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v15

    .line 393
    const v18, 0x476a6000    # 60000.0f

    .line 394
    .line 395
    .line 396
    if-eqz v15, :cond_8

    .line 397
    .line 398
    move/from16 v21, v0

    .line 399
    .line 400
    move/from16 v15, v19

    .line 401
    .line 402
    :goto_d
    array-length v0, v9

    .line 403
    if-ge v15, v0, :cond_7

    .line 404
    .line 405
    aget-object v0, v9, v15

    .line 406
    .line 407
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    move-object/from16 v22, v0

    .line 412
    .line 413
    aget-object v0, v22, v17

    .line 414
    .line 415
    aget-object v22, v22, v16

    .line 416
    .line 417
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 418
    .line 419
    .line 420
    move-result v22

    .line 421
    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v23

    .line 425
    if-eqz v23, :cond_6

    .line 426
    .line 427
    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    check-cast v0, Ljava/lang/Integer;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    aget-object v23, v7, v21

    .line 438
    .line 439
    aput v22, v23, v0

    .line 440
    .line 441
    goto :goto_e

    .line 442
    :catchall_7
    move-exception v0

    .line 443
    move-object v2, v0

    .line 444
    goto/16 :goto_11

    .line 445
    .line 446
    :cond_6
    :goto_e
    add-int/lit8 v15, v15, 0x1

    .line 447
    .line 448
    goto :goto_d

    .line 449
    :cond_7
    aget-object v0, v7, v21

    .line 450
    .line 451
    aget-object v9, v9, v16

    .line 452
    .line 453
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 454
    .line 455
    .line 456
    move-result v9

    .line 457
    div-float v9, v9, v18

    .line 458
    .line 459
    const/16 v20, 0xa

    .line 460
    .line 461
    aput v9, v0, v20

    .line 462
    .line 463
    add-int/lit8 v0, v21, 0x1

    .line 464
    .line 465
    const/16 v20, 0xa

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :cond_8
    move/from16 v21, v0

    .line 469
    .line 470
    aget-object v0, v9, v17

    .line 471
    .line 472
    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-eqz v0, :cond_b

    .line 477
    .line 478
    move/from16 v0, v19

    .line 479
    .line 480
    :goto_f
    array-length v15, v9

    .line 481
    if-ge v0, v15, :cond_a

    .line 482
    .line 483
    aget-object v15, v9, v0

    .line 484
    .line 485
    invoke-virtual {v15, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v15

    .line 489
    move/from16 v22, v0

    .line 490
    .line 491
    aget-object v0, v15, v17

    .line 492
    .line 493
    aget-object v15, v15, v16

    .line 494
    .line 495
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 496
    .line 497
    .line 498
    move-result v15

    .line 499
    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v23

    .line 503
    if-eqz v23, :cond_9

    .line 504
    .line 505
    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    check-cast v0, Ljava/lang/Integer;

    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    aget-object v23, v5, v8

    .line 516
    .line 517
    aput v15, v23, v0

    .line 518
    .line 519
    :cond_9
    add-int/lit8 v0, v22, 0x1

    .line 520
    .line 521
    goto :goto_f

    .line 522
    :cond_a
    aget-object v0, v5, v8

    .line 523
    .line 524
    aget-object v9, v9, v16

    .line 525
    .line 526
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 527
    .line 528
    .line 529
    move-result v9

    .line 530
    div-float v9, v9, v18

    .line 531
    .line 532
    const/16 v20, 0xa

    .line 533
    .line 534
    aput v9, v0, v20

    .line 535
    .line 536
    add-int/lit8 v8, v8, 0x1

    .line 537
    .line 538
    :goto_10
    move/from16 v0, v21

    .line 539
    .line 540
    goto/16 :goto_c

    .line 541
    .line 542
    :cond_b
    const/16 v20, 0xa

    .line 543
    .line 544
    goto :goto_10

    .line 545
    :cond_c
    invoke-static {v10, v2}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fputKeyGroup(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-static {v10, v11}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fputBSSIDcount(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;Ljava/util/HashMap;)V

    .line 549
    .line 550
    .line 551
    invoke-static {v10, v12}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fputBSSIDindex(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;Ljava/util/HashMap;)V

    .line 552
    .line 553
    .line 554
    invoke-static {v10, v7}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fputL1data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;[[F)V

    .line 555
    .line 556
    .line 557
    invoke-static {v10, v5}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fputL2data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;[[F)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 558
    .line 559
    .line 560
    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 561
    .line 562
    .line 563
    goto :goto_14

    .line 564
    :catch_3
    move-exception v0

    .line 565
    goto :goto_13

    .line 566
    :goto_11
    :try_start_f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 567
    .line 568
    .line 569
    goto :goto_12

    .line 570
    :catchall_8
    move-exception v0

    .line 571
    :try_start_10
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 572
    .line 573
    .line 574
    :goto_12
    throw v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 575
    :goto_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 576
    .line 577
    .line 578
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 579
    .line 580
    const-string v1, "data error2"

    .line 581
    .line 582
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .line 584
    .line 585
    :goto_14
    return-object v10
.end method

.method private getDistance(I)F
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float p0, v0

    .line 8
    int-to-float p1, p1

    .line 9
    mul-float/2addr p0, p1

    .line 10
    return p0
.end method

.method private getGroupId(Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->readKeyTable(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/samsung/android/server/wifi/wcm/IccManager$BssidGroup;

    .line 24
    .line 25
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/IccManager$BssidGroup;->bssid:I

    .line 26
    .line 27
    if-ne v1, p2, :cond_1

    .line 28
    .line 29
    iget p0, v0, Lcom/samsung/android/server/wifi/wcm/IccManager$BssidGroup;->groupId:I

    .line 30
    .line 31
    return p0

    .line 32
    :cond_2
    return p1
.end method

.method private getKeyFromConfig(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getDefaultSecurityParams()Landroid/net/wifi/SecurityParams;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private getMatchedNetwork(Ljava/lang/String;Landroid/net/wifi/SecurityParams;Ljava/util/List;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SecurityParams;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Landroid/net/wifi/WifiConfiguration;

    .line 16
    .line 17
    iget-object v0, p3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->getSecurityParamsList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/net/wifi/SecurityParams;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ne v1, v0, :cond_0

    .line 51
    .line 52
    return-object p3

    .line 53
    :cond_1
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method

.method private iccInference(Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->key:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->groupId:Ljava/lang/Integer;

    .line 4
    .line 5
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "%s/%d"

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/IccManager;->inferenceByDB(Ljava/lang/String;Ljava/util/List;)[Z

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x0

    .line 20
    aget-boolean p0, p0, p1

    .line 21
    .line 22
    return p0
.end method

.method private iccInferenceList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/IccManager$InfResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->InfKeyGroupList:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infResultDB:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infConfidence:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/IccManager$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 59
    .line 60
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/server/wifi/wcm/IccManager;->iccInference(Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;Ljava/util/List;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->InfKeyGroupList:Ljava/util/List;

    .line 65
    .line 66
    iget-object v4, v1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->key:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v5, v1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->groupId:Ljava/lang/Integer;

    .line 69
    .line 70
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v5, "%s/%d"

    .line 75
    .line 76
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infResultDB:Ljava/util/List;

    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/IccManager$InfResult;

    .line 93
    .line 94
    invoke-direct {v3, v1, v2}, Lcom/samsung/android/server/wifi/wcm/IccManager$InfResult;-><init>(Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infConfidence:Ljava/util/List;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->tfConf:Ljava/lang/String;

    .line 103
    .line 104
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    return-object v0
.end method

.method private inferenceByDB(Ljava/lang/String;Ljava/util/List;)[Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[Z"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, " || "

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [Z

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    aput-boolean v5, v3, v4

    .line 11
    .line 12
    aput-boolean v5, v3, v5

    .line 13
    .line 14
    iget-object v6, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v7, "Inference Start : "

    .line 17
    .line 18
    move-object/from16 v8, p1

    .line 19
    .line 20
    invoke-static {v7, v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->checkOptDb(Ljava/lang/String;)F

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->getDataFromScanResult(Ljava/lang/String;)Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-static {v7}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fgetL1data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)[[F

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    array-length v8, v8

    .line 40
    invoke-static {v7}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fgetL2data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)[[F

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    array-length v9, v9

    .line 45
    add-int v10, v8, v9

    .line 46
    .line 47
    if-nez v10, :cond_0

    .line 48
    .line 49
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "(db) no data to inference, return default value"

    .line 52
    .line 53
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-object v3

    .line 57
    :catch_0
    move-exception v0

    .line 58
    move/from16 v16, v4

    .line 59
    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_0
    new-array v2, v2, [I

    .line 63
    .line 64
    const/16 v11, 0xb

    .line 65
    .line 66
    aput v11, v2, v5

    .line 67
    .line 68
    aput v10, v2, v4

    .line 69
    .line 70
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    invoke-static {v12, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, [[F

    .line 77
    .line 78
    move v12, v4

    .line 79
    :goto_0
    if-ge v12, v8, :cond_1

    .line 80
    .line 81
    invoke-static {v7}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fgetL1data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)[[F

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    aget-object v13, v13, v12

    .line 86
    .line 87
    aget-object v14, v2, v12

    .line 88
    .line 89
    invoke-static {v13, v4, v14, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v12, v12, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    move v12, v4

    .line 96
    :goto_1
    if-ge v12, v9, :cond_2

    .line 97
    .line 98
    invoke-static {v7}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fgetL2data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)[[F

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    aget-object v13, v13, v12

    .line 103
    .line 104
    add-int v14, v12, v8

    .line 105
    .line 106
    aget-object v14, v2, v14

    .line 107
    .line 108
    invoke-static {v13, v4, v14, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v12, v12, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    invoke-static {v7}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fgetBSSIDindex(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)Ljava/util/HashMap;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    move-object/from16 v9, p2

    .line 119
    .line 120
    invoke-direct {v1, v9, v7}, Lcom/samsung/android/server/wifi/wcm/IccManager;->makeFingerPrint(Ljava/util/List;Ljava/util/HashMap;)[F

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    move v11, v4

    .line 126
    :goto_2
    const-string v12, " "

    .line 127
    .line 128
    if-ge v11, v9, :cond_4

    .line 129
    .line 130
    :try_start_1
    aget-object v13, v2, v11

    .line 131
    .line 132
    new-instance v14, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    array-length v15, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    move/from16 v16, v4

    .line 139
    .line 140
    :goto_3
    if-ge v4, v15, :cond_3

    .line 141
    .line 142
    move/from16 v17, v5

    .line 143
    .line 144
    :try_start_2
    aget v5, v13, v4

    .line 145
    .line 146
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    add-int/lit8 v4, v4, 0x1

    .line 153
    .line 154
    move/from16 v5, v17

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :catch_1
    move-exception v0

    .line 158
    goto/16 :goto_7

    .line 159
    .line 160
    :cond_3
    move/from16 v17, v5

    .line 161
    .line 162
    iget-object v4, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v12, "Trdata : "

    .line 170
    .line 171
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    add-int/lit8 v11, v11, 0x1

    .line 193
    .line 194
    move/from16 v4, v16

    .line 195
    .line 196
    move/from16 v5, v17

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_4
    move/from16 v16, v4

    .line 200
    .line 201
    move/from16 v17, v5

    .line 202
    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    array-length v5, v7

    .line 209
    move/from16 v9, v16

    .line 210
    .line 211
    :goto_4
    if-ge v9, v5, :cond_5

    .line 212
    .line 213
    aget v11, v7, v9

    .line 214
    .line 215
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    add-int/lit8 v9, v9, 0x1

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_5
    iget-object v5, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 225
    .line 226
    new-instance v9, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v11, "givenFP : "

    .line 232
    .line 233
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move/from16 v4, v16

    .line 255
    .line 256
    move v5, v4

    .line 257
    move v9, v5

    .line 258
    :goto_5
    if-ge v4, v10, :cond_8

    .line 259
    .line 260
    aget-object v11, v2, v4

    .line 261
    .line 262
    invoke-direct {v1, v7, v11}, Lcom/samsung/android/server/wifi/wcm/IccManager;->EuclideanDist([F[F)F

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    cmpg-float v12, v11, v6

    .line 267
    .line 268
    if-gez v12, :cond_7

    .line 269
    .line 270
    if-ge v4, v8, :cond_6

    .line 271
    .line 272
    add-int/lit8 v5, v5, 0x1

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 276
    .line 277
    :goto_6
    iget-object v12, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 278
    .line 279
    new-instance v13, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v14, " [ith / dist / optDB] : "

    .line 285
    .line 286
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v11

    .line 308
    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_8
    if-ge v5, v9, :cond_9

    .line 315
    .line 316
    aput-boolean v16, v3, v16

    .line 317
    .line 318
    :cond_9
    if-nez v5, :cond_a

    .line 319
    .line 320
    if-lez v9, :cond_a

    .line 321
    .line 322
    aput-boolean v16, v3, v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :goto_7
    iget-object v2, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 326
    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v5, "Inference err"

    .line 330
    .line 331
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    .line 346
    .line 347
    :cond_a
    :goto_8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 348
    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v2, "inference result (db) : "

    .line 352
    .line 353
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    aget-boolean v2, v3, v16

    .line 357
    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    return-object v3
.end method

.method private isMatched(Ljava/lang/String;ILandroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-static {p3}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/net/wifi/SecurityParams;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p2, p1, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method private static synthetic lambda$iccInferenceList$0(Landroid/net/wifi/nl80211/NativeScanResult;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/NativeScanResult;->getBssid()Landroid/net/MacAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/NativeScanResult;->getSignalMbm()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/16 p0, -0x64

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/NativeScanResult;->getSignalMbm()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    div-int/lit8 p0, p0, 0x64

    .line 35
    .line 36
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "%d|%d"

    .line 45
    .line 46
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method private makeFingerPrint(Ljava/util/List;Ljava/util/HashMap;)[F
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)[F"
        }
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/String;

    .line 25
    .line 26
    const-string v5, "\\|"

    .line 27
    .line 28
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    aget-object v4, v3, v4

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    aget-object v3, v3, v5

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    aput v3, v1, v4

    .line 58
    .line 59
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v7, "FP RSSI/index (DB) : "

    .line 64
    .line 65
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, " / "

    .line 72
    .line 73
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move p1, v4

    .line 88
    :goto_1
    if-ge v4, v0, :cond_3

    .line 89
    .line 90
    aget p2, v1, v4

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    cmpl-float p2, p2, v3

    .line 94
    .line 95
    if-nez p2, :cond_2

    .line 96
    .line 97
    add-int/lit8 p1, p1, 0x1

    .line 98
    .line 99
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    sub-int/2addr v2, p1

    .line 103
    int-to-float p1, v2

    .line 104
    const/high16 p2, 0x41200000    # 10.0f

    .line 105
    .line 106
    div-float/2addr p1, p2

    .line 107
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v2, "FP confidence : "

    .line 112
    .line 113
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string p2, "%.2f"

    .line 135
    .line 136
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->tfConf:Ljava/lang/String;

    .line 141
    .line 142
    return-object v1
.end method

.method private readKeyTable(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/IccManager$BssidGroup;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "/data/data/com.samsung.android.wifi.intelligence/files/icc/"

    .line 2
    .line 3
    const-string v1, "/key-map-table.csv"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 28
    .line 29
    new-instance v2, Ljava/io/FileReader;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string v2, ","

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    array-length v2, v0

    .line 50
    const/4 v3, 0x2

    .line 51
    if-ge v2, v3, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v2, 0x0

    .line 55
    aget-object v2, v0, v2

    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x1

    .line 62
    aget-object v0, v0, v3

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/IccManager$BssidGroup;

    .line 69
    .line 70
    invoke-direct {v3, v2, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager$BssidGroup;-><init>(II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    goto :goto_3

    .line 85
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_1
    move-exception v1

    .line 90
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 94
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object p1
.end method

.method private saveFloatToFile(FLjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileWriter;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, ","

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception p2

    .line 35
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 39
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v0, "save file err : "

    .line 44
    .line 45
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private saveOptDBinfo(Ljava/lang/String;I)Z
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->getDataFromScanResult(Ljava/lang/String;)Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fgetL1data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)[[F

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    array-length v4, v4

    .line 15
    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fgetL2data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)[[F

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    array-length v5, v5

    .line 20
    add-int v6, v4, v5

    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    new-array v8, v7, [I

    .line 24
    .line 25
    const/16 v9, 0xb

    .line 26
    .line 27
    aput v9, v8, v2

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    aput v6, v8, v10

    .line 31
    .line 32
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, [[F

    .line 39
    .line 40
    move v11, v10

    .line 41
    :goto_0
    if-ge v11, v4, :cond_0

    .line 42
    .line 43
    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fgetL1data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)[[F

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    aget-object v12, v12, v11

    .line 48
    .line 49
    aget-object v13, v8, v11

    .line 50
    .line 51
    invoke-static {v12, v10, v13, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v11, v11, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto/16 :goto_13

    .line 59
    .line 60
    :cond_0
    move v11, v10

    .line 61
    :goto_1
    if-ge v11, v5, :cond_1

    .line 62
    .line 63
    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->-$$Nest$fgetL2data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)[[F

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    aget-object v12, v12, v11

    .line 68
    .line 69
    add-int v13, v11, v4

    .line 70
    .line 71
    aget-object v13, v8, v13

    .line 72
    .line 73
    invoke-static {v12, v10, v13, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v11, v11, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iget-object v3, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 80
    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v11, "L1, L2size : "

    .line 87
    .line 88
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v11, " / "

    .line 95
    .line 96
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    array-length v3, v8

    .line 110
    move v5, v10

    .line 111
    :goto_2
    if-ge v5, v3, :cond_3

    .line 112
    .line 113
    aget-object v9, v8, v5

    .line 114
    .line 115
    new-instance v11, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    array-length v12, v9

    .line 121
    move v13, v10

    .line 122
    :goto_3
    if-ge v13, v12, :cond_2

    .line 123
    .line 124
    aget v14, v9, v13

    .line 125
    .line 126
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v14, " "

    .line 130
    .line 131
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    add-int/lit8 v13, v13, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_2
    iget-object v9, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 138
    .line 139
    new-instance v12, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v13, "Trdata : "

    .line 145
    .line 146
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    add-int/lit8 v5, v5, 0x1

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    new-array v3, v6, [I

    .line 171
    .line 172
    move v5, v10

    .line 173
    :goto_4
    if-ge v5, v6, :cond_5

    .line 174
    .line 175
    if-ge v5, v4, :cond_4

    .line 176
    .line 177
    aput v10, v3, v5

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_4
    aput v2, v3, v5

    .line 181
    .line 182
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_5
    new-array v5, v7, [I

    .line 186
    .line 187
    aput v6, v5, v2

    .line 188
    .line 189
    aput v6, v5, v10

    .line 190
    .line 191
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 192
    .line 193
    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    check-cast v5, [[F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    move v7, v10

    .line 200
    :goto_6
    const-string v9, " | "

    .line 201
    .line 202
    if-ge v7, v6, :cond_7

    .line 203
    .line 204
    move v11, v10

    .line 205
    :goto_7
    if-ge v11, v6, :cond_6

    .line 206
    .line 207
    :try_start_1
    aget-object v12, v8, v7

    .line 208
    .line 209
    aget-object v13, v8, v11

    .line 210
    .line 211
    invoke-direct {v1, v12, v13}, Lcom/samsung/android/server/wifi/wcm/IccManager;->EuclideanDist([F[F)F

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    aget-object v13, v5, v7

    .line 216
    .line 217
    aput v12, v13, v11

    .line 218
    .line 219
    iget-object v13, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 220
    .line 221
    new-instance v14, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v15, "result "

    .line 227
    .line 228
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    add-int/lit8 v11, v11, 0x1

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_7
    new-array v7, v6, [I

    .line 260
    .line 261
    move v11, v10

    .line 262
    const/4 v12, 0x0

    .line 263
    const/4 v13, 0x0

    .line 264
    const/4 v14, 0x0

    .line 265
    const/4 v15, 0x0

    .line 266
    :goto_8
    const/16 v8, 0x1e

    .line 267
    .line 268
    if-ge v11, v8, :cond_17

    .line 269
    .line 270
    invoke-direct {v1, v11}, Lcom/samsung/android/server/wifi/wcm/IccManager;->getDistance(I)F

    .line 271
    .line 272
    .line 273
    move-result v8

    .line 274
    new-array v10, v6, [I

    .line 275
    .line 276
    move/from16 v16, v2

    .line 277
    .line 278
    const/4 v2, 0x0

    .line 279
    :goto_9
    if-ge v2, v6, :cond_d

    .line 280
    .line 281
    move-object/from16 v17, v3

    .line 282
    .line 283
    move-object/from16 v18, v5

    .line 284
    .line 285
    move-object/from16 v19, v7

    .line 286
    .line 287
    const/4 v3, 0x0

    .line 288
    const/4 v5, 0x0

    .line 289
    const/4 v7, 0x0

    .line 290
    :goto_a
    if-ge v3, v6, :cond_a

    .line 291
    .line 292
    if-eq v2, v3, :cond_9

    .line 293
    .line 294
    aget-object v20, v18, v2

    .line 295
    .line 296
    aget v20, v20, v3

    .line 297
    .line 298
    cmpg-float v20, v20, v8

    .line 299
    .line 300
    if-gez v20, :cond_9

    .line 301
    .line 302
    if-ge v3, v4, :cond_8

    .line 303
    .line 304
    add-int/lit8 v5, v5, 0x1

    .line 305
    .line 306
    goto :goto_b

    .line 307
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 308
    .line 309
    :cond_9
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_a
    if-nez v0, :cond_b

    .line 313
    .line 314
    if-ge v5, v7, :cond_c

    .line 315
    .line 316
    aput v16, v10, v2

    .line 317
    .line 318
    goto :goto_c

    .line 319
    :cond_b
    move/from16 v3, v16

    .line 320
    .line 321
    if-ne v0, v3, :cond_c

    .line 322
    .line 323
    if-nez v5, :cond_c

    .line 324
    .line 325
    if-lez v7, :cond_c

    .line 326
    .line 327
    aput v3, v10, v2

    .line 328
    .line 329
    :cond_c
    :goto_c
    add-int/lit8 v2, v2, 0x1

    .line 330
    .line 331
    move-object/from16 v3, v17

    .line 332
    .line 333
    move-object/from16 v5, v18

    .line 334
    .line 335
    move-object/from16 v7, v19

    .line 336
    .line 337
    const/16 v16, 0x1

    .line 338
    .line 339
    goto :goto_9

    .line 340
    :cond_d
    move-object/from16 v17, v3

    .line 341
    .line 342
    move-object/from16 v18, v5

    .line 343
    .line 344
    move-object/from16 v19, v7

    .line 345
    .line 346
    const/4 v2, 0x0

    .line 347
    const/4 v3, 0x0

    .line 348
    const/4 v5, 0x0

    .line 349
    const/4 v7, 0x0

    .line 350
    const/16 v20, 0x0

    .line 351
    .line 352
    :goto_d
    if-ge v2, v6, :cond_13

    .line 353
    .line 354
    aget v0, v17, v2

    .line 355
    .line 356
    if-nez v0, :cond_e

    .line 357
    .line 358
    aget v21, v10, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    .line 360
    if-nez v21, :cond_e

    .line 361
    .line 362
    add-int/lit8 v3, v3, 0x1

    .line 363
    .line 364
    move/from16 v21, v2

    .line 365
    .line 366
    goto :goto_f

    .line 367
    :cond_e
    if-nez v0, :cond_10

    .line 368
    .line 369
    move/from16 v21, v2

    .line 370
    .line 371
    :try_start_2
    aget v2, v10, v21
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 372
    .line 373
    move/from16 v22, v3

    .line 374
    .line 375
    const/4 v3, 0x1

    .line 376
    if-ne v2, v3, :cond_11

    .line 377
    .line 378
    add-int/lit8 v7, v7, 0x1

    .line 379
    .line 380
    :cond_f
    :goto_e
    move/from16 v3, v22

    .line 381
    .line 382
    goto :goto_f

    .line 383
    :catch_1
    move-exception v0

    .line 384
    const/4 v3, 0x1

    .line 385
    goto/16 :goto_13

    .line 386
    .line 387
    :cond_10
    move/from16 v21, v2

    .line 388
    .line 389
    move/from16 v22, v3

    .line 390
    .line 391
    const/4 v3, 0x1

    .line 392
    :cond_11
    if-ne v0, v3, :cond_12

    .line 393
    .line 394
    :try_start_3
    aget v2, v10, v21

    .line 395
    .line 396
    if-nez v2, :cond_12

    .line 397
    .line 398
    add-int/lit8 v20, v20, 0x1

    .line 399
    .line 400
    goto :goto_e

    .line 401
    :cond_12
    if-ne v0, v3, :cond_f

    .line 402
    .line 403
    aget v0, v10, v21

    .line 404
    .line 405
    if-ne v0, v3, :cond_f

    .line 406
    .line 407
    add-int/lit8 v5, v5, 0x1

    .line 408
    .line 409
    goto :goto_e

    .line 410
    :goto_f
    add-int/lit8 v2, v21, 0x1

    .line 411
    .line 412
    move/from16 v0, p2

    .line 413
    .line 414
    goto :goto_d

    .line 415
    :cond_13
    move/from16 v22, v3

    .line 416
    .line 417
    add-int v3, v22, v5

    .line 418
    .line 419
    int-to-float v0, v3

    .line 420
    add-int v3, v22, v7

    .line 421
    .line 422
    add-int v3, v3, v20

    .line 423
    .line 424
    add-int/2addr v3, v5

    .line 425
    int-to-float v2, v3

    .line 426
    div-float/2addr v0, v2

    .line 427
    add-int v2, v5, v20

    .line 428
    .line 429
    if-eqz v2, :cond_14

    .line 430
    .line 431
    int-to-float v3, v5

    .line 432
    int-to-float v2, v2

    .line 433
    div-float/2addr v3, v2

    .line 434
    goto :goto_10

    .line 435
    :cond_14
    const/4 v3, 0x0

    .line 436
    :goto_10
    add-int/2addr v7, v5

    .line 437
    if-eqz v7, :cond_15

    .line 438
    .line 439
    int-to-float v2, v5

    .line 440
    int-to-float v5, v7

    .line 441
    div-float/2addr v2, v5

    .line 442
    goto :goto_11

    .line 443
    :cond_15
    const/4 v2, 0x0

    .line 444
    :goto_11
    cmpl-float v5, v0, v13

    .line 445
    .line 446
    if-lez v5, :cond_16

    .line 447
    .line 448
    iget-object v5, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 449
    .line 450
    new-instance v7, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .line 454
    .line 455
    const-string v12, "update : "

    .line 456
    .line 457
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    const-string v12, " || "

    .line 464
    .line 465
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v12

    .line 472
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v7

    .line 479
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    move v13, v0

    .line 483
    move v15, v2

    .line 484
    move v14, v3

    .line 485
    move v12, v8

    .line 486
    move-object v7, v10

    .line 487
    goto :goto_12

    .line 488
    :cond_16
    move-object/from16 v7, v19

    .line 489
    .line 490
    :goto_12
    add-int/lit8 v11, v11, 0x1

    .line 491
    .line 492
    move/from16 v0, p2

    .line 493
    .line 494
    move-object/from16 v3, v17

    .line 495
    .line 496
    move-object/from16 v5, v18

    .line 497
    .line 498
    const/4 v2, 0x1

    .line 499
    const/4 v10, 0x0

    .line 500
    goto/16 :goto_8

    .line 501
    .line 502
    :cond_17
    move-object/from16 v17, v3

    .line 503
    .line 504
    move-object/from16 v19, v7

    .line 505
    .line 506
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 507
    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .line 512
    .line 513
    const-string v3, "optimal DB : "

    .line 514
    .line 515
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 529
    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .line 534
    .line 535
    const-string v3, "max ACC/Prec/Recall "

    .line 536
    .line 537
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 563
    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .line 568
    .line 569
    const-string v3, "Y_label "

    .line 570
    .line 571
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 589
    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    .line 594
    .line 595
    const-string v3, "Y_opt_pred "

    .line 596
    .line 597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .line 613
    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .line 618
    .line 619
    const-string v2, "/data/data/com.samsung.android.wifi.intelligence/files/icc/"

    .line 620
    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    move-object/from16 v2, p1

    .line 625
    .line 626
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    const-string v2, "/OptDB.csv"

    .line 630
    .line 631
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-direct {v1, v12, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->saveFloatToFile(FLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 639
    .line 640
    .line 641
    const/16 v16, 0x1

    .line 642
    .line 643
    return v16

    .line 644
    :goto_13
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 645
    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    const-string v3, " load data err3: "

    .line 649
    .line 650
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 664
    .line 665
    .line 666
    const/16 v16, 0x1

    .line 667
    .line 668
    return v16
.end method

.method private updateInferenceList()Z
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    const-string v2, "/data/data/com.samsung.android.wifi.intelligence/files/icc"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v3, Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mLastScanResults:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/4 v6, 0x1

    .line 50
    if-eqz v5, :cond_7

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 57
    .line 58
    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_1

    .line 71
    .line 72
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Landroid/net/wifi/SecurityParams;

    .line 77
    .line 78
    new-instance v9, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-virtual {v10}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-eqz v9, :cond_2

    .line 110
    .line 111
    new-instance v9, Ljava/io/File;

    .line 112
    .line 113
    const-string v10, "/data/data/com.samsung.android.wifi.intelligence/files/icc/"

    .line 114
    .line 115
    const-string v11, "/key-map-table.csv"

    .line 116
    .line 117
    invoke-static {v10, v8, v11}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-nez v10, :cond_3

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    .line 132
    .line 133
    new-instance v11, Ljava/io/FileReader;

    .line 134
    .line 135
    invoke-direct {v11, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    if-eqz v9, :cond_5

    .line 150
    .line 151
    :cond_4
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catch_0
    move-exception v8

    .line 156
    goto :goto_3

    .line 157
    :cond_5
    :goto_1
    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    if-eqz v9, :cond_4

    .line 162
    .line 163
    const-string v11, ","

    .line 164
    .line 165
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    array-length v11, v9

    .line 170
    const/4 v12, 0x2

    .line 171
    if-ge v11, v12, :cond_6

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_6
    aget-object v11, v9, v2

    .line 175
    .line 176
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    aget-object v9, v9, v6

    .line 181
    .line 182
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    const-string v12, "%s/%d"

    .line 187
    .line 188
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    filled-new-array {v8, v13}, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    invoke-virtual {v1, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    if-nez v13, :cond_5

    .line 205
    .line 206
    iget-object v13, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 207
    .line 208
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    invoke-static {v13}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 213
    .line 214
    .line 215
    move-result v13

    .line 216
    if-ne v11, v13, :cond_5

    .line 217
    .line 218
    invoke-virtual {v1, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    new-instance v12, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 222
    .line 223
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    const/4 v13, 0x0

    .line 232
    invoke-direct {v12, v8, v11, v9, v13}, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :catchall_0
    move-exception v8

    .line 240
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :catchall_1
    move-exception v9

    .line 245
    :try_start_5
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    :goto_2
    throw v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 249
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    invoke-virtual {p0, v8}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mInferenceList:Ljava/util/List;

    .line 259
    .line 260
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_8

    .line 265
    .line 266
    const-string v0, "there is no scan element to inference"

    .line 267
    .line 268
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    return v2

    .line 272
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mInferenceList:Ljava/util/List;

    .line 273
    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_9

    .line 283
    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 289
    .line 290
    iget-object v2, v1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->key:Ljava/lang/String;

    .line 291
    .line 292
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->groupId:Ljava/lang/Integer;

    .line 293
    .line 294
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    const-string v2, "inference, key: %s, groupId: %d"

    .line 299
    .line 300
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_9
    return v6
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->DBG:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mHistory:Ljava/util/LinkedList;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mHistory:Ljava/util/LinkedList;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, " "

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mHistory:Ljava/util/LinkedList;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    const/16 v0, 0x3e8

    .line 65
    .line 66
    if-le p1, v0, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mHistory:Ljava/util/LinkedList;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    monitor-exit v1

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public getHistory()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->isEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mHistory:Ljava/util/LinkedList;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mHistory:Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    new-instance v0, Ljava/io/File;

    .line 23
    .line 24
    const-string v2, "/data/data/com.samsung.android.wifi.intelligence/files/icc"

    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    array-length v2, v0

    .line 42
    const/4 v3, 0x0

    .line 43
    move v4, v3

    .line 44
    :goto_0
    if-ge v4, v2, :cond_4

    .line 45
    .line 46
    aget-object v5, v0, v4

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    array-length v7, v6

    .line 59
    move v8, v3

    .line 60
    :goto_1
    if-ge v8, v7, :cond_3

    .line 61
    .line 62
    aget-object v9, v6, v8

    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_2

    .line 69
    .line 70
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    if-eqz v9, :cond_2

    .line 79
    .line 80
    array-length v11, v9

    .line 81
    if-lez v11, :cond_2

    .line 82
    .line 83
    aget-object v9, v9, v3

    .line 84
    .line 85
    :try_start_1
    new-instance v11, Ljava/io/BufferedReader;

    .line 86
    .line 87
    new-instance v12, Ljava/io/FileReader;

    .line 88
    .line 89
    invoke-direct {v12, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .line 94
    .line 95
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v12, "/"

    .line 104
    .line 105
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    if-eqz v9, :cond_1

    .line 123
    .line 124
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catchall_0
    move-exception v9

    .line 129
    goto :goto_3

    .line 130
    :cond_1
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :catch_0
    move-exception v9

    .line 135
    goto :goto_5

    .line 136
    :goto_3
    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :catchall_1
    move-exception v10

    .line 141
    :try_start_5
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    :goto_4
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 145
    :goto_5
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_4
    return-object v1

    .line 159
    :catchall_2
    move-exception p0

    .line 160
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 161
    throw p0
.end method

.method public getIccState()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    const-string v1, " || "

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->InfKeyGroupList:Ljava/util/List;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    const-string p0, "No key group for inference\n"

    .line 15
    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    const-string v3, "------------TrData Info----------------\n"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->InfKeyGroupList:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ljava/lang/String;

    .line 47
    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v7, "/data/data/com.samsung.android.wifi.intelligence/files/icc/"

    .line 54
    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v7, "/TrData.csv"

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/wcm/IccManager;->checkTrData(Ljava/lang/String;)[I

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v8, "KeyGroup : "

    .line 80
    .line 81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    aget v5, v6, v3

    .line 98
    .line 99
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/4 v5, 0x1

    .line 106
    aget v5, v6, v5

    .line 107
    .line 108
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v4

    .line 116
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v7, "Exception on get ICC Trdata : "

    .line 121
    .line 122
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v5, "Inference time : "

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infreqTime:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->InfKeyGroupList:Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-ge v3, v4, :cond_2

    .line 177
    .line 178
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->InfKeyGroupList:Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infResultDB:Ljava/util/List;

    .line 193
    .line 194
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infConfidence:Ljava/util/List;

    .line 207
    .line 208
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    .line 219
    .line 220
    add-int/lit8 v3, v3, 0x1

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :catch_1
    move-exception v0

    .line 224
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->TAG:Ljava/lang/String;

    .line 225
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v3, "Exception on get ICC state : "

    .line 229
    .line 230
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    .line 249
    .line 250
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    return-object p0
.end method

.method public labelInvalidWifi()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->isEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccHandler:Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onWifiConnected(Landroid/net/wifi/WifiInfo;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiInfo;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->isEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_2

    .line 9
    .line 10
    :cond_1
    move-object v2, p0

    .line 11
    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccHandler:Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 13
    .line 14
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;

    .line 15
    .line 16
    new-instance v2, Ljava/util/Date;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    move-object v2, p0

    .line 26
    move-object v3, p1

    .line 27
    move-object v4, p2

    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/IccManager;Landroid/net/wifi/WifiInfo;Ljava/util/List;J)V

    .line 29
    .line 30
    .line 31
    const/16 p0, 0x8

    .line 32
    .line 33
    invoke-static {v0, p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_0
    const-string p0, "WifiInfo or scanResults is null"

    .line 42
    .line 43
    invoke-virtual {v2, p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onWifiDisconnected()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->isEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccHandler:Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 7
    .line 8
    const/16 v0, 0x9

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public saveFPconfidence([F)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "FP confidence (tf): "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    array-length v0, p1

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    .line 26
    aget v2, p1, v1

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "%.2f"

    .line 37
    .line 38
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infConfidence:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public saveInferenceResult([Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "inference result (tf): "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    array-length v0, p1

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    .line 26
    aget-boolean v2, p1, v1

    .line 27
    .line 28
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infResult:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public saveRegressionResult([F)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "regression result (tf): "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    array-length v0, p1

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    .line 26
    aget v2, p1, v1

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "%.2f"

    .line 37
    .line 38
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->infResult2:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public setWifiAiIccTrainingResult(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ICC TR result received, score for "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, " : "

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccHandler:Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 27
    .line 28
    const/4 p1, 0x5

    .line 29
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public unbindInfService()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mInfServicePid:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccInfServiceConnection:Landroid/content/ServiceConnection;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->iccInfServiceIntent:Landroid/content/Intent;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mInfServicePid:I

    .line 20
    .line 21
    const/16 v1, 0x9

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 24
    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mInfServicePid:I

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public unbindTrService()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mTrServicePid:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mIccTrServiceConnection:Landroid/content/ServiceConnection;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->iccTrServiceIntent:Landroid/content/Intent;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mTrServicePid:I

    .line 20
    .line 21
    const/16 v1, 0x9

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 24
    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->mTrServicePid:I

    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager;->trainInProgress:Z

    .line 31
    .line 32
    return-void
.end method
