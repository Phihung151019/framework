.class Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;,
        Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;,
        Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$ConfigKeyProvider;
    }
.end annotation


# static fields
.field private static final LIFE_TIME:J = 0xdbba00L

.field private static final LIFE_TIME_FOR_SPECIAL_NETWORK:J = 0x1b77400L

.field private static final REPLACE_MIN_TIME:J = 0x1d4c0L

.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.Cache"


# instance fields
.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 17
    .line 18
    return-void
.end method

.method static getQoSSpeedInt([I)[I
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x4

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aget v0, p0, v0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    aget v1, p0, v1

    .line 12
    .line 13
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    aget v2, p0, v2

    .line 21
    .line 22
    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v2, v2, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    aget p0, p0, v3

    .line 30
    .line 31
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget p0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    .line 36
    .line 37
    filled-new-array {v0, v1, v2, p0}, [I

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method static printCachedScores(Ljava/util/Map;Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$ConfigKeyProvider;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$ConfigKeyProvider;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    const-string v1, "WifiProfileShare.Cache_ScoreData: "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    .line 40
    const-string v2, "\n"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-interface {p1, v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$ConfigKeyProvider;->getConfigKey(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_1
    const-string v3, " ("

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, ") -"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    new-instance v2, Ljava/util/TreeMap;

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/util/Map;

    .line 80
    .line 81
    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_0

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Ljava/util/Map$Entry;

    .line 103
    .line 104
    const-string v3, " "

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v3, ":"

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0
.end method


# virtual methods
.method declared-synchronized addOrUpdateScore(Ljava/lang/String;[I)V
    .locals 7

    .line 1
    const-string v0, "update network score "

    .line 2
    .line 3
    const-string v1, "add network score "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    :try_start_0
    array-length v2, p2

    .line 11
    const/4 v3, 0x4

    .line 12
    if-eq v2, v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x3

    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v6, 0x1

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    new-instance v2, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    .line 31
    .line 32
    aget v0, p2, v3

    .line 33
    .line 34
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->from(I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    aget v6, p2, v6

    .line 39
    .line 40
    invoke-static {v6}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    aget v5, p2, v5

    .line 45
    .line 46
    invoke-static {v5}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    aget p2, p2, v4

    .line 51
    .line 52
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    filled-new-array {v6, v5, p2}, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {v2, v0, p2, v3}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;-><init>(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;I)V

    .line 61
    .line 62
    .line 63
    const-string p2, "WifiProfileShare.Cache"

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 71
    .line 72
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    aget v1, p2, v3

    .line 90
    .line 91
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->from(I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    aget v3, p2, v6

    .line 96
    .line 97
    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    aget v5, p2, v5

    .line 102
    .line 103
    invoke-static {v5}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    aget p2, p2, v4

    .line 108
    .line 109
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    filled-new-array {v3, v5, p2}, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-static {v2, v1, p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->-$$Nest$mupdate(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V

    .line 118
    .line 119
    .line 120
    const-string p2, "WifiProfileShare.Cache"

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    .line 144
    .line 145
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    .line 148
    monitor-exit p0

    .line 149
    return-void

    .line 150
    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "WifiProfileShare.Cache"

    .line 151
    .line 152
    const-string p2, "addOrUpdateScore - invalid score data"

    .line 153
    .line 154
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    monitor-exit p0

    .line 158
    return-void

    .line 159
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    throw p1
.end method

.method declared-synchronized getScores(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->-$$Nest$mgetRealNetworkScores(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->-$$Nest$mgetNetworkScores(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;)Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ljava/lang/String;

    .line 117
    .line 118
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    .line 119
    .line 120
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    .line 127
    .line 128
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    .line 133
    .line 134
    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->-$$Nest$mgetNetworkScores(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;)Ljava/util/Map;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    const-string v1, "WifiProfileShare.Cache"

    .line 143
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v3, "getScores req:"

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p1, " return:"

    .line 162
    .line 163
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .line 179
    .line 180
    :cond_4
    monitor-exit p0

    .line 181
    return-object v0

    .line 182
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    throw p1
.end method

.method declared-synchronized removeAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "WifiProfileShare.Cache"

    .line 3
    .line 4
    const-string v1, "remove all cached score data"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method declared-synchronized removeOldItems()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    iget-wide v5, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    .line 43
    .line 44
    sub-long v5, v0, v5

    .line 45
    .line 46
    const-wide/32 v7, 0xdbba00

    .line 47
    .line 48
    .line 49
    cmp-long v7, v5, v7

    .line 50
    .line 51
    if-lez v7, :cond_1

    .line 52
    .line 53
    iget-object v7, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 54
    .line 55
    sget-object v8, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NORMAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 56
    .line 57
    if-ne v7, v8, :cond_1

    .line 58
    .line 59
    const-string v5, "WifiProfileShare.Cache"

    .line 60
    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v7, "remove old qos data of normal network "

    .line 67
    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v7, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 72
    .line 73
    invoke-virtual {v7, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, " created at "

    .line 81
    .line 82
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-wide v3, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    .line 86
    .line 87
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    const-wide/32 v7, 0x1b77400

    .line 104
    .line 105
    .line 106
    cmp-long v5, v5, v7

    .line 107
    .line 108
    if-lez v5, :cond_0

    .line 109
    .line 110
    const-string v5, "WifiProfileShare.Cache"

    .line 111
    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v7, "remove old qos data of special network "

    .line 118
    .line 119
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v7, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 123
    .line 124
    invoke-virtual {v7, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v4, " created at "

    .line 132
    .line 133
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-wide v3, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    .line 137
    .line 138
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_2
    monitor-exit p0

    .line 154
    return-void

    .line 155
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    throw v0
.end method
