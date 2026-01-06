.class public Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_TIME_MS:J = 0x0L

.field static final DURATION_FOR_MINUS_SCORE_MS:J = 0x927c0L

.field static final DURATION_FOR_POINT_1_MS:J = 0x927c0L

.field static final DURATION_FOR_POINT_2_MS:J = 0x6ddd00L

.field static final DURATION_FOR_POINT_4_MS:J = 0x1b77400L

.field static final DURATION_FOR_RECOVERY_SCORE_MS:J = 0x36ee80L

.field static final SCORE_FOR_REACHING_FAVORITE:I = 0x4

.field static final SCORE_OF_FAVORITE_NETWORK:I = 0xa

.field static final SCORE_OF_KT_PERSISTENT_FAVORITE_NETWORK:I = 0xc

.field static final SCORE_OF_PERSISTENT_FAVORITE_NETWORK:I = 0xb

.field static final SCORE_OF_PERSISTENT_NON_FAVORITE_NETWORK:I = -0x1

.field static final SCORE_OF_REMOVED_FROM_FAVORITE_NETWORK:I = 0x2

.field private static final SECOND:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "AutoWifi.Favorite"


# instance fields
.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mConnectedHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDecreasedHistory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationForMinusPoint:J

.field private mDurationForPoint1:J

.field private mDurationForPoint2:J

.field private mDurationForPoint4:J

.field private mDurationForRecoveryPoint:J

.field private final mExceptionConfigKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

.field private final mIncreasedHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsAutoWifiEnabled:Z

.field private mIsWifiConnected:Z

.field private mLastConfigKey:Ljava/lang/String;

.field private mLastNetworkScore:I

.field private mLastWifiConnectedAt:J

.field private mListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;Lcom/samsung/android/server/wifi/util/SemClock;)V
    .locals 3

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIncreasedHistory:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDecreasedHistory:Ljava/util/Set;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mExceptionConfigKeys:Ljava/util/Set;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    .line 42
    .line 43
    const-wide/32 p1, 0x927c0

    .line 44
    .line 45
    .line 46
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint1:J

    .line 47
    .line 48
    const-wide/32 v1, 0x6ddd00

    .line 49
    .line 50
    .line 51
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    .line 52
    .line 53
    const-wide/32 v1, 0x1b77400

    .line 54
    .line 55
    .line 56
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint4:J

    .line 57
    .line 58
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    .line 59
    .line 60
    const-wide/32 p1, 0x36ee80

    .line 61
    .line 62
    .line 63
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForRecoveryPoint:J

    .line 64
    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p1, "\"ollehWiFi \""

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    aget-object v1, p1, p2

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, "\"olleh GiGA WiFi \""

    .line 90
    .line 91
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    aget-object v1, p1, p2

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v1, "\"KT GiGA WiFi \""

    .line 109
    .line 110
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    aget-object v1, p1, p2

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v1, "\"KT WiFi \""

    .line 128
    .line 129
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    aget-object v1, p1, p2

    .line 133
    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v1, "\"T wifi zone\""

    .line 147
    .line 148
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    aget-object v1, p1, p2

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v1, "\"T Free WiFi \""

    .line 166
    .line 167
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    aget-object v1, p1, p2

    .line 171
    .line 172
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    new-instance p0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v1, "\"KT_Free_WiFi\""

    .line 185
    .line 186
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    aget-object p1, p1, p2

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method private checkAndDecreaseScore()V
    .locals 9

    .line 1
    const-string v0, "decreaseScore duration: "

    .line 2
    .line 3
    const-string v1, "checkAndDecreaseScore ignored "

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const-string p0, "AutoWifi.Favorite"

    .line 10
    .line 11
    const-string v0, "inactive"

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    const-string p0, "AutoWifi.Favorite"

    .line 29
    .line 30
    const-string v0, "checkAndDecreaseScore configKey is null"

    .line 31
    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    monitor-exit v2

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mExceptionConfigKeys:Ljava/util/Set;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    const-string v0, "AutoWifi.Favorite"

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    monitor-exit v2

    .line 70
    return-void

    .line 71
    :cond_2
    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 72
    .line 73
    if-lez v1, :cond_6

    .line 74
    .line 75
    const/16 v3, 0xb

    .line 76
    .line 77
    if-lt v1, v3, :cond_3

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDecreasedHistory:Ljava/util/Set;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->getConnectionMaintenanceTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    const-wide/16 v5, 0x0

    .line 96
    .line 97
    cmp-long v1, v3, v5

    .line 98
    .line 99
    if-lez v1, :cond_5

    .line 100
    .line 101
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    .line 102
    .line 103
    cmp-long v1, v3, v5

    .line 104
    .line 105
    if-gez v1, :cond_5

    .line 106
    .line 107
    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 108
    .line 109
    add-int/lit8 v5, v1, -0x1

    .line 110
    .line 111
    iput v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 112
    .line 113
    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDecreasedHistory:Ljava/util/Set;

    .line 114
    .line 115
    iget-object v6, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 116
    .line 117
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_4

    .line 125
    .line 126
    iget v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 127
    .line 128
    invoke-static {v5}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_4

    .line 133
    .line 134
    const-string v5, "AutoWifi.Favorite"

    .line 135
    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v7, " is removed from favorite network list"

    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    const/4 v5, 0x2

    .line 159
    iput v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 160
    .line 161
    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    .line 162
    .line 163
    iget-object v6, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->addConfigAsNormal(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    .line 169
    .line 170
    iget-object v6, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 171
    .line 172
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    .line 173
    .line 174
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->handleNetworkScoreChanged()V

    .line 182
    .line 183
    .line 184
    const-string v5, "AutoWifi.Favorite"

    .line 185
    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v0, "<"

    .line 195
    .line 196
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    .line 200
    .line 201
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v0, ", prevScore: "

    .line 205
    .line 206
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v0, " newScore: "

    .line 213
    .line 214
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 218
    .line 219
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    :cond_5
    monitor-exit v2

    .line 230
    return-void

    .line 231
    :cond_6
    :goto_0
    const-string v0, "AutoWifi.Favorite"

    .line 232
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string p0, " has persistent network score"

    .line 244
    .line 245
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    monitor-exit v2

    .line 256
    return-void

    .line 257
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    throw p0
.end method

.method private checkAndIncreaseScore(Z)V
    .locals 14

    .line 1
    const-string v0, "increaseScore duration: "

    .line 2
    .line 3
    const-string v1, "favorite network "

    .line 4
    .line 5
    const-string v2, "user manually disable AutoWifi : "

    .line 6
    .line 7
    const-string v3, "AutoWifi is disabled ignored "

    .line 8
    .line 9
    const-string v4, "checkAndIncreaseScore ignored "

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    const-string p0, "AutoWifi.Favorite"

    .line 16
    .line 17
    const-string p1, "inactive"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v5

    .line 26
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    const-string p0, "AutoWifi.Favorite"

    .line 35
    .line 36
    const-string p1, "checkAndIncreaseScore configKey is null"

    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    monitor-exit v5

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mExceptionConfigKeys:Ljava/util/Set;

    .line 47
    .line 48
    iget-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    const-string p1, "AutoWifi.Favorite"

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    monitor-exit v5

    .line 76
    return-void

    .line 77
    :cond_2
    iget v4, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 78
    .line 79
    const/16 v6, 0xa

    .line 80
    .line 81
    if-lt v4, v6, :cond_3

    .line 82
    .line 83
    const-string p1, "AutoWifi.Favorite"

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p0, " is favorite"

    .line 96
    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    monitor-exit v5

    .line 108
    return-void

    .line 109
    :cond_3
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsAutoWifiEnabled:Z

    .line 110
    .line 111
    const/4 v8, 0x4

    .line 112
    if-nez v7, :cond_4

    .line 113
    .line 114
    if-lt v4, v8, :cond_4

    .line 115
    .line 116
    const-string p1, "AutoWifi.Favorite"

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    monitor-exit v5

    .line 136
    return-void

    .line 137
    :cond_4
    const/4 v3, -0x1

    .line 138
    if-ne v4, v3, :cond_5

    .line 139
    .line 140
    const-string p1, "AutoWifi.Favorite"

    .line 141
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    monitor-exit v5

    .line 160
    return-void

    .line 161
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    .line 162
    .line 163
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 164
    .line 165
    const-wide/16 v9, 0x0

    .line 166
    .line 167
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Ljava/lang/Long;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 178
    .line 179
    .line 180
    move-result-wide v2

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->getConnectionMaintenanceTimeMillis()J

    .line 182
    .line 183
    .line 184
    move-result-wide v9

    .line 185
    add-long/2addr v2, v9

    .line 186
    iget-wide v11, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint1:J

    .line 187
    .line 188
    cmp-long v7, v9, v11

    .line 189
    .line 190
    if-ltz v7, :cond_b

    .line 191
    .line 192
    iget-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIncreasedHistory:Ljava/util/Map;

    .line 193
    .line 194
    iget-object v11, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 195
    .line 196
    const/4 v12, 0x0

    .line 197
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    invoke-interface {v7, v11, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    check-cast v7, Ljava/lang/Integer;

    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    const/4 v11, 0x1

    .line 212
    if-ge v7, v11, :cond_6

    .line 213
    .line 214
    iget v12, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 215
    .line 216
    add-int/2addr v12, v11

    .line 217
    iput v12, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 218
    .line 219
    add-int/lit8 v7, v7, 0x1

    .line 220
    .line 221
    :cond_6
    iget-wide v12, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    .line 222
    .line 223
    cmp-long v12, v9, v12

    .line 224
    .line 225
    if-ltz v12, :cond_7

    .line 226
    .line 227
    iget v12, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 228
    .line 229
    add-int/2addr v12, v11

    .line 230
    iput v12, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 231
    .line 232
    add-int/lit8 v7, v7, 0x1

    .line 233
    .line 234
    :cond_7
    iget-wide v11, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint4:J

    .line 235
    .line 236
    cmp-long v11, v2, v11

    .line 237
    .line 238
    if-ltz v11, :cond_8

    .line 239
    .line 240
    iput v8, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 241
    .line 242
    move v7, v8

    .line 243
    :cond_8
    iget-object v11, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIncreasedHistory:Ljava/util/Map;

    .line 244
    .line 245
    iget-object v12, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    iget-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    .line 255
    .line 256
    iget-object v11, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 257
    .line 258
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    invoke-static {v4}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-eqz v7, :cond_9

    .line 270
    .line 271
    iget-wide v11, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForRecoveryPoint:J

    .line 272
    .line 273
    cmp-long v7, v9, v11

    .line 274
    .line 275
    if-gez v7, :cond_a

    .line 276
    .line 277
    :cond_9
    iget v7, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 278
    .line 279
    if-le v7, v6, :cond_b

    .line 280
    .line 281
    :cond_a
    iput v6, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 282
    .line 283
    :cond_b
    invoke-static {v4}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    if-nez v7, :cond_c

    .line 288
    .line 289
    iget v7, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 290
    .line 291
    if-lt v7, v8, :cond_c

    .line 292
    .line 293
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsAutoWifiEnabled:Z

    .line 294
    .line 295
    if-eqz v7, :cond_c

    .line 296
    .line 297
    if-eqz p1, :cond_c

    .line 298
    .line 299
    const-string v7, "AutoWifi.Favorite"

    .line 300
    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v1, " detected"

    .line 312
    .line 313
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    iput v6, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 324
    .line 325
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    .line 326
    .line 327
    iget-object v6, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 328
    .line 329
    invoke-virtual {v1, v6}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->addConfigAsFavorite(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    .line 333
    .line 334
    iget-object v6, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 335
    .line 336
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    :cond_c
    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 340
    .line 341
    if-eq v4, v1, :cond_d

    .line 342
    .line 343
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->handleNetworkScoreChanged()V

    .line 344
    .line 345
    .line 346
    const-string v1, "AutoWifi.Favorite"

    .line 347
    .line 348
    new-instance v6, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v0, ", connectedTime: "

    .line 357
    .line 358
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v0, " prevScore: "

    .line 365
    .line 366
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v0, ", newScore: "

    .line 373
    .line 374
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 378
    .line 379
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string p0, " hasLocationInfo: "

    .line 383
    .line 384
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    :cond_d
    monitor-exit v5

    .line 398
    return-void

    .line 399
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    throw p0
.end method

.method private handleNetworkScoreChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 16
    .line 17
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 18
    .line 19
    invoke-interface {v0, v1, p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;->onNetworkScoreChanged(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static isFavoriteNetwork(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-le p0, v0, :cond_0

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

.method private resetScoreChangedHistory(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIncreasedHistory:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDecreasedHistory:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method


# virtual methods
.method calculateNetworkScore()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->checkAndIncreaseScore(Z)V

    :cond_0
    return-void
.end method

.method calculateNetworkScore(ZLjava/lang/String;IZZ)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsWifiConnected:Z

    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsWifiConnected:Z

    .line 5
    iput-boolean p4, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsAutoWifiEnabled:Z

    .line 6
    iput p3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastWifiConnectedAt:J

    .line 8
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-direct {p0, p5}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->checkAndIncreaseScore(Z)V

    :cond_1
    return-void
.end method

.method clearHistory(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIncreasedHistory:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDecreasedHistory:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->removeConfig(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0
.end method

.method dump()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " - Duration For PlusPoint1:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint1:J

    .line 9
    .line 10
    const-wide/16 v3, 0x3e8

    .line 11
    .line 12
    div-long/2addr v1, v3

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " seconds\n - Duration For PlusPoint2:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    .line 22
    .line 23
    div-long/2addr v1, v3

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " seconds\n - Duration For PlusPoint4:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint4:J

    .line 33
    .line 34
    div-long/2addr v1, v3

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " seconds\n - Duration For MinusPoint:"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    .line 44
    .line 45
    div-long/2addr v1, v3

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, " seconds\n - Duration For RecoveryPoint:"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForRecoveryPoint:J

    .line 55
    .line 56
    div-long/2addr v1, v3

    .line 57
    const-string p0, " seconds\n"

    .line 58
    .line 59
    invoke-static {v1, v2, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method getConnectionMaintenanceTimeMillis()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastWifiConnectedAt:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-wide v2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastWifiConnectedAt:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    return-wide v0
.end method

.method notifyWifiOffByUser()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->checkAndDecreaseScore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method removeScoreHistory(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->resetScoreChangedHistory(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method setNetworkAsPersistentFavoriteNetwork(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "AutoWifi.Favorite"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const-string v0, "setNetworkAsPersistentFavoriteNetwork update configKey "

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mExceptionConfigKeys:Ljava/util/Set;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, "setNetworkAsPersistentFavoriteNetwork ignored "

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsWifiConnected:Z

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 69
    .line 70
    const/16 v0, 0xc

    .line 71
    .line 72
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 73
    .line 74
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->addConfigAsFavorite(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 88
    .line 89
    if-eq p1, v0, :cond_4

    .line 90
    .line 91
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->handleNetworkScoreChanged()V

    .line 92
    .line 93
    .line 94
    :cond_4
    return-void
.end method

.method start(Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    .line 5
    .line 6
    return-void
.end method

.method stop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    .line 6
    .line 7
    return-void
.end method

.method testNetworkScore(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsWifiConnected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 23
    .line 24
    iput p2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {p2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->addConfigAsNormal(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    invoke-static {p2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->addConfigAsFavorite(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "ignore test settings, connected configKey: "

    .line 73
    .line 74
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p0, ", but want to change "

    .line 83
    .line 84
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "AutoWifi.Favorite"

    .line 95
    .line 96
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method

.method testTimeSettings(JJJJJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint1:J

    .line 8
    .line 9
    :cond_0
    cmp-long p1, p3, v0

    .line 10
    .line 11
    if-ltz p1, :cond_1

    .line 12
    .line 13
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    .line 14
    .line 15
    :cond_1
    cmp-long p1, p5, v0

    .line 16
    .line 17
    if-ltz p1, :cond_2

    .line 18
    .line 19
    iput-wide p5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint4:J

    .line 20
    .line 21
    :cond_2
    cmp-long p1, p7, v0

    .line 22
    .line 23
    if-ltz p1, :cond_3

    .line 24
    .line 25
    iput-wide p7, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    .line 26
    .line 27
    :cond_3
    cmp-long p1, p9, v0

    .line 28
    .line 29
    if-ltz p1, :cond_4

    .line 30
    .line 31
    iput-wide p9, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForRecoveryPoint:J

    .line 32
    .line 33
    :cond_4
    return-void
.end method

.method updateAutoWifiScorePolicies([I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    .line 3
    .line 4
    int-to-long v0, v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    mul-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint1:J

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    aget v0, p1, v0

    .line 12
    .line 13
    int-to-long v0, v0

    .line 14
    mul-long/2addr v0, v2

    .line 15
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    aget v0, p1, v0

    .line 19
    .line 20
    int-to-long v0, v0

    .line 21
    mul-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint4:J

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    aget v0, p1, v0

    .line 26
    .line 27
    int-to-long v0, v0

    .line 28
    mul-long/2addr v0, v2

    .line 29
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    aget p1, p1, v0

    .line 33
    .line 34
    int-to-long v0, p1

    .line 35
    mul-long/2addr v0, v2

    .line 36
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForRecoveryPoint:J

    .line 37
    .line 38
    return-void
.end method
