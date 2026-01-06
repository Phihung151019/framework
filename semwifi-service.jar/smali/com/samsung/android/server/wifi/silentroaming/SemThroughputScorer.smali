.class public final Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final HALF_TRUSTED_AWARD:I = 0x1f4

.field public static final NOT_OEM_PAID_AWARD:I = 0x1f4

.field public static final NOT_OEM_PRIVATE_AWARD:I = 0x1f4

.field public static final RSSI_SCORE_OFFSET:I = 0x55

.field public static final RSSI_SCORE_SLOPE_IS_4:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SemThroughputScorer"

.field public static final TOP_TIER_BASE_SCORE:I = 0xf4240

.field public static final TRUSTED_AWARD:I = 0x3e8

.field private static final USE_USER_CONNECT_CHOICE:Z = true


# instance fields
.field private final logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mContext:Landroid/content/Context;

.field private final mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 22
    .line 23
    return-void
.end method

.method private calculateRssiScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getSufficientRssi(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->is6GhzBeaconRssiBoostEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_4

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getChannelWidth()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/4 p1, 0x1

    .line 38
    if-eq p0, p1, :cond_3

    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    if-eq p0, p1, :cond_2

    .line 42
    .line 43
    const/4 p1, 0x3

    .line 44
    if-eq p0, p1, :cond_1

    .line 45
    .line 46
    const/4 p1, 0x5

    .line 47
    if-eq p0, p1, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0xc

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x9

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    add-int/lit8 v1, v1, 0x6

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x3

    .line 60
    .line 61
    :cond_4
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    add-int/lit8 p0, p0, 0x55

    .line 66
    .line 67
    mul-int/lit8 p0, p0, 0x4

    .line 68
    .line 69
    return p0
.end method

.method private calculateThroughputBonusScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedMultiLinkThroughputMbps()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedMultiLinkThroughputMbps()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :goto_0
    const/16 v0, 0x320

    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    sub-int/2addr p1, v0

    .line 28
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getThroughputBonusNumerator()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    mul-int/2addr v0, v1

    .line 39
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getThroughputBonusDenominator()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    div-int/2addr v0, v1

    .line 46
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getThroughputBonusNumeratorAfter800Mbps()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    mul-int/2addr v1, p1

    .line 53
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getThroughputBonusDenominatorAfter800Mbps()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    div-int/2addr v1, p1

    .line 60
    add-int/2addr v1, v0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getThroughputBonusLimit()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0
.end method


# virtual methods
.method public enableVerboseLogging(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->calculateRssiScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->calculateThroughputBonusScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int v3, v1, v2

    .line 12
    .line 13
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getFrequencyScore(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->hasNoInternetAccess()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isNoInternetAccessExpected()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->semIsNoInternetAccessExpected()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v5, 0x0

    .line 44
    :goto_0
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 45
    .line 46
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getCurrentNetworkBonusMin()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    iget-object v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 51
    .line 52
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getCurrentNetworkBonusPercent()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    mul-int/2addr v8, v3

    .line 57
    div-int/lit8 v8, v8, 0x64

    .line 58
    .line 59
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-static {v7}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 74
    .line 75
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getBand6GhzBonus()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 v7, 0x0

    .line 81
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCurrentNetwork()Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_2

    .line 86
    .line 87
    if-nez v5, :cond_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    const/4 v3, 0x0

    .line 91
    :goto_2
    if-eqz v5, :cond_3

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getNumRebootsSinceLastUse()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-nez v8, :cond_3

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    move v8, v1

    .line 102
    :goto_3
    if-eqz v5, :cond_4

    .line 103
    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getNumRebootsSinceLastUse()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-nez v9, :cond_4

    .line 109
    .line 110
    const/4 v9, 0x0

    .line 111
    goto :goto_4

    .line 112
    :cond_4
    move v9, v2

    .line 113
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOpenNetwork()Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    if-eqz v10, :cond_5

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    goto :goto_5

    .line 121
    :cond_5
    iget-object v10, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 122
    .line 123
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getSecureNetworkBonus()I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isMetered()Z

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-eqz v11, :cond_6

    .line 132
    .line 133
    const/4 v11, 0x0

    .line 134
    goto :goto_6

    .line 135
    :cond_6
    iget-object v11, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 136
    .line 137
    invoke-virtual {v11}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getUnmeteredNetworkBonus()I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isEphemeral()Z

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    if-eqz v12, :cond_7

    .line 146
    .line 147
    const/4 v12, 0x0

    .line 148
    goto :goto_7

    .line 149
    :cond_7
    iget-object v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 150
    .line 151
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getSavedNetworkBonus()I

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isTrusted()Z

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    const/16 v14, 0x1f4

    .line 160
    .line 161
    if-eqz v13, :cond_9

    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isRestricted()Z

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    if-eqz v13, :cond_8

    .line 168
    .line 169
    goto :goto_8

    .line 170
    :cond_8
    const/16 v13, 0x3e8

    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_9
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCarrierOrPrivileged()Z

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    if-eqz v11, :cond_a

    .line 178
    .line 179
    move v13, v14

    .line 180
    const/4 v11, 0x0

    .line 181
    const/4 v12, 0x0

    .line 182
    goto :goto_9

    .line 183
    :cond_a
    const/4 v11, 0x0

    .line 184
    const/4 v12, 0x0

    .line 185
    const/4 v13, 0x0

    .line 186
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOemPaid()Z

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-eqz v15, :cond_b

    .line 191
    .line 192
    const/4 v11, 0x0

    .line 193
    const/4 v12, 0x0

    .line 194
    const/4 v13, 0x0

    .line 195
    const/4 v15, 0x0

    .line 196
    goto :goto_a

    .line 197
    :cond_b
    move v15, v14

    .line 198
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOemPrivate()Z

    .line 199
    .line 200
    .line 201
    move-result v16

    .line 202
    if-eqz v16, :cond_c

    .line 203
    .line 204
    const/4 v11, 0x0

    .line 205
    const/4 v12, 0x0

    .line 206
    const/4 v13, 0x0

    .line 207
    const/4 v14, 0x0

    .line 208
    const/4 v15, 0x0

    .line 209
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isIpProvisioningTimedOut()Z

    .line 210
    .line 211
    .line 212
    move-result v16

    .line 213
    if-eqz v16, :cond_d

    .line 214
    .line 215
    const/4 v11, 0x0

    .line 216
    const/4 v12, 0x0

    .line 217
    const/4 v13, 0x0

    .line 218
    :cond_d
    add-int v16, v11, v12

    .line 219
    .line 220
    add-int v16, v16, v13

    .line 221
    .line 222
    add-int v16, v16, v15

    .line 223
    .line 224
    add-int v16, v16, v14

    .line 225
    .line 226
    add-int v16, v16, v10

    .line 227
    .line 228
    add-int v17, v8, v9

    .line 229
    .line 230
    add-int v17, v17, v3

    .line 231
    .line 232
    add-int v17, v17, v7

    .line 233
    .line 234
    add-int v7, v17, v4

    .line 235
    .line 236
    iget-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mScoringParams:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;

    .line 237
    .line 238
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getScoringBucketStepSize()I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    add-int v6, v6, v16

    .line 247
    .line 248
    if-eqz p2, :cond_e

    .line 249
    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCurrentNetwork()Z

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    if-nez v7, :cond_e

    .line 255
    .line 256
    if-eqz v5, :cond_e

    .line 257
    .line 258
    const/4 v6, 0x0

    .line 259
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getLastSelectionWeight()D

    .line 260
    .line 261
    .line 262
    move-result-wide v16

    .line 263
    const-wide/16 v18, 0x0

    .line 264
    .line 265
    cmpl-double v5, v16, v18

    .line 266
    .line 267
    if-lez v5, :cond_f

    .line 268
    .line 269
    const v5, 0xf4240

    .line 270
    .line 271
    .line 272
    add-int/2addr v5, v1

    .line 273
    add-int v6, v5, v2

    .line 274
    .line 275
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v7, "Score for candidate: "

    .line 278
    .line 279
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 283
    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v7, v0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v0, " rssiScore: "

    .line 296
    .line 297
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v0, "["

    .line 304
    .line 305
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v1, "] throughputScore: "

    .line 312
    .line 313
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v0, "] currentNetworkBoost: "

    .line 326
    .line 327
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v0, " securityAward: "

    .line 334
    .line 335
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v0, " unmeteredAward: "

    .line 342
    .line 343
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v0, " savedNetworkAward: "

    .line 350
    .line 351
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v0, " trustedAward: "

    .line 358
    .line 359
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v0, " notOemPaidAward: "

    .line 366
    .line 367
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v0, " notOemPrivateAward: "

    .line 374
    .line 375
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v0, " frequencyScore: "

    .line 382
    .line 383
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    const-string v0, " final score: "

    .line 390
    .line 391
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    move-object/from16 v1, p1

    .line 402
    .line 403
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->setDebugLogMessage(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    move-object/from16 v2, p0

    .line 407
    .line 408
    iget-boolean v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->mVerboseLoggingEnabled:Z

    .line 409
    .line 410
    if-eqz v2, :cond_10

    .line 411
    .line 412
    const-string v2, "SemThroughputScorer"

    .line 413
    .line 414
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    :cond_10
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    int-to-double v0, v0

    .line 422
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    div-double/2addr v0, v2

    .line 428
    int-to-double v2, v6

    .line 429
    add-double/2addr v2, v0

    .line 430
    return-wide v2
.end method
