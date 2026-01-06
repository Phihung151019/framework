.class public Lcom/samsung/android/server/wifi/wcm/BssidStatistics;
.super Lcom/samsung/android/server/wifi/wcm/Constant;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;,
        Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static SMARTCM_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.BssidStatistics"

.field private static sPresetLoss:[D


# instance fields
.field private final mBssid:Ljava/lang/String;

.field public mBssidAvoidTimeMax:J

.field private mBssidStatisticsCallBack:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;

.field private mContext:Landroid/content/Context;

.field private mCurrentConnectionState:I

.field private mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

.field private mCurrentMode:I

.field public mEnhancedTargetRssi:I

.field private mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

.field private mEntriesSize:I

.field public mGoodLinkTargetCount:I

.field public mGoodLinkTargetRssi:I

.field public mLastGoodRxRssi:I

.field public mLastPoorReason:I

.field public mLastPoorRssi:I

.field public mLastTimeGood:J

.field public mLastTimePoor:J

.field public mLastTimeSample:J

.field public mMaxStreamTP:[J

.field public mMaxThroughput:[J

.field private mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

.field private mRssiBase:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/Constant;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEnhancedTargetRssi:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mContext:Landroid/content/Context;

    .line 4
    new-instance v2, Landroid/net/wifi/WifiInfo;

    invoke-direct {v2}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 5
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentMode:I

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentConnectionState:I

    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssid:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->netId:I

    const/16 p1, -0x69

    .line 10
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    const/16 p1, 0x4c

    .line 11
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    .line 12
    new-array p1, p1, [Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    move p1, v0

    .line 13
    :goto_0
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    if-ge p1, p2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    new-instance v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    const-wide v3, 0x3fb999999999999aL    # 0.1

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;-><init>(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;D)V

    aput-object v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    .line 15
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    .line 16
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    move p2, v0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge p2, p1, :cond_1

    .line 17
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    aput-wide v2, v4, p2

    .line 18
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    aput-wide v2, v4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const/16 p1, -0xc8

    .line 19
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 20
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 21
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 22
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 23
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorReason:I

    return-void
.end method

.method private isConnectedState()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentConnectionState:I

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

.method private isValidState()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentConnectionState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method private setRssiTargetHistory([Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidStatisticsCallBack:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;->setRssiTargetHistory([Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public clearBssidQosMap()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->clearBssidQosMap()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearParameters()V
    .locals 6

    .line 1
    const/16 v0, -0x69

    .line 2
    .line 3
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    .line 4
    .line 5
    const/16 v0, 0x4c

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    .line 8
    .line 9
    new-array v0, v0, [Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    .line 16
    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 20
    .line 21
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 22
    .line 23
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;-><init>(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;D)V

    .line 29
    .line 30
    .line 31
    aput-object v3, v2, v1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v1, 0x64

    .line 37
    .line 38
    new-array v2, v1, [J

    .line 39
    .line 40
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    .line 41
    .line 42
    new-array v2, v1, [J

    .line 43
    .line 44
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    .line 45
    .line 46
    move v2, v0

    .line 47
    :goto_1
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    if-ge v2, v1, :cond_1

    .line 50
    .line 51
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    .line 52
    .line 53
    aput-wide v3, v5, v2

    .line 54
    .line 55
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    .line 56
    .line 57
    aput-wide v3, v5, v2

    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/16 v1, -0xc8

    .line 63
    .line 64
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 65
    .line 66
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 67
    .line 68
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 69
    .line 70
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorReason:I

    .line 74
    .line 75
    return-void
.end method

.method public dumpBssidQosMap()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->dumpBssidQosMap()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public findRssiTarget(IID)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 4
    .line 5
    const/16 v2, -0xc8

    .line 6
    .line 7
    const-string v3, "WifiConnectivityMonitor.BssidStatistics"

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const-string v0, "Scan target found: initial rssi=-90"

    .line 12
    .line 13
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/16 v0, -0x5a

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    .line 20
    .line 21
    sub-int v2, p1, v1

    .line 22
    .line 23
    sub-int v1, p2, v1

    .line 24
    .line 25
    if-ge v2, v1, :cond_1

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v5, -0x1

    .line 30
    :goto_0
    const/4 v6, 0x0

    .line 31
    move v7, v6

    .line 32
    :goto_1
    if-eq v2, v1, :cond_8

    .line 33
    .line 34
    const-string v8, "% value="

    .line 35
    .line 36
    const-string v9, " threshold="

    .line 37
    .line 38
    const-string v10, "Scan target found: rssi="

    .line 39
    .line 40
    const-string v11, "#.##"

    .line 41
    .line 42
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 43
    .line 44
    if-ltz v2, :cond_4

    .line 45
    .line 46
    iget v14, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    .line 47
    .line 48
    if-ge v2, v14, :cond_4

    .line 49
    .line 50
    iget-object v14, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 51
    .line 52
    aget-object v14, v14, v2

    .line 53
    .line 54
    move/from16 p2, v5

    .line 55
    .line 56
    const/16 p1, 0x1

    .line 57
    .line 58
    iget-wide v4, v14, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    .line 59
    .line 60
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 61
    .line 62
    cmpl-double v4, v4, v15

    .line 63
    .line 64
    if-lez v4, :cond_5

    .line 65
    .line 66
    iget-wide v4, v14, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    .line 67
    .line 68
    cmpg-double v4, v4, p3

    .line 69
    .line 70
    if-gez v4, :cond_3

    .line 71
    .line 72
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    .line 73
    .line 74
    add-int/2addr v1, v2

    .line 75
    sget-boolean v4, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    new-instance v4, Ljava/text/DecimalFormat;

    .line 80
    .line 81
    invoke-direct {v4, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v10, v1, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    mul-double v6, p3, v12

    .line 89
    .line 90
    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v6, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 101
    .line 102
    aget-object v6, v6, v2

    .line 103
    .line 104
    iget-wide v6, v6, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    .line 105
    .line 106
    mul-double/2addr v6, v12

    .line 107
    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v6, "% volume="

    .line 115
    .line 116
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v6, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 120
    .line 121
    aget-object v2, v6, v2

    .line 122
    .line 123
    iget-wide v6, v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    .line 124
    .line 125
    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 140
    .line 141
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->setRssiTargetHistory([Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V

    .line 142
    .line 143
    .line 144
    return v1

    .line 145
    :cond_3
    move v7, v6

    .line 146
    goto :goto_2

    .line 147
    :cond_4
    move/from16 p2, v5

    .line 148
    .line 149
    const/16 p1, 0x1

    .line 150
    .line 151
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 152
    .line 153
    const/4 v4, 0x3

    .line 154
    if-lt v7, v4, :cond_7

    .line 155
    .line 156
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    .line 157
    .line 158
    add-int/2addr v4, v2

    .line 159
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->presetLoss(I)D

    .line 160
    .line 161
    .line 162
    move-result-wide v14

    .line 163
    cmpg-double v5, v14, p3

    .line 164
    .line 165
    if-gez v5, :cond_7

    .line 166
    .line 167
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    .line 168
    .line 169
    if-eqz v0, :cond_6

    .line 170
    .line 171
    new-instance v0, Ljava/text/DecimalFormat;

    .line 172
    .line 173
    invoke-direct {v0, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v10, v4, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    mul-double v5, p3, v12

    .line 181
    .line 182
    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    mul-double/2addr v14, v12

    .line 193
    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v0, "% volume=preset"

    .line 201
    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    :cond_6
    return v4

    .line 213
    :cond_7
    :goto_2
    add-int v2, v2, p2

    .line 214
    .line 215
    move/from16 v5, p2

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :cond_8
    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    .line 220
    .line 221
    add-int/2addr v0, v1

    .line 222
    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCurrentLoss(D)Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;-><init>(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;D)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentLoss:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 13
    .line 14
    return-object p0
.end method

.method public getNetId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->netId:I

    .line 2
    .line 3
    return p0
.end method

.method public getOpenNetworkQosNoInternetStatus()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getOpenNetworkQosNoInternetStatus()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getOpenNetworkQosScores()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->getOpenNetworkQosScores()[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public initOnConnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->initOnConnect(Landroid/net/wifi/WifiConfiguration;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public newLinkDetected()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 10
    .line 11
    cmp-long v3, v3, v0

    .line 12
    .line 13
    const-string v4, " count="

    .line 14
    .line 15
    const-string v5, "WifiConnectivityMonitor.BssidStatistics"

    .line 16
    .line 17
    if-lez v3, :cond_2

    .line 18
    .line 19
    sget-boolean v3, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v6, "Previous avoidance still in effect, rssi="

    .line 26
    .line 27
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v6, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 31
    .line 32
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 51
    .line 52
    const-wide/16 v5, 0x7530

    .line 53
    .line 54
    add-long/2addr v5, v0

    .line 55
    cmp-long v3, v3, v5

    .line 56
    .line 57
    if-gez v3, :cond_4

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/16 v3, -0x40

    .line 66
    .line 67
    if-le v2, v3, :cond_1

    .line 68
    .line 69
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    const-wide/32 v2, 0x1d4c0

    .line 73
    .line 74
    .line 75
    add-long/2addr v0, v2

    .line 76
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 80
    .line 81
    const/16 v3, -0xc8

    .line 82
    .line 83
    if-le v2, v3, :cond_3

    .line 84
    .line 85
    const/4 v2, 0x5

    .line 86
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const/16 v2, -0x1e

    .line 90
    .line 91
    const-wide v6, 0x3fa999999999999aL    # 0.05

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    const/16 v3, -0x69

    .line 97
    .line 98
    invoke-virtual {p0, v3, v2, v6, v7}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->findRssiTarget(IID)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    .line 106
    .line 107
    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 108
    .line 109
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, "New link verifying target set, rssi="

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_4
    return-void
.end method

.method public poorLinkDetected(I)Z
    .locals 12

    .line 27
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    const-string v1, "WifiConnectivityMonitor.BssidStatistics"

    if-eqz v0, :cond_0

    const-string v0, "Poor link detected, rssi="

    .line 28
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 31
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastTimeGood:J

    sub-long v4, v2, v4

    .line 32
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastTimePoor:J

    sub-long v6, v2, v6

    .line 33
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentMode:I

    const/4 v8, 0x3

    if-ne v0, v8, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    const/4 v9, 0x5

    :goto_0
    add-int/2addr v9, p1

    if-ne v0, v8, :cond_2

    const/16 v0, 0xf

    goto :goto_1

    :cond_2
    const/16 v0, 0x14

    :goto_1
    add-int/2addr p1, v0

    const-wide v10, 0x3fa999999999999aL    # 0.05

    .line 34
    invoke-virtual {p0, v9, p1, v10, v11}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->findRssiTarget(IID)I

    move-result p1

    .line 35
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    if-le p1, v0, :cond_3

    .line 36
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    :cond_3
    const/16 p1, 0x8

    .line 37
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    const-wide/16 v8, 0x7530

    add-long/2addr v2, v8

    .line 38
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "goodRssi="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " goodCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " lastGood="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " lastPoor="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " avoidMax=30000"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public poorLinkDetected(II)Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->isConnectedState()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "WifiConnectivityMonitor.BssidStatistics"

    if-nez v0, :cond_0

    .line 2
    const-string p0, "already disconnected"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    return v1

    .line 3
    :cond_1
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorReason:I

    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->poorLinkDetected(I)Z

    .line 6
    sget-boolean p2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    if-eqz p2, :cond_2

    const/16 p2, -0x1e

    if-gt p1, p2, :cond_2

    const/16 p2, -0x64

    if-le p1, p2, :cond_2

    if-gtz p1, :cond_2

    .line 7
    const-string p2, "["

    const-string v0, "] loss="

    .line 8
    invoke-static {p2, p1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    iget v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    sub-int v3, p1, v3

    aget-object v0, v0, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", maxTP="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    neg-int v3, p1

    aget-wide v4, v0, v3

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", maxStream="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    aget-wide v3, v0, v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v3, v5

    .line 11
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 12
    sget-boolean p2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->DBG:Z

    if-eqz p2, :cond_3

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Poor link detected enhanced recovery, avoidMax=120000, mBssidAvoidTimeMax="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_3
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    const/16 v0, -0x52

    if-ge p2, v0, :cond_4

    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->isValidState()Z

    move-result p2

    const/4 v0, 0x5

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    sub-int v3, p2, p1

    const/16 v4, 0xa

    if-ge v3, v4, :cond_6

    if-ge p2, p1, :cond_5

    .line 17
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 18
    :cond_5
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEnhancedTargetRssi:I

    .line 19
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mGoodLinkTargetRssi is updated : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 21
    :cond_6
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEnhancedTargetRssi:I

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEnhancedTargetRssi:I

    :cond_7
    :goto_0
    return v1
.end method

.method public presetLoss(I)D
    .locals 8

    .line 1
    const/16 p0, -0x5a

    .line 2
    .line 3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 4
    .line 5
    if-gt p1, p0, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    if-lez p1, :cond_1

    .line 9
    .line 10
    const-wide/16 p0, 0x0

    .line 11
    .line 12
    return-wide p0

    .line 13
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->sPresetLoss:[D

    .line 14
    .line 15
    if-nez p0, :cond_2

    .line 16
    .line 17
    const/16 p0, 0x5a

    .line 18
    .line 19
    new-array v2, p0, [D

    .line 20
    .line 21
    sput-object v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->sPresetLoss:[D

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, p0, :cond_2

    .line 25
    .line 26
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->sPresetLoss:[D

    .line 27
    .line 28
    rsub-int/lit8 v4, v2, 0x5a

    .line 29
    .line 30
    int-to-double v4, v4

    .line 31
    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    .line 32
    .line 33
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    div-double v4, v0, v4

    .line 38
    .line 39
    aput-wide v4, v3, v2

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->sPresetLoss:[D

    .line 45
    .line 46
    neg-int p1, p1

    .line 47
    aget-wide p0, p0, p1

    .line 48
    .line 49
    return-wide p0
.end method

.method public registerOpenNetworkQosCallback(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->registerOpenNetworkQosCallback(Ljava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBssidStatisticsCallBack(Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidStatisticsCallBack:Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrentConnectionState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentConnectionState:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->setCurrentConnectionState(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFrameworkFacade(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->setFrameworkFacade(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUsePrivateDns(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->setUsePrivateDns(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateBssidLatestDnsResultType(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidLatestDnsResultType(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateBssidNoInternet(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidNoInternet(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateBssidQosMapOnDnsResult(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnDnsResult(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateBssidQosMapOnLevel2State(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnLevel2State(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateBssidQosMapOnPerUpdate(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnPerUpdate(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateBssidQosMapOnQcResult(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnQcResult(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateBssidQosMapOnReachabilityLost(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnReachabilityLost(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateBssidQosMapOnScan(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnScan(IILjava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateBssidQosMapOnTputUpdate(IJJJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateBssidQosMapOnTputUpdate(IJJJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateCurrentMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mCurrentMode:I

    .line 2
    .line 3
    return-void
.end method

.method public updateGoodRssi(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_3

    .line 4
    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 6
    .line 7
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 8
    .line 9
    const-string v1, "WifiConnectivityMonitor.BssidStatistics"

    .line 10
    .line 11
    if-le v0, p1, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 14
    .line 15
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "lower mGoodLinkTargetRssi : "

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 32
    .line 33
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 34
    .line 35
    if-lt v0, v2, :cond_1

    .line 36
    .line 37
    add-int/lit8 v0, v0, -0x3

    .line 38
    .line 39
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 40
    .line 41
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "lower mLastPoorRssi : "

    .line 48
    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    .line 53
    .line 54
    invoke-static {v1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    .line 58
    .line 59
    const-string v2, "new good RSSI : "

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-static {v2, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void
.end method

.method public updateLoss(IDI)V
    .locals 6

    .line 1
    if-gtz p4, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mRssiBase:I

    .line 6
    .line 7
    sub-int v0, p1, v0

    .line 8
    .line 9
    if-ltz v0, :cond_3

    .line 10
    .line 11
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntriesSize:I

    .line 12
    .line 13
    if-lt v0, v1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 18
    .line 19
    aget-object v1, v1, v0

    .line 20
    .line 21
    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->update(DI)V

    .line 22
    .line 23
    .line 24
    iget p4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 25
    .line 26
    const-string v1, "WifiConnectivityMonitor.BssidStatistics"

    .line 27
    .line 28
    if-lt p1, p4, :cond_2

    .line 29
    .line 30
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmpl-double p4, p2, v2

    .line 36
    .line 37
    if-ltz p4, :cond_2

    .line 38
    .line 39
    iget-object p4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 40
    .line 41
    aget-object p4, p4, v0

    .line 42
    .line 43
    iget-wide v2, p4, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    .line 44
    .line 45
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    cmpl-double p4, v2, v4

    .line 51
    .line 52
    if-ltz p4, :cond_2

    .line 53
    .line 54
    const/4 p4, 0x0

    .line 55
    iput p4, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 56
    .line 57
    new-instance p4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "lose good rx position : "

    .line 60
    .line 61
    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " loss="

    .line 68
    .line 69
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_2
    sget-boolean p2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    .line 83
    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    new-instance p2, Ljava/text/DecimalFormat;

    .line 87
    .line 88
    const-string p3, "#.##"

    .line 89
    .line 90
    invoke-direct {p2, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p3, "Cache updated: loss["

    .line 94
    .line 95
    const-string p4, "]="

    .line 96
    .line 97
    invoke-static {p3, p1, p4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object p3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 102
    .line 103
    aget-object p3, p3, v0

    .line 104
    .line 105
    iget-wide p3, p3, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    .line 106
    .line 107
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 108
    .line 109
    mul-double/2addr p3, v2

    .line 110
    invoke-virtual {p2, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p3, "% volume="

    .line 118
    .line 119
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mEntries:[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    .line 123
    .line 124
    aget-object p0, p0, v0

    .line 125
    .line 126
    iget-wide p3, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    .line 127
    .line 128
    invoke-virtual {p2, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_3
    :goto_0
    return-void
.end method

.method public updateMaxThroughput(IJZ)V
    .locals 4

    .line 1
    const/16 v0, -0x64

    .line 2
    .line 3
    if-ge v0, p1, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_1

    .line 6
    .line 7
    const-string v0, "] : "

    .line 8
    .line 9
    const-string v1, "WifiConnectivityMonitor.BssidStatistics"

    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxStreamTP:[J

    .line 14
    .line 15
    neg-int p4, p1

    .line 16
    aget-wide v2, p0, p4

    .line 17
    .line 18
    cmp-long v2, v2, p2

    .line 19
    .line 20
    if-gez v2, :cond_1

    .line 21
    .line 22
    aput-wide p2, p0, p4

    .line 23
    .line 24
    sget-boolean p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p4, "new Max stream TP["

    .line 31
    .line 32
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    .line 53
    .line 54
    neg-int p4, p1

    .line 55
    aget-wide v2, p0, p4

    .line 56
    .line 57
    cmp-long v2, v2, p2

    .line 58
    .line 59
    if-gez v2, :cond_1

    .line 60
    .line 61
    aput-wide p2, p0, p4

    .line 62
    .line 63
    sget-boolean p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->SMARTCM_DBG:Z

    .line 64
    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string p4, "new Max TP["

    .line 70
    .line 71
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void
.end method

.method public updateOpenNetworkQosScoreSummary()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mOpenNetworkQoS:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->updateOpenNetworkQosScoreSummary()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
