.class Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoipSpeedMetrics"
.end annotation


# static fields
.field private static final EMA_SMOOTHING_FACTOR:F = 0.33f


# instance fields
.field private mConsecutiveAppRxGoodCount:I

.field private mCumulativeSMA:J

.field private mEmaSpeed:J

.field private mEmaThresholdFactor:D

.field private final mLastSpeed:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxRtBitrate:J

.field private final mMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

.field private mRtSufferedCount:I

.field private mSmaSpeed:J

.field private final mSpeedRtLastKSec:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConsecutiveAppRxGoodCount(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mConsecutiveAppRxGoodCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaSpeed:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxRtBitrate(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mMaxRtBitrate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRtSufferedCount(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mRtSufferedCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSmaSpeed:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmMaxRtBitrate(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mMaxRtBitrate:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckRtRecovered(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->checkRtRecovered()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetRtTrafficTrend(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->getRtTrafficTrend()Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$minit(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->init()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misRtNotStable(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->isRtNotStable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$msetEmaThresholdFactor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->setEmaThresholdFactor()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->updateEmaSpeed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRtLastKSec(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->updateRtLastKSec()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSmaSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->updateSmaSpeed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mLastSpeed:Ljava/util/LinkedList;

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSpeedRtLastKSec:Ljava/util/LinkedList;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 21
    .line 22
    return-void
.end method

.method private checkRtRecovered()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    long-to-double v0, v0

    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;->-$$Nest$fgetAPP_RECOVERED_FACTOR(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;)D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mMaxRtBitrate:J

    .line 17
    .line 18
    long-to-double v4, v4

    .line 19
    mul-double/2addr v2, v4

    .line 20
    cmpl-double v0, v0, v2

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mConsecutiveAppRxGoodCount:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mConsecutiveAppRxGoodCount:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mConsecutiveAppRxGoodCount:I

    .line 33
    .line 34
    :goto_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mConsecutiveAppRxGoodCount:I

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mRtSufferedCount:I

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    iput v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mRtSufferedCount:I

    .line 43
    .line 44
    :cond_1
    const/4 v2, 0x3

    .line 45
    if-lt v0, v2, :cond_2

    .line 46
    .line 47
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mRtSufferedCount:I

    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method private getRtTrafficTrend()Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->isRtPoor()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->isRtNotStable()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "getRtTrafficTrend: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmIsRx(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const-string v3, "[RX]"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v3, "[TX]"

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, " delta="

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaSpeed:J

    .line 38
    .line 39
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSmaSpeed:J

    .line 40
    .line 41
    sub-long/2addr v3, v5

    .line 42
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, " isRtPoor="

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v3, " isRtNotStable="

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaSpeed:J

    .line 73
    .line 74
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSmaSpeed:J

    .line 75
    .line 76
    cmp-long p0, v0, v2

    .line 77
    .line 78
    if-gez p0, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;->STABLE_TREND:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_2
    :goto_1
    sget-object p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;->DECREASING_TREND:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$RtTrafficTrend;

    .line 85
    .line 86
    return-object p0
.end method

.method private init()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSmaSpeed:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaSpeed:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mCumulativeSMA:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mMaxRtBitrate:J

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mLastSpeed:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSpeedRtLastKSec:Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mRtSufferedCount:I

    .line 23
    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mConsecutiveAppRxGoodCount:I

    .line 25
    .line 26
    return-void
.end method

.method private isRtNotStable()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSmaSpeed:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaSpeed:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaSpeed:J

    .line 11
    .line 12
    long-to-double v2, v2

    .line 13
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaThresholdFactor:D

    .line 14
    .line 15
    mul-double/2addr v2, v4

    .line 16
    double-to-long v2, v2

    .line 17
    const-wide/16 v4, 0x2

    .line 18
    .line 19
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$misActiveNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    cmp-long p0, v0, v2

    .line 32
    .line 33
    if-lez p0, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method private isRtPoor()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSpeedRtLastKSec:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSpeedRtLastKSec:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSpeedRtLastKSec:Ljava/util/LinkedList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Long;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    cmp-long v5, v5, v2

    .line 46
    .line 47
    if-lez v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    const-wide v6, 0x3fe6666666666666L    # 0.7

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    long-to-double v2, v2

    .line 68
    mul-double/2addr v2, v6

    .line 69
    double-to-long v2, v2

    .line 70
    cmp-long p0, v4, v2

    .line 71
    .line 72
    if-gez p0, :cond_3

    .line 73
    .line 74
    const/4 p0, 0x1

    .line 75
    return p0

    .line 76
    :cond_3
    return v1
.end method

.method private setEmaThresholdFactor()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaSpeed:J

    .line 2
    .line 3
    const-wide/16 v2, 0x5dc

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    const-wide v0, 0x3f947ae140000000L    # 0.019999999552965164

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaThresholdFactor:D

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-wide/16 v2, 0x64

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    const-wide v0, 0x3fa47ae140000000L    # 0.03999999910593033

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaThresholdFactor:D

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-wide v0, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaThresholdFactor:D

    .line 37
    .line 38
    return-void
.end method

.method private updateEmaSpeed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 4
    .line 5
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaSpeed:J

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    long-to-float v0, v0

    .line 20
    const v1, 0x3ea8f5c3    # 0.33f

    .line 21
    .line 22
    .line 23
    mul-float/2addr v0, v1

    .line 24
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaSpeed:J

    .line 25
    .line 26
    long-to-float v1, v1

    .line 27
    const v2, 0x3f2b851e    # 0.66999996f

    .line 28
    .line 29
    .line 30
    mul-float/2addr v1, v2

    .line 31
    add-float/2addr v1, v0

    .line 32
    float-to-long v0, v1

    .line 33
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mEmaSpeed:J

    .line 34
    .line 35
    return-void
.end method

.method private updateRtLastKSec()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSpeedRtLastKSec:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSpeedRtLastKSec:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSpeedRtLastKSec:Ljava/util/LinkedList;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private updateSmaSpeed()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->this$1:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 4
    .line 5
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mCumulativeSMA:J

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mLastSpeed:Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mLastSpeed:Ljava/util/LinkedList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x5

    .line 25
    if-ge v0, v1, :cond_1

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mCumulativeSMA:J

    .line 28
    .line 29
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    add-long/2addr v1, v3

    .line 36
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mCumulativeSMA:J

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    int-to-long v3, v0

    .line 41
    div-long/2addr v1, v3

    .line 42
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSmaSpeed:J

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mLastSpeed:Ljava/util/LinkedList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mCumulativeSMA:J

    .line 58
    .line 59
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 60
    .line 61
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    sub-long/2addr v5, v1

    .line 66
    add-long/2addr v5, v3

    .line 67
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mCumulativeSMA:J

    .line 68
    .line 69
    int-to-long v0, v0

    .line 70
    div-long/2addr v5, v0

    .line 71
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mSmaSpeed:J

    .line 72
    .line 73
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mLastSpeed:Ljava/util/LinkedList;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor$VoipSpeedMetrics;->mMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 76
    .line 77
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v1

    .line 81
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    return-void
.end method
