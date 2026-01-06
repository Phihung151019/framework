.class public Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;
    }
.end annotation


# static fields
.field private static final AWARE_INTERFACE_NAME:Ljava/lang/String; = "aware_data0"

.field private static final PARAM_MAC_RANDOM_INTERVAL_SEC_DEFAULT:I = 0x708

.field private static final PARAM_PRIVATE_COMMAND_ENABLE_MERGE_REQUEST:I = 0x40000000

.field private static final PARAM_PRIVATE_COMMAND_VENDOR:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "SemWifiAwareStateManager"

.field private static final TIMEOUT_DURATION_MS:I = 0x1f4


# instance fields
.field private mAwareStartedCount:I

.field private final mChannelInfoPerNdp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentNdpCount:I

.field private mDbg:Z

.field private mForeGroundPackageName:Ljava/lang/String;

.field private mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mHandler:Landroid/os/Handler;

.field private mLastIfaceEventTime:J

.field private final mLock:Ljava/lang/Object;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mReqBlockWifiScan:Z

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

.field private mSetWifiScanAutoBlock:Z

.field private mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private final mWifiAwareNative:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

.field private mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiNetworkState:Landroid/net/NetworkInfo$State;

.field private privateCommand:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAwareStartedCount(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mAwareStartedCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelInfoPerNdp(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentNdpCount(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mCurrentNdpCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDbg(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetWifiScanAutoBlock(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSetWifiScanAutoBlock:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiAwareManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/net/wifi/aware/WifiAwareManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiAwareNative(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiAwareNative:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNetworkState(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/net/NetworkInfo$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAwareStartedCount(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mAwareStartedCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentNdpCount(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mCurrentNdpCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetWifiScanAutoBlock(ZLcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V
    .locals 0

    .line 1
    iput-boolean p0, p1, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSetWifiScanAutoBlock:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiNetworkState(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Landroid/net/NetworkInfo$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mloggingIfaceRemoved(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->loggingIfaceRemoved(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mloggingIfaceStarted(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->loggingIfaceStarted(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetLegacyScanningEnable(ZLcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->setLegacyScanningEnable(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/Handler;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mReqBlockWifiScan:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSetWifiScanAutoBlock:Z

    .line 16
    .line 17
    iput v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mCurrentNdpCount:I

    .line 18
    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiNetworkState:Landroid/net/NetworkInfo$State;

    .line 29
    .line 30
    const-wide/16 v2, -0x1

    .line 31
    .line 32
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mLastIfaceEventTime:J

    .line 33
    .line 34
    iput v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mAwareStartedCount:I

    .line 35
    .line 36
    new-instance v0, Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 42
    .line 43
    const-string v0, ""

    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mForeGroundPackageName:Ljava/lang/String;

    .line 46
    .line 47
    const/16 v0, 0x708

    .line 48
    .line 49
    iput v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    .line 50
    .line 51
    iput-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiD2dSaLoggingHandler()Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iput-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiAwareNative()Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiAwareNative:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 76
    .line 77
    new-instance p2, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;

    .line 78
    .line 79
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->setWifiAwareNativeCallback(Lcom/samsung/android/server/wifi/aware/SemWifiAwareNativeCallback;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private convertAllNdpInfosToString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    const-string v2, ",["

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/List;

    .line 27
    .line 28
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->convertChannelInfoToSimpleString(Ljava/util/List;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x5d

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-lez p0, :cond_1

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_1
    const-string p0, "null"

    .line 56
    .line 57
    return-object p0
.end method

.method private convertChannelInfoToSimpleString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/net/wifi/aware/WifiAwareChannelInfo;

    .line 21
    .line 22
    const-string v1, ",{"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareChannelInfo;->getChannelFrequencyMhz()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x2c

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareChannelInfo;->getChannelBandwidth()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareChannelInfo;->getSpatialStreamCount()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v0, 0x7d

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-lez p1, :cond_1

    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_1
    const-string p0, "null"

    .line 75
    .line 76
    return-object p0
.end method

.method private convertCommandToAwareParams(Landroid/net/wifi/aware/AwareParams;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/net/wifi/aware/AwareParams;->setMacRandomizationIntervalSeconds(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loggingIfaceRemoved(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiAwareStateManager"

    .line 6
    .line 7
    const-string v1, "logging iface removed event"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mLastIfaceEventTime:J

    .line 22
    .line 23
    sub-long v3, v1, v3

    .line 24
    .line 25
    const-wide/16 v5, 0x3e8

    .line 26
    .line 27
    div-long/2addr v3, v5

    .line 28
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mLastIfaceEventTime:J

    .line 29
    .line 30
    const-string v1, "iface"

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v1, "mode"

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string p1, "aware_dur"

    .line 46
    .line 47
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v1, "fg_pkg"

    .line 63
    .line 64
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 68
    .line 69
    const-string p1, "NAN"

    .line 70
    .line 71
    const-string v1, "nan_off"

    .line 72
    .line 73
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private loggingIfaceStarted(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiAwareStateManager"

    .line 6
    .line 7
    const-string v1, "logging iface started event"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mLastIfaceEventTime:J

    .line 22
    .line 23
    sub-long v3, v1, v3

    .line 24
    .line 25
    const-wide/16 v5, 0x3e8

    .line 26
    .line 27
    div-long/2addr v3, v5

    .line 28
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mLastIfaceEventTime:J

    .line 29
    .line 30
    const-string v1, "iface"

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v1, "mode"

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string p1, "ETFLC"

    .line 46
    .line 47
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mAwareStartedCount:I

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, "conn_cnt"

    .line 61
    .line 62
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v1, "fg_pkg"

    .line 74
    .line 75
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 79
    .line 80
    const-string p1, "NAN"

    .line 81
    .line 82
    const-string v1, "nan_on"

    .line 83
    .line 84
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private loggingNdpChanged(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiAwareStateManager"

    .line 6
    .line 7
    const-string v1, "logging NDP changed event"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "iface"

    .line 18
    .line 19
    const-string v2, "aware_data0"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const-string p1, "1"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string p1, "0"

    .line 30
    .line 31
    :goto_0
    const-string v1, "added"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v1, "ndp_cnt"

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string p1, "fg_pkg"

    .line 52
    .line 53
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mForeGroundPackageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->convertAllNdpInfosToString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v1, "ndp_chan_infos"

    .line 63
    .line 64
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 68
    .line 69
    const-string p1, "NAN"

    .line 70
    .line 71
    const-string v1, "nan_ndp_changed"

    .line 72
    .line 73
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private loggingNdpFailed(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiAwareStateManager"

    .line 6
    .line 7
    const-string v1, "logging NDP failure event"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "iface"

    .line 18
    .line 19
    const-string v2, "aware_data0"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "ndp_cnt"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v1, "reason"

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v1, "fg_pkg"

    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiD2dSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 62
    .line 63
    const-string p1, "NAN"

    .line 64
    .line 65
    const-string v1, "nan_ndp_failed"

    .line 66
    .line 67
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private registerContentObserver()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "sem_wifi_disable_scan_for_d2d"

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
    const-string v1, "SemWifiAwareStateManager"

    .line 13
    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->getDefaultScanAutoBlockValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSetWifiScanAutoBlock:Z

    .line 21
    .line 22
    iget-object v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v3, v4, v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "set default value - mSetWifiScanAutoBlock: "

    .line 32
    .line 33
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSetWifiScanAutoBlock:Z

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-virtual {v0, v3, v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v3, 0x0

    .line 58
    if-ne v0, v4, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v4, v3

    .line 62
    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSetWifiScanAutoBlock:Z

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v4, "registerContentObserver - mSetWifiScanAutoBlock: "

    .line 67
    .line 68
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSetWifiScanAutoBlock:Z

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v4, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$4;

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-direct {v4, p0, v5}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$4;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Landroid/os/Handler;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private registerNetworkObserver()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 2
    .line 3
    const-string v1, "SemWifiAwareStateManager"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "registerNetworkObserver"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string v0, "network_management"

    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mNwService:Landroid/os/INetworkManagementService;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :try_start_0
    new-instance v2, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Failed to register NetworkObserver: "

    .line 40
    .line 41
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method private setLegacyScanningEnable(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isScanningEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const-string v3, "SemWifiAwareStateManager"

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-string p1, "setLegacyScanningEnable: false"

    .line 23
    .line 24
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mReqBlockWifiScan:Z

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    if-eqz p1, :cond_4

    .line 36
    .line 37
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mReqBlockWifiScan:Z

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    const-string p1, "setLegacyScanningEnable: true"

    .line 46
    .line 47
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mReqBlockWifiScan:Z

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public enableVerboseLogging(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 14
    .line 15
    const/4 p1, 0x3

    .line 16
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setVerboseLoggingLevel(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public getMaxNdpCountForAwareP2p()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public getMaxNdpCountForAwareSoftAp()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/wifi/aware/Characteristics;->getNumberOfSupportedDataPaths()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/16 p0, 0x8

    .line 15
    .line 16
    return p0
.end method

.method public isPreEnabled()I
    .locals 7

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 14
    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    new-instance v5, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$5;

    .line 20
    .line 21
    invoke-direct {v5, p0, v0, v2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$5;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x3

    .line 25
    invoke-virtual {v3, v6, v1, v4, v5}, Landroid/net/wifi/WifiManager;->reportCreateInterfaceImpact(IZLjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    const-wide/16 v5, 0x1f4

    .line 34
    .line 35
    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 36
    .line 37
    .line 38
    monitor-exit v3

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v4

    .line 41
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :catch_0
    move-exception v3

    .line 44
    const-string v4, "SemWifiAwareStateManager"

    .line 45
    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v6, "Exception: "

    .line 49
    .line 50
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    const-string v3, "SemWifiAwareStateManager"

    .line 68
    .line 69
    new-instance v4, Ljava/lang/Throwable;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 88
    .line 89
    if-eqz p0, :cond_0

    .line 90
    .line 91
    const-string p0, "SemWifiAwareStateManager"

    .line 92
    .line 93
    const-string v0, "isPreEnabled: canInterfaceBeCreated is false. so this return: 0"

    .line 94
    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_0
    return v1

    .line 99
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-nez p0, :cond_2

    .line 104
    .line 105
    const-string p0, "SemWifiAwareStateManager"

    .line 106
    .line 107
    const-string v0, "isPreEnabled: interfacesWhichWillBeDeleted is null. so this return false: 0"

    .line 108
    .line 109
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    return v1

    .line 113
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Ljava/util/Set;

    .line 118
    .line 119
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    const/4 v0, 0x1

    .line 124
    const/4 v1, 0x2

    .line 125
    if-eq p0, v0, :cond_3

    .line 126
    .line 127
    return v1

    .line 128
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Ljava/util/Set;

    .line 133
    .line 134
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;

    .line 149
    .line 150
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->getInterfaceType()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->getPackages()Ljava/util/Set;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-ne v3, v1, :cond_4

    .line 159
    .line 160
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_4

    .line 165
    .line 166
    return v0

    .line 167
    :cond_5
    return v1
.end method

.method public onDataPathConfirmNotification(I[BZI[BLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BZI[B",
            "Ljava/util/List<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const-string v0, "onDataPathConfirm: ndpId="

    .line 7
    .line 8
    const-string v2, ", mac="

    .line 9
    .line 10
    invoke-static {v0, p1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p2}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, ", accept="

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, ", reason="

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, ", message.length="

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    if-nez p5, :cond_0

    .line 47
    .line 48
    move p2, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    array-length p2, p5

    .line 51
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, " , channelInfo.size = "

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    if-nez p6, :cond_1

    .line 60
    .line 61
    move p5, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {p6}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result p5

    .line 67
    :goto_1
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p5, ", channelInfo="

    .line 71
    .line 72
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const-string p5, "SemWifiAwareStateManager"

    .line 86
    .line 87
    invoke-static {p5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_2
    if-eqz p3, :cond_4

    .line 91
    .line 92
    if-nez p6, :cond_3

    .line 93
    .line 94
    iget-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 95
    .line 96
    new-instance p3, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 106
    .line 107
    invoke-virtual {p2, p1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    const/4 p1, 0x1

    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->loggingNdpChanged(Z)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->loggingNdpFailed(I)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public onDataPathEndNotification(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "onDataPathEnd: ndpId="

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SemWifiAwareStateManager"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-lez p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->loggingNdpChanged(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public onDataPathScheduleUpdateNotification([BLjava/util/ArrayList;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "onDataPathSchedUpdate: peerMac="

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ", ndpIds="

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ", channelInfo="

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "SemWifiAwareStateManager"

    .line 44
    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_0
    if-ge v0, p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    check-cast v1, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget-object v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mChannelInfoPerNdp:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {v2, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method public setClusterMergingEnabled(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/net/wifi/aware/AwareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/wifi/aware/AwareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    .line 7
    .line 8
    const/high16 v2, -0x80000000

    .line 9
    .line 10
    or-int/2addr v2, v1

    .line 11
    iput v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/high16 v2, -0x40000000    # -2.0f

    .line 16
    .line 17
    or-int/2addr v1, v2

    .line 18
    iput v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v1, -0x40000001    # -1.9999999f

    .line 22
    .line 23
    .line 24
    and-int/2addr v1, v2

    .line 25
    iput v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    .line 26
    .line 27
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Private Command="

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " enable="

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v1, "SemWifiAwareStateManager"

    .line 56
    .line 57
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    iget p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    .line 61
    .line 62
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->convertCommandToAwareParams(Landroid/net/wifi/aware/AwareParams;I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/net/wifi/aware/WifiAwareManager;->setAwareParams(Landroid/net/wifi/aware/AwareParams;)V

    .line 68
    .line 69
    .line 70
    iget p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    .line 71
    .line 72
    const v0, 0x7fffffff

    .line 73
    .line 74
    .line 75
    and-int/2addr p1, v0

    .line 76
    iput p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    .line 77
    .line 78
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    const-string p2, "SemWifiAwareStateManager"

    .line 2
    .line 3
    const-string v0, "start()"

    .line 4
    .line 5
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string p2, "wifi"

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string p2, "wifiaware"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-string p2, "sem_wifi"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-string p2, "sem_wifi_p2p"

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide p1

    .line 60
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mLastIfaceEventTime:J

    .line 61
    .line 62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    new-instance p2, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;

    .line 65
    .line 66
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    .line 70
    .line 71
    const-string v1, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 72
    .line 73
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    new-instance p2, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$2;

    .line 82
    .line 83
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$2;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    .line 87
    .line 88
    const-string v1, "android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED"

    .line 89
    .line 90
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 97
    .line 98
    new-instance p2, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$3;

    .line 99
    .line 100
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$3;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public startLate()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->registerNetworkObserver()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->registerContentObserver()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
