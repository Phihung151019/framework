.class public Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SpeedMetrics"
.end annotation


# instance fields
.field private mCurrentRtBytes:J

.field private mCurrentStreamingBytes:J

.field private mCurrentTotalBytes:J

.field private final mIsRx:Z

.field private mRtBytes:J

.field private mSpeedNrt:J

.field private mSpeedRt:J

.field private mSpeedStreaming:J

.field private mSpeedTotal:J

.field private mStreamingBytes:J

.field private mTotalBytes:J

.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsRx(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mIsRx:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedNrt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedRt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSpeedStreaming(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedStreaming:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSpeedTotal(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedTotal:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mcalculateSpeeds(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->calculateSpeeds(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$minit(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->init()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misActiveNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->isActiveNrt()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mstorePrevBytes(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->storePrevBytes()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mIsRx:Z

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->init()V

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentStreamingBytes:J

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentRtBytes:J

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentTotalBytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;Z)V

    return-void
.end method

.method private calculateSpeeds(J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mIsRx:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentTotalBytes:J

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mIsRx:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 37
    .line 38
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 39
    .line 40
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 46
    .line 47
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 48
    .line 49
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    :goto_1
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentRtBytes:J

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->getStreamingBytes()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentStreamingBytes:J

    .line 60
    .line 61
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentTotalBytes:J

    .line 62
    .line 63
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mTotalBytes:J

    .line 64
    .line 65
    sub-long/2addr v0, v2

    .line 66
    div-long/2addr v0, p1

    .line 67
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedTotal:J

    .line 68
    .line 69
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentRtBytes:J

    .line 70
    .line 71
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mRtBytes:J

    .line 72
    .line 73
    sub-long/2addr v0, v2

    .line 74
    div-long/2addr v0, p1

    .line 75
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedRt:J

    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$misStreaming(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const-wide/16 v1, 0x0

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mStreamingBytes:J

    .line 90
    .line 91
    cmp-long v0, v3, v1

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentStreamingBytes:J

    .line 96
    .line 97
    sub-long/2addr v5, v3

    .line 98
    div-long/2addr v5, p1

    .line 99
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedStreaming:J

    .line 100
    .line 101
    cmp-long p1, v5, v1

    .line 102
    .line 103
    if-lez p1, :cond_3

    .line 104
    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string p2, "[STREAMING] speeds(Kbps): speedTotal="

    .line 108
    .line 109
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedTotal:J

    .line 113
    .line 114
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p2, " mSpeedStreaming="

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedStreaming:J

    .line 123
    .line 124
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p2, " speedRt="

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedRt:J

    .line 133
    .line 134
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedStreaming:J

    .line 146
    .line 147
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mIsRx:Z

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 152
    .line 153
    iget-object p2, p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 154
    .line 155
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 156
    .line 157
    if-ne p2, v0, :cond_4

    .line 158
    .line 159
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedTotal:J

    .line 160
    .line 161
    iput-wide v3, p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 165
    .line 166
    iget-wide v3, p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 167
    .line 168
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedTotal:J

    .line 169
    .line 170
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 171
    .line 172
    .line 173
    move-result-wide v3

    .line 174
    iput-wide v3, p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 175
    .line 176
    :goto_3
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedTotal:J

    .line 177
    .line 178
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedRt:J

    .line 179
    .line 180
    sub-long/2addr p1, v3

    .line 181
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 182
    .line 183
    .line 184
    move-result-wide p1

    .line 185
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedNrt:J

    .line 186
    .line 187
    return-void
.end method

.method private getStreamingBytes()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmStreamingUidList(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mIsRx:Z

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    :goto_1
    add-long/2addr v1, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-wide v1
.end method

.method private init()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mIsRx:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mTotalBytes:J

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mIsRx:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 37
    .line 38
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 39
    .line 40
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 46
    .line 47
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 48
    .line 49
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    :goto_1
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mRtBytes:J

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->getStreamingBytes()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mStreamingBytes:J

    .line 60
    .line 61
    return-void
.end method

.method private isActiveNrt()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mSpeedNrt:J

    .line 2
    .line 3
    const-wide/16 v2, 0x320

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method private storePrevBytes()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentTotalBytes:J

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mTotalBytes:J

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentStreamingBytes:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mStreamingBytes:J

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mCurrentRtBytes:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->mRtBytes:J

    .line 12
    .line 13
    return-void
.end method
