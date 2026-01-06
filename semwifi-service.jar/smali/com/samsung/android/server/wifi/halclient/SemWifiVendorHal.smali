.class public Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$StaInterfaceDestroyedListenerInternal;
    }
.end annotation


# static fields
.field public static final sLock:Ljava/lang/Object;

.field private static final sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;

.field private final mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

.field private final mHalDeviceManagerStatusCallbacks:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;

.field private final mHalEventHandler:Landroid/os/Handler;

.field private mIWifiStaIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;",
            ">;"
        }
    .end annotation
.end field

.field mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

.field mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeathEventHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHalDeviceManager(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHalEventHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalEventHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIWifiStaIfaces(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearState(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->clearState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SemWifiVendorHal"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/server/wifi/util/SemLogcatLog;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalEventHandler:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance p1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManagerStatusCallbacks:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;

    .line 36
    .line 37
    return-void
.end method

.method private static aggregateFrameworkRadioStatsFromHidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V
    .locals 5

    .line 1
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 2
    .line 3
    iget-object v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 4
    .line 5
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 6
    .line 7
    add-int/2addr p0, v1

    .line 8
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 9
    .line 10
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 11
    .line 12
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 13
    .line 14
    add-int/2addr p0, v1

    .line 15
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 16
    .line 17
    iget-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    iget-object p0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    new-array p0, p0, [I

    .line 28
    .line 29
    iput-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    move v0, p0

    .line 33
    :goto_0
    iget-object v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge v0, v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 44
    .line 45
    array-length v2, v1

    .line 46
    if-ge v0, v2, :cond_1

    .line 47
    .line 48
    aget v2, v1, v0

    .line 49
    .line 50
    iget-object v3, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    add-int/2addr v3, v2

    .line 65
    aput v3, v1, v0

    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 71
    .line 72
    iget-object v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 73
    .line 74
    iget v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 75
    .line 76
    add-int/2addr v0, v2

    .line 77
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 78
    .line 79
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 80
    .line 81
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 82
    .line 83
    add-int/2addr v0, v1

    .line 84
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 85
    .line 86
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 87
    .line 88
    iget v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 89
    .line 90
    add-int/2addr v0, v1

    .line 91
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 92
    .line 93
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 94
    .line 95
    iget v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 96
    .line 97
    add-int/2addr v0, v1

    .line 98
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 99
    .line 100
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 101
    .line 102
    iget v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 103
    .line 104
    add-int/2addr v0, v1

    .line 105
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 106
    .line 107
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 108
    .line 109
    iget v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 110
    .line 111
    add-int/2addr v0, v1

    .line 112
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 113
    .line 114
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 115
    .line 116
    iget v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 117
    .line 118
    add-int/2addr v0, v1

    .line 119
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 120
    .line 121
    iget-object p2, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    :goto_1
    if-ge p0, v0, :cond_3

    .line 128
    .line 129
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    add-int/lit8 p0, p0, 0x1

    .line 134
    .line 135
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;

    .line 136
    .line 137
    iget-object v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 138
    .line 139
    iget-object v3, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    .line 140
    .line 141
    iget v3, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 148
    .line 149
    if-nez v2, :cond_2

    .line 150
    .line 151
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 152
    .line 153
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v3, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    .line 157
    .line 158
    iget v3, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    .line 159
    .line 160
    iput v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 161
    .line 162
    iget-object v4, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 163
    .line 164
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_2
    iget v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 168
    .line 169
    iget v4, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->onTimeInMs:I

    .line 170
    .line 171
    add-int/2addr v3, v4

    .line 172
    iput v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 173
    .line 174
    iget v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 175
    .line 176
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->ccaBusyTimeInMs:I

    .line 177
    .line 178
    add-int/2addr v3, v1

    .line 179
    iput v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_3
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 183
    .line 184
    add-int/lit8 p0, p0, 0x1

    .line 185
    .line 186
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 187
    .line 188
    return-void
.end method

.method private static aggregateFrameworkRadioStatsFromHidl_1_6(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V
    .locals 5

    .line 1
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 2
    .line 3
    iget-object v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 4
    .line 5
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 6
    .line 7
    add-int/2addr p0, v1

    .line 8
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 9
    .line 10
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 11
    .line 12
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 13
    .line 14
    add-int/2addr p0, v1

    .line 15
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 16
    .line 17
    iget-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    iget-object p0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    new-array p0, p0, [I

    .line 28
    .line 29
    iput-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    move v0, p0

    .line 33
    :goto_0
    iget-object v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge v0, v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 44
    .line 45
    array-length v2, v1

    .line 46
    if-ge v0, v2, :cond_1

    .line 47
    .line 48
    aget v2, v1, v0

    .line 49
    .line 50
    iget-object v3, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    add-int/2addr v3, v2

    .line 65
    aput v3, v1, v0

    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 71
    .line 72
    iget-object v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 73
    .line 74
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 75
    .line 76
    add-int/2addr v0, v1

    .line 77
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 78
    .line 79
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 80
    .line 81
    iget v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 82
    .line 83
    add-int/2addr v0, v1

    .line 84
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 85
    .line 86
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 87
    .line 88
    iget v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 89
    .line 90
    add-int/2addr v0, v1

    .line 91
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 92
    .line 93
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 94
    .line 95
    iget v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 96
    .line 97
    add-int/2addr v0, v1

    .line 98
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 99
    .line 100
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 101
    .line 102
    iget v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 103
    .line 104
    add-int/2addr v0, v1

    .line 105
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 106
    .line 107
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 108
    .line 109
    iget v1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 110
    .line 111
    add-int/2addr v0, v1

    .line 112
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 113
    .line 114
    iget-object p2, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    :goto_1
    if-ge p0, v0, :cond_3

    .line 121
    .line 122
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    add-int/lit8 p0, p0, 0x1

    .line 127
    .line 128
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;

    .line 129
    .line 130
    iget-object v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 131
    .line 132
    iget-object v3, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 133
    .line 134
    iget v3, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->centerFreq:I

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 141
    .line 142
    if-nez v2, :cond_2

    .line 143
    .line 144
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 145
    .line 146
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 147
    .line 148
    .line 149
    iget-object v3, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 150
    .line 151
    iget v3, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->centerFreq:I

    .line 152
    .line 153
    iput v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 154
    .line 155
    iget-object v4, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_2
    iget v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 161
    .line 162
    iget v4, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->onTimeInMs:I

    .line 163
    .line 164
    add-int/2addr v3, v4

    .line 165
    iput v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 166
    .line 167
    iget v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 168
    .line 169
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->ccaBusyTimeInMs:I

    .line 170
    .line 171
    add-int/2addr v3, v1

    .line 172
    iput v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_3
    iget p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 176
    .line 177
    add-int/lit8 p0, p0, 0x1

    .line 178
    .line 179
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 180
    .line 181
    return-void
.end method

.method private clearState()V
    .locals 0

    .line 1
    return-void
.end method

.method private enter(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->trace(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method static frameworkFromHalLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 3

    .line 1
    if-nez p0, :cond_0

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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setRadioStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;->timeStampInMs:J

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setTimeStamp(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V

    .line 23
    .line 24
    .line 25
    const-string p0, "V1_0"

    .line 26
    .line 27
    iput-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    .line 28
    .line 29
    return-object v0
.end method

.method static frameworkFromHalLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 3

    .line 1
    if-nez p0, :cond_0

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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setRadioStats_1_3(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;->timeStampInMs:J

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setTimeStamp(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V

    .line 23
    .line 24
    .line 25
    const-string p0, "V1_3"

    .line 26
    .line 27
    iput-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    .line 28
    .line 29
    return-object v0
.end method

.method static frameworkFromHalLinkLayerStats_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 3

    .line 1
    if-nez p0, :cond_0

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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats_1_5(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setRadioStats_1_5(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;->timeStampInMs:J

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setTimeStamp(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V

    .line 23
    .line 24
    .line 25
    const-string p0, "V1_5"

    .line 26
    .line 27
    iput-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    .line 28
    .line 29
    return-object v0
.end method

.method static frameworkFromHalLinkLayerStats_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 3

    .line 1
    if-nez p0, :cond_0

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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setRadioStats_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->timeStampInMs:J

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setTimeStamp(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V

    .line 23
    .line 24
    .line 25
    const-string p0, "V1_5"

    .line 26
    .line 27
    iput-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    .line 28
    .line 29
    return-object v0
.end method

.method private getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->e(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->clearState()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    const-string p0, ""

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    aget-object v0, p0, p1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "lambda$"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    array-length v3, p0

    .line 30
    if-ge p1, v3, :cond_2

    .line 31
    .line 32
    aget-object v3, p0, p1

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    aget-object p0, p0, p1

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_2
    const-string p0, "(l."

    .line 51
    .line 52
    invoke-static {v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, ")"

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method private ok(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 19
    .line 20
    const-string v2, "% failed %"

    .line 21
    .line 22
    invoke-interface {p0, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v2, 0x3

    .line 27
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    monitor-exit v1

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method private static setFrameworkPerRadioStatsFromHidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V
    .locals 5

    .line 1
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->radio_id:I

    .line 2
    .line 3
    iget-object p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 4
    .line 5
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 6
    .line 7
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time:I

    .line 8
    .line 9
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 10
    .line 11
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->tx_time:I

    .line 12
    .line 13
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 14
    .line 15
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->rx_time:I

    .line 16
    .line 17
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 18
    .line 19
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_scan:I

    .line 20
    .line 21
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 22
    .line 23
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_nan_scan:I

    .line 24
    .line 25
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 26
    .line 27
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_background_scan:I

    .line 28
    .line 29
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 30
    .line 31
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_roam_scan:I

    .line 32
    .line 33
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 34
    .line 35
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_pno_scan:I

    .line 36
    .line 37
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 38
    .line 39
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_hs20_scan:I

    .line 40
    .line 41
    iget-object p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_0
    if-ge v0, p2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;

    .line 57
    .line 58
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 59
    .line 60
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v3, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    .line 64
    .line 65
    iget v3, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    .line 66
    .line 67
    iput v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 68
    .line 69
    iget v4, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->onTimeInMs:I

    .line 70
    .line 71
    iput v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 72
    .line 73
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->ccaBusyTimeInMs:I

    .line 74
    .line 75
    iput v1, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 76
    .line 77
    iget-object v1, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->channelStatsMap:Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method private static setFrameworkPerRadioStatsFromHidl_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    .line 2
    .line 3
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->radio_id:I

    .line 4
    .line 5
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 6
    .line 7
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 8
    .line 9
    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time:I

    .line 10
    .line 11
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 12
    .line 13
    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->tx_time:I

    .line 14
    .line 15
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 16
    .line 17
    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->rx_time:I

    .line 18
    .line 19
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 20
    .line 21
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_scan:I

    .line 22
    .line 23
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 24
    .line 25
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_nan_scan:I

    .line 26
    .line 27
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_background_scan:I

    .line 30
    .line 31
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 32
    .line 33
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_roam_scan:I

    .line 34
    .line 35
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 36
    .line 37
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_pno_scan:I

    .line 38
    .line 39
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 40
    .line 41
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_hs20_scan:I

    .line 42
    .line 43
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x0

    .line 50
    :goto_0
    if-ge v1, v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;

    .line 59
    .line 60
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 61
    .line 62
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v4, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 66
    .line 67
    iget v4, v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->centerFreq:I

    .line 68
    .line 69
    iput v4, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 70
    .line 71
    iget v5, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->onTimeInMs:I

    .line 72
    .line 73
    iput v5, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 74
    .line 75
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->ccaBusyTimeInMs:I

    .line 76
    .line 77
    iput v2, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 78
    .line 79
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->channelStatsMap:Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method private static setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->beacon_rx:I

    .line 7
    .line 8
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rssi_mgmt:I

    .line 11
    .line 12
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 13
    .line 14
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 15
    .line 16
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_be:J

    .line 17
    .line 18
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_be:J

    .line 21
    .line 22
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_be:J

    .line 25
    .line 26
    iget-wide v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_be:J

    .line 29
    .line 30
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 31
    .line 32
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_bk:J

    .line 35
    .line 36
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 37
    .line 38
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_bk:J

    .line 39
    .line 40
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 41
    .line 42
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_bk:J

    .line 43
    .line 44
    iget-wide v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    .line 45
    .line 46
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_bk:J

    .line 47
    .line 48
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 49
    .line 50
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 51
    .line 52
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vi:J

    .line 53
    .line 54
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 55
    .line 56
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vi:J

    .line 57
    .line 58
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 59
    .line 60
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vi:J

    .line 61
    .line 62
    iget-wide v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    .line 63
    .line 64
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vi:J

    .line 65
    .line 66
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 67
    .line 68
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 69
    .line 70
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vo:J

    .line 71
    .line 72
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 73
    .line 74
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vo:J

    .line 75
    .line 76
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 77
    .line 78
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vo:J

    .line 79
    .line 80
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    .line 81
    .line 82
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vo:J

    .line 83
    .line 84
    return-void
.end method

.method private static setIfaceStats_1_5(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_2

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 8
    .line 9
    .line 10
    iget-byte v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 11
    .line 12
    int-to-short v0, v0

    .line 13
    iput-short v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeSliceDutyCycleInPercent:S

    .line 14
    .line 15
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 16
    .line 17
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 18
    .line 19
    int-to-long v1, v1

    .line 20
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBeInUsec:J

    .line 21
    .line 22
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 23
    .line 24
    int-to-long v1, v1

    .line 25
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBeInUsec:J

    .line 26
    .line 27
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 28
    .line 29
    int-to-long v1, v1

    .line 30
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBeInUsec:J

    .line 31
    .line 32
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 33
    .line 34
    int-to-long v0, v0

    .line 35
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBe:J

    .line 36
    .line 37
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 38
    .line 39
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 40
    .line 41
    int-to-long v1, v1

    .line 42
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBkInUsec:J

    .line 43
    .line 44
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 45
    .line 46
    int-to-long v1, v1

    .line 47
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBkInUsec:J

    .line 48
    .line 49
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 50
    .line 51
    int-to-long v1, v1

    .line 52
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBkInUsec:J

    .line 53
    .line 54
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 55
    .line 56
    int-to-long v0, v0

    .line 57
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBk:J

    .line 58
    .line 59
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 60
    .line 61
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 62
    .line 63
    int-to-long v1, v1

    .line 64
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinViInUsec:J

    .line 65
    .line 66
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 67
    .line 68
    int-to-long v1, v1

    .line 69
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxViInUsec:J

    .line 70
    .line 71
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 72
    .line 73
    int-to-long v1, v1

    .line 74
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgViInUsec:J

    .line 75
    .line 76
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 77
    .line 78
    int-to-long v0, v0

    .line 79
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVi:J

    .line 80
    .line 81
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 82
    .line 83
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 84
    .line 85
    int-to-long v1, v1

    .line 86
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinVoInUsec:J

    .line 87
    .line 88
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 89
    .line 90
    int-to-long v1, v1

    .line 91
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxVoInUsec:J

    .line 92
    .line 93
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 94
    .line 95
    int-to-long v1, v1

    .line 96
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgVoInUsec:J

    .line 97
    .line 98
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 99
    .line 100
    int-to-long v0, v0

    .line 101
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVo:J

    .line 102
    .line 103
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    move v1, v0

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 116
    .line 117
    array-length v2, v2

    .line 118
    if-ge v1, v2, :cond_2

    .line 119
    .line 120
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 121
    .line 122
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    .line 132
    .line 133
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    .line 134
    .line 135
    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->staCount:S

    .line 136
    .line 137
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    .line 138
    .line 139
    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->chanUtil:S

    .line 140
    .line 141
    iget-object v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    new-array v4, v4, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 148
    .line 149
    move v5, v0

    .line 150
    :goto_1
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-ge v5, v6, :cond_1

    .line 157
    .line 158
    new-instance v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 159
    .line 160
    invoke-direct {v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;-><init>()V

    .line 161
    .line 162
    .line 163
    aput-object v6, v4, v5

    .line 164
    .line 165
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;

    .line 172
    .line 173
    aget-object v7, v4, v5

    .line 174
    .line 175
    iget-object v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->rateInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;

    .line 176
    .line 177
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->preamble:I

    .line 178
    .line 179
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->preamble:I

    .line 180
    .line 181
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->nss:I

    .line 182
    .line 183
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->nss:I

    .line 184
    .line 185
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bw:I

    .line 186
    .line 187
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bw:I

    .line 188
    .line 189
    iget-byte v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->rateMcsIdx:B

    .line 190
    .line 191
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rateMcsIdx:I

    .line 192
    .line 193
    iget v8, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bitRateInKbps:I

    .line 194
    .line 195
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bitRateInKbps:I

    .line 196
    .line 197
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->txMpdu:I

    .line 198
    .line 199
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->txMpdu:I

    .line 200
    .line 201
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->rxMpdu:I

    .line 202
    .line 203
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rxMpdu:I

    .line 204
    .line 205
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->mpduLost:I

    .line 206
    .line 207
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->mpduLost:I

    .line 208
    .line 209
    iget v6, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->retries:I

    .line 210
    .line 211
    iput v6, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->retries:I

    .line 212
    .line 213
    add-int/lit8 v5, v5, 0x1

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_1
    iput-object v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 217
    .line 218
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 219
    .line 220
    aput-object v2, v3, v1

    .line 221
    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_2
    :goto_2
    return-void
.end method

.method private static setIfaceStats_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_2

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 8
    .line 9
    .line 10
    iget-byte v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 11
    .line 12
    int-to-short v0, v0

    .line 13
    iput-short v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeSliceDutyCycleInPercent:S

    .line 14
    .line 15
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 16
    .line 17
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 18
    .line 19
    int-to-long v1, v1

    .line 20
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBeInUsec:J

    .line 21
    .line 22
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 23
    .line 24
    int-to-long v1, v1

    .line 25
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBeInUsec:J

    .line 26
    .line 27
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 28
    .line 29
    int-to-long v1, v1

    .line 30
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBeInUsec:J

    .line 31
    .line 32
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 33
    .line 34
    int-to-long v0, v0

    .line 35
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBe:J

    .line 36
    .line 37
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 38
    .line 39
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 40
    .line 41
    int-to-long v1, v1

    .line 42
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinBkInUsec:J

    .line 43
    .line 44
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 45
    .line 46
    int-to-long v1, v1

    .line 47
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxBkInUsec:J

    .line 48
    .line 49
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 50
    .line 51
    int-to-long v1, v1

    .line 52
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgBkInUsec:J

    .line 53
    .line 54
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 55
    .line 56
    int-to-long v0, v0

    .line 57
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesBk:J

    .line 58
    .line 59
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 60
    .line 61
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 62
    .line 63
    int-to-long v1, v1

    .line 64
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinViInUsec:J

    .line 65
    .line 66
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 67
    .line 68
    int-to-long v1, v1

    .line 69
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxViInUsec:J

    .line 70
    .line 71
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 72
    .line 73
    int-to-long v1, v1

    .line 74
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgViInUsec:J

    .line 75
    .line 76
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 77
    .line 78
    int-to-long v0, v0

    .line 79
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVi:J

    .line 80
    .line 81
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 82
    .line 83
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 84
    .line 85
    int-to-long v1, v1

    .line 86
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMinVoInUsec:J

    .line 87
    .line 88
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 89
    .line 90
    int-to-long v1, v1

    .line 91
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeMaxVoInUsec:J

    .line 92
    .line 93
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 94
    .line 95
    int-to-long v1, v1

    .line 96
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionTimeAvgVoInUsec:J

    .line 97
    .line 98
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 99
    .line 100
    int-to-long v0, v0

    .line 101
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->contentionNumSamplesVo:J

    .line 102
    .line 103
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    move v1, v0

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 116
    .line 117
    array-length v2, v2

    .line 118
    if-ge v1, v2, :cond_2

    .line 119
    .line 120
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 121
    .line 122
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;

    .line 132
    .line 133
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->staCount:S

    .line 134
    .line 135
    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->staCount:S

    .line 136
    .line 137
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->chanUtil:S

    .line 138
    .line 139
    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->chanUtil:S

    .line 140
    .line 141
    iget-object v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    new-array v4, v4, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 148
    .line 149
    move v5, v0

    .line 150
    :goto_1
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-ge v5, v6, :cond_1

    .line 157
    .line 158
    new-instance v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 159
    .line 160
    invoke-direct {v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;-><init>()V

    .line 161
    .line 162
    .line 163
    aput-object v6, v4, v5

    .line 164
    .line 165
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;

    .line 172
    .line 173
    aget-object v7, v4, v5

    .line 174
    .line 175
    iget-object v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->rateInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 176
    .line 177
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->preamble:I

    .line 178
    .line 179
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->preamble:I

    .line 180
    .line 181
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->nss:I

    .line 182
    .line 183
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->nss:I

    .line 184
    .line 185
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->bw:I

    .line 186
    .line 187
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bw:I

    .line 188
    .line 189
    iget-byte v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->rateMcsIdx:B

    .line 190
    .line 191
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rateMcsIdx:I

    .line 192
    .line 193
    iget v8, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->bitRateInKbps:I

    .line 194
    .line 195
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bitRateInKbps:I

    .line 196
    .line 197
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->txMpdu:I

    .line 198
    .line 199
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->txMpdu:I

    .line 200
    .line 201
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->rxMpdu:I

    .line 202
    .line 203
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rxMpdu:I

    .line 204
    .line 205
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->mpduLost:I

    .line 206
    .line 207
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->mpduLost:I

    .line 208
    .line 209
    iget v6, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->retries:I

    .line 210
    .line 211
    iput v6, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->retries:I

    .line 212
    .line 213
    add-int/lit8 v5, v5, 0x1

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_1
    iput-object v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 217
    .line 218
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 219
    .line 220
    aput-object v2, v3, v1

    .line 221
    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_2
    :goto_2
    return-void
.end method

.method private static setRadioStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 16
    .line 17
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 18
    .line 19
    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 20
    .line 21
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 22
    .line 23
    iput v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 24
    .line 25
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    new-array v1, v1, [I

    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 34
    .line 35
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 36
    .line 37
    array-length v2, v1

    .line 38
    if-ge v0, v2, :cond_1

    .line 39
    .line 40
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    aput v2, v1, v0

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 58
    .line 59
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 60
    .line 61
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 62
    .line 63
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 64
    .line 65
    :cond_2
    :goto_1
    return-void
.end method

.method private static setRadioStats_1_3(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    .line 20
    .line 21
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->aggregateFrameworkRadioStatsFromHidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    return-void
.end method

.method private static setRadioStats_1_5(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerRadioStats;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerRadioStats;

    .line 28
    .line 29
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;-><init>()V

    .line 32
    .line 33
    .line 34
    iget v3, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerRadioStats;->radioId:I

    .line 35
    .line 36
    iget-object v4, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerRadioStats;->V1_3:Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    .line 37
    .line 38
    invoke-static {v3, v2, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setFrameworkPerRadioStatsFromHidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 42
    .line 43
    aput-object v2, v3, v0

    .line 44
    .line 45
    iget-object v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerRadioStats;->V1_3:Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    .line 46
    .line 47
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->aggregateFrameworkRadioStatsFromHidl(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    return-void
.end method

.method private static setRadioStats_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    .line 28
    .line 29
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setFrameworkPerRadioStatsFromHidl_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 38
    .line 39
    aput-object v2, v3, v0

    .line 40
    .line 41
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->aggregateFrameworkRadioStatsFromHidl_1_6(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    return-void
.end method

.method private static setTimeStamp(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeStampInMs:J

    .line 2
    .line 3
    return-void
.end method

.method private stringResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 17
    .line 18
    const-string v1, "% returns %"

    .line 19
    .line 20
    invoke-interface {p0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 38
    .line 39
    .line 40
    return-object p1
.end method


# virtual methods
.method public configureRoaming(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public createNanIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "ifaceName="

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 7
    .line 8
    new-instance v3, Landroid/os/WorkSource;

    .line 9
    .line 10
    const-string v4, "com.samsung.android.server.wifi.aware"

    .line 11
    .line 12
    const/16 v5, 0x3e8

    .line 13
    .line 14
    invoke-direct {v3, v5, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v2, v4, p1, p2, v3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createNanIface(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 25
    .line 26
    const-string p2, "Failed to create Nan iface in HalDeviceManager"

    .line 27
    .line 28
    invoke-interface {p1, p2}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    monitor-exit v1

    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getName(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 56
    .line 57
    const-string p2, "Failed to get nan iface name"

    .line 58
    .line 59
    invoke-interface {p1, p2}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    monitor-exit v1

    .line 71
    return-object p0

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, " NanIface="

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->i(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    monitor-exit v1

    .line 98
    return-object p2

    .line 99
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p0
.end method

.method public createP2pIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "ifaceName="

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 7
    .line 8
    new-instance v3, Landroid/os/WorkSource;

    .line 9
    .line 10
    const-string v4, "com.samsung.android.server.wifi.p2p"

    .line 11
    .line 12
    const/16 v5, 0x3e8

    .line 13
    .line 14
    invoke-direct {v3, v5, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createP2pIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 25
    .line 26
    const-string v0, "Failed to create P2p iface in HalDeviceManager"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    monitor-exit v1

    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getName(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 56
    .line 57
    const-string v0, "Failed to get p2p iface name"

    .line 58
    .line 59
    invoke-interface {p1, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    monitor-exit v1

    .line 71
    return-object p0

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 73
    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, " P2pIface="

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->i(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    monitor-exit v1

    .line 98
    return-object v2

    .line 99
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p0
.end method

.method public createStaIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "ifaceName="

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 7
    .line 8
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$StaInterfaceDestroyedListenerInternal;

    .line 9
    .line 10
    invoke-direct {v3, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$StaInterfaceDestroyedListenerInternal;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalEventHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v4, Landroid/os/WorkSource;

    .line 16
    .line 17
    const-string v5, "com.samsung.android.server.wifi"

    .line 18
    .line 19
    const/16 v6, 0x3e8

    .line 20
    .line 21
    invoke-direct {v4, v6, v5}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p2, v3, p1, v4}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createStaIface(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 32
    .line 33
    const-string v0, "Failed to create STA iface"

    .line 34
    .line 35
    invoke-interface {p1, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    monitor-exit v1

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getName(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 63
    .line 64
    const-string v0, "Failed to get iface name"

    .line 65
    .line 66
    invoke-interface {p1, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    monitor-exit v1

    .line 78
    return-object p0

    .line 79
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, " StaIface="

    .line 90
    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {p2, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->i(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    monitor-exit v1

    .line 110
    return-object v2

    .line 111
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw p0
.end method

.method public enableLinkLayerStatsCollection(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->enableLinkLayerStatsCollection(Z)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public enableNdOffload(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->enableNdOffload(Z)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public enableVerboseLogging(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->enableVerboseLogging(Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 14
    .line 15
    const-string p1, "verbose=true"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->enter(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const-string p1, "verbose=false"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->enter(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sNoLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 39
    .line 40
    :goto_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public getApfPacketFilterCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->getApfPacketFilterCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public getBackgroundScanCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->getBackgroundScanCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public getChipsetVendorName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getChipsetVendorName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getDebugRxPacketFates(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->getDebugRxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public getDebugTxPacketFates(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->getDebugTxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public getFactoryMacAddress(Ljava/lang/String;)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->getFactoryMacAddress()[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public getFeatureSet(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, -0x1

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->getFeatureSet()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public getRoamingCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->getRoamingCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public getTwtParameters()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getTwtParameters()Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getVendorConnFileInfo(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getVendorProperty(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getVendorProperty(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->getLinkLayerStats()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public initialize(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v2, "initialize"

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->initialize()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManagerStatusCallbacks:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalEventHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->registerStatusListener(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mDeathEventHandler:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    monitor-exit v0

    .line 29
    return p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public installApfPacketFilter(Ljava/lang/String;[B)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->installApfPacketFilter([B)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public isReady()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isVendorHalSupported()Z
    .locals 4

    .line 1
    const-string v0, "mHalDeviceManager.isSupported="

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    monitor-exit v1

    .line 36
    return p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public readApfPacketFilterData(Ljava/lang/String;)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->readApfPacketFilterData()[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public removeVendorConnFile(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->removeVendorConnFile(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public removeVendorLogFiles()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->removeVendorLogFiles()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setDtimMultiplier(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->setDtimMultiplier(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public setMacAddress(Ljava/lang/String;[B)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->setMacAddress([B)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public setRoamingState(Ljava/lang/String;B)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->setRoamingState(B)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public setScanMode(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->setScanMode(Z)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public setVendorProperty(ILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->setVendorProperty(ILjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startBackgroundScan(Ljava/lang/String;ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public startDebugPacketFateMonitoring(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->startDebugPacketFateMonitoring()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public startRssiMonitoring(Ljava/lang/String;III)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->startRssiMonitoring(III)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public startSendingKeepAlivePackets(Ljava/lang/String;I[BC[B[BI)Z
    .locals 2

    .line 1
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v1

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    move-object p0, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, p2

    .line 17
    move-object p2, p3

    .line 18
    move p3, p4

    .line 19
    move-object p4, p5

    .line 20
    move-object p5, p6

    .line 21
    move p6, p7

    .line 22
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->startSendingKeepAlivePackets(I[BC[B[BI)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    monitor-exit v1

    .line 27
    return p0

    .line 28
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public startVendorHal()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "startVendorHal"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->start()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 20
    .line 21
    const-string v1, "Failed to start vendor HAL"

    .line 22
    .line 23
    invoke-interface {p0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    monitor-exit v0

    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 36
    .line 37
    const-string v1, "Vendor Hal started successfully"

    .line 38
    .line 39
    invoke-interface {p0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    monitor-exit v0

    .line 48
    return p0

    .line 49
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public stopBackgroundScan(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->stopBackgroundScan(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public stopRssiMonitoring(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->stopRssiMonitoring(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public stopSendingKeepAlivePackets(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->stopSendingKeepAlivePackets(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public updateVendorConnFile(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->updateVendorConnFile(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public writeVendorConnFile(ILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->writeVendorConnFile(ILjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
