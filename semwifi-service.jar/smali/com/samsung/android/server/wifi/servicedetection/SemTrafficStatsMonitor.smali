.class public Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final MIN_PK_CNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SemTrafficStatsMonitor"


# instance fields
.field private mAccumulatedWakeTime:J

.field private mCurConvoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDebug:Z

.field private mDlTotalDataSize:I

.field private mDlTotalPacketCnt:I

.field private mNetdService:Landroid/net/INetd;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private mPrevWakeRatioCalculationTime:J

.field mServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

.field private mUlTotalDataSize:I

.field private mUlTotalPacketCnt:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mUlTotalPacketCnt:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDlTotalPacketCnt:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mUlTotalDataSize:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDlTotalDataSize:I

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mAccumulatedWakeTime:J

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mPrevWakeRatioCalculationTime:J

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDebug:Z

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 28
    .line 29
    return-void
.end method

.method private clearOldData()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mUlTotalPacketCnt:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDlTotalPacketCnt:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mUlTotalDataSize:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDlTotalDataSize:I

    .line 9
    .line 10
    return-void
.end method

.method private getOemNetd()Lcom/android/internal/net/IOemNetd;
    .locals 5

    .line 1
    const-string v0, "OutOfMemoryError: "

    .line 2
    .line 3
    const-string v1, "SemTrafficStatsMonitor"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    :try_start_0
    const-string v2, "netd"

    .line 11
    .line 12
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mNetdService:Landroid/net/INetd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :catch_0
    move-exception v2

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception v2

    .line 26
    goto :goto_1

    .line 27
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v4, "Failed to bind service netd, error="

    .line 46
    .line 47
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mNetdService:Landroid/net/INetd;

    .line 65
    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    const-string v0, "Can\'t bind service netd"

    .line 69
    .line 70
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iput-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :catch_2
    move-exception v2

    .line 86
    goto :goto_3

    .line 87
    :catch_3
    move-exception v0

    .line 88
    goto :goto_4

    .line 89
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :goto_4
    const-string v2, "Failed to get OemNetd listener "

    .line 106
    .line 107
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 111
    .line 112
    return-object p0
.end method

.method private wrapTrafficData(Landroid/net/UidStatsParcel;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;
    .locals 8

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/net/UidStatsParcel;->key:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->key:I

    .line 9
    .line 10
    iget v0, p1, Landroid/net/UidStatsParcel;->uid:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->uid:I

    .line 13
    .line 14
    iget v0, p1, Landroid/net/UidStatsParcel;->ipVersion:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ipVersion:I

    .line 17
    .line 18
    iget v0, p1, Landroid/net/UidStatsParcel;->ipv4Addr:I

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ipv4Address:I

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    new-array v0, v0, [I

    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ipv6Address:[I

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iget v2, p1, Landroid/net/UidStatsParcel;->ipv6Addr1:I

    .line 29
    .line 30
    aput v2, v0, v1

    .line 31
    .line 32
    iget v1, p1, Landroid/net/UidStatsParcel;->ipv6Addr2:I

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    aput v1, v0, v2

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    iget v3, p1, Landroid/net/UidStatsParcel;->ipv6Addr3:I

    .line 39
    .line 40
    aput v3, v0, v1

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    iget v3, p1, Landroid/net/UidStatsParcel;->ipv6Addr4:I

    .line 44
    .line 45
    aput v3, v0, v1

    .line 46
    .line 47
    iget v0, p1, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 48
    .line 49
    int-to-float v1, v0

    .line 50
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketCnt:F

    .line 51
    .line 52
    iget v1, p1, Landroid/net/UidStatsParcel;->txPackets:I

    .line 53
    .line 54
    int-to-float v3, v1

    .line 55
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketCnt:F

    .line 56
    .line 57
    iget v3, p1, Landroid/net/UidStatsParcel;->maxTxPacketSize:I

    .line 58
    .line 59
    int-to-float v3, v3

    .line 60
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMax:F

    .line 61
    .line 62
    iget v3, p1, Landroid/net/UidStatsParcel;->minTxPacketSize:I

    .line 63
    .line 64
    int-to-float v3, v3

    .line 65
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMin:F

    .line 66
    .line 67
    iget v3, p1, Landroid/net/UidStatsParcel;->maxRxPacketSize:I

    .line 68
    .line 69
    int-to-float v3, v3

    .line 70
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMax:F

    .line 71
    .line 72
    iget v3, p1, Landroid/net/UidStatsParcel;->minRxPacketSize:I

    .line 73
    .line 74
    int-to-float v3, v3

    .line 75
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMin:F

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    if-nez v1, :cond_0

    .line 79
    .line 80
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMin:F

    .line 81
    .line 82
    :cond_0
    if-nez v0, :cond_1

    .line 83
    .line 84
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMin:F

    .line 85
    .line 86
    :cond_1
    iget-wide v4, p1, Landroid/net/UidStatsParcel;->maxTxInterPacketTime:J

    .line 87
    .line 88
    long-to-float v4, v4

    .line 89
    const v5, 0x4e6e6b28    # 1.0E9f

    .line 90
    .line 91
    .line 92
    div-float/2addr v4, v5

    .line 93
    iput v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMax:F

    .line 94
    .line 95
    iget-wide v6, p1, Landroid/net/UidStatsParcel;->minTxInterPacketTime:J

    .line 96
    .line 97
    long-to-float v4, v6

    .line 98
    div-float/2addr v4, v5

    .line 99
    iput v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMin:F

    .line 100
    .line 101
    iget-wide v6, p1, Landroid/net/UidStatsParcel;->maxRxInterPacketTime:J

    .line 102
    .line 103
    long-to-float v4, v6

    .line 104
    div-float/2addr v4, v5

    .line 105
    iput v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax1:F

    .line 106
    .line 107
    iget-wide v6, p1, Landroid/net/UidStatsParcel;->maxRxInterPacketTime2:J

    .line 108
    .line 109
    long-to-float v4, v6

    .line 110
    div-float/2addr v4, v5

    .line 111
    iput v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax2:F

    .line 112
    .line 113
    iget v4, p1, Landroid/net/UidStatsParcel;->tcpPackets:I

    .line 114
    .line 115
    int-to-float v4, v4

    .line 116
    iput v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->tcpPacketCnt:F

    .line 117
    .line 118
    iget v4, p1, Landroid/net/UidStatsParcel;->udpPackets:I

    .line 119
    .line 120
    int-to-float v4, v4

    .line 121
    iput v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->udpPacketCnt:F

    .line 122
    .line 123
    if-lez v1, :cond_2

    .line 124
    .line 125
    iget-wide v6, p1, Landroid/net/UidStatsParcel;->txBytes:J

    .line 126
    .line 127
    long-to-float v4, v6

    .line 128
    int-to-float v6, v1

    .line 129
    div-float/2addr v4, v6

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    move v4, v3

    .line 132
    :goto_0
    iput v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeAvg:F

    .line 133
    .line 134
    if-lez v0, :cond_3

    .line 135
    .line 136
    iget-wide v3, p1, Landroid/net/UidStatsParcel;->rxBytes:J

    .line 137
    .line 138
    long-to-float v3, v3

    .line 139
    int-to-float v0, v0

    .line 140
    div-float/2addr v3, v0

    .line 141
    :cond_3
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeAvg:F

    .line 142
    .line 143
    if-le v1, v2, :cond_4

    .line 144
    .line 145
    iget-wide v3, p1, Landroid/net/UidStatsParcel;->latestTxTime:J

    .line 146
    .line 147
    iget-wide v6, p1, Landroid/net/UidStatsParcel;->firstTxTime:J

    .line 148
    .line 149
    sub-long/2addr v3, v6

    .line 150
    sub-int/2addr v1, v2

    .line 151
    int-to-long v0, v1

    .line 152
    div-long/2addr v3, v0

    .line 153
    goto :goto_1

    .line 154
    :cond_4
    const-wide/16 v3, 0x0

    .line 155
    .line 156
    :goto_1
    long-to-float p1, v3

    .line 157
    div-float/2addr p1, v5

    .line 158
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeAvg:F

    .line 159
    .line 160
    return-object p0
.end method


# virtual methods
.method public getTrafficData()Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/internal/net/IOemNetd;->getTrafficTimeStats()Landroid/net/TrafficTimeStatsParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_3

    .line 8
    :catch_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :catch_1
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "OutOfMemoryError: "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "SemTrafficStatsMonitor"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_2
    const/4 v0, 0x0

    .line 36
    :goto_3
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;-><init>()V

    .line 39
    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-wide v2, v0, Landroid/net/TrafficTimeStatsParcel;->maxTxInterPacketTime:J

    .line 44
    .line 45
    long-to-float v2, v2

    .line 46
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 47
    .line 48
    .line 49
    div-float/2addr v2, v3

    .line 50
    iput v2, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMax:F

    .line 51
    .line 52
    iget-wide v4, v0, Landroid/net/TrafficTimeStatsParcel;->minTxInterPacketTime:J

    .line 53
    .line 54
    long-to-float v2, v4

    .line 55
    div-float/2addr v2, v3

    .line 56
    iput v2, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMin:F

    .line 57
    .line 58
    iget-wide v4, v0, Landroid/net/TrafficTimeStatsParcel;->maxRxInterPacketTime2:J

    .line 59
    .line 60
    long-to-float v2, v4

    .line 61
    div-float/2addr v2, v3

    .line 62
    iput v2, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax2:F

    .line 63
    .line 64
    iget-wide v4, v0, Landroid/net/TrafficTimeStatsParcel;->maxRxInterPacketTime:J

    .line 65
    .line 66
    long-to-float v2, v4

    .line 67
    div-float/2addr v2, v3

    .line 68
    iput v2, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax1:F

    .line 69
    .line 70
    iget-wide v2, v0, Landroid/net/TrafficTimeStatsParcel;->accumulatedWakeTime:J

    .line 71
    .line 72
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mAccumulatedWakeTime:J

    .line 73
    .line 74
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mUlTotalPacketCnt:I

    .line 75
    .line 76
    int-to-float v2, v0

    .line 77
    iput v2, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketCnt:F

    .line 78
    .line 79
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDlTotalPacketCnt:I

    .line 80
    .line 81
    int-to-float v3, v2

    .line 82
    iput v3, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketCnt:F

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    if-lez v0, :cond_0

    .line 86
    .line 87
    iget v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mUlTotalDataSize:I

    .line 88
    .line 89
    int-to-float v4, v4

    .line 90
    int-to-float v0, v0

    .line 91
    div-float/2addr v4, v0

    .line 92
    goto :goto_4

    .line 93
    :cond_0
    move v4, v3

    .line 94
    :goto_4
    iput v4, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeAvg:F

    .line 95
    .line 96
    if-lez v2, :cond_1

    .line 97
    .line 98
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDlTotalDataSize:I

    .line 99
    .line 100
    int-to-float v0, v0

    .line 101
    int-to-float v2, v2

    .line 102
    div-float v3, v0, v2

    .line 103
    .line 104
    :cond_1
    iput v3, v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeAvg:F

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->filterTrafficData()V

    .line 107
    .line 108
    .line 109
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->clearOldData()V

    .line 110
    .line 111
    .line 112
    return-object v1
.end method

.method public getTrafficStatsMap()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SemTrafficStatsMonitor"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/android/internal/net/IOemNetd;->getUidTrafficStats()[Landroid/net/UidStatsParcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_3

    .line 10
    :catch_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :catch_1
    move-exception v1

    .line 13
    goto :goto_1

    .line 14
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "OutOfMemoryError: "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_2
    const/4 v1, 0x0

    .line 36
    :goto_3
    new-instance v2, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    array-length v0, v1

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_4
    if-ge v3, v0, :cond_5

    .line 46
    .line 47
    aget-object v4, v1, v3

    .line 48
    .line 49
    iget v5, v4, Landroid/net/UidStatsParcel;->ipVersion:I

    .line 50
    .line 51
    const/4 v6, 0x4

    .line 52
    if-eq v5, v6, :cond_0

    .line 53
    .line 54
    const/4 v6, 0x6

    .line 55
    if-ne v5, v6, :cond_3

    .line 56
    .line 57
    :cond_0
    iget v5, v4, Landroid/net/UidStatsParcel;->txPackets:I

    .line 58
    .line 59
    iget v6, v4, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 60
    .line 61
    add-int/2addr v5, v6

    .line 62
    const/16 v6, 0xa

    .line 63
    .line 64
    if-ge v5, v6, :cond_2

    .line 65
    .line 66
    iget-object v6, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mCurConvoSet:Ljava/util/Set;

    .line 67
    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    iget v7, v4, Landroid/net/UidStatsParcel;->key:I

    .line 71
    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDebug:Z

    .line 84
    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    iget-object v6, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 88
    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v8, "Traffic flow id="

    .line 92
    .line 93
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget v4, v4, Landroid/net/UidStatsParcel;->key:I

    .line 97
    .line 98
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v4, " with pktCnt="

    .line 102
    .line 103
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v4, " doesn\'t satisfy min pkt_cnt requirement=10"

    .line 110
    .line 111
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    const/4 v5, 0x2

    .line 119
    invoke-virtual {v6, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_2
    :goto_5
    iget v5, v4, Landroid/net/UidStatsParcel;->key:I

    .line 124
    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->wrapTrafficData(Landroid/net/UidStatsParcel;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    iget v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mUlTotalPacketCnt:I

    .line 137
    .line 138
    iget v6, v4, Landroid/net/UidStatsParcel;->txPackets:I

    .line 139
    .line 140
    add-int/2addr v5, v6

    .line 141
    iput v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mUlTotalPacketCnt:I

    .line 142
    .line 143
    iget v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDlTotalPacketCnt:I

    .line 144
    .line 145
    iget v6, v4, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 146
    .line 147
    add-int/2addr v5, v6

    .line 148
    iput v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDlTotalPacketCnt:I

    .line 149
    .line 150
    iget v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mUlTotalDataSize:I

    .line 151
    .line 152
    int-to-long v5, v5

    .line 153
    iget-wide v7, v4, Landroid/net/UidStatsParcel;->txBytes:J

    .line 154
    .line 155
    add-long/2addr v5, v7

    .line 156
    long-to-int v5, v5

    .line 157
    iput v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mUlTotalDataSize:I

    .line 158
    .line 159
    iget v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDlTotalDataSize:I

    .line 160
    .line 161
    int-to-long v5, v5

    .line 162
    iget-wide v7, v4, Landroid/net/UidStatsParcel;->rxBytes:J

    .line 163
    .line 164
    add-long/2addr v5, v7

    .line 165
    long-to-int v4, v5

    .line 166
    iput v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDlTotalDataSize:I

    .line 167
    .line 168
    :cond_3
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_4
    const-string p0, "TrafficStats data is null"

    .line 172
    .line 173
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :cond_5
    return-object v2
.end method

.method public getWakeTimeRatio()F
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mAccumulatedWakeTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mAccumulatedWakeTime:J

    .line 14
    .line 15
    long-to-float v4, v4

    .line 16
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mPrevWakeRatioCalculationTime:J

    .line 17
    .line 18
    sub-long v5, v0, v5

    .line 19
    .line 20
    long-to-float v5, v5

    .line 21
    div-float/2addr v4, v5

    .line 22
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mPrevWakeRatioCalculationTime:J

    .line 23
    .line 24
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mAccumulatedWakeTime:J

    .line 25
    .line 26
    return v4

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public start(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->clearOldData()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->startTrafficStatsController(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "OutOfMemoryError: "

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "SemTrafficStatsMonitor"

    .line 26
    .line 27
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception p0

    .line 32
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->stopTrafficStatsController(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "OutOfMemoryError: "

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "SemTrafficStatsMonitor"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p0

    .line 29
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public toggleDebugMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mDebug:Z

    .line 2
    .line 3
    return-void
.end method

.method public updateCurConvoSet(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->mCurConvoSet:Ljava/util/Set;

    .line 2
    .line 3
    return-void
.end method
