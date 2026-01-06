.class public Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiStaIfaceAidlImpl"


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;


# direct methods
.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 12
    .line 13
    return-void
.end method

.method private aggregateFrameworkRadioStatsFromAidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;)V
    .locals 4

    .line 1
    iget p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 2
    .line 3
    iget p1, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 4
    .line 5
    add-int/2addr p0, p1

    .line 6
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 7
    .line 8
    iget p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 9
    .line 10
    iget p1, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 11
    .line 12
    add-int/2addr p0, p1

    .line 13
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 14
    .line 15
    iget-object p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    iget-object p0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->txTimeInMsPerLevel:[I

    .line 20
    .line 21
    array-length p0, p0

    .line 22
    new-array p0, p0, [I

    .line 23
    .line 24
    iput-object p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    move p1, p0

    .line 28
    :goto_0
    iget-object v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->txTimeInMsPerLevel:[I

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    if-ge p1, v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 34
    .line 35
    array-length v2, v1

    .line 36
    if-ge p1, v2, :cond_1

    .line 37
    .line 38
    aget v2, v1, p1

    .line 39
    .line 40
    aget v0, v0, p1

    .line 41
    .line 42
    add-int/2addr v2, v0

    .line 43
    aput v2, v1, p1

    .line 44
    .line 45
    add-int/lit8 p1, p1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 49
    .line 50
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 51
    .line 52
    add-int/2addr p1, v0

    .line 53
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 54
    .line 55
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 56
    .line 57
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 58
    .line 59
    add-int/2addr p1, v0

    .line 60
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 61
    .line 62
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 63
    .line 64
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 65
    .line 66
    add-int/2addr p1, v0

    .line 67
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 68
    .line 69
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 70
    .line 71
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 72
    .line 73
    add-int/2addr p1, v0

    .line 74
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 75
    .line 76
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 77
    .line 78
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 79
    .line 80
    add-int/2addr p1, v0

    .line 81
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 82
    .line 83
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 84
    .line 85
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 86
    .line 87
    add-int/2addr p1, v0

    .line 88
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 89
    .line 90
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 91
    .line 92
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 93
    .line 94
    add-int/2addr p1, v0

    .line 95
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 96
    .line 97
    iget-object p1, p3, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->channelStats:[Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelStats;

    .line 98
    .line 99
    array-length p3, p1

    .line 100
    :goto_1
    if-ge p0, p3, :cond_3

    .line 101
    .line 102
    aget-object v0, p1, p0

    .line 103
    .line 104
    iget-object v1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 105
    .line 106
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;

    .line 107
    .line 108
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;->centerFreq:I

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 115
    .line 116
    if-nez v1, :cond_2

    .line 117
    .line 118
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 119
    .line 120
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;

    .line 124
    .line 125
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;->centerFreq:I

    .line 126
    .line 127
    iput v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 128
    .line 129
    iget-object v3, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 130
    .line 131
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    iget v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 135
    .line 136
    iget v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelStats;->onTimeInMs:I

    .line 137
    .line 138
    add-int/2addr v2, v3

    .line 139
    iput v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 140
    .line 141
    iget v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 142
    .line 143
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelStats;->ccaBusyTimeInMs:I

    .line 144
    .line 145
    add-int/2addr v2, v0

    .line 146
    iput v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 147
    .line 148
    add-int/lit8 p0, p0, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    iget p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 152
    .line 153
    add-int/lit8 p0, p0, 0x1

    .line 154
    .line 155
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 156
    .line 157
    return-void
.end method

.method private checkIfaceAndLogFailure(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "Unable to call "

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " because iface is null."

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "SemWifiStaIfaceAidlImpl"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method protected static halToFrameworkStaFeatureSet(J)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x100

    .line 2
    .line 3
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-wide v3, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    :goto_0
    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-wide/16 v0, 0x5

    .line 22
    .line 23
    or-long/2addr v3, v0

    .line 24
    :cond_1
    const-wide/16 v0, 0x200

    .line 25
    .line 26
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const-wide/16 v0, 0xa

    .line 33
    .line 34
    or-long/2addr v3, v0

    .line 35
    :cond_2
    const-wide/16 v0, 0x400

    .line 36
    .line 37
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const-wide/16 v0, 0xc

    .line 44
    .line 45
    or-long/2addr v3, v0

    .line 46
    :cond_3
    const-wide/16 v0, 0x800

    .line 47
    .line 48
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const-wide/16 v0, 0xd

    .line 55
    .line 56
    or-long/2addr v3, v0

    .line 57
    :cond_4
    const-wide/16 v0, 0x4

    .line 58
    .line 59
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const-wide/16 v1, 0x10

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    or-long/2addr v3, v1

    .line 68
    :cond_5
    const-wide/16 v5, 0x8

    .line 69
    .line 70
    invoke-static {p0, p1, v5, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    const-wide/16 v5, 0x13

    .line 77
    .line 78
    or-long/2addr v3, v5

    .line 79
    :cond_6
    const-wide/16 v5, 0x2000

    .line 80
    .line 81
    invoke-static {p0, p1, v5, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    const-wide/16 v5, 0x14

    .line 88
    .line 89
    or-long/2addr v3, v5

    .line 90
    :cond_7
    const-wide/16 v5, 0x1000

    .line 91
    .line 92
    invoke-static {p0, p1, v5, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    const-wide/16 v5, 0x15

    .line 99
    .line 100
    or-long/2addr v3, v5

    .line 101
    :cond_8
    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_9

    .line 106
    .line 107
    const-wide/16 v0, 0x17

    .line 108
    .line 109
    or-long/2addr v3, v0

    .line 110
    :cond_9
    const-wide/16 v0, 0x20

    .line 111
    .line 112
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    const-wide/16 v0, 0x18

    .line 119
    .line 120
    or-long/2addr v3, v0

    .line 121
    :cond_a
    const-wide/16 v0, 0x40

    .line 122
    .line 123
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->hasCapability(JJ)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-eqz p0, :cond_b

    .line 128
    .line 129
    const-wide/16 p0, 0x19

    .line 130
    .line 131
    or-long/2addr p0, v3

    .line 132
    return-wide p0

    .line 133
    :cond_b
    return-wide v3
.end method

.method private handleIllegalArgumentException(Ljava/lang/IllegalArgumentException;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " failed with illegal argument exception: "

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "SemWifiStaIfaceAidlImpl"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, " failed with remote exception: "

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "SemWifiStaIfaceAidlImpl"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " failed with service-specific exception: "

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "SemWifiStaIfaceAidlImpl"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static hasCapability(JJ)Z
    .locals 0

    .line 1
    and-long/2addr p0, p2

    .line 2
    const-wide/16 p2, 0x0

    .line 3
    .line 4
    cmp-long p0, p0, p2

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

.method private static setFrameworkPerRadioStatsFromAidl(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->radioId:I

    .line 2
    .line 3
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->radio_id:I

    .line 4
    .line 5
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time:I

    .line 8
    .line 9
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->tx_time:I

    .line 12
    .line 13
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->rx_time:I

    .line 16
    .line 17
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 18
    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_scan:I

    .line 20
    .line 21
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_nan_scan:I

    .line 24
    .line 25
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 26
    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_background_scan:I

    .line 28
    .line 29
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 30
    .line 31
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_roam_scan:I

    .line 32
    .line 33
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 34
    .line 35
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_pno_scan:I

    .line 36
    .line 37
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 38
    .line 39
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_hs20_scan:I

    .line 40
    .line 41
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;->channelStats:[Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelStats;

    .line 42
    .line 43
    array-length v0, p1

    .line 44
    const/4 v1, 0x0

    .line 45
    :goto_0
    if-ge v1, v0, :cond_0

    .line 46
    .line 47
    aget-object v2, p1, v1

    .line 48
    .line 49
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 50
    .line 51
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v4, v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;

    .line 55
    .line 56
    iget v4, v4, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;->centerFreq:I

    .line 57
    .line 58
    iput v4, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 59
    .line 60
    iget v5, v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelStats;->onTimeInMs:I

    .line 61
    .line 62
    iput v5, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 63
    .line 64
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelStats;->ccaBusyTimeInMs:I

    .line 65
    .line 66
    iput v2, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 67
    .line 68
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->channelStatsMap:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method private static setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceStats;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceStats;->links:[Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    array-length v0, p1

    .line 9
    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    aget-object v3, p1, v1

    .line 19
    .line 20
    invoke-static {p0, v3, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->setIfaceStatsPerLinkFromAidl(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    return-void
.end method

.method private static setIfaceStatsPerLinkFromAidl(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;I)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_2

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 6
    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;-><init>()V

    .line 10
    .line 11
    .line 12
    aput-object v1, v0, p2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 15
    .line 16
    aget-object v0, v0, p2

    .line 17
    .line 18
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->linkId:I

    .line 19
    .line 20
    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->link_id:I

    .line 21
    .line 22
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->beaconRx:I

    .line 23
    .line 24
    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->beacon_rx:I

    .line 25
    .line 26
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->avgRssiMgmt:I

    .line 27
    .line 28
    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rssi_mgmt:I

    .line 29
    .line 30
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 31
    .line 32
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 33
    .line 34
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_be:J

    .line 35
    .line 36
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 37
    .line 38
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_be:J

    .line 39
    .line 40
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 41
    .line 42
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_be:J

    .line 43
    .line 44
    iget-wide v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->retries:J

    .line 45
    .line 46
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_be:J

    .line 47
    .line 48
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 49
    .line 50
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 51
    .line 52
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_bk:J

    .line 53
    .line 54
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 55
    .line 56
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_bk:J

    .line 57
    .line 58
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 59
    .line 60
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_bk:J

    .line 61
    .line 62
    iget-wide v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->retries:J

    .line 63
    .line 64
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_bk:J

    .line 65
    .line 66
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 67
    .line 68
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 69
    .line 70
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_vi:J

    .line 71
    .line 72
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 73
    .line 74
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_vi:J

    .line 75
    .line 76
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 77
    .line 78
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_vi:J

    .line 79
    .line 80
    iget-wide v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->retries:J

    .line 81
    .line 82
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_vi:J

    .line 83
    .line 84
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 85
    .line 86
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 87
    .line 88
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_vo:J

    .line 89
    .line 90
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 91
    .line 92
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_vo:J

    .line 93
    .line 94
    iget-wide v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 95
    .line 96
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_vo:J

    .line 97
    .line 98
    iget-wide v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->retries:J

    .line 99
    .line 100
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_vo:J

    .line 101
    .line 102
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 103
    .line 104
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 105
    .line 106
    int-to-long v2, v2

    .line 107
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinBeInUsec:J

    .line 108
    .line 109
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 110
    .line 111
    int-to-long v2, v2

    .line 112
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxBeInUsec:J

    .line 113
    .line 114
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 115
    .line 116
    int-to-long v2, v2

    .line 117
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgBeInUsec:J

    .line 118
    .line 119
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 120
    .line 121
    int-to-long v1, v1

    .line 122
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesBe:J

    .line 123
    .line 124
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 125
    .line 126
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 127
    .line 128
    int-to-long v2, v2

    .line 129
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinBkInUsec:J

    .line 130
    .line 131
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 132
    .line 133
    int-to-long v2, v2

    .line 134
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxBkInUsec:J

    .line 135
    .line 136
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 137
    .line 138
    int-to-long v2, v2

    .line 139
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgBkInUsec:J

    .line 140
    .line 141
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 142
    .line 143
    int-to-long v1, v1

    .line 144
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesBk:J

    .line 145
    .line 146
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 147
    .line 148
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 149
    .line 150
    int-to-long v2, v2

    .line 151
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinViInUsec:J

    .line 152
    .line 153
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 154
    .line 155
    int-to-long v2, v2

    .line 156
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxViInUsec:J

    .line 157
    .line 158
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 159
    .line 160
    int-to-long v2, v2

    .line 161
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgViInUsec:J

    .line 162
    .line 163
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 164
    .line 165
    int-to-long v1, v1

    .line 166
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesVi:J

    .line 167
    .line 168
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 169
    .line 170
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 171
    .line 172
    int-to-long v2, v2

    .line 173
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinVoInUsec:J

    .line 174
    .line 175
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 176
    .line 177
    int-to-long v2, v2

    .line 178
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxVoInUsec:J

    .line 179
    .line 180
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 181
    .line 182
    int-to-long v2, v2

    .line 183
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgVoInUsec:J

    .line 184
    .line 185
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 186
    .line 187
    int-to-long v1, v1

    .line 188
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesVo:J

    .line 189
    .line 190
    iget-byte v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->timeSliceDutyCycleInPercent:B

    .line 191
    .line 192
    int-to-short v1, v1

    .line 193
    iput-short v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->timeSliceDutyCycleInPercent:S

    .line 194
    .line 195
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->peers:[Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;

    .line 196
    .line 197
    array-length v1, v1

    .line 198
    new-array v1, v1, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 199
    .line 200
    iput-object v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 201
    .line 202
    const/4 v0, 0x0

    .line 203
    move v1, v0

    .line 204
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 205
    .line 206
    aget-object v2, v2, p2

    .line 207
    .line 208
    iget-object v2, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 209
    .line 210
    array-length v2, v2

    .line 211
    if-ge v1, v2, :cond_2

    .line 212
    .line 213
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 214
    .line 215
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->peers:[Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;

    .line 219
    .line 220
    aget-object v3, v3, v1

    .line 221
    .line 222
    iget-char v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;->staCount:C

    .line 223
    .line 224
    int-to-short v4, v4

    .line 225
    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->staCount:S

    .line 226
    .line 227
    iget-char v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;->chanUtil:C

    .line 228
    .line 229
    int-to-short v4, v4

    .line 230
    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->chanUtil:S

    .line 231
    .line 232
    iget-object v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;->rateStats:[Lcom/samsung/wifi/x/android/hardware/wifi/StaRateStat;

    .line 233
    .line 234
    array-length v4, v4

    .line 235
    new-array v4, v4, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 236
    .line 237
    move v5, v0

    .line 238
    :goto_1
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;->rateStats:[Lcom/samsung/wifi/x/android/hardware/wifi/StaRateStat;

    .line 239
    .line 240
    array-length v6, v6

    .line 241
    if-ge v5, v6, :cond_1

    .line 242
    .line 243
    new-instance v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 244
    .line 245
    invoke-direct {v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;-><init>()V

    .line 246
    .line 247
    .line 248
    aput-object v6, v4, v5

    .line 249
    .line 250
    iget-object v7, v3, Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;->rateStats:[Lcom/samsung/wifi/x/android/hardware/wifi/StaRateStat;

    .line 251
    .line 252
    aget-object v7, v7, v5

    .line 253
    .line 254
    iget-object v8, v7, Lcom/samsung/wifi/x/android/hardware/wifi/StaRateStat;->rateInfo:Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;

    .line 255
    .line 256
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;->preamble:I

    .line 257
    .line 258
    iput v9, v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->preamble:I

    .line 259
    .line 260
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;->nss:I

    .line 261
    .line 262
    iput v9, v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->nss:I

    .line 263
    .line 264
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;->bw:I

    .line 265
    .line 266
    iput v9, v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bw:I

    .line 267
    .line 268
    iget-byte v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;->rateMcsIdx:B

    .line 269
    .line 270
    iput v9, v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rateMcsIdx:I

    .line 271
    .line 272
    iget v8, v8, Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;->bitRateInKbps:I

    .line 273
    .line 274
    iput v8, v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bitRateInKbps:I

    .line 275
    .line 276
    iget v8, v7, Lcom/samsung/wifi/x/android/hardware/wifi/StaRateStat;->txMpdu:I

    .line 277
    .line 278
    iput v8, v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->txMpdu:I

    .line 279
    .line 280
    iget v8, v7, Lcom/samsung/wifi/x/android/hardware/wifi/StaRateStat;->rxMpdu:I

    .line 281
    .line 282
    iput v8, v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rxMpdu:I

    .line 283
    .line 284
    iget v8, v7, Lcom/samsung/wifi/x/android/hardware/wifi/StaRateStat;->mpduLost:I

    .line 285
    .line 286
    iput v8, v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->mpduLost:I

    .line 287
    .line 288
    iget v7, v7, Lcom/samsung/wifi/x/android/hardware/wifi/StaRateStat;->retries:I

    .line 289
    .line 290
    iput v7, v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->retries:I

    .line 291
    .line 292
    add-int/lit8 v5, v5, 0x1

    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_1
    iput-object v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 296
    .line 297
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 298
    .line 299
    aget-object v3, v3, p2

    .line 300
    .line 301
    iget-object v3, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 302
    .line 303
    aput-object v2, v3, v1

    .line 304
    .line 305
    add-int/lit8 v1, v1, 0x1

    .line 306
    .line 307
    goto :goto_0

    .line 308
    :cond_2
    :goto_2
    return-void
.end method

.method private setRadioStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;[Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    array-length v0, p2

    .line 5
    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 6
    .line 7
    iput-object v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 8
    .line 9
    array-length v0, p2

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    aget-object v3, p2, v1

    .line 15
    .line 16
    new-instance v4, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 17
    .line 18
    invoke-direct {v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->setFrameworkPerRadioStatsFromAidl(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;)V

    .line 22
    .line 23
    .line 24
    iget-object v5, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 25
    .line 26
    aput-object v4, v5, v2

    .line 27
    .line 28
    invoke-direct {p0, v2, p1, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->aggregateFrameworkRadioStatsFromAidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public enableLinkLayerStatsCollection(Z)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->enableLinkLayerStatsCollection(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public enableNdOffload(Z)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->enableNdOffload(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public getApfPacketFilterCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getApfPacketFilterCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public getBackgroundScanCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getBackgroundScanCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public getCapabilities()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    :try_start_0
    const-string v3, "getCapabilities"

    .line 7
    .line 8
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    return-wide v1

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 19
    .line 20
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getFeatureSet()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    int-to-long v3, v3

    .line 25
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->halToFrameworkStaFeatureSet(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :try_start_3
    monitor-exit v0

    .line 30
    return-wide v1

    .line 31
    :catch_0
    move-exception v3

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception v3

    .line 34
    goto :goto_1

    .line 35
    :goto_0
    const-string v4, "getCapabilities"

    .line 36
    .line 37
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    const-string v4, "getCapabilities"

    .line 42
    .line 43
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_2
    monitor-exit v0

    .line 47
    return-wide v1

    .line 48
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    throw p0
.end method

.method public getDebugRxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getDebugRxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public getDebugTxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getDebugTxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public getFactoryMacAddress()[B
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getFactoryMacAddress()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public getFeatureSet()I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getFeatureSet()I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public getLinkLayerStats()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "getLinkLayerStats"

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getLinkLayerStats()Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerStats;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->halToFrameworkLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v2

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    const-string v3, "getLinkLayerStats"

    .line 34
    .line 35
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    const-string v3, "getLinkLayerStats"

    .line 40
    .line 41
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    monitor-exit v0

    .line 45
    return-object v1

    .line 46
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "getName"

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->checkIfaceAndLogFailure(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v2

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return-object v1

    .line 23
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mIfaceName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    :try_start_2
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :catch_0
    move-exception v1

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :goto_0
    const-string v3, "getName"

    .line 38
    .line 39
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    const-string v3, "getName"

    .line 44
    .line 45
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    monitor-exit v0

    .line 49
    return-object v2

    .line 50
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw p0
.end method

.method public getRoamingCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getRoamingCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method halToFrameworkLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceStats;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceStats;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerStats;->radios:[Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;

    .line 16
    .line 17
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->setRadioStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;[Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerRadioStats;)V

    .line 18
    .line 19
    .line 20
    iget-wide p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerStats;->timeStampInMs:J

    .line 21
    .line 22
    iput-wide p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeStampInMs:J

    .line 23
    .line 24
    const-string p0, "V1_5"

    .line 25
    .line 26
    iput-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    .line 27
    .line 28
    return-object v0
.end method

.method public installApfPacketFilter([B)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->installApfPacketFilter([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public readApfPacketFilterData()[B
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->readApfPacketFilterData()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public setDtimMultiplier(I)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->setDtimMultiplier(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public setMacAddress([B)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->setMacAddress([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public setRoamingState(B)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->setRoamingState(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public setScanMode(Z)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->setScanMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public startDebugPacketFateMonitoring()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->startDebugPacketFateMonitoring()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public startRssiMonitoring(III)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->startRssiMonitoring(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public startSendingKeepAlivePackets(I[BC[B[BI)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface/range {p0 .. p6}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->startSendingKeepAlivePackets(I[BC[B[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    move-object p0, v0

    .line 10
    new-instance p1, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public stopBackgroundScan(I)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->stopBackgroundScan(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public stopRssiMonitoring(I)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->stopRssiMonitoring(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public stopSendingKeepAlivePackets(I)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->stopSendingKeepAlivePackets(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method
