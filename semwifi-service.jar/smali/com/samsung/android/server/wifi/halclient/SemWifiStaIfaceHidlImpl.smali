.class public Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil;
    }
.end annotation


# static fields
.field private static final DEFAULT_LINK:I = 0x0

.field private static final NUM_OF_LINKS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiStaIfaceHidlImpl"


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field private mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;


# direct methods
.method public static synthetic $r8$lambda$37BegsMUOYFXWK4njMaqy_JPAME(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->lambda$getLinkLayerStatsV1_6Internal$8(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$5EDx1om2td7TmcXLpO4k4OJbZ0s(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->lambda$getName$0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$8G6JpfMLH-tSHoaOkA_CAmXIcAQ(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->lambda$getCapabilitiesInternal$3(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$P8iibP3rfcjPyFpAV9XKxa_NfE8(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->lambda$getLinkLayerStatsV1_0Internal$5(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Q3MOyXg_23FQEvV-JzgbqSpVgSA(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->lambda$getNameInternal$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$T2WyDjPBDT1rQ2_c4HK36UnbMcU(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->lambda$getCapabilities$2()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$U2k8LY9o2ND-HG3P_He5HQPQb4M(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->lambda$getLinkLayerStats$4()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$_fqP6Q8X02aqtZxBmFk80_6JlTo(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->lambda$getLinkLayerStatsV1_5Internal$7(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$oHkLMpmq8l6c_hlAICD-HNfvEEU(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->lambda$getLinkLayerStatsV1_3Internal$6(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    .line 5
    .line 6
    return-void
.end method

.method private aggregateFrameworkRadioStatsFromHidl_1_3(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V
    .locals 4

    .line 1
    iget p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 2
    .line 3
    iget-object p1, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 4
    .line 5
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 6
    .line 7
    add-int/2addr p0, v0

    .line 8
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 9
    .line 10
    iget p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 11
    .line 12
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 13
    .line 14
    add-int/2addr p0, v0

    .line 15
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 16
    .line 17
    iget-object p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

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
    iput-object p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    move p1, p0

    .line 33
    :goto_0
    iget-object v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ge p1, v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 44
    .line 45
    array-length v1, v0

    .line 46
    if-ge p1, v1, :cond_1

    .line 47
    .line 48
    aget v1, v0, p1

    .line 49
    .line 50
    iget-object v2, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    add-int/2addr v2, v1

    .line 65
    aput v2, v0, p1

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 71
    .line 72
    iget-object v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 73
    .line 74
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 75
    .line 76
    add-int/2addr p1, v1

    .line 77
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 78
    .line 79
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 80
    .line 81
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 82
    .line 83
    add-int/2addr p1, v0

    .line 84
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 85
    .line 86
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 87
    .line 88
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 89
    .line 90
    add-int/2addr p1, v0

    .line 91
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 92
    .line 93
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 94
    .line 95
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 96
    .line 97
    add-int/2addr p1, v0

    .line 98
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 99
    .line 100
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 101
    .line 102
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 103
    .line 104
    add-int/2addr p1, v0

    .line 105
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 106
    .line 107
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 108
    .line 109
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 110
    .line 111
    add-int/2addr p1, v0

    .line 112
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 113
    .line 114
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 115
    .line 116
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 117
    .line 118
    add-int/2addr p1, v0

    .line 119
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 120
    .line 121
    iget-object p1, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    :goto_1
    if-ge p0, p3, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    add-int/lit8 p0, p0, 0x1

    .line 134
    .line 135
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;

    .line 136
    .line 137
    iget-object v1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 138
    .line 139
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    .line 140
    .line 141
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 148
    .line 149
    if-nez v1, :cond_2

    .line 150
    .line 151
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 152
    .line 153
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    .line 157
    .line 158
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    .line 159
    .line 160
    iput v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 161
    .line 162
    iget-object v3, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 163
    .line 164
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_2
    iget v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 168
    .line 169
    iget v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->onTimeInMs:I

    .line 170
    .line 171
    add-int/2addr v2, v3

    .line 172
    iput v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 173
    .line 174
    iget v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 175
    .line 176
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->ccaBusyTimeInMs:I

    .line 177
    .line 178
    add-int/2addr v2, v0

    .line 179
    iput v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_3
    iget p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 183
    .line 184
    add-int/lit8 p0, p0, 0x1

    .line 185
    .line 186
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 187
    .line 188
    return-void
.end method

.method private aggregateFrameworkRadioStatsFromHidl_1_6(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V
    .locals 4

    .line 1
    iget p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 2
    .line 3
    iget-object p1, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 4
    .line 5
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 6
    .line 7
    add-int/2addr p0, v0

    .line 8
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time:I

    .line 9
    .line 10
    iget p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 11
    .line 12
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 13
    .line 14
    add-int/2addr p0, v0

    .line 15
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time:I

    .line 16
    .line 17
    iget-object p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

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
    iput-object p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    move p1, p0

    .line 33
    :goto_0
    iget-object v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ge p1, v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->tx_time_per_level:[I

    .line 44
    .line 45
    array-length v1, v0

    .line 46
    if-ge p1, v1, :cond_1

    .line 47
    .line 48
    aget v1, v0, p1

    .line 49
    .line 50
    iget-object v2, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    add-int/2addr v2, v1

    .line 65
    aput v2, v0, p1

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 71
    .line 72
    iget-object v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 73
    .line 74
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 75
    .line 76
    add-int/2addr p1, v1

    .line 77
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rx_time:I

    .line 78
    .line 79
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 80
    .line 81
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 82
    .line 83
    add-int/2addr p1, v0

    .line 84
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_scan:I

    .line 85
    .line 86
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 87
    .line 88
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 89
    .line 90
    add-int/2addr p1, v0

    .line 91
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_nan_scan:I

    .line 92
    .line 93
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 94
    .line 95
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 96
    .line 97
    add-int/2addr p1, v0

    .line 98
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_background_scan:I

    .line 99
    .line 100
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 101
    .line 102
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 103
    .line 104
    add-int/2addr p1, v0

    .line 105
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_roam_scan:I

    .line 106
    .line 107
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 108
    .line 109
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 110
    .line 111
    add-int/2addr p1, v0

    .line 112
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_pno_scan:I

    .line 113
    .line 114
    iget p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 115
    .line 116
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 117
    .line 118
    add-int/2addr p1, v0

    .line 119
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->on_time_hs20_scan:I

    .line 120
    .line 121
    iget-object p1, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    :goto_1
    if-ge p0, p3, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    add-int/lit8 p0, p0, 0x1

    .line 134
    .line 135
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;

    .line 136
    .line 137
    iget-object v1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 138
    .line 139
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 140
    .line 141
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->centerFreq:I

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 148
    .line 149
    if-nez v1, :cond_2

    .line 150
    .line 151
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 152
    .line 153
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 157
    .line 158
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->centerFreq:I

    .line 159
    .line 160
    iput v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 161
    .line 162
    iget-object v3, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->channelStatsMap:Landroid/util/SparseArray;

    .line 163
    .line 164
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_2
    iget v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 168
    .line 169
    iget v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->onTimeInMs:I

    .line 170
    .line 171
    add-int/2addr v2, v3

    .line 172
    iput v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 173
    .line 174
    iget v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 175
    .line 176
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->ccaBusyTimeInMs:I

    .line 177
    .line 178
    add-int/2addr v2, v0

    .line 179
    iput v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_3
    iget p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 183
    .line 184
    add-int/lit8 p0, p0, 0x1

    .line 185
    .line 186
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 187
    .line 188
    return-void
.end method

.method private getCapabilitiesInternal(Ljava/lang/String;)J
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    .line 13
    .line 14
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/lang/Long;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    return-wide p0
.end method

.method private getLinkLayerStatsInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getWifiStaIfaceV1_6Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getLinkLayerStatsV1_6Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getWifiStaIfaceV1_5Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getLinkLayerStatsV1_5Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getWifiStaIfaceV1_3Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getLinkLayerStatsV1_3Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getLinkLayerStatsV1_0Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method private getLinkLayerStatsV1_0Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 3

    .line 1
    const-string v0, "V1_0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    .line 13
    .line 14
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    iget-object p1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->frameworkFromHalLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method private getLinkLayerStatsV1_3Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 4

    .line 1
    const-string v0, "V1_3"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getWifiStaIfaceV1_3Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getLinkLayerStats_1_3Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->frameworkFromHalLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v1
.end method

.method private getLinkLayerStatsV1_5Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 4

    .line 1
    const-string v0, "V1_5"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getWifiStaIfaceV1_5Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;->getLinkLayerStats_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$getLinkLayerStats_1_5Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->frameworkFromHalLinkLayerStats_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v1
.end method

.method private getLinkLayerStatsV1_6Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 4

    .line 1
    const-string v0, "V1_6"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getWifiStaIfaceV1_6Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;->getLinkLayerStats_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$getLinkLayerStats_1_6Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->frameworkFromHalLinkLayerStats_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v1
.end method

.method private getNameInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    .line 12
    .line 13
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    .line 30
    return-object p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " failed with remote exception: "

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "SemWifiStaIfaceHidlImpl"

    .line 22
    .line 23
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    .line 28
    .line 29
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

.method private isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, " failed with status: "

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "SemWifiStaIfaceHidlImpl"

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method private synthetic lambda$getCapabilities$2()Ljava/lang/Long;
    .locals 2

    .line 1
    const-string v0, "getCapabilities"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getCapabilitiesInternal(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$getCapabilitiesInternal$3(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->halToFrameworkStaIfaceCapability(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iput-object p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private synthetic lambda$getLinkLayerStats$4()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 1

    .line 1
    const-string v0, "getLinkLayerStats"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getLinkLayerStatsInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getLinkLayerStatsV1_0Internal$5(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iput-object p4, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$getLinkLayerStatsV1_3Internal$6(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iput-object p4, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$getLinkLayerStatsV1_5Internal$7(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iput-object p4, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$getLinkLayerStatsV1_6Internal$8(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iput-object p4, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$getName$0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "getName"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->getNameInternal(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getNameInternal$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput-object p4, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->mIfaceName:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private setFrameworkPerRadioStatsFromHidl_1_3(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V
    .locals 4

    .line 1
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->radio_id:I

    .line 2
    .line 3
    iget-object p0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 4
    .line 5
    iget p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 6
    .line 7
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time:I

    .line 8
    .line 9
    iget p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 10
    .line 11
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->tx_time:I

    .line 12
    .line 13
    iget p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 14
    .line 15
    iput p1, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->rx_time:I

    .line 16
    .line 17
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 18
    .line 19
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_scan:I

    .line 20
    .line 21
    iget p0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 22
    .line 23
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_nan_scan:I

    .line 24
    .line 25
    iget p0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 26
    .line 27
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_background_scan:I

    .line 28
    .line 29
    iget p0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 30
    .line 31
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_roam_scan:I

    .line 32
    .line 33
    iget p0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 34
    .line 35
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_pno_scan:I

    .line 36
    .line 37
    iget p0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 38
    .line 39
    iput p0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_hs20_scan:I

    .line 40
    .line 41
    iget-object p0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 p3, 0x0

    .line 48
    :goto_0
    if-ge p3, p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    add-int/lit8 p3, p3, 0x1

    .line 55
    .line 56
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;

    .line 57
    .line 58
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    .line 64
    .line 65
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    .line 66
    .line 67
    iput v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 68
    .line 69
    iget v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->onTimeInMs:I

    .line 70
    .line 71
    iput v3, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 72
    .line 73
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->ccaBusyTimeInMs:I

    .line 74
    .line 75
    iput v0, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 76
    .line 77
    iget-object v0, p2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->channelStatsMap:Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method private setFrameworkPerRadioStatsFromHidl_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V
    .locals 5

    .line 1
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    .line 2
    .line 3
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->radio_id:I

    .line 4
    .line 5
    iget-object p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 6
    .line 7
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 8
    .line 9
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time:I

    .line 10
    .line 11
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 12
    .line 13
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->tx_time:I

    .line 14
    .line 15
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 16
    .line 17
    iput v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->rx_time:I

    .line 18
    .line 19
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 20
    .line 21
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_scan:I

    .line 22
    .line 23
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 24
    .line 25
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_nan_scan:I

    .line 26
    .line 27
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 28
    .line 29
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_background_scan:I

    .line 30
    .line 31
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 32
    .line 33
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_roam_scan:I

    .line 34
    .line 35
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 36
    .line 37
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_pno_scan:I

    .line 38
    .line 39
    iget p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 40
    .line 41
    iput p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->on_time_hs20_scan:I

    .line 42
    .line 43
    iget-object p0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_0
    if-ge v0, p2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;

    .line 59
    .line 60
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;

    .line 61
    .line 62
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v3, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 66
    .line 67
    iget v3, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->centerFreq:I

    .line 68
    .line 69
    iput v3, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->frequency:I

    .line 70
    .line 71
    iget v4, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->onTimeInMs:I

    .line 72
    .line 73
    iput v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->radioOnTimeMs:I

    .line 74
    .line 75
    iget v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->ccaBusyTimeInMs:I

    .line 76
    .line 77
    iput v1, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;->ccaBusyTimeMs:I

    .line 78
    .line 79
    iget-object v1, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->channelStatsMap:Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

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
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 8
    .line 9
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 18
    .line 19
    aget-object p0, p0, v2

    .line 20
    .line 21
    iput v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->link_id:I

    .line 22
    .line 23
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    .line 24
    .line 25
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->beacon_rx:I

    .line 26
    .line 27
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rssi_mgmt:I

    .line 30
    .line 31
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 32
    .line 33
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 34
    .line 35
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_be:J

    .line 36
    .line 37
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 38
    .line 39
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_be:J

    .line 40
    .line 41
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 42
    .line 43
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_be:J

    .line 44
    .line 45
    iget-wide v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    .line 46
    .line 47
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_be:J

    .line 48
    .line 49
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 50
    .line 51
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 52
    .line 53
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_bk:J

    .line 54
    .line 55
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 56
    .line 57
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_bk:J

    .line 58
    .line 59
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 60
    .line 61
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_bk:J

    .line 62
    .line 63
    iget-wide v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    .line 64
    .line 65
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_bk:J

    .line 66
    .line 67
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 68
    .line 69
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 70
    .line 71
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_vi:J

    .line 72
    .line 73
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 74
    .line 75
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_vi:J

    .line 76
    .line 77
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 78
    .line 79
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_vi:J

    .line 80
    .line 81
    iget-wide v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    .line 82
    .line 83
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_vi:J

    .line 84
    .line 85
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 86
    .line 87
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    .line 88
    .line 89
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->rxmpdu_vo:J

    .line 90
    .line 91
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    .line 92
    .line 93
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->txmpdu_vo:J

    .line 94
    .line 95
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    .line 96
    .line 97
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->lostmpdu_vo:J

    .line 98
    .line 99
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    .line 100
    .line 101
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->retries_vo:J

    .line 102
    .line 103
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
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    iget-byte v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 16
    .line 17
    int-to-short v2, v2

    .line 18
    iput-short v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->timeSliceDutyCycleInPercent:S

    .line 19
    .line 20
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 21
    .line 22
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 23
    .line 24
    int-to-long v3, v3

    .line 25
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinBeInUsec:J

    .line 26
    .line 27
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 28
    .line 29
    int-to-long v3, v3

    .line 30
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxBeInUsec:J

    .line 31
    .line 32
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 33
    .line 34
    int-to-long v3, v3

    .line 35
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgBeInUsec:J

    .line 36
    .line 37
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 38
    .line 39
    int-to-long v2, v2

    .line 40
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesBe:J

    .line 41
    .line 42
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 43
    .line 44
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 45
    .line 46
    int-to-long v3, v3

    .line 47
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinBkInUsec:J

    .line 48
    .line 49
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 50
    .line 51
    int-to-long v3, v3

    .line 52
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxBkInUsec:J

    .line 53
    .line 54
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 55
    .line 56
    int-to-long v3, v3

    .line 57
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgBkInUsec:J

    .line 58
    .line 59
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 60
    .line 61
    int-to-long v2, v2

    .line 62
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesBk:J

    .line 63
    .line 64
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 65
    .line 66
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 67
    .line 68
    int-to-long v3, v3

    .line 69
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinViInUsec:J

    .line 70
    .line 71
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 72
    .line 73
    int-to-long v3, v3

    .line 74
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxViInUsec:J

    .line 75
    .line 76
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 77
    .line 78
    int-to-long v3, v3

    .line 79
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgViInUsec:J

    .line 80
    .line 81
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 82
    .line 83
    int-to-long v2, v2

    .line 84
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesVi:J

    .line 85
    .line 86
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 87
    .line 88
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 89
    .line 90
    int-to-long v3, v3

    .line 91
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinVoInUsec:J

    .line 92
    .line 93
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 94
    .line 95
    int-to-long v3, v3

    .line 96
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxVoInUsec:J

    .line 97
    .line 98
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 99
    .line 100
    int-to-long v3, v3

    .line 101
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgVoInUsec:J

    .line 102
    .line 103
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 104
    .line 105
    int-to-long v2, v2

    .line 106
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesVo:J

    .line 107
    .line 108
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    new-array v2, v2, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 115
    .line 116
    iput-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 117
    .line 118
    move v0, v1

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 120
    .line 121
    aget-object v2, v2, v1

    .line 122
    .line 123
    iget-object v2, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 124
    .line 125
    array-length v2, v2

    .line 126
    if-ge v0, v2, :cond_2

    .line 127
    .line 128
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 129
    .line 130
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    .line 140
    .line 141
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    .line 142
    .line 143
    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->staCount:S

    .line 144
    .line 145
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    .line 146
    .line 147
    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->chanUtil:S

    .line 148
    .line 149
    iget-object v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    new-array v4, v4, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 156
    .line 157
    move v5, v1

    .line 158
    :goto_1
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-ge v5, v6, :cond_1

    .line 165
    .line 166
    new-instance v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 167
    .line 168
    invoke-direct {v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;-><init>()V

    .line 169
    .line 170
    .line 171
    aput-object v6, v4, v5

    .line 172
    .line 173
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    check-cast v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;

    .line 180
    .line 181
    aget-object v7, v4, v5

    .line 182
    .line 183
    iget-object v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->rateInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;

    .line 184
    .line 185
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->preamble:I

    .line 186
    .line 187
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->preamble:I

    .line 188
    .line 189
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->nss:I

    .line 190
    .line 191
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->nss:I

    .line 192
    .line 193
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bw:I

    .line 194
    .line 195
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bw:I

    .line 196
    .line 197
    iget-byte v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->rateMcsIdx:B

    .line 198
    .line 199
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rateMcsIdx:I

    .line 200
    .line 201
    iget v8, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiRateInfo;->bitRateInKbps:I

    .line 202
    .line 203
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bitRateInKbps:I

    .line 204
    .line 205
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->txMpdu:I

    .line 206
    .line 207
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->txMpdu:I

    .line 208
    .line 209
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->rxMpdu:I

    .line 210
    .line 211
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rxMpdu:I

    .line 212
    .line 213
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->mpduLost:I

    .line 214
    .line 215
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->mpduLost:I

    .line 216
    .line 217
    iget v6, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->retries:I

    .line 218
    .line 219
    iput v6, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->retries:I

    .line 220
    .line 221
    add-int/lit8 v5, v5, 0x1

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_1
    iput-object v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 225
    .line 226
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 227
    .line 228
    aget-object v3, v3, v1

    .line 229
    .line 230
    iget-object v3, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 231
    .line 232
    aput-object v2, v3, v0

    .line 233
    .line 234
    add-int/lit8 v0, v0, 0x1

    .line 235
    .line 236
    goto :goto_0

    .line 237
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
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    iget-byte v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 16
    .line 17
    int-to-short v2, v2

    .line 18
    iput-short v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->timeSliceDutyCycleInPercent:S

    .line 19
    .line 20
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 21
    .line 22
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 23
    .line 24
    int-to-long v3, v3

    .line 25
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinBeInUsec:J

    .line 26
    .line 27
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 28
    .line 29
    int-to-long v3, v3

    .line 30
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxBeInUsec:J

    .line 31
    .line 32
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 33
    .line 34
    int-to-long v3, v3

    .line 35
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgBeInUsec:J

    .line 36
    .line 37
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 38
    .line 39
    int-to-long v2, v2

    .line 40
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesBe:J

    .line 41
    .line 42
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 43
    .line 44
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 45
    .line 46
    int-to-long v3, v3

    .line 47
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinBkInUsec:J

    .line 48
    .line 49
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 50
    .line 51
    int-to-long v3, v3

    .line 52
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxBkInUsec:J

    .line 53
    .line 54
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 55
    .line 56
    int-to-long v3, v3

    .line 57
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgBkInUsec:J

    .line 58
    .line 59
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 60
    .line 61
    int-to-long v2, v2

    .line 62
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesBk:J

    .line 63
    .line 64
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 65
    .line 66
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 67
    .line 68
    int-to-long v3, v3

    .line 69
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinViInUsec:J

    .line 70
    .line 71
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 72
    .line 73
    int-to-long v3, v3

    .line 74
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxViInUsec:J

    .line 75
    .line 76
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 77
    .line 78
    int-to-long v3, v3

    .line 79
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgViInUsec:J

    .line 80
    .line 81
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 82
    .line 83
    int-to-long v2, v2

    .line 84
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesVi:J

    .line 85
    .line 86
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 87
    .line 88
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMinInUsec:I

    .line 89
    .line 90
    int-to-long v3, v3

    .line 91
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMinVoInUsec:J

    .line 92
    .line 93
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeMaxInUsec:I

    .line 94
    .line 95
    int-to-long v3, v3

    .line 96
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeMaxVoInUsec:J

    .line 97
    .line 98
    iget v3, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionTimeAvgInUsec:I

    .line 99
    .line 100
    int-to-long v3, v3

    .line 101
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionTimeAvgVoInUsec:J

    .line 102
    .line 103
    iget v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->contentionNumSamples:I

    .line 104
    .line 105
    int-to-long v2, v2

    .line 106
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->contentionNumSamplesVo:J

    .line 107
    .line 108
    iget-object v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    new-array v2, v2, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 115
    .line 116
    iput-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 117
    .line 118
    move v0, v1

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 120
    .line 121
    aget-object v2, v2, v1

    .line 122
    .line 123
    iget-object v2, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 124
    .line 125
    array-length v2, v2

    .line 126
    if-ge v0, v2, :cond_2

    .line 127
    .line 128
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 129
    .line 130
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;

    .line 140
    .line 141
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->staCount:S

    .line 142
    .line 143
    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->staCount:S

    .line 144
    .line 145
    iget-short v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->chanUtil:S

    .line 146
    .line 147
    iput-short v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->chanUtil:S

    .line 148
    .line 149
    iget-object v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    new-array v4, v4, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 156
    .line 157
    move v5, v1

    .line 158
    :goto_1
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-ge v5, v6, :cond_1

    .line 165
    .line 166
    new-instance v6, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 167
    .line 168
    invoke-direct {v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;-><init>()V

    .line 169
    .line 170
    .line 171
    aput-object v6, v4, v5

    .line 172
    .line 173
    iget-object v6, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    check-cast v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;

    .line 180
    .line 181
    aget-object v7, v4, v5

    .line 182
    .line 183
    iget-object v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->rateInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 184
    .line 185
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->preamble:I

    .line 186
    .line 187
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->preamble:I

    .line 188
    .line 189
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->nss:I

    .line 190
    .line 191
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->nss:I

    .line 192
    .line 193
    iget v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->bw:I

    .line 194
    .line 195
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bw:I

    .line 196
    .line 197
    iget-byte v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->rateMcsIdx:B

    .line 198
    .line 199
    iput v9, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rateMcsIdx:I

    .line 200
    .line 201
    iget v8, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->bitRateInKbps:I

    .line 202
    .line 203
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->bitRateInKbps:I

    .line 204
    .line 205
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->txMpdu:I

    .line 206
    .line 207
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->txMpdu:I

    .line 208
    .line 209
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->rxMpdu:I

    .line 210
    .line 211
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->rxMpdu:I

    .line 212
    .line 213
    iget v8, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->mpduLost:I

    .line 214
    .line 215
    iput v8, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->mpduLost:I

    .line 216
    .line 217
    iget v6, v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaRateStat;->retries:I

    .line 218
    .line 219
    iput v6, v7, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;->retries:I

    .line 220
    .line 221
    add-int/lit8 v5, v5, 0x1

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_1
    iput-object v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;->rateStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;

    .line 225
    .line 226
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->links:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;

    .line 227
    .line 228
    aget-object v3, v3, v1

    .line 229
    .line 230
    iget-object v3, v3, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

    .line 231
    .line 232
    aput-object v2, v3, v0

    .line 233
    .line 234
    add-int/lit8 v0, v0, 0x1

    .line 235
    .line 236
    goto :goto_0

    .line 237
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
    const/4 p1, 0x1

    .line 66
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->numRadios:I

    .line 67
    .line 68
    :cond_2
    :goto_1
    return-void
.end method

.method private setRadioStats_1_3(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    .line 20
    .line 21
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->aggregateFrameworkRadioStatsFromHidl_1_3(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V

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

.method private setRadioStats_1_5(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 9
    .line 10
    iput-object v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    invoke-direct {p0, v3, v2, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setFrameworkPerRadioStatsFromHidl_1_3(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 42
    .line 43
    aput-object v2, v3, v0

    .line 44
    .line 45
    iget-object v1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerRadioStats;->V1_3:Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    .line 46
    .line 47
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->aggregateFrameworkRadioStatsFromHidl_1_3(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;)V

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

.method private setRadioStats_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 9
    .line 10
    iput-object v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setFrameworkPerRadioStatsFromHidl_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->radioStats:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;

    .line 38
    .line 39
    aput-object v2, v3, v0

    .line 40
    .line 41
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->aggregateFrameworkRadioStatsFromHidl_1_6(ILcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;)V

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

.method private validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "Cannot call "

    .line 6
    .line 7
    const-string p3, " because mWifiStaIface is null"

    .line 8
    .line 9
    invoke-static {p0, p1, p3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "SemWifiStaIfaceHidlImpl"

    .line 14
    .line 15
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-object p2

    .line 19
    :cond_0
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public enableLinkLayerStatsCollection(Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public enableNdOffload(Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method frameworkFromHalLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
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
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setRadioStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-wide v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;->timeStampInMs:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeStampInMs:J

    .line 23
    .line 24
    const-string p1, "V1_0"

    .line 25
    .line 26
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    .line 27
    .line 28
    return-object p0
.end method

.method frameworkFromHalLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
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
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setIfaceStats(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setRadioStats_1_3(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-wide p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;->timeStampInMs:J

    .line 21
    .line 22
    iput-wide p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->timeStampInMs:J

    .line 23
    .line 24
    const-string p0, "V1_3"

    .line 25
    .line 26
    iput-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->version:Ljava/lang/String;

    .line 27
    .line 28
    return-object v0
.end method

.method frameworkFromHalLinkLayerStats_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
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
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setIfaceStats_1_5(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setRadioStats_1_5(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-wide p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerStats;->timeStampInMs:J

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

.method frameworkFromHalLinkLayerStats_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
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
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setIfaceStats_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->setRadioStats_1_6(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-wide p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->timeStampInMs:J

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

.method public getApfPacketFilterCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getBackgroundScanCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getCapabilities()J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;I)V

    .line 11
    .line 12
    .line 13
    const-string v2, "getCapabilities"

    .line 14
    .line 15
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0
.end method

.method public getDebugRxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;

    .line 3
    .line 4
    return-object p0
.end method

.method public getDebugTxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;

    .line 3
    .line 4
    return-object p0
.end method

.method public getFactoryMacAddress()[B
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [B

    .line 3
    .line 4
    return-object p0
.end method

.method public getFeatureSet()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getLinkLayerStats()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "getLinkLayerStats"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 15
    .line 16
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "getName"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    return-object p0
.end method

.method public getRoamingCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method protected getWifiStaIfaceV1_3Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method protected getWifiStaIfaceV1_5Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method protected getWifiStaIfaceV1_6Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->mWifiStaIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method halToFrameworkStaIfaceCapability(I)J
    .locals 7

    .line 1
    int-to-long p0, p1

    .line 2
    const-wide/16 v0, 0x100

    .line 3
    .line 4
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-wide/16 v1, 0x2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move-wide v3, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    :goto_0
    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-wide/16 v0, 0x5

    .line 23
    .line 24
    or-long/2addr v3, v0

    .line 25
    :cond_1
    const-wide/16 v0, 0x200

    .line 26
    .line 27
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-wide/16 v0, 0xa

    .line 34
    .line 35
    or-long/2addr v3, v0

    .line 36
    :cond_2
    const-wide/16 v0, 0x400

    .line 37
    .line 38
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const-wide/16 v0, 0xc

    .line 45
    .line 46
    or-long/2addr v3, v0

    .line 47
    :cond_3
    const-wide/16 v0, 0x800

    .line 48
    .line 49
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    const-wide/16 v0, 0xd

    .line 56
    .line 57
    or-long/2addr v3, v0

    .line 58
    :cond_4
    const-wide/16 v0, 0x4

    .line 59
    .line 60
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const-wide/16 v1, 0x10

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    or-long/2addr v3, v1

    .line 69
    :cond_5
    const-wide/16 v5, 0x8

    .line 70
    .line 71
    invoke-static {p0, p1, v5, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    const-wide/16 v5, 0x13

    .line 78
    .line 79
    or-long/2addr v3, v5

    .line 80
    :cond_6
    const-wide/16 v5, 0x2000

    .line 81
    .line 82
    invoke-static {p0, p1, v5, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_7

    .line 87
    .line 88
    const-wide/16 v5, 0x14

    .line 89
    .line 90
    or-long/2addr v3, v5

    .line 91
    :cond_7
    const-wide/16 v5, 0x1000

    .line 92
    .line 93
    invoke-static {p0, p1, v5, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_8

    .line 98
    .line 99
    const-wide/16 v5, 0x15

    .line 100
    .line 101
    or-long/2addr v3, v5

    .line 102
    :cond_8
    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_9

    .line 107
    .line 108
    const-wide/16 v0, 0x17

    .line 109
    .line 110
    or-long/2addr v3, v0

    .line 111
    :cond_9
    const-wide/16 v0, 0x20

    .line 112
    .line 113
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_a

    .line 118
    .line 119
    const-wide/16 v0, 0x18

    .line 120
    .line 121
    or-long/2addr v3, v0

    .line 122
    :cond_a
    const-wide/16 v0, 0x40

    .line 123
    .line 124
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;->hasCapability(JJ)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_b

    .line 129
    .line 130
    const-wide/16 p0, 0x19

    .line 131
    .line 132
    or-long/2addr p0, v3

    .line 133
    return-wide p0

    .line 134
    :cond_b
    return-wide v3
.end method

.method public installApfPacketFilter([B)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public readApfPacketFilterData()[B
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [B

    .line 3
    .line 4
    return-object p0
.end method

.method public setDtimMultiplier(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setMacAddress([B)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setRoamingState(B)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setScanMode(Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public startDebugPacketFateMonitoring()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public startRssiMonitoring(III)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public startSendingKeepAlivePackets(I[BC[B[BI)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public stopBackgroundScan(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public stopRssiMonitoring(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public stopSendingKeepAlivePackets(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
