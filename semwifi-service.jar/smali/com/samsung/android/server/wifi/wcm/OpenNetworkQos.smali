.class public Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;
.super Lcom/samsung/android/server/wifi/wcm/Constant;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;,
        Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;
    }
.end annotation


# static fields
.field private static final ACTIVE_THROUGHPUT_THRESHOLD:J = 0x7a120L

.field private static final BSSID_DNS_RESULT_NO_INTERNET:I = 0x2

.field private static final BSSID_DNS_RESULT_POOR_CONNECTION:I = 0x1

.field private static final BSSID_DNS_RESULT_SUCCESS:I = 0x0

.field private static final BSSID_DNS_RESULT_UNKNOWN:I = -0x1

.field private static DBG:Z = false

.field private static final INDEX_TO_SCORE:[I

.field private static final INDEX_TO_STRING:[Ljava/lang/String;

.field private static final INDEX_TO_STRING_SHORT:[Ljava/lang/String;

.field private static final LEVEL_VALUE_MAX:I = 0x3

.field private static final MAX_THROUGHPUT_DECAY_RATE:I = 0x30d40

.field private static final OPEN_NETWORK_QOS_SHARING_VERSION:Ljava/lang/String; = "4.00"

.field public static final QUALITY_INDEX_FAST:I = 0x3

.field public static final QUALITY_INDEX_OKAY:I = 0x2

.field public static final QUALITY_INDEX_SLOW:I = 0x1

.field public static final QUALITY_INDEX_UNKNOWN:I = 0x0

.field public static final QUALITY_INDEX_VERY_FAST:I = 0x4

.field private static final QUALITY_MIN_ACTIVE_TIME:J = 0x7530L

.field private static final QUALITY_MIN_DWELL_TIME:J = 0xea60L

.field private static final QUALITY_MIN_RX_TOTAL_BYTES:J = 0xf4240L

.field private static final QUALITY_MIN_TX_TOTAL_PACKETS:J = 0x5dcL

.field private static SMARTCM_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "OpenNetworkQos[4.00]"

.field private static final TOAST_INTERVAL:I = 0x1e

.field private static final WEIGHT_ACTIVE_TPUT:I = 0x22

.field private static final WEIGHT_MAX_TPUT:I = 0x21

.field private static final WEIGHT_PER:I = 0x21


# instance fields
.field private mBssid:Ljava/lang/String;

.field public mBssidNoInternet:Z

.field public mBssidQosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

.field private mCurrentConnectionState:I

.field private mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field public mIsCaptivePortal:Z

.field public mLatestDnsResult:I

.field public mLatestLevel2Rssi:I

.field public mLatestQcFailRssi:I

.field public mNumberOfConnections:I

.field private mOpenNetworkQosCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mSsid:Ljava/lang/String;

.field private mUsePrivateDns:Z

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private netId:I

.field private toastCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->toastCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputtoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->toastCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLevelValue(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetQualityIndexFromScore(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getQualityIndexFromScore(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mreportOpenNetworkQosQualityScoreChange(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->reportOpenNetworkQosQualityScoreChange()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetINDEX_TO_SCORE()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_STRING:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_STRING_SHORT:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSMARTCM_DBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->SMARTCM_DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "Fast"

    .line 2
    .line 3
    const-string v1, "Very Fast"

    .line 4
    .line 5
    const-string v2, "Unknown"

    .line 6
    .line 7
    const-string v3, "Slow"

    .line 8
    .line 9
    const-string v4, "Okay"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_STRING:[Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "FA"

    .line 18
    .line 19
    const-string v1, "VF"

    .line 20
    .line 21
    const-string v2, "UN"

    .line 22
    .line 23
    const-string v3, "SL"

    .line 24
    .line 25
    const-string v4, "OK"

    .line 26
    .line 27
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_STRING_SHORT:[Ljava/lang/String;

    .line 32
    .line 33
    const/16 v0, 0x14

    .line 34
    .line 35
    const/16 v1, 0x1e

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x5

    .line 39
    const/16 v4, 0xa

    .line 40
    .line 41
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    .line 52
    .line 53
    sput-boolean v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->SMARTCM_DBG:Z

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/Constant;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mIsCaptivePortal:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    .line 21
    .line 22
    const/16 v3, -0x63

    .line 23
    .line 24
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    .line 25
    .line 26
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestLevel2Rssi:I

    .line 27
    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->toastCount:I

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    .line 31
    .line 32
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentConnectionState:I

    .line 35
    .line 36
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    iput p3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->netId:I

    .line 39
    .line 40
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssid:Ljava/lang/String;

    .line 41
    .line 42
    return-void
.end method

.method private getBandwidth(I)I
    .locals 2

    .line 1
    const/16 p0, 0x14

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    const/16 p0, 0x28

    .line 10
    .line 11
    return p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    const/16 v1, 0x50

    .line 14
    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p1, v0, :cond_3

    .line 20
    .line 21
    const/16 p0, 0xa0

    .line 22
    .line 23
    return p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p1, v0, :cond_4

    .line 26
    .line 27
    return v1

    .line 28
    :cond_4
    return p0
.end method

.method private getBandwidthIn20MhzChannels(I)I
    .locals 3

    .line 1
    const/4 p0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x2

    .line 6
    if-ne p1, p0, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    const/4 v1, 0x4

    .line 10
    if-ne p1, v0, :cond_2

    .line 11
    .line 12
    return v1

    .line 13
    :cond_2
    const/4 v0, 0x3

    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    if-ne p1, v0, :cond_3

    .line 17
    .line 18
    return v2

    .line 19
    :cond_3
    if-ne p1, v1, :cond_4

    .line 20
    .line 21
    return v2

    .line 22
    :cond_4
    return p0
.end method

.method private getLevelValue(I)I
    .locals 0

    .line 1
    const/16 p0, -0x4b

    .line 2
    .line 3
    if-ge p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const/16 p0, -0x41

    .line 8
    .line 9
    if-ge p1, p0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    const/16 p0, -0x37

    .line 14
    .line 15
    if-ge p1, p0, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_2
    const/4 p0, 0x3

    .line 20
    return p0
.end method

.method private getQualityIndexFromScore(I)I
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    aget v1, p0, v0

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    aget v3, p0, v2

    .line 12
    .line 13
    add-int/2addr v1, v3

    .line 14
    div-int/2addr v1, v2

    .line 15
    if-ge p1, v1, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x3

    .line 19
    aget v1, p0, v0

    .line 20
    .line 21
    add-int/2addr v3, v1

    .line 22
    div-int/2addr v3, v2

    .line 23
    if-ge p1, v3, :cond_2

    .line 24
    .line 25
    return v2

    .line 26
    :cond_2
    const/4 v3, 0x4

    .line 27
    aget p0, p0, v3

    .line 28
    .line 29
    add-int/2addr v1, p0

    .line 30
    div-int/2addr v1, v2

    .line 31
    if-ge p1, v1, :cond_3

    .line 32
    .line 33
    return v0

    .line 34
    :cond_3
    return v3
.end method

.method private isConnectedState()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentConnectionState:I

    .line 2
    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method private isInvalidState()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentConnectionState:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method private reportOpenNetworkQosNoInternetStatus()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "OpenNetworkQos[4.00]"

    .line 6
    .line 7
    const-string v1, "reportOpenNetworkQosNoInternetStatus"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateOpenNetworkQosScoreSummary()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;

    .line 34
    .line 35
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;->onNoInternetStatusChanged(Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    return-void
.end method

.method private reportOpenNetworkQosQualityScoreChange()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "OpenNetworkQos[4.00]"

    .line 6
    .line 7
    const-string v1, "reportOpenNetworkQosQualityScoreChange"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateOpenNetworkQosScoreSummary()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-ge v1, v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    check-cast v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;->onQualityScoreChanged()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public activeTputToIndex(J)I
    .locals 2

    .line 1
    const-wide/32 v0, 0xf4240

    .line 2
    .line 3
    .line 4
    cmp-long p0, p1, v0

    .line 5
    .line 6
    if-gez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const-wide/32 v0, 0x2dc6c0

    .line 11
    .line 12
    .line 13
    cmp-long p0, p1, v0

    .line 14
    .line 15
    if-gez p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_1
    const-wide/32 v0, 0x989680

    .line 20
    .line 21
    .line 22
    cmp-long p0, p1, v0

    .line 23
    .line 24
    if-gez p0, :cond_2

    .line 25
    .line 26
    const/4 p0, 0x3

    .line 27
    return p0

    .line 28
    :cond_2
    const/4 p0, 0x4

    .line 29
    return p0
.end method

.method public calculateScore(III)I
    .locals 3

    .line 1
    const/16 p0, 0x21

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 7
    .line 8
    aget p1, v1, p1

    .line 9
    .line 10
    mul-int/2addr p1, p0

    .line 11
    move v1, p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v0

    .line 14
    move v1, p1

    .line 15
    :goto_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    sget-object v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 18
    .line 19
    aget p2, v2, p2

    .line 20
    .line 21
    mul-int/lit8 p2, p2, 0x22

    .line 22
    .line 23
    add-int/2addr p1, p2

    .line 24
    add-int/lit8 v1, v1, 0x22

    .line 25
    .line 26
    :cond_1
    if-eqz p3, :cond_2

    .line 27
    .line 28
    sget-object p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 29
    .line 30
    aget p2, p2, p3

    .line 31
    .line 32
    mul-int/2addr p2, p0

    .line 33
    add-int/2addr p1, p2

    .line 34
    add-int/lit8 v1, v1, 0x21

    .line 35
    .line 36
    :cond_2
    if-eqz v1, :cond_3

    .line 37
    .line 38
    div-int/2addr p1, v1

    .line 39
    return p1

    .line 40
    :cond_3
    return v0
.end method

.method public clearBssidQosMap()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mSsid:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mIsCaptivePortal:Z

    .line 13
    .line 14
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    .line 18
    .line 19
    return-void
.end method

.method public dumpBssidQosMap()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mSsid:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " ["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssid:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "] - #Conn: "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", CP: "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mIsCaptivePortal:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", L_Dns: "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", L_F_R: "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", L_2_R: "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestLevel2Rssi:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, "\n"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_1

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 97
    .line 98
    const-string v3, "    "

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v3, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLatestCloudScoreSummary:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_0

    .line 120
    .line 121
    const-string v3, "        "

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v2, v2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLatestCloudScoreSummary:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0
.end method

.method public getOpenNetworkQosNoInternetStatus()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->netId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "getOpenNetworkQosNoInternetStatus: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v1, "[Private DNS is active. Result is ignored.]"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v1, ""

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "OpenNetworkQos[4.00]"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    return v2

    .line 46
    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 47
    .line 48
    return p0
.end method

.method public getOpenNetworkQosScores()[I
    .locals 8

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->netId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-object v2

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 35
    .line 36
    iget v3, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    .line 37
    .line 38
    aput v3, v1, v4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 42
    .line 43
    aget v3, v3, v4

    .line 44
    .line 45
    aput v3, v1, v4

    .line 46
    .line 47
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 48
    .line 49
    const/4 v5, 0x2

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v6, 0x1

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 72
    .line 73
    iget v3, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    .line 74
    .line 75
    aput v3, v1, v6

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 79
    .line 80
    aget v3, v3, v4

    .line 81
    .line 82
    aput v3, v1, v6

    .line 83
    .line 84
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 107
    .line 108
    iget v3, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    .line 109
    .line 110
    aput v3, v1, v5

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 114
    .line 115
    aget v3, v3, v4

    .line 116
    .line 117
    aput v3, v1, v5

    .line 118
    .line 119
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    :goto_3
    if-ge v4, v0, :cond_4

    .line 125
    .line 126
    aget v5, v1, v4

    .line 127
    .line 128
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v5, " "

    .line 132
    .line 133
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    add-int/lit8 v4, v4, 0x1

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v4, "getOpenNetworkQosScores: "

    .line 142
    .line 143
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    .line 150
    .line 151
    if-eqz v3, :cond_5

    .line 152
    .line 153
    const-string v3, "[Private DNS is active. Result is ignored.]"

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_5
    const-string v3, ""

    .line 157
    .line 158
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v3, "OpenNetworkQos[4.00]"

    .line 166
    .line 167
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    .line 171
    .line 172
    if-eqz p0, :cond_6

    .line 173
    .line 174
    return-object v2

    .line 175
    :cond_6
    return-object v1
.end method

.method public initOnConnect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->netId:I

    .line 25
    .line 26
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mSsid:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mIsCaptivePortal:Z

    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public maxTputToIndex(J)I
    .locals 2

    .line 1
    const-wide/32 v0, 0xf4240

    .line 2
    .line 3
    .line 4
    cmp-long p0, p1, v0

    .line 5
    .line 6
    if-gez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const-wide/32 v0, 0x4c4b40

    .line 11
    .line 12
    .line 13
    cmp-long p0, p1, v0

    .line 14
    .line 15
    if-gez p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_1
    const-wide/32 v0, 0x1312d00

    .line 20
    .line 21
    .line 22
    cmp-long p0, p1, v0

    .line 23
    .line 24
    if-gez p0, :cond_2

    .line 25
    .line 26
    const/4 p0, 0x3

    .line 27
    return p0

    .line 28
    :cond_2
    const/4 p0, 0x4

    .line 29
    return p0
.end method

.method public perToIndex(D)I
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 2
    .line 3
    cmpg-double p0, p1, v0

    .line 4
    .line 5
    if-gez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x4

    .line 8
    return p0

    .line 9
    :cond_0
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 10
    .line 11
    cmpg-double p0, p1, v0

    .line 12
    .line 13
    if-gez p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x3

    .line 16
    return p0

    .line 17
    :cond_1
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 18
    .line 19
    cmpg-double p0, p1, v0

    .line 20
    .line 21
    if-gez p0, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x2

    .line 24
    return p0

    .line 25
    :cond_2
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public registerOpenNetworkQosCallback(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mOpenNetworkQosCallbackList:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public setCurrentConnectionState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentConnectionState:I

    .line 2
    .line 3
    return-void
.end method

.method public setFrameworkFacade(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-void
.end method

.method public setUsePrivateDns(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mUsePrivateDns:Z

    .line 2
    .line 3
    return-void
.end method

.method public updateBssidLatestDnsResultType(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->isConnectedState()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "updateBssidLatestDnsResultType - result: "

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "OpenNetworkQos[4.00]"

    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    const/16 v1, 0xb

    .line 23
    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x1

    .line 28
    if-eq p1, v1, :cond_2

    .line 29
    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    if-ne p1, v2, :cond_4

    .line 34
    .line 35
    :cond_2
    move v1, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 38
    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    .line 39
    .line 40
    if-ne v1, v0, :cond_5

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_5
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    .line 44
    .line 45
    if-eq p1, v0, :cond_7

    .line 46
    .line 47
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_6
    :goto_2
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    .line 51
    .line 52
    :cond_7
    :goto_3
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidNoInternet(Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public updateBssidNoInternet(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x3

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "updateBssidNoInternet: mBssidNoInternet = "

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "OpenNetworkQos[4.00]"

    .line 39
    .line 40
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->reportOpenNetworkQosNoInternetStatus()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public updateBssidPoorConnection()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestLevel2Rssi:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    move v2, v1

    .line 15
    :goto_1
    const/4 v3, 0x3

    .line 16
    if-gt v2, v3, :cond_3

    .line 17
    .line 18
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    new-instance v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 37
    .line 38
    invoke-direct {v5, p0, v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_1
    if-gt v2, v0, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 57
    .line 58
    sget-object v4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 59
    .line 60
    aget v4, v4, v1

    .line 61
    .line 62
    iput v4, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 76
    .line 77
    sget-object v4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_SCORE:[I

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    aget v4, v4, v5

    .line 81
    .line 82
    iput v4, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    .line 83
    .line 84
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore()V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    return-void
.end method

.method public updateBssidQosMapOnDnsResult(III)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 24
    .line 25
    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    if-nez p2, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 44
    .line 45
    iget-wide v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCumulativeDnsResponseTime:J

    .line 46
    .line 47
    int-to-long v3, p3

    .line 48
    add-long/2addr v1, v3

    .line 49
    iput-wide v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCumulativeDnsResponseTime:J

    .line 50
    .line 51
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 62
    .line 63
    iget p3, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    .line 64
    .line 65
    add-int/lit8 p3, p3, 0x1

    .line 66
    .line 67
    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 81
    .line 82
    iget p3, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsFailCount:I

    .line 83
    .line 84
    add-int/lit8 p3, p3, 0x1

    .line 85
    .line 86
    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsFailCount:I

    .line 87
    .line 88
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public updateBssidQosMapOnLevel2State(IZ)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 24
    .line 25
    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz p2, :cond_2

    .line 32
    .line 33
    sget-boolean p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    const-string p2, "Level2State entered at RSSI value "

    .line 38
    .line 39
    const-string v1, " dBm."

    .line 40
    .line 41
    invoke-static {p2, p1, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v1, "OpenNetworkQos[4.00]"

    .line 46
    .line 47
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestLevel2Rssi:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/16 p2, -0x63

    .line 54
    .line 55
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestLevel2Rssi:I

    .line 56
    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidPoorConnection()V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public updateBssidQosMapOnPerUpdate(III)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 24
    .line 25
    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 42
    .line 43
    iget v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 44
    .line 45
    add-int/2addr v2, p2

    .line 46
    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 47
    .line 48
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 59
    .line 60
    iget v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    .line 61
    .line 62
    add-int/2addr v1, p3

    .line 63
    iput v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    .line 64
    .line 65
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 76
    .line 77
    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 78
    .line 79
    iget-object p3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    check-cast p3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 90
    .line 91
    iget p3, p3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    .line 92
    .line 93
    add-int v1, p2, p3

    .line 94
    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 108
    .line 109
    int-to-double v2, p2

    .line 110
    int-to-double p2, p3

    .line 111
    add-double/2addr p2, v2

    .line 112
    div-double/2addr v2, p2

    .line 113
    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    .line 114
    .line 115
    mul-double/2addr v2, p2

    .line 116
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    .line 117
    .line 118
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    check-cast p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public updateBssidQosMapOnQcResult(IZ)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 24
    .line 25
    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 44
    .line 45
    iget v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcPassCount:I

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    iput v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcPassCount:I

    .line 50
    .line 51
    const/16 p2, -0x63

    .line 52
    .line 53
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 67
    .line 68
    iget v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    iput v1, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    .line 73
    .line 74
    sget-boolean p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    const-string p2, "QC Failure occured at RSSI value "

    .line 79
    .line 80
    const-string v1, " dBm."

    .line 81
    .line 82
    invoke-static {p2, p1, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-string v1, "OpenNetworkQos[4.00]"

    .line 87
    .line 88
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_2
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    .line 92
    .line 93
    if-le p1, p2, :cond_3

    .line 94
    .line 95
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestQcFailRssi:I

    .line 96
    .line 97
    :cond_3
    :goto_0
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidNoInternet:Z

    .line 98
    .line 99
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidNoInternet(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidPoorConnection()V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public updateBssidQosMapOnReachabilityLost(I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 24
    .line 25
    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 42
    .line 43
    iget v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mIpReachabilityLostCount:I

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mIpReachabilityLostCount:I

    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public updateBssidQosMapOnScan(IILjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    new-instance v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 33
    .line 34
    invoke-direct {v5, v0, v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v5, 0x0

    .line 49
    :cond_1
    if-ge v5, v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 58
    .line 59
    iget-object v7, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssid:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v8, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_1

    .line 68
    .line 69
    iput-object v6, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    .line 70
    .line 71
    :cond_2
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mCurrentBssidScanInfo:Landroid/net/wifi/ScanResult;

    .line 72
    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    move/from16 v3, p2

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    const/4 v6, 0x0

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget v5, v3, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 81
    .line 82
    if-nez v5, :cond_4

    .line 83
    .line 84
    iget v3, v3, Landroid/net/wifi/ScanResult;->frequency:I

    .line 85
    .line 86
    move v6, v5

    .line 87
    const/4 v5, 0x0

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget v6, v3, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 90
    .line 91
    iget v3, v3, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 92
    .line 93
    move/from16 v17, v5

    .line 94
    .line 95
    move v5, v3

    .line 96
    move v3, v6

    .line 97
    move/from16 v6, v17

    .line 98
    .line 99
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    :goto_1
    if-ge v9, v7, :cond_c

    .line 106
    .line 107
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    add-int/lit8 v9, v9, 0x1

    .line 112
    .line 113
    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 114
    .line 115
    iget-object v11, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssid:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v12, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-eqz v11, :cond_5

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    invoke-direct {v0, v6}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getBandwidth(I)I

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    iget v12, v10, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 131
    .line 132
    invoke-direct {v0, v12}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getBandwidth(I)I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    iget v13, v10, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 137
    .line 138
    if-nez v13, :cond_6

    .line 139
    .line 140
    iget v10, v10, Landroid/net/wifi/ScanResult;->frequency:I

    .line 141
    .line 142
    const/4 v13, 0x0

    .line 143
    goto :goto_2

    .line 144
    :cond_6
    iget v13, v10, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 145
    .line 146
    iget v10, v10, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 147
    .line 148
    move/from16 v17, v13

    .line 149
    .line 150
    move v13, v10

    .line 151
    move/from16 v10, v17

    .line 152
    .line 153
    :goto_2
    div-int/lit8 v11, v11, 0x2

    .line 154
    .line 155
    sub-int v14, v3, v11

    .line 156
    .line 157
    div-int/lit8 v12, v12, 0x2

    .line 158
    .line 159
    add-int v15, v10, v12

    .line 160
    .line 161
    if-ge v14, v15, :cond_8

    .line 162
    .line 163
    add-int v4, v3, v11

    .line 164
    .line 165
    move-object/from16 v16, v1

    .line 166
    .line 167
    sub-int v1, v10, v12

    .line 168
    .line 169
    if-le v4, v1, :cond_9

    .line 170
    .line 171
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 172
    .line 173
    :cond_7
    move-object/from16 v1, v16

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_8
    move-object/from16 v16, v1

    .line 177
    .line 178
    :cond_9
    if-eqz v5, :cond_a

    .line 179
    .line 180
    sub-int v1, v5, v11

    .line 181
    .line 182
    if-ge v1, v15, :cond_a

    .line 183
    .line 184
    add-int v1, v5, v11

    .line 185
    .line 186
    sub-int/2addr v10, v12

    .line 187
    if-le v1, v10, :cond_a

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_a
    if-eqz v13, :cond_b

    .line 191
    .line 192
    add-int v1, v13, v12

    .line 193
    .line 194
    if-ge v14, v1, :cond_b

    .line 195
    .line 196
    add-int v1, v3, v11

    .line 197
    .line 198
    sub-int v4, v13, v12

    .line 199
    .line 200
    if-le v1, v4, :cond_b

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_b
    if-eqz v5, :cond_7

    .line 204
    .line 205
    if-eqz v13, :cond_7

    .line 206
    .line 207
    sub-int v1, v5, v11

    .line 208
    .line 209
    add-int v4, v13, v12

    .line 210
    .line 211
    if-ge v1, v4, :cond_7

    .line 212
    .line 213
    add-int/2addr v11, v5

    .line 214
    sub-int/2addr v13, v12

    .line 215
    if-le v11, v13, :cond_7

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 219
    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 229
    .line 230
    int-to-double v3, v8

    .line 231
    invoke-direct {v0, v6}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getBandwidthIn20MhzChannels(I)I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    int-to-double v5, v5

    .line 236
    div-double/2addr v3, v5

    .line 237
    iput-wide v3, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mApCountOnChannel:D

    .line 238
    .line 239
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 240
    .line 241
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 250
    .line 251
    move/from16 v1, p1

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method public updateBssidQosMapOnTputUpdate(IJJJ)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getLevelValue(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 24
    .line 25
    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;-><init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    cmp-long v1, p2, v1

    .line 34
    .line 35
    if-lez v1, :cond_4

    .line 36
    .line 37
    const-wide/16 v1, 0x1388

    .line 38
    .line 39
    cmp-long v1, p2, v1

    .line 40
    .line 41
    if-gez v1, :cond_4

    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 54
    .line 55
    iget-wide v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    .line 56
    .line 57
    add-long/2addr v2, p2

    .line 58
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    .line 59
    .line 60
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 71
    .line 72
    iget-wide v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalTxBytes:J

    .line 73
    .line 74
    add-long/2addr v2, p4

    .line 75
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalTxBytes:J

    .line 76
    .line 77
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 88
    .line 89
    iget-wide v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    .line 90
    .line 91
    add-long/2addr v2, p6

    .line 92
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    .line 93
    .line 94
    const-wide/16 v1, 0x1f40

    .line 95
    .line 96
    mul-long v3, p6, v1

    .line 97
    .line 98
    div-long/2addr v3, p2

    .line 99
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 110
    .line 111
    iput-wide v3, v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCurrentThroughput:J

    .line 112
    .line 113
    const-wide/32 v5, 0x7a120

    .line 114
    .line 115
    .line 116
    cmp-long v5, v3, v5

    .line 117
    .line 118
    if-lez v5, :cond_1

    .line 119
    .line 120
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 131
    .line 132
    iget-wide v6, v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 133
    .line 134
    add-long/2addr v6, p2

    .line 135
    iput-wide v6, v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 136
    .line 137
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 138
    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 148
    .line 149
    iget-wide v6, v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTxBytes:J

    .line 150
    .line 151
    add-long/2addr v6, p4

    .line 152
    iput-wide v6, v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTxBytes:J

    .line 153
    .line 154
    iget-object p4, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object p5

    .line 160
    invoke-virtual {p4, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p4

    .line 164
    check-cast p4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 165
    .line 166
    iget-wide v5, p4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    .line 167
    .line 168
    add-long/2addr v5, p6

    .line 169
    iput-wide v5, p4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    .line 170
    .line 171
    iget-object p4, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 172
    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object p5

    .line 177
    invoke-virtual {p4, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p4

    .line 181
    check-cast p4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 182
    .line 183
    iget-object p5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 184
    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object p6

    .line 189
    invoke-virtual {p5, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p5

    .line 193
    check-cast p5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 194
    .line 195
    iget-wide p5, p5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    .line 196
    .line 197
    mul-long/2addr p5, v1

    .line 198
    iget-object p7, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 199
    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {p7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p7

    .line 208
    check-cast p7, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 209
    .line 210
    iget-wide v5, p7, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 211
    .line 212
    div-long/2addr p5, v5

    .line 213
    iput-wide p5, p4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    .line 214
    .line 215
    :cond_1
    iget-object p4, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 216
    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object p5

    .line 221
    invoke-virtual {p4, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p4

    .line 225
    check-cast p4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 226
    .line 227
    iget-object p5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 228
    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object p6

    .line 233
    invoke-virtual {p5, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p5

    .line 237
    check-cast p5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 238
    .line 239
    iget-wide p5, p5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    .line 240
    .line 241
    mul-long/2addr p5, v1

    .line 242
    iget-object p7, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 243
    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p7

    .line 252
    check-cast p7, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 253
    .line 254
    iget-wide v1, p7, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    .line 255
    .line 256
    div-long/2addr p5, v1

    .line 257
    iput-wide p5, p4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mAverageThroughput:J

    .line 258
    .line 259
    iget-object p4, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 260
    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object p5

    .line 265
    invoke-virtual {p4, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p4

    .line 269
    check-cast p4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 270
    .line 271
    iget-wide p4, p4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 272
    .line 273
    const-wide/32 p6, 0x30d40

    .line 274
    .line 275
    .line 276
    mul-long/2addr p2, p6

    .line 277
    const-wide/32 p6, 0xea60

    .line 278
    .line 279
    .line 280
    div-long/2addr p2, p6

    .line 281
    sub-long/2addr p4, p2

    .line 282
    cmp-long p2, p4, v3

    .line 283
    .line 284
    if-gez p2, :cond_2

    .line 285
    .line 286
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 287
    .line 288
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object p3

    .line 292
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 297
    .line 298
    iput-wide v3, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 299
    .line 300
    goto :goto_0

    .line 301
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 302
    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object p3

    .line 307
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 312
    .line 313
    iget-wide p2, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    .line 314
    .line 315
    cmp-long p2, p4, p2

    .line 316
    .line 317
    if-lez p2, :cond_3

    .line 318
    .line 319
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 320
    .line 321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object p3

    .line 325
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 330
    .line 331
    iput-wide p4, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 332
    .line 333
    goto :goto_0

    .line 334
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 335
    .line 336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object p3

    .line 340
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    check-cast p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 345
    .line 346
    iget-object p3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 347
    .line 348
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object p4

    .line 352
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p3

    .line 356
    check-cast p3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 357
    .line 358
    iget-wide p3, p3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    .line 359
    .line 360
    iput-wide p3, p2, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 361
    .line 362
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    .line 363
    .line 364
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    check-cast p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 373
    .line 374
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    .line 375
    .line 376
    .line 377
    return-void
.end method

.method public updateOpenNetworkQosScoreSummary()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getOpenNetworkQosNoInternetStatus()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getOpenNetworkQosScores()[I

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, " [ No Internet - "

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, " [ "

    .line 19
    .line 20
    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    array-length v0, v1

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_1
    if-ge v3, v0, :cond_1

    .line 26
    .line 27
    aget v4, v1, v3

    .line 28
    .line 29
    sget-object v5, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->INDEX_TO_STRING_SHORT:[Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getQualityIndexFromScore(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    aget-object v4, v5, v4

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, " "

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string v0, "] "

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->DBG:Z

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "updateOpenNetworkQosScoreSummary: "

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "OpenNetworkQos[4.00]"

    .line 72
    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    const-string v1, "wifi_wcm_qos_sharing_score_summary"

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method
