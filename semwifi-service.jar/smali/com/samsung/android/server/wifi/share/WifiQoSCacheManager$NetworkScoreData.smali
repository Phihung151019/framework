.class Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkScoreData"
.end annotation


# static fields
.field static final KEY_LEVEL_MAX_MINUS1_SPEED:Ljava/lang/String; = "levelMax-1"

.field static final KEY_LEVEL_MAX_MINUS2_SPEED:Ljava/lang/String; = "levelMax-2"

.field static final KEY_LEVEL_MAX_SPEED:Ljava/lang/String; = "levelMax"

.field static final KEY_NETWORK_TYPE:Ljava/lang/String; = "networkType"


# instance fields
.field mLastUpdateTime:J

.field mNetworkScores:[I

.field mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

.field mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;


# direct methods
.method static bridge synthetic -$$Nest$mgetNetworkScores(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->getNetworkScores()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRealNetworkScores(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->getRealNetworkScores()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->update(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p2

    new-array v0, v0, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 4
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->update(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;-><init>(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V

    return-void
.end method

.method private getNetworkScores()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "networkType"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget-object v1, v1, v2

    .line 25
    .line 26
    iget v1, v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "levelMax"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    aget-object v1, v1, v2

    .line 41
    .line 42
    iget v1, v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "levelMax-1"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    aget-object p0, p0, v1

    .line 57
    .line 58
    iget p0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 59
    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v1, "levelMax-2"

    .line 65
    .line 66
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method private getRealNetworkScores()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "networkType"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget v1, v1, v2

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "levelMax"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    aget v1, v1, v2

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "levelMax-1"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    aget p0, p0, v1

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string v1, "levelMax-2"

    .line 59
    .line 60
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method private update(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V
    .locals 7

    .line 1
    array-length v0, p2

    .line 2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string p1, "received QoS data length is invalid "

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    array-length p1, p2

    .line 15
    const-string p2, "WifiProfileShare.Cache"

    .line 16
    .line 17
    invoke-static {p2, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 22
    .line 23
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 28
    .line 29
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    .line 34
    .line 35
    sub-long v2, v0, v2

    .line 36
    .line 37
    const-wide/32 v4, 0x1d4c0

    .line 38
    .line 39
    .line 40
    cmp-long p1, v2, v4

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-lez p1, :cond_2

    .line 44
    .line 45
    move p1, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 49
    .line 50
    array-length v3, v3

    .line 51
    sub-int/2addr v3, v2

    .line 52
    :goto_1
    if-ltz v3, :cond_7

    .line 53
    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 57
    .line 58
    aget v4, v2, v3

    .line 59
    .line 60
    sget-object v5, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 61
    .line 62
    iget v6, v5, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 63
    .line 64
    if-ne v4, v6, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    aget-object v6, p2, v3

    .line 68
    .line 69
    if-eq v6, v5, :cond_5

    .line 70
    .line 71
    iget v5, v6, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 72
    .line 73
    add-int/2addr v4, v5

    .line 74
    div-int/lit8 v4, v4, 0x2

    .line 75
    .line 76
    aput v4, v2, v3

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 80
    .line 81
    aget-object v4, p2, v3

    .line 82
    .line 83
    iget v4, v4, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 84
    .line 85
    aput v4, v2, v3

    .line 86
    .line 87
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 88
    .line 89
    aget v4, v2, v3

    .line 90
    .line 91
    sget-object v5, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 92
    .line 93
    iget v5, v5, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    .line 94
    .line 95
    if-eq v4, v5, :cond_6

    .line 96
    .line 97
    add-int/lit8 v5, v3, 0x1

    .line 98
    .line 99
    array-length v6, v2

    .line 100
    if-ge v5, v6, :cond_6

    .line 101
    .line 102
    aget v5, v2, v5

    .line 103
    .line 104
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    aput v4, v2, v3

    .line 109
    .line 110
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 111
    .line 112
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 113
    .line 114
    aget v4, v4, v3

    .line 115
    .line 116
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    aput-object v4, v2, v3

    .line 121
    .line 122
    add-int/lit8 v3, v3, -0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->validateNetworkScoreAndUpdateSpeed()V

    .line 126
    .line 127
    .line 128
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    .line 129
    .line 130
    return-void
.end method

.method private validateNetworkScoreAndUpdateSpeed()V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    :goto_0
    if-ltz v1, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 11
    .line 12
    aget v2, v2, v1

    .line 13
    .line 14
    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 19
    .line 20
    if-eq v0, v3, :cond_0

    .line 21
    .line 22
    iget v4, v2, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    .line 23
    .line 24
    iget v5, v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    .line 25
    .line 26
    if-ge v4, v5, :cond_0

    .line 27
    .line 28
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 29
    .line 30
    aput-object v0, v4, v1

    .line 31
    .line 32
    :cond_0
    if-eq v2, v3, :cond_1

    .line 33
    .line 34
    move-object v0, v2

    .line 35
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    sget-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 42
    .line 43
    array-length v3, v2

    .line 44
    if-ge v1, v3, :cond_8

    .line 45
    .line 46
    aget v2, v2, v1

    .line 47
    .line 48
    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget-object v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 53
    .line 54
    if-eq v0, v3, :cond_7

    .line 55
    .line 56
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 57
    .line 58
    aget-object v5, v4, v1

    .line 59
    .line 60
    if-eq v5, v3, :cond_3

    .line 61
    .line 62
    if-ne v2, v3, :cond_7

    .line 63
    .line 64
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .line 65
    .line 66
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 67
    .line 68
    array-length v3, v3

    .line 69
    if-ge v2, v3, :cond_4

    .line 70
    .line 71
    aget-object v2, v4, v2

    .line 72
    .line 73
    if-ne v2, v0, :cond_4

    .line 74
    .line 75
    aput-object v0, v4, v1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    sget-object v2, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->SLOW:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 79
    .line 80
    if-ne v0, v2, :cond_5

    .line 81
    .line 82
    aput-object v0, v4, v1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    iget v0, v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    .line 86
    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 88
    .line 89
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 94
    .line 95
    aget-object v3, v2, v1

    .line 96
    .line 97
    iget v3, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    .line 98
    .line 99
    iget v4, v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    .line 100
    .line 101
    if-ge v3, v4, :cond_6

    .line 102
    .line 103
    aput-object v0, v2, v1

    .line 104
    .line 105
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 106
    .line 107
    aget-object v0, v0, v1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_7
    move-object v0, v2

    .line 111
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_8
    return-void
.end method
