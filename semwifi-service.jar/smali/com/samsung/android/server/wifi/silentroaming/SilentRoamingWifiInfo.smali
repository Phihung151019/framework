.class public Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final FILTER_TIME_CONSTANT:D = 3000.0

.field private static final PPS:I = 0x10

.field private static final RESET_TIME_STAMP:J = -0x8000000000000000L

.field private static final SOURCE_LLSTATS:I = 0x2

.field private static final SOURCE_TRAFFIC_COUNTERS:I = 0x1

.field private static final SOURCE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SilentRoamingWifiInfo"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbg:Z

.field private mLastPacketCountUpdateTimeStamp:J

.field private mLastSource:I

.field public mRxSuccess:J

.field public mSuccessfulRxPacketsPerSecond:D

.field public mSuccessfulTxPacketsPerSecond:D

.field public mTxBad:J

.field public mTxRetries:J

.field public mTxSuccess:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mDbg:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastSource:I

    .line 8
    .line 9
    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    return-void
.end method

.method private update(IJJJJJ)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v4, p4

    .line 8
    .line 9
    move-wide/from16 v6, p6

    .line 10
    .line 11
    move-wide/from16 v8, p8

    .line 12
    .line 13
    move-wide/from16 v10, p10

    .line 14
    .line 15
    iget v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastSource:I

    .line 16
    .line 17
    if-ne v1, v12, :cond_0

    .line 18
    .line 19
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    .line 20
    .line 21
    const-wide/high16 v14, -0x8000000000000000L

    .line 22
    .line 23
    cmp-long v14, v12, v14

    .line 24
    .line 25
    if-eqz v14, :cond_0

    .line 26
    .line 27
    cmp-long v14, v12, v10

    .line 28
    .line 29
    if-gez v14, :cond_0

    .line 30
    .line 31
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxBad:J

    .line 32
    .line 33
    cmp-long v14, v14, v6

    .line 34
    .line 35
    if-gtz v14, :cond_0

    .line 36
    .line 37
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxSuccess:J

    .line 38
    .line 39
    cmp-long v14, v14, v2

    .line 40
    .line 41
    if-gtz v14, :cond_0

    .line 42
    .line 43
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mRxSuccess:J

    .line 44
    .line 45
    cmp-long v14, v14, v8

    .line 46
    .line 47
    if-gtz v14, :cond_0

    .line 48
    .line 49
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxRetries:J

    .line 50
    .line 51
    cmp-long v14, v14, v4

    .line 52
    .line 53
    if-gtz v14, :cond_0

    .line 54
    .line 55
    sub-long v12, v10, v12

    .line 56
    .line 57
    long-to-double v12, v12

    .line 58
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 59
    .line 60
    mul-double/2addr v14, v12

    .line 61
    const-wide v16, 0x40a7700000000000L    # 3000.0

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    div-double v14, v14, v16

    .line 67
    .line 68
    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    .line 69
    .line 70
    .line 71
    move-result-wide v14

    .line 72
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 73
    .line 74
    sub-double v16, v16, v14

    .line 75
    .line 76
    move-wide/from16 v18, v12

    .line 77
    .line 78
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 79
    .line 80
    mul-double/2addr v12, v14

    .line 81
    move-wide/from16 v20, v12

    .line 82
    .line 83
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxSuccess:J

    .line 84
    .line 85
    sub-long v12, v2, v12

    .line 86
    .line 87
    long-to-double v12, v12

    .line 88
    const-wide v22, 0x408f400000000000L    # 1000.0

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    mul-double v12, v12, v22

    .line 94
    .line 95
    div-double v12, v12, v18

    .line 96
    .line 97
    mul-double v12, v12, v16

    .line 98
    .line 99
    add-double v12, v12, v20

    .line 100
    .line 101
    iput-wide v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 102
    .line 103
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 104
    .line 105
    mul-double/2addr v12, v14

    .line 106
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mRxSuccess:J

    .line 107
    .line 108
    sub-long v14, v8, v14

    .line 109
    .line 110
    long-to-double v14, v14

    .line 111
    mul-double v14, v14, v22

    .line 112
    .line 113
    div-double v14, v14, v18

    .line 114
    .line 115
    mul-double v14, v14, v16

    .line 116
    .line 117
    add-double/2addr v14, v12

    .line 118
    iput-wide v14, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    const-wide/16 v12, 0x0

    .line 122
    .line 123
    iput-wide v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 124
    .line 125
    iput-wide v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 126
    .line 127
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastSource:I

    .line 128
    .line 129
    :goto_0
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxBad:J

    .line 130
    .line 131
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxSuccess:J

    .line 132
    .line 133
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mRxSuccess:J

    .line 134
    .line 135
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mTxRetries:J

    .line 136
    .line 137
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    .line 138
    .line 139
    return-void
.end method


# virtual methods
.method public hasActiveStream()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->isAudioCommunicationMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "hasActiveStream: mSuccessfulTxPacketsPerSecond= "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ", mSuccessfulRxPacketsPerSecond= "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ", mPps= 16, isVoipRunning= "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "SilentRoamingWifiInfo"

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 45
    .line 46
    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    .line 47
    .line 48
    cmpl-double v1, v1, v3

    .line 49
    .line 50
    if-gtz v1, :cond_1

    .line 51
    .line 52
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 53
    .line 54
    cmpl-double p0, v1, v3

    .line 55
    .line 56
    if-gtz p0, :cond_1

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p0, 0x0

    .line 62
    return p0

    .line 63
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 64
    return p0
.end method

.method isAudioCommunicationMode()Z
    .locals 4

    .line 1
    const-string v0, "SilentRoamingWifiInfo"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v2, "audio"

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/media/AudioManager;

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const-string p0, "isAudioCommunicationMode, AudioManager is null"

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const/4 v0, 0x3

    .line 29
    if-ne p0, v0, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "isAudioCommunicationMode - "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return v1
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastSource:I

    .line 3
    .line 4
    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->mLastPacketCountUpdateTimeStamp:J

    .line 7
    .line 8
    return-void
.end method

.method public updatePacketRates(JJJ)V
    .locals 12

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    .line 6
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->update(IJJJJJ)V

    return-void
.end method

.method public updatePacketRates(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;J)V
    .locals 17

    move-object/from16 v0, p1

    .line 1
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_be:J

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_bk:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vi:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vo:J

    add-long v7, v1, v3

    .line 2
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_be:J

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_bk:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vi:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vo:J

    add-long v9, v1, v3

    .line 3
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_be:J

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_bk:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vi:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vo:J

    add-long v11, v1, v3

    .line 4
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_be:J

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_bk:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vi:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rxmpdu_vo:J

    add-long v13, v1, v3

    const/4 v6, 0x2

    move-object/from16 v5, p0

    move-wide/from16 v15, p2

    .line 5
    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->update(IJJJJJ)V

    return-void
.end method
