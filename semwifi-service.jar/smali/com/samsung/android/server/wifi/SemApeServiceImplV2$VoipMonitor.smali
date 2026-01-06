.class Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;
.super Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoipMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;
    }
.end annotation


# static fields
.field private static final HIGH_BITRATE_THRESHOLD:I = 0x5dc

.field private static final HIGH_BITRATE_THRESHOLD_FACTOR:F = 0.02f

.field private static final LOW_BITRATE_THRESHOLD_FACTOR:F = 0.1f

.field private static final MAX_RT_VALUES_WINDOW:I = 0xa

.field private static final MID_BITRATE_THRESHOLD:I = 0x64

.field private static final MID_BITRATE_THRESHOLD_FACTOR:F = 0.04f

.field private static final MIN_GOOD_RT_SPEED:I = 0x5dc

.field private static final NRT_RESTRICTIONS_WINDOW:I = 0x5


# instance fields
.field private final APP_RECOVERED_FACTOR:D

.field private final MAX_DEC_COUNT:I

.field private mDecCount:I

.field private mNonSufferingAlloc:I

.field private final mPastNrtAllocs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestrictMode:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;

.field private final mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

.field private final mVoipTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;


# direct methods
.method static bridge synthetic -$$Nest$fgetAPP_RECOVERED_FACTOR(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->APP_RECOVERED_FACTOR:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mPastNrtAllocs:Ljava/util/LinkedList;

    .line 12
    .line 13
    const/4 p1, 0x5

    .line 14
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mStrictAllocTimer:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mPackageName:Ljava/lang/String;

    .line 17
    .line 18
    const-string p2, "teams"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mPackageName:Ljava/lang/String;

    .line 27
    .line 28
    const-string p2, "zoom"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mPackageName:Ljava/lang/String;

    .line 37
    .line 38
    const-string p2, "whatsapp"

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;->CONTROL_AGGRESSIVE:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mRestrictMode:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;

    .line 50
    .line 51
    const-wide p1, 0x3fe6666666666666L    # 0.7

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->APP_RECOVERED_FACTOR:D

    .line 57
    .line 58
    const/16 p1, 0x14

    .line 59
    .line 60
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->MAX_DEC_COUNT:I

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;->CONTROL_PASSIVE:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mRestrictMode:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;

    .line 66
    .line 67
    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    .line 68
    .line 69
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->APP_RECOVERED_FACTOR:D

    .line 70
    .line 71
    const/16 p1, 0xa

    .line 72
    .line 73
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->MAX_DEC_COUNT:I

    .line 74
    .line 75
    :goto_1
    new-instance p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 78
    .line 79
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 83
    .line 84
    new-instance p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 85
    .line 86
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 87
    .line 88
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 92
    .line 93
    return-void
.end method

.method private decFunction()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "RxDec"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 13
    .line 14
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->MAX_DEC_COUNT:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    add-int/2addr v0, v2

    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 21
    .line 22
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 23
    .line 24
    if-le v0, v2, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 27
    .line 28
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 29
    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_MORE:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    long-to-double v0, v0

    .line 43
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmSmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    long-to-double v3, v3

    .line 50
    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    mul-double/2addr v3, v5

    .line 56
    cmpg-double v0, v0, v3

    .line 57
    .line 58
    if-gez v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mPastNrtAllocs:Ljava/util/LinkedList;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v1, 0x0

    .line 67
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/16 v0, 0x32

    .line 89
    .line 90
    if-gt v1, v0, :cond_2

    .line 91
    .line 92
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 93
    .line 94
    mul-int/lit16 v3, v0, 0x5dc

    .line 95
    .line 96
    sub-int/2addr v0, v2

    .line 97
    div-int/2addr v3, v0

    .line 98
    div-int/lit16 v3, v3, 0x3e8

    .line 99
    .line 100
    sub-int v0, v1, v3

    .line 101
    .line 102
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mNonSufferingAlloc:I

    .line 107
    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v2, "AWR="

    .line 115
    .line 116
    invoke-static {v1, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v2, "NSA="

    .line 132
    .line 133
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mNonSufferingAlloc:I

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v1, "Case1: decreasing trend since (EMA < SMA), mNonSufferingAlloc="

    .line 151
    .line 152
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mNonSufferingAlloc:I

    .line 156
    .line 157
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method private getRtTrafficTrend()Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$mgetRtTrafficTrend(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$mgetRtTrafficTrend(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;->STABLE_TREND:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;

    .line 14
    .line 15
    sget-object v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;->DECREASING_TREND:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;

    .line 16
    .line 17
    if-eq p0, v2, :cond_1

    .line 18
    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v1

    .line 23
    :cond_1
    :goto_0
    return-object v2
.end method

.method private stableFunction()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmRtSufferedCount(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x2

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 16
    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$misRtNotStable(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "RxInc"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p0, "Case2: RX increasing trend since (EMA > SMA)"

    .line 42
    .line 43
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$misRtNotStable(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 56
    .line 57
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string v0, "TxInc"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p0, "Case2: TX increasing trend since (EMA > SMA)"

    .line 67
    .line 68
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmEmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 79
    .line 80
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmSmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    cmp-long v0, v0, v2

    .line 85
    .line 86
    if-gez v0, :cond_7

    .line 87
    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$misActiveNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmEmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 104
    .line 105
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmSmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    cmp-long v0, v0, v2

    .line 110
    .line 111
    if-gez v0, :cond_6

    .line 112
    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$misActiveNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_5

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 123
    .line 124
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string v0, "StableSpecial"

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 135
    .line 136
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    const-string v0, "NConTxStable"

    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 147
    .line 148
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    const-string v0, "NConRxStable"

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :goto_2
    const-string p0, "Case3: stable state - SMA and EMA difference is in between the threshold"

    .line 158
    .line 159
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->init()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$minit(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$minit(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mPastNrtAllocs:Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected periodicFunction()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->updateCalibState()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mLastTime:J

    .line 11
    .line 12
    sub-long v3, v1, v3

    .line 13
    .line 14
    const-wide/16 v5, 0x8

    .line 15
    .line 16
    div-long/2addr v3, v5

    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    cmp-long v7, v3, v5

    .line 20
    .line 21
    if-gtz v7, :cond_0

    .line 22
    .line 23
    const-wide/16 v3, 0x7d

    .line 24
    .line 25
    :cond_0
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mLastTime:J

    .line 26
    .line 27
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedTotal(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 34
    .line 35
    invoke-static {v7, v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$mcalculateSpeeds(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;J)V

    .line 36
    .line 37
    .line 38
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 39
    .line 40
    invoke-static {v7, v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$mcalculateSpeeds(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;J)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 44
    .line 45
    sget-object v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 46
    .line 47
    const/16 v7, 0xa

    .line 48
    .line 49
    const/16 v8, 0x5a

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x5

    .line 53
    if-ne v3, v4, :cond_4

    .line 54
    .line 55
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMaxRssi:I

    .line 56
    .line 57
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMinRssi:I

    .line 58
    .line 59
    sub-int/2addr v3, v4

    .line 60
    if-lt v3, v7, :cond_1

    .line 61
    .line 62
    move v3, v8

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/16 v3, 0xb4

    .line 65
    .line 66
    :goto_0
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibrationTimer:I

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v4, "Set mCalibrationTimer="

    .line 71
    .line 72
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibrationTimer:I

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, " based on mMaxRssi="

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMaxRssi:I

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v4, " mMinRssi="

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMinRssi:I

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iput v10, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mStrictAllocTimer:I

    .line 108
    .line 109
    const/4 v3, 0x3

    .line 110
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRecalTimer:I

    .line 111
    .line 112
    iput v9, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mNonSufferingAlloc:I

    .line 113
    .line 114
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mPastNrtAllocs:Ljava/util/LinkedList;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 117
    .line 118
    .line 119
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 120
    .line 121
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmSmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    const-wide/16 v11, 0x80

    .line 126
    .line 127
    cmp-long v3, v3, v11

    .line 128
    .line 129
    if-ltz v3, :cond_2

    .line 130
    .line 131
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibrationTimer:I

    .line 132
    .line 133
    if-ne v3, v8, :cond_3

    .line 134
    .line 135
    :cond_2
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 136
    .line 137
    invoke-static {v3, v5, v6}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fputmMaxRtBitrate(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;J)V

    .line 138
    .line 139
    .line 140
    :cond_3
    iput v9, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 141
    .line 142
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mPrevRssi:I

    .line 143
    .line 144
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMaxRssi:I

    .line 145
    .line 146
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMinRssi:I

    .line 147
    .line 148
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->checkRssiFluctuation()V

    .line 149
    .line 150
    .line 151
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 152
    .line 153
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmMaxRtBitrate(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v3

    .line 157
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 158
    .line 159
    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v11

    .line 163
    cmp-long v3, v3, v11

    .line 164
    .line 165
    if-gez v3, :cond_5

    .line 166
    .line 167
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 168
    .line 169
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 170
    .line 171
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v11

    .line 175
    const-wide/16 v13, 0x5dc

    .line 176
    .line 177
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 178
    .line 179
    .line 180
    move-result-wide v11

    .line 181
    invoke-static {v3, v11, v12}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fputmMaxRtBitrate(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;J)V

    .line 182
    .line 183
    .line 184
    :cond_5
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 185
    .line 186
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$mcheckRtRecovered(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V

    .line 187
    .line 188
    .line 189
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 190
    .line 191
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$mupdateRtLastKSec(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V

    .line 192
    .line 193
    .line 194
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 195
    .line 196
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$mupdateRtLastKSec(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V

    .line 197
    .line 198
    .line 199
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 200
    .line 201
    sget-object v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 202
    .line 203
    const/4 v11, 0x1

    .line 204
    if-ne v3, v4, :cond_6

    .line 205
    .line 206
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 207
    .line 208
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedTotal(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v3

    .line 212
    sub-long/2addr v3, v1

    .line 213
    const-wide/16 v1, 0x7d0

    .line 214
    .line 215
    cmp-long v1, v3, v1

    .line 216
    .line 217
    if-lez v1, :cond_6

    .line 218
    .line 219
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRecalTimer:I

    .line 220
    .line 221
    add-int/2addr v1, v11

    .line 222
    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRecalTimer:I

    .line 227
    .line 228
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 229
    .line 230
    sget-object v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_STRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 231
    .line 232
    if-ne v1, v2, :cond_a

    .line 233
    .line 234
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 235
    .line 236
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmRtSufferedCount(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-gtz v1, :cond_8

    .line 241
    .line 242
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibrationTimer:I

    .line 243
    .line 244
    if-ne v1, v8, :cond_7

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_7
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mStrictAllocTimer:I

    .line 248
    .line 249
    sub-int/2addr v1, v11

    .line 250
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mStrictAllocTimer:I

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_8
    :goto_1
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mStrictAllocTimer:I

    .line 258
    .line 259
    const/16 v3, 0xf

    .line 260
    .line 261
    if-ge v1, v3, :cond_9

    .line 262
    .line 263
    add-int/2addr v1, v11

    .line 264
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mStrictAllocTimer:I

    .line 265
    .line 266
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 267
    .line 268
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v4, "Strict="

    .line 275
    .line 276
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mStrictAllocTimer:I

    .line 280
    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->estimateBottleneck()V

    .line 292
    .line 293
    .line 294
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 295
    .line 296
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 297
    .line 298
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    int-to-long v12, v1

    .line 303
    const-wide/16 v14, 0x3e8

    .line 304
    .line 305
    mul-long/2addr v12, v14

    .line 306
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 307
    .line 308
    .line 309
    move-result-wide v3

    .line 310
    const-wide/16 v12, 0x1

    .line 311
    .line 312
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 313
    .line 314
    .line 315
    move-result-wide v3

    .line 316
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 317
    .line 318
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 319
    .line 320
    sget-object v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 321
    .line 322
    if-ne v1, v3, :cond_b

    .line 323
    .line 324
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mPastNrtAllocs:Ljava/util/LinkedList;

    .line 325
    .line 326
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 327
    .line 328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mPastNrtAllocs:Ljava/util/LinkedList;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-le v1, v10, :cond_b

    .line 342
    .line 343
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mPastNrtAllocs:Ljava/util/LinkedList;

    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    :cond_b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 349
    .line 350
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 351
    .line 352
    .line 353
    move-result-wide v3

    .line 354
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 355
    .line 356
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 357
    .line 358
    .line 359
    move-result-wide v12

    .line 360
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 361
    .line 362
    .line 363
    move-result-wide v3

    .line 364
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->updateStats(J)V

    .line 365
    .line 366
    .line 367
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 368
    .line 369
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$mupdateSmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V

    .line 370
    .line 371
    .line 372
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 373
    .line 374
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$mupdateSmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 378
    .line 379
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$mupdateEmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V

    .line 380
    .line 381
    .line 382
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 383
    .line 384
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$mupdateEmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V

    .line 385
    .line 386
    .line 387
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 388
    .line 389
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-nez v1, :cond_f

    .line 394
    .line 395
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsBgSetToMax:Z

    .line 396
    .line 397
    if-nez v1, :cond_f

    .line 398
    .line 399
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->getActiveNrt()I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-lez v1, :cond_f

    .line 404
    .line 405
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 406
    .line 407
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 412
    .line 413
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    div-int/2addr v1, v7

    .line 422
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsRulesDeleted:Z

    .line 423
    .line 424
    if-eqz v3, :cond_e

    .line 425
    .line 426
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 427
    .line 428
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTimeLastNrtAllocCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)J

    .line 429
    .line 430
    .line 431
    move-result-wide v3

    .line 432
    cmp-long v3, v3, v5

    .line 433
    .line 434
    if-eqz v3, :cond_d

    .line 435
    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 437
    .line 438
    .line 439
    move-result-wide v3

    .line 440
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 441
    .line 442
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTimeLastNrtAllocCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)J

    .line 443
    .line 444
    .line 445
    move-result-wide v7

    .line 446
    sub-long/2addr v3, v7

    .line 447
    const-wide/16 v7, 0x7530

    .line 448
    .line 449
    cmp-long v3, v3, v7

    .line 450
    .line 451
    if-lez v3, :cond_c

    .line 452
    .line 453
    goto :goto_3

    .line 454
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    const-string v4, "Historical max value after download stopped in between APE Session="

    .line 457
    .line 458
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 462
    .line 463
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmLastNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    const-string v5, "Mbps"

    .line 468
    .line 469
    invoke-static {v5, v4, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    goto :goto_4

    .line 477
    :cond_d
    :goto_3
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 478
    .line 479
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 480
    .line 481
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 482
    .line 483
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmTimeLastNrtAllocCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 484
    .line 485
    .line 486
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 487
    .line 488
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmLastNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 489
    .line 490
    .line 491
    :goto_4
    iput-boolean v9, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsRulesDeleted:Z

    .line 492
    .line 493
    :cond_e
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 494
    .line 495
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmLastNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 508
    .line 509
    iput v9, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mNonSufferingAlloc:I

    .line 510
    .line 511
    move v1, v11

    .line 512
    goto :goto_5

    .line 513
    :cond_f
    move v1, v9

    .line 514
    :goto_5
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 515
    .line 516
    sget-object v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 517
    .line 518
    if-ne v3, v4, :cond_10

    .line 519
    .line 520
    move v1, v11

    .line 521
    :cond_10
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 522
    .line 523
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    if-nez v3, :cond_12

    .line 528
    .line 529
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsBgSetToMax:Z

    .line 530
    .line 531
    if-nez v3, :cond_12

    .line 532
    .line 533
    if-eqz v1, :cond_11

    .line 534
    .line 535
    goto :goto_6

    .line 536
    :cond_11
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 537
    .line 538
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    const-string v2, "NoneCase"

    .line 543
    .line 544
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_e

    .line 548
    .line 549
    :cond_12
    :goto_6
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 550
    .line 551
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$msetEmaThresholdFactor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V

    .line 552
    .line 553
    .line 554
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 555
    .line 556
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$msetEmaThresholdFactor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V

    .line 557
    .line 558
    .line 559
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->getRtTrafficTrend()Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    if-eqz v1, :cond_14

    .line 568
    .line 569
    if-eq v1, v11, :cond_13

    .line 570
    .line 571
    const-string v1, "Neither Dec nor Stable Trend..."

    .line 572
    .line 573
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    goto :goto_7

    .line 577
    :cond_13
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->stableFunction()V

    .line 578
    .line 579
    .line 580
    goto :goto_7

    .line 581
    :cond_14
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->decFunction()V

    .line 582
    .line 583
    .line 584
    :goto_7
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 585
    .line 586
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 587
    .line 588
    long-to-double v5, v5

    .line 589
    const-wide v7, 0x3fc999999999999aL    # 0.2

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    mul-double/2addr v5, v7

    .line 595
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    div-double/2addr v5, v7

    .line 601
    double-to-int v3, v5

    .line 602
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 607
    .line 608
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmStaticNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 609
    .line 610
    .line 611
    move-result v5

    .line 612
    if-eqz v5, :cond_15

    .line 613
    .line 614
    goto/16 :goto_d

    .line 615
    .line 616
    :cond_15
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 617
    .line 618
    if-eq v5, v2, :cond_1f

    .line 619
    .line 620
    if-ne v5, v4, :cond_16

    .line 621
    .line 622
    goto/16 :goto_b

    .line 623
    .line 624
    :cond_16
    sget-object v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_MORE:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 625
    .line 626
    if-eq v5, v2, :cond_18

    .line 627
    .line 628
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 629
    .line 630
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmRtSufferedCount(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)I

    .line 631
    .line 632
    .line 633
    move-result v2

    .line 634
    if-lez v2, :cond_17

    .line 635
    .line 636
    goto :goto_8

    .line 637
    :cond_17
    const/16 v2, 0x1770

    .line 638
    .line 639
    goto :goto_9

    .line 640
    :cond_18
    :goto_8
    const/16 v2, 0x2ee0

    .line 641
    .line 642
    :goto_9
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mRestrictMode:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;

    .line 643
    .line 644
    sget-object v5, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;->CONTROL_PASSIVE:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;

    .line 645
    .line 646
    if-ne v4, v5, :cond_19

    .line 647
    .line 648
    div-int/lit8 v2, v2, 0x2

    .line 649
    .line 650
    :cond_19
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 651
    .line 652
    int-to-long v12, v2

    .line 653
    sub-long/2addr v6, v12

    .line 654
    long-to-int v2, v6

    .line 655
    div-int/lit16 v2, v2, 0x3e8

    .line 656
    .line 657
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    iput v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 662
    .line 663
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mRestrictMode:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;

    .line 664
    .line 665
    sget-object v6, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;->CONTROL_AGGRESSIVE:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;

    .line 666
    .line 667
    if-ne v4, v6, :cond_1a

    .line 668
    .line 669
    iget v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 670
    .line 671
    if-nez v6, :cond_1b

    .line 672
    .line 673
    :cond_1a
    if-ne v4, v5, :cond_1c

    .line 674
    .line 675
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 676
    .line 677
    if-le v4, v11, :cond_1c

    .line 678
    .line 679
    :cond_1b
    div-int/lit8 v4, v2, 0x2

    .line 680
    .line 681
    iput v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 682
    .line 683
    :cond_1c
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 684
    .line 685
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmRtSufferedCount(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)I

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    if-lez v4, :cond_1e

    .line 690
    .line 691
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mNonSufferingAlloc:I

    .line 692
    .line 693
    if-eqz v4, :cond_1e

    .line 694
    .line 695
    iget v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 696
    .line 697
    if-le v5, v4, :cond_1e

    .line 698
    .line 699
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 700
    .line 701
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmRtSufferedCount(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)I

    .line 702
    .line 703
    .line 704
    move-result v4

    .line 705
    const/16 v5, 0x14

    .line 706
    .line 707
    if-ge v4, v5, :cond_1d

    .line 708
    .line 709
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mNonSufferingAlloc:I

    .line 710
    .line 711
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 716
    .line 717
    goto :goto_a

    .line 718
    :cond_1d
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mNonSufferingAlloc:I

    .line 719
    .line 720
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 721
    .line 722
    :cond_1e
    :goto_a
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 723
    .line 724
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 725
    .line 726
    .line 727
    move-result-object v3

    .line 728
    const-string v4, "NrtAlloc="

    .line 729
    .line 730
    const-string v5, "..."

    .line 731
    .line 732
    invoke-static {v4, v2, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 737
    .line 738
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    iget v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 749
    .line 750
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->smoothenNrtAlloc(II)I

    .line 751
    .line 752
    .line 753
    move-result v2

    .line 754
    iput v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 755
    .line 756
    goto :goto_d

    .line 757
    :cond_1f
    :goto_b
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 758
    .line 759
    div-long/2addr v2, v14

    .line 760
    const-wide/16 v4, 0x19

    .line 761
    .line 762
    cmp-long v4, v2, v4

    .line 763
    .line 764
    if-lez v4, :cond_20

    .line 765
    .line 766
    goto :goto_c

    .line 767
    :cond_20
    const-wide/16 v4, 0xf

    .line 768
    .line 769
    cmp-long v2, v2, v4

    .line 770
    .line 771
    if-lez v2, :cond_21

    .line 772
    .line 773
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mRestrictMode:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;

    .line 774
    .line 775
    sget-object v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;->CONTROL_PASSIVE:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ControlMode;

    .line 776
    .line 777
    if-ne v2, v3, :cond_21

    .line 778
    .line 779
    goto :goto_c

    .line 780
    :cond_21
    move v10, v11

    .line 781
    :goto_c
    iput v10, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 782
    .line 783
    :goto_d
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 784
    .line 785
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    const-string v4, "MaxAppRx="

    .line 792
    .line 793
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 797
    .line 798
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmMaxRtBitrate(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)J

    .line 799
    .line 800
    .line 801
    move-result-wide v4

    .line 802
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v3

    .line 809
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 813
    .line 814
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 815
    .line 816
    .line 817
    move-result-object v2

    .line 818
    new-instance v3, Ljava/lang/StringBuilder;

    .line 819
    .line 820
    const-string v4, "RtSuffCnt="

    .line 821
    .line 822
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 826
    .line 827
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmRtSufferedCount(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)I

    .line 828
    .line 829
    .line 830
    move-result v4

    .line 831
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v3

    .line 838
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 842
    .line 843
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    new-instance v3, Ljava/lang/StringBuilder;

    .line 848
    .line 849
    const-string v4, "ConRxGoodCnt="

    .line 850
    .line 851
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mVoipRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;

    .line 855
    .line 856
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->-$$Nest$fgetmConsecutiveAppRxGoodCount(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)I

    .line 857
    .line 858
    .line 859
    move-result v4

    .line 860
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->updateRules(I)V

    .line 871
    .line 872
    .line 873
    :goto_e
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->deleteRuleCondition()V

    .line 874
    .line 875
    .line 876
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 877
    .line 878
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 883
    .line 884
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 885
    .line 886
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->mDecCount:I

    .line 887
    .line 888
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->periodicLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;I)V

    .line 889
    .line 890
    .line 891
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 892
    .line 893
    add-int/2addr v1, v11

    .line 894
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 895
    .line 896
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 897
    .line 898
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 899
    .line 900
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 901
    .line 902
    .line 903
    move-result-wide v1

    .line 904
    long-to-int v11, v1

    .line 905
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 906
    .line 907
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 908
    .line 909
    .line 910
    move-result-wide v1

    .line 911
    long-to-int v12, v1

    .line 912
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 913
    .line 914
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 915
    .line 916
    .line 917
    move-result-wide v1

    .line 918
    long-to-int v13, v1

    .line 919
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 920
    .line 921
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 922
    .line 923
    .line 924
    move-result-wide v1

    .line 925
    long-to-int v14, v1

    .line 926
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 927
    .line 928
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 929
    .line 930
    .line 931
    move-result v1

    .line 932
    mul-int/lit16 v15, v1, 0x3e8

    .line 933
    .line 934
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 935
    .line 936
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 937
    .line 938
    .line 939
    move-result v1

    .line 940
    mul-int/lit16 v1, v1, 0x3e8

    .line 941
    .line 942
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 943
    .line 944
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 945
    .line 946
    .line 947
    move-result v17

    .line 948
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 949
    .line 950
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 951
    .line 952
    .line 953
    move-result v18

    .line 954
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 955
    .line 956
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 957
    .line 958
    .line 959
    move-result v2

    .line 960
    if-eqz v2, :cond_22

    .line 961
    .line 962
    iget v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 963
    .line 964
    mul-int/lit16 v9, v2, 0x3e8

    .line 965
    .line 966
    :cond_22
    move/from16 v19, v9

    .line 967
    .line 968
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 969
    .line 970
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedStreaming(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 971
    .line 972
    .line 973
    move-result-wide v2

    .line 974
    long-to-int v2, v2

    .line 975
    const/16 v20, 0x32

    .line 976
    .line 977
    move/from16 v16, v1

    .line 978
    .line 979
    move/from16 v21, v2

    .line 980
    .line 981
    invoke-virtual/range {v10 .. v21}, Lcom/samsung/android/server/wifi/SemApeService;->updateLiveSession(IIIIIIIIIII)V

    .line 982
    .line 983
    .line 984
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 985
    .line 986
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$mstorePrevBytes(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)V

    .line 987
    .line 988
    .line 989
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 990
    .line 991
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$mstorePrevBytes(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)V

    .line 992
    .line 993
    .line 994
    return-void
.end method

.method protected smoothenNrtAlloc(II)I
    .locals 4

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    if-le p2, p1, :cond_0

    .line 7
    .line 8
    sub-int v0, p2, p1

    .line 9
    .line 10
    int-to-double v0, v0

    .line 11
    const-wide v2, 0x3fd3333333333333L    # 0.3

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr v0, v2

    .line 17
    double-to-int v0, v0

    .line 18
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/2addr p0, p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ge p2, p1, :cond_1

    .line 25
    .line 26
    sub-int v0, p1, p2

    .line 27
    .line 28
    int-to-double v0, v0

    .line 29
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 30
    .line 31
    mul-double/2addr v0, v2

    .line 32
    double-to-int v0, v0

    .line 33
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    sub-int p0, p1, p0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p0, p1

    .line 41
    :goto_0
    const-string v0, "smoothenNrtAlloc: Prev="

    .line 42
    .line 43
    const-string v1, " New="

    .line 44
    .line 45
    const-string v2, " Smoothened="

    .line 46
    .line 47
    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return p0
.end method
