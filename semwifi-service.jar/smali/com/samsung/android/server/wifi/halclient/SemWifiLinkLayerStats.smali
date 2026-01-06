.class public Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;
    }
.end annotation


# static fields
.field public static final V1_0:Ljava/lang/String; = "V1_0"

.field public static final V1_3:Ljava/lang/String; = "V1_3"

.field public static final V1_5:Ljava/lang/String; = "V1_5"


# instance fields
.field public beacon_rx:I

.field public final channelStatsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;",
            ">;"
        }
    .end annotation
.end field

.field public contentionNumSamplesBe:J

.field public contentionNumSamplesBk:J

.field public contentionNumSamplesVi:J

.field public contentionNumSamplesVo:J

.field public contentionTimeAvgBeInUsec:J

.field public contentionTimeAvgBkInUsec:J

.field public contentionTimeAvgViInUsec:J

.field public contentionTimeAvgVoInUsec:J

.field public contentionTimeMaxBeInUsec:J

.field public contentionTimeMaxBkInUsec:J

.field public contentionTimeMaxViInUsec:J

.field public contentionTimeMaxVoInUsec:J

.field public contentionTimeMinBeInUsec:J

.field public contentionTimeMinBkInUsec:J

.field public contentionTimeMinViInUsec:J

.field public contentionTimeMinVoInUsec:J

.field public links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

.field public lostmpdu_be:J

.field public lostmpdu_bk:J

.field public lostmpdu_vi:J

.field public lostmpdu_vo:J

.field public numRadios:I

.field public on_time:I

.field public on_time_background_scan:I

.field public on_time_hs20_scan:I

.field public on_time_nan_scan:I

.field public on_time_pno_scan:I

.field public on_time_roam_scan:I

.field public on_time_scan:I

.field public peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

.field public radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

.field public retries_be:J

.field public retries_bk:J

.field public retries_vi:J

.field public retries_vo:J

.field public rssi_mgmt:I

.field public rx_time:I

.field public rxmpdu_be:J

.field public rxmpdu_bk:J

.field public rxmpdu_vi:J

.field public rxmpdu_vo:J

.field public timeSliceDutyCycleInPercent:S

.field public timeStampInMs:J

.field public tx_time:I

.field public tx_time_per_level:[I

.field public txmpdu_be:J

.field public txmpdu_bk:J

.field public txmpdu_vi:J

.field public txmpdu_vo:J

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput-short v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeSliceDutyCycleInPercent:S

    .line 13
    .line 14
    return-void
.end method

.method private aggregatePacketStats()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->clearAggregatedPacketStats()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v3, v0, v2

    .line 11
    .line 12
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_be:J

    .line 13
    .line 14
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_be:J

    .line 15
    .line 16
    add-long/2addr v4, v6

    .line 17
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_be:J

    .line 18
    .line 19
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_be:J

    .line 20
    .line 21
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_be:J

    .line 22
    .line 23
    add-long/2addr v4, v6

    .line 24
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_be:J

    .line 25
    .line 26
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_be:J

    .line 27
    .line 28
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_be:J

    .line 29
    .line 30
    add-long/2addr v4, v6

    .line 31
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_be:J

    .line 32
    .line 33
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_be:J

    .line 34
    .line 35
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_be:J

    .line 36
    .line 37
    add-long/2addr v4, v6

    .line 38
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_be:J

    .line 39
    .line 40
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_bk:J

    .line 41
    .line 42
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_bk:J

    .line 43
    .line 44
    add-long/2addr v4, v6

    .line 45
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_bk:J

    .line 46
    .line 47
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_bk:J

    .line 48
    .line 49
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_bk:J

    .line 50
    .line 51
    add-long/2addr v4, v6

    .line 52
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_bk:J

    .line 53
    .line 54
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_bk:J

    .line 55
    .line 56
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_bk:J

    .line 57
    .line 58
    add-long/2addr v4, v6

    .line 59
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_bk:J

    .line 60
    .line 61
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_bk:J

    .line 62
    .line 63
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_bk:J

    .line 64
    .line 65
    add-long/2addr v4, v6

    .line 66
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_bk:J

    .line 67
    .line 68
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vi:J

    .line 69
    .line 70
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_vi:J

    .line 71
    .line 72
    add-long/2addr v4, v6

    .line 73
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vi:J

    .line 74
    .line 75
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vi:J

    .line 76
    .line 77
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_vi:J

    .line 78
    .line 79
    add-long/2addr v4, v6

    .line 80
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vi:J

    .line 81
    .line 82
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vi:J

    .line 83
    .line 84
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_vi:J

    .line 85
    .line 86
    add-long/2addr v4, v6

    .line 87
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vi:J

    .line 88
    .line 89
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vi:J

    .line 90
    .line 91
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_vi:J

    .line 92
    .line 93
    add-long/2addr v4, v6

    .line 94
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vi:J

    .line 95
    .line 96
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vo:J

    .line 97
    .line 98
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_vo:J

    .line 99
    .line 100
    add-long/2addr v4, v6

    .line 101
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vo:J

    .line 102
    .line 103
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vo:J

    .line 104
    .line 105
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_vo:J

    .line 106
    .line 107
    add-long/2addr v4, v6

    .line 108
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vo:J

    .line 109
    .line 110
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vo:J

    .line 111
    .line 112
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_vo:J

    .line 113
    .line 114
    add-long/2addr v4, v6

    .line 115
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vo:J

    .line 116
    .line 117
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vo:J

    .line 118
    .line 119
    iget-wide v6, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_vo:J

    .line 120
    .line 121
    add-long/2addr v4, v6

    .line 122
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vo:J

    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method private aggregatePeerStats()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v3, v1, :cond_2

    .line 12
    .line 13
    aget-object v5, v0, v3

    .line 14
    .line 15
    iget-object v5, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 16
    .line 17
    if-eqz v5, :cond_1

    .line 18
    .line 19
    array-length v5, v5

    .line 20
    add-int/2addr v4, v5

    .line 21
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    if-nez v4, :cond_3

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_3
    new-array v0, v4, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 33
    .line 34
    array-length v1, v0

    .line 35
    move v3, v2

    .line 36
    :goto_1
    if-ge v3, v1, :cond_8

    .line 37
    .line 38
    aget-object v4, v0, v3

    .line 39
    .line 40
    iget-object v4, v4, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 41
    .line 42
    if-nez v4, :cond_4

    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_4
    array-length v5, v4

    .line 47
    move v6, v2

    .line 48
    move v7, v6

    .line 49
    :goto_2
    if-ge v6, v5, :cond_7

    .line 50
    .line 51
    aget-object v8, v4, v6

    .line 52
    .line 53
    iget-object v9, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 54
    .line 55
    new-instance v10, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 56
    .line 57
    invoke-direct {v10}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;-><init>()V

    .line 58
    .line 59
    .line 60
    aput-object v10, v9, v7

    .line 61
    .line 62
    iget-object v9, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 63
    .line 64
    aget-object v9, v9, v7

    .line 65
    .line 66
    iget-short v10, v8, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->staCount:S

    .line 67
    .line 68
    iput-short v10, v9, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->staCount:S

    .line 69
    .line 70
    iget-short v10, v8, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->chanUtil:S

    .line 71
    .line 72
    iput-short v10, v9, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->chanUtil:S

    .line 73
    .line 74
    iget-object v10, v8, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 75
    .line 76
    if-nez v10, :cond_5

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    array-length v10, v10

    .line 80
    new-array v10, v10, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 81
    .line 82
    iput-object v10, v9, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 83
    .line 84
    iget-object v8, v8, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 85
    .line 86
    array-length v9, v8

    .line 87
    move v10, v2

    .line 88
    move v11, v10

    .line 89
    :goto_3
    if-ge v10, v9, :cond_6

    .line 90
    .line 91
    aget-object v12, v8, v10

    .line 92
    .line 93
    iget-object v13, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 94
    .line 95
    aget-object v13, v13, v7

    .line 96
    .line 97
    iget-object v13, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 98
    .line 99
    new-instance v14, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 100
    .line 101
    invoke-direct {v14}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;-><init>()V

    .line 102
    .line 103
    .line 104
    aput-object v14, v13, v11

    .line 105
    .line 106
    iget-object v13, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 107
    .line 108
    aget-object v13, v13, v7

    .line 109
    .line 110
    iget-object v13, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 111
    .line 112
    aget-object v13, v13, v11

    .line 113
    .line 114
    iget v14, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->preamble:I

    .line 115
    .line 116
    iput v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->preamble:I

    .line 117
    .line 118
    iget v14, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->nss:I

    .line 119
    .line 120
    iput v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->nss:I

    .line 121
    .line 122
    iget v14, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bw:I

    .line 123
    .line 124
    iput v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bw:I

    .line 125
    .line 126
    iget v14, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rateMcsIdx:I

    .line 127
    .line 128
    iput v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rateMcsIdx:I

    .line 129
    .line 130
    iget v14, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bitRateInKbps:I

    .line 131
    .line 132
    iput v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bitRateInKbps:I

    .line 133
    .line 134
    iget v14, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->txMpdu:I

    .line 135
    .line 136
    iput v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->txMpdu:I

    .line 137
    .line 138
    iget v14, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rxMpdu:I

    .line 139
    .line 140
    iput v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rxMpdu:I

    .line 141
    .line 142
    iget v14, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->mpduLost:I

    .line 143
    .line 144
    iput v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->mpduLost:I

    .line 145
    .line 146
    iget v12, v12, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->retries:I

    .line 147
    .line 148
    iput v12, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->retries:I

    .line 149
    .line 150
    add-int/lit8 v11, v11, 0x1

    .line 151
    .line 152
    add-int/lit8 v10, v10, 0x1

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 156
    .line 157
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    :goto_6
    return-void
.end method

.method private clearAggregatedPacketStats()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_be:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_be:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_be:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_be:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_bk:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_bk:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_bk:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_bk:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vi:J

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vi:J

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vi:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vi:J

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vo:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vo:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vo:J

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vo:J

    .line 34
    .line 35
    return-void
.end method

.method private getBestLinkIndex()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget-object v3, v2, v1

    .line 9
    .line 10
    iget v3, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rssi_mgmt:I

    .line 11
    .line 12
    aget-object v2, v2, v0

    .line 13
    .line 14
    iget v2, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rssi_mgmt:I

    .line 15
    .line 16
    if-le v3, v2, :cond_0

    .line 17
    .line 18
    move v0, v1

    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v0
.end method


# virtual methods
.method public aggregateLinkLayerStats()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->getBestLinkIndex()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 11
    .line 12
    aget-object v0, v1, v0

    .line 13
    .line 14
    iget v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rssi_mgmt:I

    .line 15
    .line 16
    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rssi_mgmt:I

    .line 17
    .line 18
    iget v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->beacon_rx:I

    .line 19
    .line 20
    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->beacon_rx:I

    .line 21
    .line 22
    iget-short v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->timeSliceDutyCycleInPercent:S

    .line 23
    .line 24
    iput-short v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeSliceDutyCycleInPercent:S

    .line 25
    .line 26
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinBeInUsec:J

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBeInUsec:J

    .line 29
    .line 30
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxBeInUsec:J

    .line 31
    .line 32
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBeInUsec:J

    .line 33
    .line 34
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgBeInUsec:J

    .line 35
    .line 36
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBeInUsec:J

    .line 37
    .line 38
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesBe:J

    .line 39
    .line 40
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBe:J

    .line 41
    .line 42
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinBkInUsec:J

    .line 43
    .line 44
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBkInUsec:J

    .line 45
    .line 46
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxBkInUsec:J

    .line 47
    .line 48
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBkInUsec:J

    .line 49
    .line 50
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgBkInUsec:J

    .line 51
    .line 52
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBkInUsec:J

    .line 53
    .line 54
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesBk:J

    .line 55
    .line 56
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBk:J

    .line 57
    .line 58
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinViInUsec:J

    .line 59
    .line 60
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinViInUsec:J

    .line 61
    .line 62
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxViInUsec:J

    .line 63
    .line 64
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxViInUsec:J

    .line 65
    .line 66
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgViInUsec:J

    .line 67
    .line 68
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgViInUsec:J

    .line 69
    .line 70
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesVi:J

    .line 71
    .line 72
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVi:J

    .line 73
    .line 74
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinVoInUsec:J

    .line 75
    .line 76
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinVoInUsec:J

    .line 77
    .line 78
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxVoInUsec:J

    .line 79
    .line 80
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxVoInUsec:J

    .line 81
    .line 82
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgVoInUsec:J

    .line 83
    .line 84
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgVoInUsec:J

    .line 85
    .line 86
    iget-wide v0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesVo:J

    .line 87
    .line 88
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVo:J

    .line 89
    .line 90
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->aggregatePacketStats()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->aggregatePeerStats()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, " WifiLinkLayerStats: \n version of StaLinkLayerStats: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "\n my bss beacon rx: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->beacon_rx:I

    .line 21
    .line 22
    const-string v3, "\n RSSI mgmt: "

    .line 23
    .line 24
    invoke-static {v3, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 25
    .line 26
    .line 27
    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rssi_mgmt:I

    .line 28
    .line 29
    const-string v4, "\n BE :  rx="

    .line 30
    .line 31
    invoke-static {v4, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 32
    .line 33
    .line 34
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_be:J

    .line 35
    .line 36
    const-string v2, " tx="

    .line 37
    .line 38
    invoke-static {v5, v6, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 39
    .line 40
    .line 41
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_be:J

    .line 42
    .line 43
    const-string v7, " lost="

    .line 44
    .line 45
    invoke-static {v5, v6, v7, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 46
    .line 47
    .line 48
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_be:J

    .line 49
    .line 50
    const-string v8, " retries="

    .line 51
    .line 52
    invoke-static {v5, v6, v8, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 53
    .line 54
    .line 55
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_be:J

    .line 56
    .line 57
    const-string v9, "\n contention_time_min"

    .line 58
    .line 59
    invoke-static {v5, v6, v9, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 60
    .line 61
    .line 62
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBeInUsec:J

    .line 63
    .line 64
    const-string v10, " contention_time_max"

    .line 65
    .line 66
    invoke-static {v5, v6, v10, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 67
    .line 68
    .line 69
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBeInUsec:J

    .line 70
    .line 71
    const-string v11, "\n contention_time_avg"

    .line 72
    .line 73
    invoke-static {v5, v6, v11, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 74
    .line 75
    .line 76
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBeInUsec:J

    .line 77
    .line 78
    const-string v12, " contention_num_samples"

    .line 79
    .line 80
    invoke-static {v5, v6, v12, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 81
    .line 82
    .line 83
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBe:J

    .line 84
    .line 85
    const-string v13, "\n BK :  rx="

    .line 86
    .line 87
    invoke-static {v5, v6, v13, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 88
    .line 89
    .line 90
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_bk:J

    .line 91
    .line 92
    invoke-static {v5, v6, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 93
    .line 94
    .line 95
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_bk:J

    .line 96
    .line 97
    invoke-static {v5, v6, v7, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 98
    .line 99
    .line 100
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_bk:J

    .line 101
    .line 102
    invoke-static {v5, v6, v8, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 103
    .line 104
    .line 105
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_bk:J

    .line 106
    .line 107
    invoke-static {v5, v6, v9, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 108
    .line 109
    .line 110
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBkInUsec:J

    .line 111
    .line 112
    invoke-static {v5, v6, v10, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 113
    .line 114
    .line 115
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBkInUsec:J

    .line 116
    .line 117
    invoke-static {v5, v6, v11, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 118
    .line 119
    .line 120
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBkInUsec:J

    .line 121
    .line 122
    invoke-static {v5, v6, v12, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 123
    .line 124
    .line 125
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBk:J

    .line 126
    .line 127
    const-string v14, "\n VI :  rx="

    .line 128
    .line 129
    invoke-static {v5, v6, v14, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 130
    .line 131
    .line 132
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vi:J

    .line 133
    .line 134
    invoke-static {v5, v6, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 135
    .line 136
    .line 137
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vi:J

    .line 138
    .line 139
    invoke-static {v5, v6, v7, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 140
    .line 141
    .line 142
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vi:J

    .line 143
    .line 144
    invoke-static {v5, v6, v8, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 145
    .line 146
    .line 147
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vi:J

    .line 148
    .line 149
    invoke-static {v5, v6, v9, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 150
    .line 151
    .line 152
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinViInUsec:J

    .line 153
    .line 154
    invoke-static {v5, v6, v10, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 155
    .line 156
    .line 157
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxViInUsec:J

    .line 158
    .line 159
    invoke-static {v5, v6, v11, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 160
    .line 161
    .line 162
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgViInUsec:J

    .line 163
    .line 164
    invoke-static {v5, v6, v12, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 165
    .line 166
    .line 167
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVi:J

    .line 168
    .line 169
    const-string v15, "\n VO :  rx="

    .line 170
    .line 171
    invoke-static {v5, v6, v15, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 172
    .line 173
    .line 174
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vo:J

    .line 175
    .line 176
    invoke-static {v5, v6, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 177
    .line 178
    .line 179
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vo:J

    .line 180
    .line 181
    invoke-static {v5, v6, v7, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 182
    .line 183
    .line 184
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vo:J

    .line 185
    .line 186
    invoke-static {v5, v6, v8, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 187
    .line 188
    .line 189
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vo:J

    .line 190
    .line 191
    invoke-static {v5, v6, v9, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 192
    .line 193
    .line 194
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinVoInUsec:J

    .line 195
    .line 196
    invoke-static {v5, v6, v10, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 197
    .line 198
    .line 199
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxVoInUsec:J

    .line 200
    .line 201
    invoke-static {v5, v6, v11, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 202
    .line 203
    .line 204
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgVoInUsec:J

    .line 205
    .line 206
    invoke-static {v5, v6, v12, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 207
    .line 208
    .line 209
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVo:J

    .line 210
    .line 211
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const/16 v5, 0xa

    .line 219
    .line 220
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v6, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 224
    .line 225
    const-string v5, " bw="

    .line 226
    .line 227
    move-object/from16 v16, v6

    .line 228
    .line 229
    const-string v6, " nss="

    .line 230
    .line 231
    move-object/from16 v17, v5

    .line 232
    .line 233
    const-string v5, " preamble="

    .line 234
    .line 235
    move-object/from16 v18, v6

    .line 236
    .line 237
    const-string v6, " chanUtil="

    .line 238
    .line 239
    move-object/from16 v19, v5

    .line 240
    .line 241
    const-string v5, " staCount="

    .line 242
    .line 243
    move-object/from16 v20, v6

    .line 244
    .line 245
    const-string v6, " Number of peers="

    .line 246
    .line 247
    const/16 v21, 0x0

    .line 248
    .line 249
    if-eqz v16, :cond_4

    .line 250
    .line 251
    move-object/from16 v16, v5

    .line 252
    .line 253
    const-string v5, "Per link stats: Number of links = "

    .line 254
    .line 255
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget-object v5, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 259
    .line 260
    array-length v5, v5

    .line 261
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v5, "\n"

    .line 265
    .line 266
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    move-object/from16 v22, v6

    .line 270
    .line 271
    iget-object v6, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 272
    .line 273
    move-object/from16 v23, v5

    .line 274
    .line 275
    array-length v5, v6

    .line 276
    move-object/from16 v24, v6

    .line 277
    .line 278
    move/from16 v6, v21

    .line 279
    .line 280
    :goto_0
    if-ge v6, v5, :cond_3

    .line 281
    .line 282
    move/from16 v25, v5

    .line 283
    .line 284
    aget-object v5, v24, v6

    .line 285
    .line 286
    move/from16 v26, v6

    .line 287
    .line 288
    const-string v6, " link id: "

    .line 289
    .line 290
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    iget v6, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->link_id:I

    .line 294
    .line 295
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v6, "\n bss beacon rx: "

    .line 299
    .line 300
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget v6, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->beacon_rx:I

    .line 304
    .line 305
    invoke-static {v3, v6, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 306
    .line 307
    .line 308
    iget v6, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rssi_mgmt:I

    .line 309
    .line 310
    invoke-static {v4, v6, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 311
    .line 312
    .line 313
    move-object v6, v3

    .line 314
    move-object/from16 v27, v4

    .line 315
    .line 316
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_be:J

    .line 317
    .line 318
    invoke-static {v3, v4, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 319
    .line 320
    .line 321
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_be:J

    .line 322
    .line 323
    invoke-static {v3, v4, v7, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 324
    .line 325
    .line 326
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_be:J

    .line 327
    .line 328
    invoke-static {v3, v4, v8, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 329
    .line 330
    .line 331
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_be:J

    .line 332
    .line 333
    invoke-static {v3, v4, v9, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 334
    .line 335
    .line 336
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinBeInUsec:J

    .line 337
    .line 338
    invoke-static {v3, v4, v10, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 339
    .line 340
    .line 341
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxBeInUsec:J

    .line 342
    .line 343
    invoke-static {v3, v4, v11, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 344
    .line 345
    .line 346
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgBeInUsec:J

    .line 347
    .line 348
    invoke-static {v3, v4, v12, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 349
    .line 350
    .line 351
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesBe:J

    .line 352
    .line 353
    invoke-static {v3, v4, v13, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 354
    .line 355
    .line 356
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_bk:J

    .line 357
    .line 358
    invoke-static {v3, v4, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 359
    .line 360
    .line 361
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_bk:J

    .line 362
    .line 363
    invoke-static {v3, v4, v7, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 364
    .line 365
    .line 366
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_bk:J

    .line 367
    .line 368
    invoke-static {v3, v4, v8, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 369
    .line 370
    .line 371
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_bk:J

    .line 372
    .line 373
    invoke-static {v3, v4, v9, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 374
    .line 375
    .line 376
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinBkInUsec:J

    .line 377
    .line 378
    invoke-static {v3, v4, v10, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 379
    .line 380
    .line 381
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxBkInUsec:J

    .line 382
    .line 383
    invoke-static {v3, v4, v11, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 384
    .line 385
    .line 386
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgBkInUsec:J

    .line 387
    .line 388
    invoke-static {v3, v4, v12, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 389
    .line 390
    .line 391
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesBk:J

    .line 392
    .line 393
    invoke-static {v3, v4, v14, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 394
    .line 395
    .line 396
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_vi:J

    .line 397
    .line 398
    invoke-static {v3, v4, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 399
    .line 400
    .line 401
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_vi:J

    .line 402
    .line 403
    invoke-static {v3, v4, v7, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 404
    .line 405
    .line 406
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_vi:J

    .line 407
    .line 408
    invoke-static {v3, v4, v8, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 409
    .line 410
    .line 411
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_vi:J

    .line 412
    .line 413
    invoke-static {v3, v4, v9, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 414
    .line 415
    .line 416
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinViInUsec:J

    .line 417
    .line 418
    invoke-static {v3, v4, v10, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 419
    .line 420
    .line 421
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxViInUsec:J

    .line 422
    .line 423
    invoke-static {v3, v4, v11, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 424
    .line 425
    .line 426
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgViInUsec:J

    .line 427
    .line 428
    invoke-static {v3, v4, v12, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 429
    .line 430
    .line 431
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesVi:J

    .line 432
    .line 433
    invoke-static {v3, v4, v15, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 434
    .line 435
    .line 436
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_vo:J

    .line 437
    .line 438
    invoke-static {v3, v4, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 439
    .line 440
    .line 441
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_vo:J

    .line 442
    .line 443
    invoke-static {v3, v4, v7, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 444
    .line 445
    .line 446
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_vo:J

    .line 447
    .line 448
    invoke-static {v3, v4, v8, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 449
    .line 450
    .line 451
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_vo:J

    .line 452
    .line 453
    invoke-static {v3, v4, v9, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 454
    .line 455
    .line 456
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinVoInUsec:J

    .line 457
    .line 458
    invoke-static {v3, v4, v10, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 459
    .line 460
    .line 461
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxVoInUsec:J

    .line 462
    .line 463
    invoke-static {v3, v4, v11, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 464
    .line 465
    .line 466
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgVoInUsec:J

    .line 467
    .line 468
    invoke-static {v3, v4, v12, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 469
    .line 470
    .line 471
    iget-wide v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesVo:J

    .line 472
    .line 473
    move-object/from16 v28, v2

    .line 474
    .line 475
    const-string v2, "\n Duty cycle of the link="

    .line 476
    .line 477
    invoke-static {v3, v4, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 478
    .line 479
    .line 480
    iget-short v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeSliceDutyCycleInPercent:S

    .line 481
    .line 482
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    move-object/from16 v2, v23

    .line 490
    .line 491
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    iget-object v3, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 495
    .line 496
    if-eqz v3, :cond_2

    .line 497
    .line 498
    move-object/from16 v3, v22

    .line 499
    .line 500
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    iget-object v4, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 504
    .line 505
    array-length v4, v4

    .line 506
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const/16 v4, 0xa

    .line 510
    .line 511
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    iget-object v4, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 515
    .line 516
    array-length v5, v4

    .line 517
    move-object/from16 v23, v2

    .line 518
    .line 519
    move/from16 v2, v21

    .line 520
    .line 521
    :goto_1
    if-ge v2, v5, :cond_1

    .line 522
    .line 523
    move/from16 v22, v2

    .line 524
    .line 525
    aget-object v2, v4, v22

    .line 526
    .line 527
    move-object/from16 v29, v4

    .line 528
    .line 529
    move-object/from16 v4, v16

    .line 530
    .line 531
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    move/from16 v16, v5

    .line 535
    .line 536
    iget-short v5, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->staCount:S

    .line 537
    .line 538
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    move-object/from16 v5, v20

    .line 542
    .line 543
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    move-object/from16 v20, v6

    .line 547
    .line 548
    iget-short v6, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->chanUtil:S

    .line 549
    .line 550
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    const/16 v6, 0xa

    .line 554
    .line 555
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    iget-object v2, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 559
    .line 560
    if-eqz v2, :cond_0

    .line 561
    .line 562
    array-length v6, v2

    .line 563
    move-object/from16 v30, v2

    .line 564
    .line 565
    move/from16 v2, v21

    .line 566
    .line 567
    :goto_2
    if-ge v2, v6, :cond_0

    .line 568
    .line 569
    move/from16 v31, v2

    .line 570
    .line 571
    aget-object v2, v30, v31

    .line 572
    .line 573
    move/from16 v32, v6

    .line 574
    .line 575
    move-object/from16 v6, v19

    .line 576
    .line 577
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    move-object/from16 v19, v7

    .line 581
    .line 582
    iget v7, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->preamble:I

    .line 583
    .line 584
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    move-object/from16 v7, v18

    .line 588
    .line 589
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    move-object/from16 v18, v9

    .line 593
    .line 594
    iget v9, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->nss:I

    .line 595
    .line 596
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    move-object/from16 v9, v17

    .line 600
    .line 601
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    move-object/from16 v17, v10

    .line 605
    .line 606
    iget v10, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bw:I

    .line 607
    .line 608
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    const-string v10, " rateMcsIdx="

    .line 612
    .line 613
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    iget v10, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rateMcsIdx:I

    .line 617
    .line 618
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    const-string v10, " bitRateInKbps="

    .line 622
    .line 623
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    iget v10, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bitRateInKbps:I

    .line 627
    .line 628
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    const-string v10, "\n txMpdu="

    .line 632
    .line 633
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    iget v10, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->txMpdu:I

    .line 637
    .line 638
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    const-string v10, " rxMpdu="

    .line 642
    .line 643
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    iget v10, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rxMpdu:I

    .line 647
    .line 648
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    const-string v10, " mpduLost="

    .line 652
    .line 653
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    iget v10, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->mpduLost:I

    .line 657
    .line 658
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    iget v2, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->retries:I

    .line 665
    .line 666
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    const/16 v2, 0xa

    .line 670
    .line 671
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    add-int/lit8 v2, v31, 0x1

    .line 675
    .line 676
    move-object/from16 v10, v17

    .line 677
    .line 678
    move-object/from16 v17, v9

    .line 679
    .line 680
    move-object/from16 v9, v18

    .line 681
    .line 682
    move-object/from16 v18, v7

    .line 683
    .line 684
    move-object/from16 v7, v19

    .line 685
    .line 686
    move-object/from16 v19, v6

    .line 687
    .line 688
    move/from16 v6, v32

    .line 689
    .line 690
    goto :goto_2

    .line 691
    :cond_0
    move-object/from16 v6, v19

    .line 692
    .line 693
    move-object/from16 v19, v7

    .line 694
    .line 695
    move-object/from16 v7, v18

    .line 696
    .line 697
    move-object/from16 v18, v9

    .line 698
    .line 699
    move-object/from16 v9, v17

    .line 700
    .line 701
    move-object/from16 v17, v10

    .line 702
    .line 703
    add-int/lit8 v2, v22, 0x1

    .line 704
    .line 705
    move-object/from16 v10, v17

    .line 706
    .line 707
    move-object/from16 v17, v9

    .line 708
    .line 709
    move-object/from16 v9, v18

    .line 710
    .line 711
    move-object/from16 v18, v7

    .line 712
    .line 713
    move-object/from16 v7, v19

    .line 714
    .line 715
    move-object/from16 v19, v6

    .line 716
    .line 717
    move-object/from16 v6, v20

    .line 718
    .line 719
    move-object/from16 v20, v5

    .line 720
    .line 721
    move/from16 v5, v16

    .line 722
    .line 723
    move-object/from16 v16, v4

    .line 724
    .line 725
    move-object/from16 v4, v29

    .line 726
    .line 727
    goto/16 :goto_1

    .line 728
    .line 729
    :cond_1
    :goto_3
    move-object/from16 v4, v16

    .line 730
    .line 731
    move-object/from16 v5, v20

    .line 732
    .line 733
    move-object/from16 v20, v6

    .line 734
    .line 735
    move-object/from16 v6, v19

    .line 736
    .line 737
    move-object/from16 v19, v7

    .line 738
    .line 739
    move-object/from16 v7, v18

    .line 740
    .line 741
    move-object/from16 v18, v9

    .line 742
    .line 743
    move-object/from16 v9, v17

    .line 744
    .line 745
    move-object/from16 v17, v10

    .line 746
    .line 747
    goto :goto_4

    .line 748
    :cond_2
    move-object/from16 v23, v2

    .line 749
    .line 750
    move-object/from16 v3, v22

    .line 751
    .line 752
    goto :goto_3

    .line 753
    :goto_4
    add-int/lit8 v2, v26, 0x1

    .line 754
    .line 755
    move-object/from16 v22, v3

    .line 756
    .line 757
    move-object/from16 v16, v4

    .line 758
    .line 759
    move-object/from16 v10, v17

    .line 760
    .line 761
    move-object/from16 v3, v20

    .line 762
    .line 763
    move-object/from16 v4, v27

    .line 764
    .line 765
    move-object/from16 v20, v5

    .line 766
    .line 767
    move-object/from16 v17, v9

    .line 768
    .line 769
    move-object/from16 v9, v18

    .line 770
    .line 771
    move/from16 v5, v25

    .line 772
    .line 773
    move-object/from16 v18, v7

    .line 774
    .line 775
    move-object/from16 v7, v19

    .line 776
    .line 777
    move-object/from16 v19, v6

    .line 778
    .line 779
    move v6, v2

    .line 780
    move-object/from16 v2, v28

    .line 781
    .line 782
    goto/16 :goto_0

    .line 783
    .line 784
    :cond_3
    move-object/from16 v4, v16

    .line 785
    .line 786
    move-object/from16 v3, v22

    .line 787
    .line 788
    :goto_5
    move-object/from16 v9, v17

    .line 789
    .line 790
    move-object/from16 v7, v18

    .line 791
    .line 792
    move-object/from16 v6, v19

    .line 793
    .line 794
    move-object/from16 v5, v20

    .line 795
    .line 796
    goto :goto_6

    .line 797
    :cond_4
    move-object v4, v5

    .line 798
    move-object v3, v6

    .line 799
    goto :goto_5

    .line 800
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    const-string v10, " numRadios="

    .line 803
    .line 804
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    iget v10, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 808
    .line 809
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    const-string v2, " on_time= "

    .line 820
    .line 821
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 825
    .line 826
    const-string v10, " tx_time="

    .line 827
    .line 828
    invoke-static {v10, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 829
    .line 830
    .line 831
    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 832
    .line 833
    const-string v10, " rx_time="

    .line 834
    .line 835
    invoke-static {v10, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 836
    .line 837
    .line 838
    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 839
    .line 840
    const-string v10, " scan_time="

    .line 841
    .line 842
    invoke-static {v10, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 843
    .line 844
    .line 845
    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 846
    .line 847
    const-string v10, "\n nan_scan_time="

    .line 848
    .line 849
    invoke-static {v10, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 850
    .line 851
    .line 852
    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 853
    .line 854
    const-string v10, "\n g_scan_time="

    .line 855
    .line 856
    invoke-static {v10, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 857
    .line 858
    .line 859
    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 860
    .line 861
    const-string v10, "\n roam_scan_time="

    .line 862
    .line 863
    invoke-static {v10, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 864
    .line 865
    .line 866
    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 867
    .line 868
    const-string v10, "\n pno_scan_time="

    .line 869
    .line 870
    invoke-static {v10, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 871
    .line 872
    .line 873
    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 874
    .line 875
    const-string v10, "\n hs2.0_scan_time="

    .line 876
    .line 877
    invoke-static {v10, v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 878
    .line 879
    .line 880
    iget v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 881
    .line 882
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    const/16 v2, 0xa

    .line 890
    .line 891
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    .line 895
    .line 896
    const-string v10, " tx_time_per_level="

    .line 897
    .line 898
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    iget-object v10, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 902
    .line 903
    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v10

    .line 907
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v2

    .line 914
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    const-string v2, "\n Number of channel stats="

    .line 918
    .line 919
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    iget-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 923
    .line 924
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 925
    .line 926
    .line 927
    move-result v2

    .line 928
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    const/16 v10, 0xa

    .line 932
    .line 933
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    move/from16 v10, v21

    .line 937
    .line 938
    :goto_7
    if-ge v10, v2, :cond_5

    .line 939
    .line 940
    iget-object v11, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 941
    .line 942
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v11

    .line 946
    check-cast v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 947
    .line 948
    const-string v12, " Frequency="

    .line 949
    .line 950
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    iget v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 954
    .line 955
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    const-string v12, " radioOnTimeMs="

    .line 959
    .line 960
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    iget v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 964
    .line 965
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    const-string v12, " ccaBusyTimeMs="

    .line 969
    .line 970
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    iget v11, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 974
    .line 975
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    const/16 v11, 0xa

    .line 979
    .line 980
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    add-int/lit8 v10, v10, 0x1

    .line 984
    .line 985
    goto :goto_7

    .line 986
    :cond_5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 987
    .line 988
    if-nez v2, :cond_6

    .line 989
    .line 990
    move/from16 v2, v21

    .line 991
    .line 992
    goto :goto_8

    .line 993
    :cond_6
    array-length v2, v2

    .line 994
    :goto_8
    const-string v10, " Individual radio stats: numRadios="

    .line 995
    .line 996
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    .line 998
    .line 999
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    .line 1002
    const/16 v10, 0xa

    .line 1003
    .line 1004
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    .line 1007
    move/from16 v10, v21

    .line 1008
    .line 1009
    :goto_9
    if-ge v10, v2, :cond_8

    .line 1010
    .line 1011
    iget-object v11, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 1012
    .line 1013
    aget-object v11, v11, v10

    .line 1014
    .line 1015
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    const-string v13, " radio_id="

    .line 1018
    .line 1019
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    iget v13, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->radio_id:I

    .line 1023
    .line 1024
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v12

    .line 1031
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    const-string v12, " on_time="

    .line 1035
    .line 1036
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    iget v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time:I

    .line 1040
    .line 1041
    const-string v13, " tx_time="

    .line 1042
    .line 1043
    invoke-static {v13, v12, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1044
    .line 1045
    .line 1046
    iget v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->tx_time:I

    .line 1047
    .line 1048
    const-string v13, " rx_time="

    .line 1049
    .line 1050
    invoke-static {v13, v12, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1051
    .line 1052
    .line 1053
    iget v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->rx_time:I

    .line 1054
    .line 1055
    const-string v13, " scan_time="

    .line 1056
    .line 1057
    invoke-static {v13, v12, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1058
    .line 1059
    .line 1060
    iget v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_scan:I

    .line 1061
    .line 1062
    const-string v13, "\n nan_scan_time="

    .line 1063
    .line 1064
    invoke-static {v13, v12, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1065
    .line 1066
    .line 1067
    iget v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_nan_scan:I

    .line 1068
    .line 1069
    const-string v13, "\n g_scan_time="

    .line 1070
    .line 1071
    invoke-static {v13, v12, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1072
    .line 1073
    .line 1074
    iget v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_background_scan:I

    .line 1075
    .line 1076
    const-string v13, "\n roam_scan_time="

    .line 1077
    .line 1078
    invoke-static {v13, v12, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1079
    .line 1080
    .line 1081
    iget v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_roam_scan:I

    .line 1082
    .line 1083
    const-string v13, "\n pno_scan_time="

    .line 1084
    .line 1085
    invoke-static {v13, v12, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1086
    .line 1087
    .line 1088
    iget v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_pno_scan:I

    .line 1089
    .line 1090
    const-string v13, "\n hs2.0_scan_time="

    .line 1091
    .line 1092
    invoke-static {v13, v12, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1093
    .line 1094
    .line 1095
    iget v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_hs20_scan:I

    .line 1096
    .line 1097
    const-string v13, "\n Number of channel stats="

    .line 1098
    .line 1099
    invoke-static {v13, v12, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1100
    .line 1101
    .line 1102
    iget-object v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->channelStatsMap:Landroid/util/SparseArray;

    .line 1103
    .line 1104
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 1105
    .line 1106
    .line 1107
    move-result v12

    .line 1108
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1109
    .line 1110
    .line 1111
    const/16 v13, 0xa

    .line 1112
    .line 1113
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    move/from16 v13, v21

    .line 1117
    .line 1118
    :goto_a
    if-ge v13, v12, :cond_7

    .line 1119
    .line 1120
    iget-object v14, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->channelStatsMap:Landroid/util/SparseArray;

    .line 1121
    .line 1122
    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v14

    .line 1126
    check-cast v14, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 1127
    .line 1128
    const-string v15, " Frequency="

    .line 1129
    .line 1130
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    .line 1133
    iget v15, v14, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 1134
    .line 1135
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    const-string v15, " radioOnTimeMs="

    .line 1139
    .line 1140
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    .line 1143
    iget v15, v14, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 1144
    .line 1145
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    .line 1148
    const-string v15, " ccaBusyTimeMs="

    .line 1149
    .line 1150
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    .line 1152
    .line 1153
    iget v14, v14, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 1154
    .line 1155
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    const/16 v14, 0xa

    .line 1159
    .line 1160
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    add-int/lit8 v13, v13, 0x1

    .line 1164
    .line 1165
    goto :goto_a

    .line 1166
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 1167
    .line 1168
    goto/16 :goto_9

    .line 1169
    .line 1170
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    const-string v10, " ts="

    .line 1173
    .line 1174
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeStampInMs:J

    .line 1178
    .line 1179
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v2

    .line 1186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    .line 1189
    iget-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 1190
    .line 1191
    if-nez v2, :cond_9

    .line 1192
    .line 1193
    move/from16 v2, v21

    .line 1194
    .line 1195
    goto :goto_b

    .line 1196
    :cond_9
    array-length v2, v2

    .line 1197
    :goto_b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    .line 1203
    const/16 v10, 0xa

    .line 1204
    .line 1205
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    .line 1208
    move/from16 v3, v21

    .line 1209
    .line 1210
    :goto_c
    if-ge v3, v2, :cond_c

    .line 1211
    .line 1212
    iget-object v11, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 1213
    .line 1214
    aget-object v11, v11, v3

    .line 1215
    .line 1216
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    iget-short v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->staCount:S

    .line 1220
    .line 1221
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    iget-short v12, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->chanUtil:S

    .line 1228
    .line 1229
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    iget-object v10, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 1236
    .line 1237
    if-nez v10, :cond_a

    .line 1238
    .line 1239
    move/from16 v10, v21

    .line 1240
    .line 1241
    goto :goto_d

    .line 1242
    :cond_a
    array-length v10, v10

    .line 1243
    :goto_d
    move/from16 v12, v21

    .line 1244
    .line 1245
    :goto_e
    if-ge v12, v10, :cond_b

    .line 1246
    .line 1247
    iget-object v13, v11, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 1248
    .line 1249
    aget-object v13, v13, v12

    .line 1250
    .line 1251
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    iget v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->preamble:I

    .line 1255
    .line 1256
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    .line 1262
    iget v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->nss:I

    .line 1263
    .line 1264
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    .line 1269
    .line 1270
    iget v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bw:I

    .line 1271
    .line 1272
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    .line 1275
    const-string v14, " rateMcsIdx="

    .line 1276
    .line 1277
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    iget v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rateMcsIdx:I

    .line 1281
    .line 1282
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    .line 1285
    const-string v14, " bitRateInKbps="

    .line 1286
    .line 1287
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    iget v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bitRateInKbps:I

    .line 1291
    .line 1292
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    .line 1295
    const-string v14, "\n txMpdu="

    .line 1296
    .line 1297
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    .line 1300
    iget v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->txMpdu:I

    .line 1301
    .line 1302
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1303
    .line 1304
    .line 1305
    const-string v14, " rxMpdu="

    .line 1306
    .line 1307
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    .line 1310
    iget v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rxMpdu:I

    .line 1311
    .line 1312
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1313
    .line 1314
    .line 1315
    const-string v14, " mpduLost="

    .line 1316
    .line 1317
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    .line 1320
    iget v14, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->mpduLost:I

    .line 1321
    .line 1322
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    .line 1327
    .line 1328
    iget v13, v13, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->retries:I

    .line 1329
    .line 1330
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    const/16 v13, 0xa

    .line 1334
    .line 1335
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    add-int/lit8 v12, v12, 0x1

    .line 1339
    .line 1340
    goto :goto_e

    .line 1341
    :cond_b
    const/16 v13, 0xa

    .line 1342
    .line 1343
    add-int/lit8 v3, v3, 0x1

    .line 1344
    .line 1345
    move v10, v13

    .line 1346
    goto/16 :goto_c

    .line 1347
    .line 1348
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    return-object v0
.end method
