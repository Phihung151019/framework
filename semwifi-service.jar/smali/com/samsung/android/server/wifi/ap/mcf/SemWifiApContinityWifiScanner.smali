.class public Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;,
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;
    }
.end annotation


# static fields
.field private static final PARTIAL_SCAN_FAILURE:I = 0x2

.field private static final START_FULL_SCAN:I = 0x4

.field private static final START_PARTIAL_SCAN:I = 0x1

.field private static final STOP_PARTIAL_SCAN:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBssid:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMhsFreq:I

.field private mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private mPartialScanListener:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;

.field private mPassword:Ljava/lang/String;

.field private mSSID:Ljava/lang/String;

.field private mSecurity:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private mWifiScannerHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;

.field private mWifiScannerThread:Landroid/os/HandlerThread;

.field private mWorkSource:Landroid/os/WorkSource;

.field private mhideSSID:I

.field private mwaitingToConnect:Z

.field supportBand:I

.field private tryingToRetry:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMhsFreq(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mMhsFreq:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mSSID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mSecurity:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiScannerHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiScannerHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mwaitingToConnect:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->tryingToRetry:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMhsFreq(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mMhsFreq:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mwaitingToConnect:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->tryingToRetry:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->doPartialScan(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPartialScan(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->stopPartialScan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MHSMcf:Scanner"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiScannerHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiScannerThread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mwaitingToConnect:Z

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->tryingToRetry:I

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->supportBand:I

    .line 21
    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    new-instance p1, Landroid/os/HandlerThread;

    .line 25
    .line 26
    const-string v0, "SemWifiApContinityWifiScannerHandler"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiScannerThread:Landroid/os/HandlerThread;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiScannerThread:Landroid/os/HandlerThread;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;Landroid/os/Looper;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiScannerHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;

    .line 48
    .line 49
    new-instance p1, Landroid/os/WorkSource;

    .line 50
    .line 51
    const/16 v0, 0x3e8

    .line 52
    .line 53
    const-string v1, "com.samsung.android.server.wifi.softap.mcf"

    .line 54
    .line 55
    invoke-direct {p1, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWorkSource:Landroid/os/WorkSource;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    const-string v0, "wifi"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 71
    .line 72
    return-void
.end method

.method private doPartialScan(I)V
    .locals 12

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-instance v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 5
    .line 6
    invoke-direct {v2}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    iput v3, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 11
    .line 12
    const-string v4, "MHSMcf:Scanner"

    .line 13
    .line 14
    const-string v5, "doScanInternal enter"

    .line 15
    .line 16
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 v5, -0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    if-eq p1, v5, :cond_0

    .line 22
    .line 23
    iput v6, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 24
    .line 25
    new-array v0, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 26
    .line 27
    iput-object v0, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 28
    .line 29
    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 32
    .line 33
    .line 34
    aput-object v1, v0, v6

    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_0
    iput v6, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 39
    .line 40
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->supportBand:I

    .line 41
    .line 42
    and-int/lit8 v5, p1, 0x4

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    new-array p1, v0, [I

    .line 47
    .line 48
    fill-array-data p1, :array_0

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-string v5, "wifinl80211"

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 60
    .line 61
    const/16 v5, 0x8

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    array-length v5, v3

    .line 68
    add-int/2addr v5, v0

    .line 69
    new-array v5, v5, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 70
    .line 71
    iput-object v5, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 72
    .line 73
    move v5, v6

    .line 74
    move v7, v5

    .line 75
    :goto_0
    if-ge v5, v0, :cond_1

    .line 76
    .line 77
    aget v8, p1, v5

    .line 78
    .line 79
    iget-object v9, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 80
    .line 81
    add-int/lit8 v10, v7, 0x1

    .line 82
    .line 83
    new-instance v11, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 84
    .line 85
    invoke-direct {v11, v8}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 86
    .line 87
    .line 88
    aput-object v11, v9, v7

    .line 89
    .line 90
    add-int/2addr v5, v1

    .line 91
    move v7, v10

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    array-length p1, v3

    .line 94
    move v0, v6

    .line 95
    :goto_1
    if-ge v0, p1, :cond_4

    .line 96
    .line 97
    aget v5, v3, v0

    .line 98
    .line 99
    iget-object v8, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 100
    .line 101
    add-int/lit8 v9, v7, 0x1

    .line 102
    .line 103
    new-instance v10, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 104
    .line 105
    invoke-direct {v10, v5}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 106
    .line 107
    .line 108
    aput-object v10, v8, v7

    .line 109
    .line 110
    add-int/2addr v0, v1

    .line 111
    move v7, v9

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    and-int/2addr p1, v3

    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    new-array p1, v0, [I

    .line 117
    .line 118
    fill-array-data p1, :array_1

    .line 119
    .line 120
    .line 121
    new-array v3, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 122
    .line 123
    iput-object v3, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 124
    .line 125
    move v3, v6

    .line 126
    move v5, v3

    .line 127
    :goto_2
    if-ge v3, v0, :cond_4

    .line 128
    .line 129
    aget v7, p1, v3

    .line 130
    .line 131
    iget-object v8, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 132
    .line 133
    add-int/lit8 v9, v5, 0x1

    .line 134
    .line 135
    new-instance v10, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 136
    .line 137
    invoke-direct {v10, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 138
    .line 139
    .line 140
    aput-object v10, v8, v5

    .line 141
    .line 142
    add-int/2addr v3, v1

    .line 143
    move v5, v9

    .line 144
    goto :goto_2

    .line 145
    :cond_3
    const/16 p1, 0xd

    .line 146
    .line 147
    new-array p1, p1, [I

    .line 148
    .line 149
    fill-array-data p1, :array_2

    .line 150
    .line 151
    .line 152
    const/16 v0, 0xd

    .line 153
    .line 154
    new-array v3, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 155
    .line 156
    iput-object v3, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 157
    .line 158
    move v3, v6

    .line 159
    move v5, v3

    .line 160
    :goto_3
    if-ge v3, v0, :cond_4

    .line 161
    .line 162
    aget v7, p1, v3

    .line 163
    .line 164
    iget-object v8, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 165
    .line 166
    add-int/lit8 v9, v5, 0x1

    .line 167
    .line 168
    new-instance v10, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 169
    .line 170
    invoke-direct {v10, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 171
    .line 172
    .line 173
    aput-object v10, v8, v5

    .line 174
    .line 175
    add-int/2addr v3, v1

    .line 176
    move v5, v9

    .line 177
    goto :goto_3

    .line 178
    :cond_4
    :goto_4
    const/4 p1, 0x3

    .line 179
    iput p1, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 180
    .line 181
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;

    .line 182
    .line 183
    if-nez p1, :cond_5

    .line 184
    .line 185
    new-instance p1, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;

    .line 186
    .line 187
    invoke-direct {p1, p0, v6}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;I)V

    .line 188
    .line 189
    .line 190
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;

    .line 191
    .line 192
    :cond_5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 201
    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;

    .line 203
    .line 204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWorkSource:Landroid/os/WorkSource;

    .line 205
    .line 206
    invoke-virtual {p1, v2, v0, p0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 207
    .line 208
    .line 209
    const-string p0, "doScanInternal started"

    .line 210
    .line 211
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :array_0
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
        0x143c
        0x1450
        0x1464
        0x1478
        0x1671
        0x1685
        0x1699
        0x16ad
        0x16c1
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_1
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
        0x143c
        0x1450
        0x1464
        0x1478
        0x1671
        0x1685
        0x1699
        0x16ad
        0x16c1
    .end array-data

    :array_2
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
    .end array-data
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-le p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x22

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    sub-int/2addr p0, v0

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    return-object p1
.end method

.method private stopPartialScan()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mwaitingToConnect:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;

    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public generate_wifi_scan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 4

    .line 1
    const-string v0, "generate_wifi_scan,ssid"

    .line 2
    .line 3
    const-string v1, ",bssid"

    .line 4
    .line 5
    const-string v2, ",hideSSID"

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p3, v2}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ",mhsFreq"

    .line 12
    .line 13
    const-string v2, ",security"

    .line 14
    .line 15
    invoke-static {v0, p4, v1, p5, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "MHSMcf:Scanner"

    .line 19
    .line 20
    invoke-static {v1, p6, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mSSID:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mPassword:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mBssid:Ljava/lang/String;

    .line 28
    .line 29
    iput p4, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mhideSSID:I

    .line 30
    .line 31
    iput p5, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mMhsFreq:I

    .line 32
    .line 33
    iput p6, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mSecurity:I

    .line 34
    .line 35
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const-string p2, "wifinl80211"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 46
    .line 47
    const/16 p2, 0x8

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    array-length p1, p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->supportBand:I

    .line 57
    .line 58
    or-int/lit8 p1, p1, 0x4

    .line 59
    .line 60
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->supportBand:I

    .line 61
    .line 62
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 63
    .line 64
    const/4 p3, 0x2

    .line 65
    invoke-virtual {p1, p3}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    array-length p1, p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->supportBand:I

    .line 73
    .line 74
    or-int/2addr p1, p3

    .line 75
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->supportBand:I

    .line 76
    .line 77
    :cond_1
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->supportBand:I

    .line 78
    .line 79
    const/4 p4, 0x1

    .line 80
    or-int/2addr p1, p4

    .line 81
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->supportBand:I

    .line 82
    .line 83
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget p5, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mSecurity:I

    .line 90
    .line 91
    const/4 p6, 0x3

    .line 92
    if-ne p5, p3, :cond_2

    .line 93
    .line 94
    iput p6, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mSecurity:I

    .line 95
    .line 96
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/4 p3, 0x0

    .line 101
    move p5, p3

    .line 102
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 113
    .line 114
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mSSID:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    iget p5, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 131
    .line 132
    const-string v2, " existing profile removed"

    .line 133
    .line 134
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 138
    .line 139
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 140
    .line 141
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    .line 146
    .line 147
    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 148
    .line 149
    .line 150
    iput p5, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 151
    .line 152
    new-instance p5, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v0, "\""

    .line 155
    .line 156
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mSSID:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {p5, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p5

    .line 165
    iput-object p5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 166
    .line 167
    iget-object p5, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mPassword:Ljava/lang/String;

    .line 168
    .line 169
    if-eqz p5, :cond_6

    .line 170
    .line 171
    new-instance p5, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mPassword:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {p5, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p5

    .line 182
    iput-object p5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 183
    .line 184
    iget p5, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mSecurity:I

    .line 185
    .line 186
    if-ne p5, p6, :cond_5

    .line 187
    .line 188
    const-string p5, "connect to WPA3 access Point"

    .line 189
    .line 190
    invoke-static {v1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    iget-object p5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 194
    .line 195
    invoke-virtual {p5, p2}, Ljava/util/BitSet;->set(I)V

    .line 196
    .line 197
    .line 198
    iput-boolean p4, p1, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_5
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 202
    .line 203
    invoke-virtual {p2, p4}, Ljava/util/BitSet;->set(I)V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_6
    iget p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mSecurity:I

    .line 208
    .line 209
    const/4 p5, 0x5

    .line 210
    if-ne p2, p5, :cond_7

    .line 211
    .line 212
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 213
    .line 214
    const/16 p5, 0x9

    .line 215
    .line 216
    invoke-virtual {p2, p5}, Ljava/util/BitSet;->set(I)V

    .line 217
    .line 218
    .line 219
    iput-boolean p4, p1, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_7
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 223
    .line 224
    invoke-virtual {p2, p3}, Ljava/util/BitSet;->set(I)V

    .line 225
    .line 226
    .line 227
    :goto_1
    iget p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mhideSSID:I

    .line 228
    .line 229
    if-ne p2, p4, :cond_8

    .line 230
    .line 231
    iput-boolean p4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 232
    .line 233
    :cond_8
    if-ne p2, p4, :cond_9

    .line 234
    .line 235
    const-string p2, "connecting to hiddenSSID"

    .line 236
    .line 237
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mwaitingToConnect:Z

    .line 241
    .line 242
    const/4 p2, -0x1

    .line 243
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mMhsFreq:I

    .line 244
    .line 245
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 246
    .line 247
    new-instance p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$1;

    .line 248
    .line 249
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_9
    iput-boolean p4, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mwaitingToConnect:Z

    .line 257
    .line 258
    const/16 p2, 0xa

    .line 259
    .line 260
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->tryingToRetry:I

    .line 261
    .line 262
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 263
    .line 264
    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string p3, "trying to Connect to: "

    .line 271
    .line 272
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mSSID:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string p3, ",netId:"

    .line 281
    .line 282
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->mWifiScannerHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;

    .line 296
    .line 297
    invoke-virtual {p0, p4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 298
    .line 299
    .line 300
    return-void
.end method
