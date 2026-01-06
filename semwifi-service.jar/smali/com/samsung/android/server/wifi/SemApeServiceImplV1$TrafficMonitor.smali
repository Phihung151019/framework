.class Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;
    }
.end annotation


# static fields
.field private static final BACKGROUND_THRESHOLD:I = 0x19000

.field private static final BACKGROUND_THRESHOLD_LARGE:I = 0x19000

.field private static final BANDWIDTH_DECREASING_FACTOR:I = 0x2

.field private static final BANDWIDTH_INCREASING_FACTOR:D = 1.5

.field private static final BG_BW_CHANGE_RATIO:D = 0.1

.field private static final BG_DECREASING_SMOOTHING_FACTOR:D = 0.5

.field private static final BG_INCREASING_SMOOTHING_FACTOR:D = 0.2

.field private static final BG_QUICK_CLIMBING_FACTOR:D = 0.7

.field private static final BG_UTILIZATION_FACTOR:D = 0.7

.field private static final EMA_SMOOTHING_FACTOR:I = 0x2

.field private static final HIGH_BITRATE_THRESHOLD:I = 0x5dc

.field private static final HIGH_BITRATE_THRESHOLD_FACTOR:F = 0.02f

.field private static final INITIAL_LINKSPEED_DIVIDE_FACTOR:I = 0xa

.field private static final INITIAL_MIN_BANDWIDTH:I = 0x5

.field private static final LOW_BITRATE_THRESHOLD_FACTOR:F = 0.1f

.field private static final MAX_CONTINUOUS_OUTLIER:I = 0x3

.field private static final MAX_INTERVAL_COUNT:I = 0x5

.field private static final MID_BITRATE_THRESHOLD:I = 0x64

.field private static final MID_BITRATE_THRESHOLD_FACTOR:F = 0.04f


# instance fields
.field private mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

.field private mAppMaxRxBitrate:J

.field private mAppMaxTxBitrate:J

.field private mContinuousOutlier:I

.field private mCountIntervalNoBgTraffic:I

.field private final mCumulativeSMA:[J

.field private final mEmaSpeed:[J

.field private mInterval:I

.field private mIsBgSetToMax:Z

.field private mIsInitialRoundDone:Z

.field private mIsRulesDeleted:Z

.field private final mLastRxSpeed:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTime:J

.field private final mLastTxSpeed:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLongEmaSpeed:[D

.field private mPrevSpeedRxUid:J

.field private mRunningSeconds:I

.field private final mShortEmaSpeed:[D

.field private final mSmaSpeed:[J

.field private final mStdDevWithEma:[J

.field private mThresholdRxBitRate:J

.field private mThresholdTxBitRate:J

.field private mTotalMaxBandwidth:J

.field private mTotalRxBytes:J

.field private mTotalSecondsOfApeEnabled:J

.field private mTotalSecondsOfBackgroundLimited:J

.field private mTotalTxBytes:J

.field private mUidRxBytes:J

.field private mUidTxBytes:J

.field private mUpperBoundBandwidth:I

.field private mUpperBoundGuardSeconds:I

.field private mUpperBoundReleasedSeconds:I

.field private mUpperBoundRemainingSeconds:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalSecondsOfApeEnabled(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalSecondsOfApeEnabled:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalSecondsOfBackgroundLimited(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalSecondsOfBackgroundLimited:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$minitVariables(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->initVariables()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mperiodicFunction(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->periodicFunction()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method synthetic constructor <init>(IILcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1, p4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 3
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/WifiUtils;->isGamePackage(Ljava/lang/String;)Z

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p1

    .line 4
    :goto_0
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;IZI)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    const-wide/16 p2, 0x0

    .line 5
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdRxBitRate:J

    .line 6
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdTxBitRate:J

    .line 7
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLastRxSpeed:Ljava/util/LinkedList;

    .line 8
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLastTxSpeed:Ljava/util/LinkedList;

    .line 9
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mInterval:I

    const/4 p2, 0x2

    .line 10
    new-array p3, p2, [J

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mSmaSpeed:[J

    .line 11
    new-array p3, p2, [J

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 12
    new-array p3, p2, [J

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mStdDevWithEma:[J

    .line 13
    new-array p3, p2, [D

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLongEmaSpeed:[D

    .line 14
    new-array p3, p2, [D

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mShortEmaSpeed:[D

    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsInitialRoundDone:Z

    .line 16
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mCumulativeSMA:[J

    return-void
.end method

.method private changeUid(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Change in UID from uid "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 9
    .line 10
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " to uid "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 39
    .line 40
    iget v3, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 41
    .line 42
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 43
    .line 44
    invoke-static {v3, v2, v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mdeleteRule(IILcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->initVariables()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private computeEmaSpeed(JJI)J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsInitialRoundDone:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    if-ne p5, v1, :cond_0

    .line 7
    .line 8
    return-wide p1

    .line 9
    :cond_0
    const/4 v0, 0x5

    .line 10
    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result p5

    .line 14
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsInitialRoundDone:Z

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, p5

    .line 20
    :goto_0
    sub-long/2addr p1, p3

    .line 21
    const-wide/16 v2, 0x2

    .line 22
    .line 23
    mul-long/2addr p1, v2

    .line 24
    add-int/2addr v0, v1

    .line 25
    int-to-long v0, v0

    .line 26
    div-long/2addr p1, v0

    .line 27
    add-long/2addr p1, p3

    .line 28
    return-wide p1
.end method

.method private computeMeanAbsDev(Ljava/util/LinkedList;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v2, 0x5

    .line 15
    if-gt p0, v2, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    sub-int/2addr p0, v2

    .line 24
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1, p0, v2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    sub-long/2addr v2, p2

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    add-long/2addr v0, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    int-to-long p0, p0

    .line 64
    div-long/2addr v0, p0

    .line 65
    return-wide v0
.end method

.method private computeSmaSpeed(JIIILjava/util/LinkedList;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsInitialRoundDone:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mCumulativeSMA:[J

    .line 6
    .line 7
    aget-wide v0, p0, p3

    .line 8
    .line 9
    add-long/2addr v0, p1

    .line 10
    aput-wide v0, p0, p3

    .line 11
    .line 12
    int-to-long p3, p4

    .line 13
    div-long/2addr v0, p3

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p6}, Ljava/util/LinkedList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    if-lez p4, :cond_1

    .line 20
    .line 21
    invoke-virtual {p6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    check-cast p4, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide/16 v0, 0x0

    .line 33
    .line 34
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mCumulativeSMA:[J

    .line 35
    .line 36
    aget-wide v2, p0, p3

    .line 37
    .line 38
    add-long/2addr v2, p1

    .line 39
    sub-long/2addr v2, v0

    .line 40
    aput-wide v2, p0, p3

    .line 41
    .line 42
    int-to-long p3, p5

    .line 43
    div-long v0, v2, p3

    .line 44
    .line 45
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p6, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-wide v0
.end method

.method private computeSmoothingSpeed(IID)D
    .locals 4

    .line 1
    int-to-double v0, p2

    .line 2
    mul-double/2addr v0, p3

    .line 3
    int-to-double p0, p1

    .line 4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5
    .line 6
    sub-double/2addr v2, p3

    .line 7
    mul-double/2addr v2, p0

    .line 8
    add-double/2addr v2, v0

    .line 9
    return-wide v2
.end method

.method private deleteRuleCondition(JJJJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsBgSetToMax:Z

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->isHavingBackgroundTraffic(JJJJ)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 p2, 0x0

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    iget p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mCountIntervalNoBgTraffic:I

    .line 29
    .line 30
    const/4 p3, 0x1

    .line 31
    add-int/2addr p1, p3

    .line 32
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mCountIntervalNoBgTraffic:I

    .line 33
    .line 34
    const/4 p4, 0x5

    .line 35
    if-ne p1, p4, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const-string p1, "For continuous 5, the background traffic is below 100Kbps, so will delete the rule"

    .line 46
    .line 47
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    iget-object p5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 57
    .line 58
    iget p6, p5, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 59
    .line 60
    iget p5, p5, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 61
    .line 62
    invoke-static {p6, p5, p1, p4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mdeleteRule(IILcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 66
    .line 67
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string p1, "For continuous 5, the background traffic is below 100Kbps, but rule has been already deleted"

    .line 72
    .line 73
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsBgSetToMax:Z

    .line 77
    .line 78
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsRulesDeleted:Z

    .line 79
    .line 80
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mCountIntervalNoBgTraffic:I

    .line 81
    .line 82
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 85
    .line 86
    iget p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 87
    .line 88
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 89
    .line 90
    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->storeBgBandwidth(II)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mCountIntervalNoBgTraffic:I

    .line 95
    .line 96
    :cond_3
    return-void
.end method

.method private initVariables()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLastRxSpeed:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLastTxSpeed:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mInterval:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mSmaSpeed:[J

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    aput-wide v3, v1, v2

    .line 20
    .line 21
    aput-wide v3, v1, v0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 24
    .line 25
    aput-wide v3, v1, v2

    .line 26
    .line 27
    aput-wide v3, v1, v0

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsInitialRoundDone:Z

    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mCumulativeSMA:[J

    .line 32
    .line 33
    aput-wide v3, v1, v2

    .line 34
    .line 35
    aput-wide v3, v1, v0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mStdDevWithEma:[J

    .line 38
    .line 39
    aput-wide v3, v1, v2

    .line 40
    .line 41
    aput-wide v3, v1, v0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLongEmaSpeed:[D

    .line 44
    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    aput-wide v5, v1, v2

    .line 48
    .line 49
    aput-wide v5, v1, v0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mShortEmaSpeed:[D

    .line 52
    .line 53
    aput-wide v5, v1, v2

    .line 54
    .line 55
    aput-wide v5, v1, v0

    .line 56
    .line 57
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mRunningSeconds:I

    .line 58
    .line 59
    iput v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundBandwidth:I

    .line 60
    .line 61
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 62
    .line 63
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundGuardSeconds:I

    .line 64
    .line 65
    const/16 v1, 0xa

    .line 66
    .line 67
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundReleasedSeconds:I

    .line 68
    .line 69
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mPrevSpeedRxUid:J

    .line 70
    .line 71
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 72
    .line 73
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v5}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalTxBytes:J

    .line 82
    .line 83
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 84
    .line 85
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v5}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalRxBytes:J

    .line 94
    .line 95
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 96
    .line 97
    iget v5, v5, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 98
    .line 99
    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidTxBytes:J

    .line 104
    .line 105
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 106
    .line 107
    iget v5, v5, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 108
    .line 109
    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidRxBytes:J

    .line 114
    .line 115
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mCountIntervalNoBgTraffic:I

    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v5

    .line 121
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLastTime:J

    .line 122
    .line 123
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppMaxRxBitrate:J

    .line 124
    .line 125
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppMaxTxBitrate:J

    .line 126
    .line 127
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 128
    .line 129
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsRulesDeleted:Z

    .line 130
    .line 131
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsBgSetToMax:Z

    .line 132
    .line 133
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mContinuousOutlier:I

    .line 134
    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    cmp-long v0, v5, v3

    .line 142
    .line 143
    if-eqz v0, :cond_1

    .line 144
    .line 145
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmLatestUid(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 152
    .line 153
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 154
    .line 155
    if-ne v0, v3, :cond_1

    .line 156
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v3

    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v5

    .line 167
    sub-long/2addr v3, v5

    .line 168
    const-wide/16 v5, 0x7530

    .line 169
    .line 170
    cmp-long v0, v3, v5

    .line 171
    .line 172
    if-lez v0, :cond_0

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v3, "Historical background bandwidth value "

    .line 178
    .line 179
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 183
    .line 184
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 205
    .line 206
    const/4 v3, 0x5

    .line 207
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 211
    .line 212
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmLatestUid(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V

    .line 213
    .line 214
    .line 215
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 216
    .line 217
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 222
    .line 223
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    div-int/2addr v0, v1

    .line 232
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 233
    .line 234
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 235
    .line 236
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    iput v0, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 249
    .line 250
    iput v0, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 251
    .line 252
    iput v0, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 253
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v1, "initVariables: Bandwidth bg="

    .line 257
    .line 258
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 262
    .line 263
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 264
    .line 265
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    return-void
.end method

.method private isHavingBackgroundTraffic(JJJJ)I
    .locals 0

    .line 1
    sub-long/2addr p1, p5

    .line 2
    sub-long/2addr p3, p7

    .line 3
    const-wide/32 p5, 0x19000

    .line 4
    .line 5
    .line 6
    cmp-long p0, p1, p5

    .line 7
    .line 8
    if-lez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    cmp-long p1, p3, p5

    .line 14
    .line 15
    if-lez p1, :cond_1

    .line 16
    .line 17
    add-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    :cond_1
    return p0
.end method

.method private periodicFunction()V
    .locals 80

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v9

    .line 13
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v11

    .line 23
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 24
    .line 25
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 26
    .line 27
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v13

    .line 31
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 32
    .line 33
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 34
    .line 35
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v7

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLastTime:J

    .line 44
    .line 45
    sub-long v3, v1, v3

    .line 46
    .line 47
    const-wide/16 v5, 0x80

    .line 48
    .line 49
    mul-long/2addr v3, v5

    .line 50
    const-wide/16 v15, 0x3e8

    .line 51
    .line 52
    div-long/2addr v3, v15

    .line 53
    move-wide v15, v3

    .line 54
    const-wide/16 v3, 0x0

    .line 55
    .line 56
    cmp-long v17, v15, v3

    .line 57
    .line 58
    if-nez v17, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-wide v5, v15

    .line 62
    :goto_0
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLastTime:J

    .line 63
    .line 64
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalRxBytes:J

    .line 65
    .line 66
    sub-long v1, v9, v1

    .line 67
    .line 68
    div-long/2addr v1, v5

    .line 69
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalTxBytes:J

    .line 70
    .line 71
    sub-long v3, v11, v3

    .line 72
    .line 73
    div-long/2addr v3, v5

    .line 74
    move-wide/from16 v17, v1

    .line 75
    .line 76
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidRxBytes:J

    .line 77
    .line 78
    sub-long v1, v13, v1

    .line 79
    .line 80
    div-long/2addr v1, v5

    .line 81
    move-wide/from16 v19, v3

    .line 82
    .line 83
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidTxBytes:J

    .line 84
    .line 85
    sub-long v3, v7, v3

    .line 86
    .line 87
    div-long v21, v3, v5

    .line 88
    .line 89
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 90
    .line 91
    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->isGameApp:Z

    .line 92
    .line 93
    const-wide/high16 v23, 0x3ff8000000000000L    # 1.5

    .line 94
    .line 95
    const/4 v15, 0x0

    .line 96
    if-eqz v3, :cond_1

    .line 97
    .line 98
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mInterval:I

    .line 99
    .line 100
    if-nez v3, :cond_2

    .line 101
    .line 102
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mPrevSpeedRxUid:J

    .line 103
    .line 104
    :cond_1
    move-wide/from16 v29, v7

    .line 105
    .line 106
    const/4 v3, 0x1

    .line 107
    const-wide/16 v27, 0x2

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    const/4 v3, 0x1

    .line 111
    const-wide/16 v27, 0x2

    .line 112
    .line 113
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mPrevSpeedRxUid:J

    .line 114
    .line 115
    cmp-long v6, v4, v27

    .line 116
    .line 117
    move-wide/from16 v29, v7

    .line 118
    .line 119
    if-lez v6, :cond_3

    .line 120
    .line 121
    long-to-double v6, v1

    .line 122
    long-to-double v4, v4

    .line 123
    mul-double v4, v4, v23

    .line 124
    .line 125
    cmpl-double v4, v6, v4

    .line 126
    .line 127
    if-lez v4, :cond_3

    .line 128
    .line 129
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 130
    .line 131
    aget-wide v4, v4, v15

    .line 132
    .line 133
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mStdDevWithEma:[J

    .line 134
    .line 135
    aget-wide v6, v6, v15

    .line 136
    .line 137
    const-wide/16 v31, 0x3

    .line 138
    .line 139
    mul-long v6, v6, v31

    .line 140
    .line 141
    add-long/2addr v6, v4

    .line 142
    cmp-long v4, v1, v6

    .line 143
    .line 144
    if-lez v4, :cond_3

    .line 145
    .line 146
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mContinuousOutlier:I

    .line 147
    .line 148
    const/4 v5, 0x3

    .line 149
    if-ge v4, v5, :cond_3

    .line 150
    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v5, "Remove temporal outlier: speedRxUid="

    .line 154
    .line 155
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v5, " mPrevSpeedRxUid="

    .line 162
    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mPrevSpeedRxUid:J

    .line 167
    .line 168
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v5, " mContinuousOutlier="

    .line 172
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mContinuousOutlier:I

    .line 177
    .line 178
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mPrevSpeedRxUid:J

    .line 189
    .line 190
    iget v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mContinuousOutlier:I

    .line 191
    .line 192
    add-int/2addr v6, v3

    .line 193
    iput v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mContinuousOutlier:I

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_3
    iput v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mContinuousOutlier:I

    .line 197
    .line 198
    move-wide v4, v1

    .line 199
    :goto_1
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mPrevSpeedRxUid:J

    .line 200
    .line 201
    move-wide v1, v4

    .line 202
    :goto_2
    sub-long v7, v17, v1

    .line 203
    .line 204
    sub-long v4, v19, v21

    .line 205
    .line 206
    move-wide/from16 v31, v13

    .line 207
    .line 208
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 209
    .line 210
    .line 211
    move-result-wide v13

    .line 212
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mSmaSpeed:[J

    .line 213
    .line 214
    move/from16 v16, v3

    .line 215
    .line 216
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mInterval:I

    .line 217
    .line 218
    add-int/lit8 v3, v3, 0x1

    .line 219
    .line 220
    move-object/from16 v33, v6

    .line 221
    .line 222
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLastRxSpeed:Ljava/util/LinkedList;

    .line 223
    .line 224
    move-wide/from16 v34, v4

    .line 225
    .line 226
    move v4, v3

    .line 227
    const/4 v3, 0x0

    .line 228
    const/4 v5, 0x5

    .line 229
    move/from16 v36, v15

    .line 230
    .line 231
    move/from16 v15, v16

    .line 232
    .line 233
    move-wide/from16 v39, v34

    .line 234
    .line 235
    const-wide/16 v25, 0x0

    .line 236
    .line 237
    move-wide/from16 v78, v17

    .line 238
    .line 239
    move-wide/from16 v16, v9

    .line 240
    .line 241
    move-wide/from16 v9, v78

    .line 242
    .line 243
    move-wide/from16 v78, v19

    .line 244
    .line 245
    move-wide/from16 v18, v11

    .line 246
    .line 247
    move-wide/from16 v11, v78

    .line 248
    .line 249
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->computeSmaSpeed(JIIILjava/util/LinkedList;)J

    .line 250
    .line 251
    .line 252
    move-result-wide v3

    .line 253
    move-wide/from16 v27, v1

    .line 254
    .line 255
    aput-wide v3, v33, v36

    .line 256
    .line 257
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mSmaSpeed:[J

    .line 258
    .line 259
    iget v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mInterval:I

    .line 260
    .line 261
    add-int/lit8 v4, v2, 0x1

    .line 262
    .line 263
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLastTxSpeed:Ljava/util/LinkedList;

    .line 264
    .line 265
    const/4 v3, 0x1

    .line 266
    move-object/from16 v20, v1

    .line 267
    .line 268
    move-wide/from16 v1, v21

    .line 269
    .line 270
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->computeSmaSpeed(JIIILjava/util/LinkedList;)J

    .line 271
    .line 272
    .line 273
    move-result-wide v3

    .line 274
    aput-wide v3, v20, v15

    .line 275
    .line 276
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 277
    .line 278
    aget-wide v3, v6, v36

    .line 279
    .line 280
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mInterval:I

    .line 281
    .line 282
    add-int/lit8 v5, v1, 0x1

    .line 283
    .line 284
    move-wide/from16 v1, v27

    .line 285
    .line 286
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->computeEmaSpeed(JJI)J

    .line 287
    .line 288
    .line 289
    move-result-wide v3

    .line 290
    aput-wide v3, v6, v36

    .line 291
    .line 292
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 293
    .line 294
    aget-wide v3, v6, v15

    .line 295
    .line 296
    iget v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mInterval:I

    .line 297
    .line 298
    add-int/2addr v5, v15

    .line 299
    move-wide/from16 v27, v7

    .line 300
    .line 301
    move-object v8, v6

    .line 302
    move-wide v6, v1

    .line 303
    move-wide/from16 v1, v21

    .line 304
    .line 305
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->computeEmaSpeed(JJI)J

    .line 306
    .line 307
    .line 308
    move-result-wide v3

    .line 309
    aput-wide v3, v8, v15

    .line 310
    .line 311
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mRunningSeconds:I

    .line 312
    .line 313
    add-int/2addr v3, v15

    .line 314
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mRunningSeconds:I

    .line 315
    .line 316
    const/16 v4, 0xf

    .line 317
    .line 318
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    add-int/2addr v3, v15

    .line 323
    int-to-double v4, v3

    .line 324
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    .line 325
    .line 326
    div-double v3, v20, v4

    .line 327
    .line 328
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLongEmaSpeed:[D

    .line 329
    .line 330
    move-wide/from16 v33, v9

    .line 331
    .line 332
    long-to-double v8, v6

    .line 333
    mul-double v41, v8, v3

    .line 334
    .line 335
    aget-wide v43, v5, v36

    .line 336
    .line 337
    move-wide/from16 v45, v11

    .line 338
    .line 339
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 340
    .line 341
    sub-double v47, v10, v3

    .line 342
    .line 343
    mul-double v43, v43, v47

    .line 344
    .line 345
    add-double v43, v43, v41

    .line 346
    .line 347
    aput-wide v43, v5, v36

    .line 348
    .line 349
    move-wide/from16 v41, v10

    .line 350
    .line 351
    long-to-double v10, v1

    .line 352
    mul-double/2addr v3, v10

    .line 353
    aget-wide v43, v5, v15

    .line 354
    .line 355
    mul-double v43, v43, v47

    .line 356
    .line 357
    add-double v43, v43, v3

    .line 358
    .line 359
    aput-wide v43, v5, v15

    .line 360
    .line 361
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mRunningSeconds:I

    .line 362
    .line 363
    const/4 v4, 0x5

    .line 364
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    add-int/2addr v3, v15

    .line 369
    int-to-double v4, v3

    .line 370
    div-double v20, v20, v4

    .line 371
    .line 372
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mShortEmaSpeed:[D

    .line 373
    .line 374
    mul-double v8, v8, v20

    .line 375
    .line 376
    aget-wide v4, v3, v36

    .line 377
    .line 378
    sub-double v43, v41, v20

    .line 379
    .line 380
    mul-double v4, v4, v43

    .line 381
    .line 382
    add-double/2addr v4, v8

    .line 383
    aput-wide v4, v3, v36

    .line 384
    .line 385
    mul-double v10, v10, v20

    .line 386
    .line 387
    aget-wide v4, v3, v15

    .line 388
    .line 389
    mul-double v4, v4, v43

    .line 390
    .line 391
    add-double/2addr v4, v10

    .line 392
    aput-wide v4, v3, v15

    .line 393
    .line 394
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mStdDevWithEma:[J

    .line 395
    .line 396
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLastRxSpeed:Ljava/util/LinkedList;

    .line 397
    .line 398
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 399
    .line 400
    aget-wide v8, v5, v36

    .line 401
    .line 402
    invoke-direct {v0, v4, v8, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->computeMeanAbsDev(Ljava/util/LinkedList;J)J

    .line 403
    .line 404
    .line 405
    move-result-wide v4

    .line 406
    aput-wide v4, v3, v36

    .line 407
    .line 408
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mStdDevWithEma:[J

    .line 409
    .line 410
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLastTxSpeed:Ljava/util/LinkedList;

    .line 411
    .line 412
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 413
    .line 414
    aget-wide v8, v5, v15

    .line 415
    .line 416
    invoke-direct {v0, v4, v8, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->computeMeanAbsDev(Ljava/util/LinkedList;J)J

    .line 417
    .line 418
    .line 419
    move-result-wide v4

    .line 420
    aput-wide v4, v3, v15

    .line 421
    .line 422
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppMaxRxBitrate:J

    .line 423
    .line 424
    cmp-long v3, v6, v3

    .line 425
    .line 426
    if-lez v3, :cond_4

    .line 427
    .line 428
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppMaxRxBitrate:J

    .line 429
    .line 430
    :cond_4
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppMaxTxBitrate:J

    .line 431
    .line 432
    cmp-long v3, v1, v3

    .line 433
    .line 434
    if-lez v3, :cond_5

    .line 435
    .line 436
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppMaxTxBitrate:J

    .line 437
    .line 438
    :cond_5
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 439
    .line 440
    cmp-long v3, v3, v33

    .line 441
    .line 442
    move-wide/from16 v9, v33

    .line 443
    .line 444
    if-gez v3, :cond_6

    .line 445
    .line 446
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 447
    .line 448
    :cond_6
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 449
    .line 450
    cmp-long v3, v3, v45

    .line 451
    .line 452
    if-gez v3, :cond_7

    .line 453
    .line 454
    move-wide/from16 v3, v45

    .line 455
    .line 456
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 457
    .line 458
    goto :goto_3

    .line 459
    :cond_7
    move-wide/from16 v3, v45

    .line 460
    .line 461
    :goto_3
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 462
    .line 463
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 468
    .line 469
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 470
    .line 471
    .line 472
    move-result v8

    .line 473
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    const/16 v11, 0x32

    .line 478
    .line 479
    if-le v5, v11, :cond_8

    .line 480
    .line 481
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 482
    .line 483
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 484
    .line 485
    .line 486
    move-result v5

    .line 487
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 488
    .line 489
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 490
    .line 491
    .line 492
    move-result v8

    .line 493
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    :cond_8
    iget v8, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 498
    .line 499
    if-lez v8, :cond_9

    .line 500
    .line 501
    iget v8, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundBandwidth:I

    .line 502
    .line 503
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    :cond_9
    invoke-direct {v0, v13, v14}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->updateStats(J)V

    .line 508
    .line 509
    .line 510
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 511
    .line 512
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 513
    .line 514
    .line 515
    move-result v8

    .line 516
    const-string v12, ")"

    .line 517
    .line 518
    if-nez v8, :cond_e

    .line 519
    .line 520
    iget-boolean v8, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsBgSetToMax:Z

    .line 521
    .line 522
    if-nez v8, :cond_e

    .line 523
    .line 524
    move-object/from16 v33, v12

    .line 525
    .line 526
    iget-wide v11, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalRxBytes:J

    .line 527
    .line 528
    sub-long v11, v16, v11

    .line 529
    .line 530
    move-wide/from16 v34, v1

    .line 531
    .line 532
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalTxBytes:J

    .line 533
    .line 534
    sub-long v1, v18, v1

    .line 535
    .line 536
    move-wide/from16 v43, v1

    .line 537
    .line 538
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidRxBytes:J

    .line 539
    .line 540
    sub-long v1, v31, v1

    .line 541
    .line 542
    move-wide/from16 v45, v1

    .line 543
    .line 544
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidTxBytes:J

    .line 545
    .line 546
    sub-long v1, v29, v1

    .line 547
    .line 548
    move-wide/from16 v78, v6

    .line 549
    .line 550
    move-wide v7, v1

    .line 551
    move-wide v1, v11

    .line 552
    move-wide/from16 v11, v29

    .line 553
    .line 554
    move-wide/from16 v29, v9

    .line 555
    .line 556
    move-wide/from16 v9, v27

    .line 557
    .line 558
    move-wide/from16 v27, v78

    .line 559
    .line 560
    move/from16 v51, v5

    .line 561
    .line 562
    move-wide/from16 v5, v45

    .line 563
    .line 564
    move-wide/from16 v45, v3

    .line 565
    .line 566
    move-wide/from16 v3, v43

    .line 567
    .line 568
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->isHavingBackgroundTraffic(JJJJ)I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-lez v1, :cond_d

    .line 573
    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string v2, "Rule will be applied since the background traffic exists and delta (Bytes: Rx="

    .line 577
    .line 578
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalRxBytes:J

    .line 582
    .line 583
    sub-long v2, v16, v2

    .line 584
    .line 585
    sub-long v2, v2, v31

    .line 586
    .line 587
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidRxBytes:J

    .line 588
    .line 589
    add-long/2addr v2, v4

    .line 590
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v2, " Tx="

    .line 594
    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalTxBytes:J

    .line 599
    .line 600
    sub-long v2, v18, v2

    .line 601
    .line 602
    sub-long/2addr v2, v11

    .line 603
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidTxBytes:J

    .line 604
    .line 605
    add-long/2addr v2, v4

    .line 606
    move-object/from16 v4, v33

    .line 607
    .line 608
    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 616
    .line 617
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 618
    .line 619
    .line 620
    move-result v1

    .line 621
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 622
    .line 623
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    div-int/lit8 v1, v1, 0xa

    .line 632
    .line 633
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsRulesDeleted:Z

    .line 634
    .line 635
    if-eqz v2, :cond_c

    .line 636
    .line 637
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 638
    .line 639
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)J

    .line 640
    .line 641
    .line 642
    move-result-wide v2

    .line 643
    cmp-long v2, v2, v25

    .line 644
    .line 645
    if-eqz v2, :cond_a

    .line 646
    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 648
    .line 649
    .line 650
    move-result-wide v2

    .line 651
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 652
    .line 653
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)J

    .line 654
    .line 655
    .line 656
    move-result-wide v5

    .line 657
    sub-long/2addr v2, v5

    .line 658
    const-wide/16 v5, 0x7530

    .line 659
    .line 660
    cmp-long v2, v2, v5

    .line 661
    .line 662
    if-lez v2, :cond_b

    .line 663
    .line 664
    :cond_a
    move-wide/from16 v2, v25

    .line 665
    .line 666
    goto :goto_5

    .line 667
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    const-string v3, "Historical max value after download stopped in between APE Session="

    .line 670
    .line 671
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 675
    .line 676
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 677
    .line 678
    .line 679
    move-result v3

    .line 680
    const-string v5, "Mbps"

    .line 681
    .line 682
    invoke-static {v5, v3, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    :goto_4
    move/from16 v2, v36

    .line 690
    .line 691
    goto :goto_6

    .line 692
    :goto_5
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 693
    .line 694
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppMaxTxBitrate:J

    .line 695
    .line 696
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppMaxRxBitrate:J

    .line 697
    .line 698
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 699
    .line 700
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V

    .line 701
    .line 702
    .line 703
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 704
    .line 705
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V

    .line 706
    .line 707
    .line 708
    goto :goto_4

    .line 709
    :goto_6
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsRulesDeleted:Z

    .line 710
    .line 711
    :cond_c
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 712
    .line 713
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 714
    .line 715
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 724
    .line 725
    .line 726
    move-result v1

    .line 727
    iput v1, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 728
    .line 729
    iput v1, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 730
    .line 731
    iput v1, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 732
    .line 733
    move/from16 v20, v15

    .line 734
    .line 735
    goto :goto_8

    .line 736
    :cond_d
    move-object/from16 v4, v33

    .line 737
    .line 738
    goto :goto_7

    .line 739
    :cond_e
    move-wide/from16 v34, v1

    .line 740
    .line 741
    move-wide/from16 v45, v3

    .line 742
    .line 743
    move/from16 v51, v5

    .line 744
    .line 745
    move-object v4, v12

    .line 746
    move-wide/from16 v11, v29

    .line 747
    .line 748
    move-wide/from16 v29, v9

    .line 749
    .line 750
    move-wide/from16 v9, v27

    .line 751
    .line 752
    move-wide/from16 v27, v6

    .line 753
    .line 754
    :goto_7
    const/16 v20, 0x0

    .line 755
    .line 756
    :goto_8
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsInitialRoundDone:Z

    .line 757
    .line 758
    if-nez v1, :cond_f

    .line 759
    .line 760
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mInterval:I

    .line 761
    .line 762
    add-int/2addr v1, v15

    .line 763
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mInterval:I

    .line 764
    .line 765
    const/4 v2, 0x5

    .line 766
    if-ne v1, v2, :cond_f

    .line 767
    .line 768
    iput-boolean v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsInitialRoundDone:Z

    .line 769
    .line 770
    :cond_f
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsInitialRoundDone:Z

    .line 771
    .line 772
    if-nez v1, :cond_11

    .line 773
    .line 774
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 775
    .line 776
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 777
    .line 778
    if-ne v1, v15, :cond_11

    .line 779
    .line 780
    const-string v1, "Waiting for the App traffic to be stabilized"

    .line 781
    .line 782
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    :cond_10
    move v3, v15

    .line 786
    move-object v15, v4

    .line 787
    goto/16 :goto_15

    .line 788
    .line 789
    :cond_11
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 790
    .line 791
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 792
    .line 793
    .line 794
    move-result v1

    .line 795
    if-nez v1, :cond_12

    .line 796
    .line 797
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsBgSetToMax:Z

    .line 798
    .line 799
    if-eqz v1, :cond_10

    .line 800
    .line 801
    :cond_12
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 802
    .line 803
    const/16 v36, 0x0

    .line 804
    .line 805
    aget-wide v2, v1, v36

    .line 806
    .line 807
    const-wide/16 v5, 0x64

    .line 808
    .line 809
    cmp-long v7, v2, v5

    .line 810
    .line 811
    const-wide v25, 0x3f947ae140000000L    # 0.019999999552965164

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    const-wide v43, 0x3fa47ae140000000L    # 0.03999999910593033

    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    const-wide v47, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    const-wide/16 v52, 0x5dc

    .line 827
    .line 828
    if-lez v7, :cond_13

    .line 829
    .line 830
    cmp-long v7, v2, v52

    .line 831
    .line 832
    if-gtz v7, :cond_13

    .line 833
    .line 834
    move-wide/from16 v7, v43

    .line 835
    .line 836
    goto :goto_9

    .line 837
    :cond_13
    cmp-long v7, v2, v52

    .line 838
    .line 839
    if-lez v7, :cond_14

    .line 840
    .line 841
    move-wide/from16 v7, v25

    .line 842
    .line 843
    goto :goto_9

    .line 844
    :cond_14
    move-wide/from16 v7, v47

    .line 845
    .line 846
    :goto_9
    aget-wide v54, v1, v15

    .line 847
    .line 848
    cmp-long v1, v54, v5

    .line 849
    .line 850
    if-lez v1, :cond_15

    .line 851
    .line 852
    cmp-long v1, v54, v52

    .line 853
    .line 854
    if-gtz v1, :cond_15

    .line 855
    .line 856
    move-wide/from16 v25, v43

    .line 857
    .line 858
    goto :goto_a

    .line 859
    :cond_15
    cmp-long v1, v54, v52

    .line 860
    .line 861
    if-lez v1, :cond_16

    .line 862
    .line 863
    goto :goto_a

    .line 864
    :cond_16
    move-wide/from16 v25, v47

    .line 865
    .line 866
    :goto_a
    long-to-double v1, v2

    .line 867
    mul-double/2addr v1, v7

    .line 868
    double-to-long v1, v1

    .line 869
    const-wide/16 v5, 0x2

    .line 870
    .line 871
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 872
    .line 873
    .line 874
    move-result-wide v1

    .line 875
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdRxBitRate:J

    .line 876
    .line 877
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 878
    .line 879
    aget-wide v1, v1, v15

    .line 880
    .line 881
    long-to-double v1, v1

    .line 882
    mul-double v1, v1, v25

    .line 883
    .line 884
    double-to-long v1, v1

    .line 885
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 886
    .line 887
    .line 888
    move-result-wide v1

    .line 889
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdTxBitRate:J

    .line 890
    .line 891
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mSmaSpeed:[J

    .line 892
    .line 893
    const/16 v36, 0x0

    .line 894
    .line 895
    aget-wide v1, v1, v36

    .line 896
    .line 897
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 898
    .line 899
    aget-wide v5, v3, v36

    .line 900
    .line 901
    sub-long/2addr v1, v5

    .line 902
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 903
    .line 904
    .line 905
    move-result-wide v1

    .line 906
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mSmaSpeed:[J

    .line 907
    .line 908
    aget-wide v5, v3, v15

    .line 909
    .line 910
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 911
    .line 912
    aget-wide v7, v3, v15

    .line 913
    .line 914
    sub-long/2addr v5, v7

    .line 915
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 916
    .line 917
    .line 918
    move-result-wide v5

    .line 919
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalRxBytes:J

    .line 920
    .line 921
    sub-long v7, v16, v7

    .line 922
    .line 923
    sub-long v7, v7, v31

    .line 924
    .line 925
    move-object/from16 v33, v4

    .line 926
    .line 927
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidRxBytes:J

    .line 928
    .line 929
    add-long/2addr v7, v3

    .line 930
    const-wide/16 v3, 0x1

    .line 931
    .line 932
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 933
    .line 934
    .line 935
    move-result-wide v7

    .line 936
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalTxBytes:J

    .line 937
    .line 938
    sub-long v3, v18, v3

    .line 939
    .line 940
    sub-long/2addr v3, v11

    .line 941
    move-wide/from16 v37, v3

    .line 942
    .line 943
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidTxBytes:J

    .line 944
    .line 945
    add-long v3, v37, v3

    .line 946
    .line 947
    move-wide/from16 v37, v7

    .line 948
    .line 949
    const-wide/16 v7, 0x1

    .line 950
    .line 951
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 952
    .line 953
    .line 954
    move-result-wide v3

    .line 955
    const-wide/32 v25, 0x19000

    .line 956
    .line 957
    .line 958
    cmp-long v22, v37, v25

    .line 959
    .line 960
    if-lez v22, :cond_17

    .line 961
    .line 962
    move/from16 v22, v15

    .line 963
    .line 964
    goto :goto_b

    .line 965
    :cond_17
    const/16 v22, 0x0

    .line 966
    .line 967
    :goto_b
    cmp-long v3, v3, v25

    .line 968
    .line 969
    if-lez v3, :cond_18

    .line 970
    .line 971
    move/from16 v25, v15

    .line 972
    .line 973
    goto :goto_c

    .line 974
    :cond_18
    const/16 v25, 0x0

    .line 975
    .line 976
    :goto_c
    const-wide v37, 0x3fe6666666666666L    # 0.7

    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    const-wide v43, 0x4062c00000000000L    # 150.0

    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    if-eqz v22, :cond_1a

    .line 987
    .line 988
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdRxBitRate:J

    .line 989
    .line 990
    cmp-long v3, v1, v3

    .line 991
    .line 992
    if-gtz v3, :cond_19

    .line 993
    .line 994
    goto :goto_d

    .line 995
    :cond_19
    const/16 v36, 0x0

    .line 996
    .line 997
    goto :goto_e

    .line 998
    :cond_1a
    :goto_d
    if-eqz v25, :cond_1b

    .line 999
    .line 1000
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdTxBitRate:J

    .line 1001
    .line 1002
    cmp-long v3, v5, v3

    .line 1003
    .line 1004
    if-gtz v3, :cond_19

    .line 1005
    .line 1006
    :cond_1b
    if-eqz v22, :cond_2e

    .line 1007
    .line 1008
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1009
    .line 1010
    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->isGameApp:Z

    .line 1011
    .line 1012
    if-eqz v3, :cond_2e

    .line 1013
    .line 1014
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 1015
    .line 1016
    const/16 v36, 0x0

    .line 1017
    .line 1018
    aget-wide v3, v3, v36

    .line 1019
    .line 1020
    long-to-double v3, v3

    .line 1021
    cmpg-double v3, v3, v43

    .line 1022
    .line 1023
    if-gez v3, :cond_2e

    .line 1024
    .line 1025
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLongEmaSpeed:[D

    .line 1026
    .line 1027
    aget-wide v3, v3, v36

    .line 1028
    .line 1029
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mShortEmaSpeed:[D

    .line 1030
    .line 1031
    aget-wide v7, v7, v36

    .line 1032
    .line 1033
    sub-double/2addr v3, v7

    .line 1034
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdRxBitRate:J

    .line 1035
    .line 1036
    long-to-double v7, v7

    .line 1037
    mul-double v7, v7, v23

    .line 1038
    .line 1039
    cmpl-double v3, v3, v7

    .line 1040
    .line 1041
    if-lez v3, :cond_2e

    .line 1042
    .line 1043
    :goto_e
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 1044
    .line 1045
    aget-wide v7, v3, v36

    .line 1046
    .line 1047
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mSmaSpeed:[J

    .line 1048
    .line 1049
    aget-wide v52, v4, v36

    .line 1050
    .line 1051
    cmp-long v26, v7, v52

    .line 1052
    .line 1053
    if-gez v26, :cond_1d

    .line 1054
    .line 1055
    if-eqz v22, :cond_1d

    .line 1056
    .line 1057
    move-object/from16 v50, v3

    .line 1058
    .line 1059
    move-object/from16 v52, v4

    .line 1060
    .line 1061
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdRxBitRate:J

    .line 1062
    .line 1063
    cmp-long v3, v1, v3

    .line 1064
    .line 1065
    if-gtz v3, :cond_1c

    .line 1066
    .line 1067
    goto :goto_f

    .line 1068
    :cond_1c
    move/from16 v53, v15

    .line 1069
    .line 1070
    goto :goto_10

    .line 1071
    :cond_1d
    move-object/from16 v50, v3

    .line 1072
    .line 1073
    move-object/from16 v52, v4

    .line 1074
    .line 1075
    :goto_f
    aget-wide v3, v50, v15

    .line 1076
    .line 1077
    aget-wide v53, v52, v15

    .line 1078
    .line 1079
    cmp-long v3, v3, v53

    .line 1080
    .line 1081
    if-gez v3, :cond_1e

    .line 1082
    .line 1083
    if-eqz v25, :cond_1e

    .line 1084
    .line 1085
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdTxBitRate:J

    .line 1086
    .line 1087
    cmp-long v3, v5, v3

    .line 1088
    .line 1089
    if-gtz v3, :cond_1c

    .line 1090
    .line 1091
    :cond_1e
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1092
    .line 1093
    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->isGameApp:Z

    .line 1094
    .line 1095
    if-eqz v3, :cond_29

    .line 1096
    .line 1097
    long-to-double v3, v7

    .line 1098
    cmpg-double v3, v3, v43

    .line 1099
    .line 1100
    if-gez v3, :cond_29

    .line 1101
    .line 1102
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLongEmaSpeed:[D

    .line 1103
    .line 1104
    const/16 v36, 0x0

    .line 1105
    .line 1106
    aget-wide v3, v3, v36

    .line 1107
    .line 1108
    move/from16 v53, v15

    .line 1109
    .line 1110
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mShortEmaSpeed:[D

    .line 1111
    .line 1112
    aget-wide v54, v15, v36

    .line 1113
    .line 1114
    sub-double v3, v3, v54

    .line 1115
    .line 1116
    move-wide/from16 v54, v3

    .line 1117
    .line 1118
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdRxBitRate:J

    .line 1119
    .line 1120
    long-to-double v3, v3

    .line 1121
    mul-double v3, v3, v23

    .line 1122
    .line 1123
    cmpl-double v3, v54, v3

    .line 1124
    .line 1125
    if-lez v3, :cond_29

    .line 1126
    .line 1127
    :goto_10
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1128
    .line 1129
    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->isGameApp:Z

    .line 1130
    .line 1131
    if-eqz v3, :cond_1f

    .line 1132
    .line 1133
    long-to-double v3, v7

    .line 1134
    cmpg-double v3, v3, v43

    .line 1135
    .line 1136
    if-gez v3, :cond_1f

    .line 1137
    .line 1138
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLongEmaSpeed:[D

    .line 1139
    .line 1140
    const/16 v36, 0x0

    .line 1141
    .line 1142
    aget-wide v3, v3, v36

    .line 1143
    .line 1144
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mShortEmaSpeed:[D

    .line 1145
    .line 1146
    aget-wide v7, v7, v36

    .line 1147
    .line 1148
    sub-double/2addr v3, v7

    .line 1149
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdRxBitRate:J

    .line 1150
    .line 1151
    long-to-double v7, v7

    .line 1152
    mul-double v7, v7, v23

    .line 1153
    .line 1154
    cmpl-double v3, v3, v7

    .line 1155
    .line 1156
    if-lez v3, :cond_1f

    .line 1157
    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    const-string v2, "Case1: decreasing for gaming app, LongEMA("

    .line 1161
    .line 1162
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLongEmaSpeed:[D

    .line 1166
    .line 1167
    aget-wide v2, v2, v36

    .line 1168
    .line 1169
    double-to-int v2, v2

    .line 1170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    const-string v2, ") - ShortEMA("

    .line 1174
    .line 1175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    .line 1177
    .line 1178
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mShortEmaSpeed:[D

    .line 1179
    .line 1180
    aget-wide v2, v2, v36

    .line 1181
    .line 1182
    double-to-int v2, v2

    .line 1183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    const-string v2, ") is larger than 1.5*threshold="

    .line 1187
    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdRxBitRate:J

    .line 1192
    .line 1193
    long-to-double v2, v2

    .line 1194
    mul-double v2, v2, v23

    .line 1195
    .line 1196
    double-to-int v2, v2

    .line 1197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v1

    .line 1204
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    goto :goto_11

    .line 1208
    :cond_1f
    if-gez v26, :cond_20

    .line 1209
    .line 1210
    if-eqz v22, :cond_20

    .line 1211
    .line 1212
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdRxBitRate:J

    .line 1213
    .line 1214
    cmp-long v3, v1, v3

    .line 1215
    .line 1216
    if-lez v3, :cond_20

    .line 1217
    .line 1218
    const-string v3, "Case1: decreasing trend since Rx(EMA < SMA), rxDelta="

    .line 1219
    .line 1220
    invoke-static {v3, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v1

    .line 1224
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    goto :goto_11

    .line 1228
    :cond_20
    aget-wide v1, v50, v53

    .line 1229
    .line 1230
    aget-wide v3, v52, v53

    .line 1231
    .line 1232
    cmp-long v1, v1, v3

    .line 1233
    .line 1234
    if-gez v1, :cond_21

    .line 1235
    .line 1236
    if-eqz v25, :cond_21

    .line 1237
    .line 1238
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdTxBitRate:J

    .line 1239
    .line 1240
    cmp-long v1, v5, v1

    .line 1241
    .line 1242
    if-lez v1, :cond_21

    .line 1243
    .line 1244
    const-string v1, "Case1: decreasing trend since Tx(EMA < SMA), txDelta="

    .line 1245
    .line 1246
    invoke-static {v1, v5, v6}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v1

    .line 1250
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1251
    .line 1252
    .line 1253
    :cond_21
    :goto_11
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalRxBytes:J

    .line 1254
    .line 1255
    sub-long v1, v16, v1

    .line 1256
    .line 1257
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalTxBytes:J

    .line 1258
    .line 1259
    sub-long v3, v18, v3

    .line 1260
    .line 1261
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidRxBytes:J

    .line 1262
    .line 1263
    sub-long v5, v31, v5

    .line 1264
    .line 1265
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidTxBytes:J

    .line 1266
    .line 1267
    sub-long v7, v11, v7

    .line 1268
    .line 1269
    move-object/from16 v15, v33

    .line 1270
    .line 1271
    const-wide/16 v47, 0x1

    .line 1272
    .line 1273
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->isHavingBackgroundTraffic(JJJJ)I

    .line 1274
    .line 1275
    .line 1276
    move-result v1

    .line 1277
    if-lez v1, :cond_28

    .line 1278
    .line 1279
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1280
    .line 1281
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1282
    .line 1283
    move/from16 v3, v53

    .line 1284
    .line 1285
    if-le v1, v3, :cond_34

    .line 1286
    .line 1287
    int-to-long v1, v1

    .line 1288
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 1289
    .line 1290
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppMaxRxBitrate:J

    .line 1291
    .line 1292
    sub-long/2addr v3, v5

    .line 1293
    const-wide/16 v5, 0x400

    .line 1294
    .line 1295
    div-long/2addr v3, v5

    .line 1296
    if-eqz v22, :cond_22

    .line 1297
    .line 1298
    cmp-long v7, v3, v47

    .line 1299
    .line 1300
    if-lez v7, :cond_22

    .line 1301
    .line 1302
    sub-long v1, v3, v47

    .line 1303
    .line 1304
    const-string v3, "Changing the background bandwidth to old Rx max speed="

    .line 1305
    .line 1306
    invoke-static {v3, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v3

    .line 1310
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1311
    .line 1312
    .line 1313
    :cond_22
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 1314
    .line 1315
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppMaxTxBitrate:J

    .line 1316
    .line 1317
    sub-long/2addr v3, v7

    .line 1318
    div-long/2addr v3, v5

    .line 1319
    if-eqz v25, :cond_23

    .line 1320
    .line 1321
    cmp-long v5, v3, v47

    .line 1322
    .line 1323
    if-lez v5, :cond_23

    .line 1324
    .line 1325
    sub-long v3, v3, v47

    .line 1326
    .line 1327
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 1328
    .line 1329
    .line 1330
    move-result-wide v1

    .line 1331
    const-string v3, "Changing the background bandwidth to old Tx max speed="

    .line 1332
    .line 1333
    invoke-static {v3, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v3

    .line 1337
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1338
    .line 1339
    .line 1340
    :cond_23
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1341
    .line 1342
    iget v4, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1343
    .line 1344
    const/4 v5, 0x1

    .line 1345
    if-le v4, v5, :cond_25

    .line 1346
    .line 1347
    iget v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundGuardSeconds:I

    .line 1348
    .line 1349
    if-eqz v5, :cond_24

    .line 1350
    .line 1351
    iget v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundBandwidth:I

    .line 1352
    .line 1353
    if-le v4, v5, :cond_25

    .line 1354
    .line 1355
    :cond_24
    div-int/lit8 v5, v4, 0x2

    .line 1356
    .line 1357
    int-to-long v5, v5

    .line 1358
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 1359
    .line 1360
    .line 1361
    move-result-wide v5

    .line 1362
    long-to-int v5, v5

    .line 1363
    iput v5, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1364
    .line 1365
    :cond_25
    const-string v3, "Update bandwidth(Mbps: lastComp="

    .line 1366
    .line 1367
    const-string v5, " comp="

    .line 1368
    .line 1369
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v3

    .line 1373
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1374
    .line 1375
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1376
    .line 1377
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1378
    .line 1379
    .line 1380
    const-string v4, " prob="

    .line 1381
    .line 1382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v1

    .line 1395
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1396
    .line 1397
    .line 1398
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 1399
    .line 1400
    if-nez v1, :cond_28

    .line 1401
    .line 1402
    long-to-double v1, v13

    .line 1403
    const-wide v3, 0x3fe999999999999aL    # 0.8

    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    mul-double/2addr v1, v3

    .line 1409
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    .line 1410
    .line 1411
    div-double/2addr v1, v3

    .line 1412
    move-wide/from16 v3, v41

    .line 1413
    .line 1414
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 1415
    .line 1416
    .line 1417
    move-result-wide v1

    .line 1418
    double-to-int v1, v1

    .line 1419
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundBandwidth:I

    .line 1420
    .line 1421
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1422
    .line 1423
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1424
    .line 1425
    if-le v2, v1, :cond_26

    .line 1426
    .line 1427
    add-int/2addr v2, v1

    .line 1428
    div-int/lit8 v2, v2, 0x2

    .line 1429
    .line 1430
    iput v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundBandwidth:I

    .line 1431
    .line 1432
    :cond_26
    const/16 v8, 0xf

    .line 1433
    .line 1434
    iput v8, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 1435
    .line 1436
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundReleasedSeconds:I

    .line 1437
    .line 1438
    if-ge v1, v8, :cond_27

    .line 1439
    .line 1440
    const/16 v1, 0x1e

    .line 1441
    .line 1442
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 1443
    .line 1444
    :cond_27
    const/16 v1, 0x8

    .line 1445
    .line 1446
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundGuardSeconds:I

    .line 1447
    .line 1448
    const/4 v2, 0x0

    .line 1449
    iput v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundReleasedSeconds:I

    .line 1450
    .line 1451
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1452
    .line 1453
    const-string v2, "New upperbound="

    .line 1454
    .line 1455
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1456
    .line 1457
    .line 1458
    iget v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundBandwidth:I

    .line 1459
    .line 1460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1461
    .line 1462
    .line 1463
    const-string v2, " remainingSeconds="

    .line 1464
    .line 1465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    .line 1467
    .line 1468
    iget v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 1469
    .line 1470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v1

    .line 1477
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    :cond_28
    :goto_12
    const/4 v3, 0x1

    .line 1481
    goto/16 :goto_15

    .line 1482
    .line 1483
    :cond_29
    move-object/from16 v15, v33

    .line 1484
    .line 1485
    const-string v1, "Case2: increasing trend since (EMA > SMA), speedBackground="

    .line 1486
    .line 1487
    invoke-static {v1, v13, v14}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v1

    .line 1491
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1492
    .line 1493
    .line 1494
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 1495
    .line 1496
    const/16 v36, 0x0

    .line 1497
    .line 1498
    aget-wide v2, v1, v36

    .line 1499
    .line 1500
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mSmaSpeed:[J

    .line 1501
    .line 1502
    aget-wide v5, v4, v36

    .line 1503
    .line 1504
    cmp-long v7, v2, v5

    .line 1505
    .line 1506
    if-lez v7, :cond_2a

    .line 1507
    .line 1508
    const/16 v53, 0x1

    .line 1509
    .line 1510
    aget-wide v7, v1, v53

    .line 1511
    .line 1512
    aget-wide v25, v4, v53

    .line 1513
    .line 1514
    move-object/from16 v22, v1

    .line 1515
    .line 1516
    move-wide/from16 v41, v2

    .line 1517
    .line 1518
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdTxBitRate:J

    .line 1519
    .line 1520
    sub-long v25, v25, v1

    .line 1521
    .line 1522
    cmp-long v1, v7, v25

    .line 1523
    .line 1524
    if-gez v1, :cond_2b

    .line 1525
    .line 1526
    goto :goto_13

    .line 1527
    :cond_2a
    move-object/from16 v22, v1

    .line 1528
    .line 1529
    move-wide/from16 v41, v2

    .line 1530
    .line 1531
    const/16 v53, 0x1

    .line 1532
    .line 1533
    :goto_13
    aget-wide v1, v22, v53

    .line 1534
    .line 1535
    aget-wide v3, v4, v53

    .line 1536
    .line 1537
    cmp-long v1, v1, v3

    .line 1538
    .line 1539
    if-lez v1, :cond_28

    .line 1540
    .line 1541
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdRxBitRate:J

    .line 1542
    .line 1543
    sub-long/2addr v5, v1

    .line 1544
    cmp-long v1, v41, v5

    .line 1545
    .line 1546
    if-ltz v1, :cond_28

    .line 1547
    .line 1548
    :cond_2b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1549
    .line 1550
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1551
    .line 1552
    mul-int/lit16 v2, v1, 0x400

    .line 1553
    .line 1554
    int-to-double v2, v2

    .line 1555
    mul-double v2, v2, v37

    .line 1556
    .line 1557
    const/16 v53, 0x1

    .line 1558
    .line 1559
    add-int/lit8 v1, v1, -0x1

    .line 1560
    .line 1561
    mul-int/lit16 v1, v1, 0x400

    .line 1562
    .line 1563
    int-to-double v4, v1

    .line 1564
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 1565
    .line 1566
    .line 1567
    move-result-wide v1

    .line 1568
    double-to-long v1, v1

    .line 1569
    cmp-long v1, v13, v1

    .line 1570
    .line 1571
    if-lez v1, :cond_28

    .line 1572
    .line 1573
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1574
    .line 1575
    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1576
    .line 1577
    int-to-double v3, v2

    .line 1578
    move/from16 v5, v51

    .line 1579
    .line 1580
    int-to-double v6, v5

    .line 1581
    mul-double v6, v6, v37

    .line 1582
    .line 1583
    cmpg-double v8, v3, v6

    .line 1584
    .line 1585
    if-gez v8, :cond_2d

    .line 1586
    .line 1587
    iget v8, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 1588
    .line 1589
    int-to-double v13, v8

    .line 1590
    mul-double v37, v37, v3

    .line 1591
    .line 1592
    cmpl-double v8, v13, v37

    .line 1593
    .line 1594
    if-lez v8, :cond_2d

    .line 1595
    .line 1596
    mul-double v3, v3, v23

    .line 1597
    .line 1598
    double-to-int v1, v3

    .line 1599
    const/16 v53, 0x1

    .line 1600
    .line 1601
    add-int/lit8 v2, v2, 0x1

    .line 1602
    .line 1603
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 1604
    .line 1605
    .line 1606
    move-result v1

    .line 1607
    double-to-int v2, v6

    .line 1608
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 1609
    .line 1610
    .line 1611
    move-result v1

    .line 1612
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1613
    .line 1614
    iget v3, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1615
    .line 1616
    if-ne v1, v3, :cond_2c

    .line 1617
    .line 1618
    if-ge v1, v5, :cond_2c

    .line 1619
    .line 1620
    add-int/lit8 v1, v1, 0x1

    .line 1621
    .line 1622
    :cond_2c
    iput v1, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1623
    .line 1624
    goto/16 :goto_12

    .line 1625
    .line 1626
    :cond_2d
    const/16 v53, 0x1

    .line 1627
    .line 1628
    add-int/lit8 v2, v2, 0x1

    .line 1629
    .line 1630
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 1631
    .line 1632
    .line 1633
    move-result v2

    .line 1634
    iput v2, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1635
    .line 1636
    goto/16 :goto_12

    .line 1637
    .line 1638
    :cond_2e
    move-object/from16 v15, v33

    .line 1639
    .line 1640
    move/from16 v5, v51

    .line 1641
    .line 1642
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 1643
    .line 1644
    const/16 v36, 0x0

    .line 1645
    .line 1646
    aget-wide v2, v1, v36

    .line 1647
    .line 1648
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mSmaSpeed:[J

    .line 1649
    .line 1650
    aget-wide v6, v4, v36

    .line 1651
    .line 1652
    cmp-long v2, v2, v6

    .line 1653
    .line 1654
    if-gez v2, :cond_2f

    .line 1655
    .line 1656
    if-nez v22, :cond_30

    .line 1657
    .line 1658
    :cond_2f
    const/16 v53, 0x1

    .line 1659
    .line 1660
    aget-wide v1, v1, v53

    .line 1661
    .line 1662
    aget-wide v3, v4, v53

    .line 1663
    .line 1664
    cmp-long v1, v1, v3

    .line 1665
    .line 1666
    if-gez v1, :cond_31

    .line 1667
    .line 1668
    if-nez v25, :cond_30

    .line 1669
    .line 1670
    goto :goto_14

    .line 1671
    :cond_30
    const-string v1, "Case4: stable but EMA is slightly less than SMA - keep the current computedBandwidth"

    .line 1672
    .line 1673
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1674
    .line 1675
    .line 1676
    goto/16 :goto_12

    .line 1677
    .line 1678
    :cond_31
    :goto_14
    const-string v1, "Case3: stable state - SMA and EMA difference is in between the threshold, speedBackground="

    .line 1679
    .line 1680
    invoke-static {v1, v13, v14}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v1

    .line 1684
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1685
    .line 1686
    .line 1687
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1688
    .line 1689
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1690
    .line 1691
    mul-int/lit16 v2, v1, 0x400

    .line 1692
    .line 1693
    int-to-double v2, v2

    .line 1694
    mul-double v2, v2, v37

    .line 1695
    .line 1696
    const/16 v53, 0x1

    .line 1697
    .line 1698
    add-int/lit8 v1, v1, -0x1

    .line 1699
    .line 1700
    mul-int/lit16 v1, v1, 0x400

    .line 1701
    .line 1702
    int-to-double v6, v1

    .line 1703
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    .line 1704
    .line 1705
    .line 1706
    move-result-wide v1

    .line 1707
    double-to-long v1, v1

    .line 1708
    cmp-long v1, v13, v1

    .line 1709
    .line 1710
    if-lez v1, :cond_28

    .line 1711
    .line 1712
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1713
    .line 1714
    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1715
    .line 1716
    int-to-double v3, v2

    .line 1717
    int-to-double v6, v5

    .line 1718
    mul-double v6, v6, v37

    .line 1719
    .line 1720
    cmpg-double v8, v3, v6

    .line 1721
    .line 1722
    if-gez v8, :cond_33

    .line 1723
    .line 1724
    iget v8, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 1725
    .line 1726
    int-to-double v13, v8

    .line 1727
    mul-double v37, v37, v3

    .line 1728
    .line 1729
    cmpl-double v8, v13, v37

    .line 1730
    .line 1731
    if-lez v8, :cond_33

    .line 1732
    .line 1733
    mul-double v3, v3, v23

    .line 1734
    .line 1735
    double-to-int v1, v3

    .line 1736
    const/16 v53, 0x1

    .line 1737
    .line 1738
    add-int/lit8 v2, v2, 0x1

    .line 1739
    .line 1740
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 1741
    .line 1742
    .line 1743
    move-result v1

    .line 1744
    double-to-int v2, v6

    .line 1745
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 1746
    .line 1747
    .line 1748
    move-result v1

    .line 1749
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1750
    .line 1751
    iget v3, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1752
    .line 1753
    if-ne v1, v3, :cond_32

    .line 1754
    .line 1755
    if-ge v1, v5, :cond_32

    .line 1756
    .line 1757
    add-int/lit8 v1, v1, 0x1

    .line 1758
    .line 1759
    :cond_32
    iput v1, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1760
    .line 1761
    goto/16 :goto_12

    .line 1762
    .line 1763
    :cond_33
    const/4 v3, 0x1

    .line 1764
    add-int/2addr v2, v3

    .line 1765
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 1766
    .line 1767
    .line 1768
    move-result v2

    .line 1769
    iput v2, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1770
    .line 1771
    :cond_34
    :goto_15
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1772
    .line 1773
    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1774
    .line 1775
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 1776
    .line 1777
    .line 1778
    move-result v2

    .line 1779
    iput v2, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1780
    .line 1781
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1782
    .line 1783
    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1784
    .line 1785
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 1786
    .line 1787
    if-eq v2, v1, :cond_37

    .line 1788
    .line 1789
    if-le v2, v1, :cond_35

    .line 1790
    .line 1791
    const-wide v3, 0x3fc999999999999aL    # 0.2

    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->computeSmoothingSpeed(IID)D

    .line 1797
    .line 1798
    .line 1799
    move-result-wide v1

    .line 1800
    double-to-int v1, v1

    .line 1801
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1802
    .line 1803
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 1804
    .line 1805
    if-ne v1, v2, :cond_36

    .line 1806
    .line 1807
    add-int/lit8 v1, v1, 0x1

    .line 1808
    .line 1809
    goto :goto_16

    .line 1810
    :cond_35
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 1811
    .line 1812
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->computeSmoothingSpeed(IID)D

    .line 1813
    .line 1814
    .line 1815
    move-result-wide v1

    .line 1816
    double-to-int v1, v1

    .line 1817
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1818
    .line 1819
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 1820
    .line 1821
    if-ne v1, v2, :cond_36

    .line 1822
    .line 1823
    add-int/lit8 v1, v1, -0x1

    .line 1824
    .line 1825
    :cond_36
    :goto_16
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1826
    .line 1827
    const/4 v3, 0x1

    .line 1828
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 1829
    .line 1830
    .line 1831
    move-result v1

    .line 1832
    iput v1, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 1833
    .line 1834
    :cond_37
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1835
    .line 1836
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 1837
    .line 1838
    .line 1839
    move-result v1

    .line 1840
    if-eqz v1, :cond_38

    .line 1841
    .line 1842
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1843
    .line 1844
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1845
    .line 1846
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1847
    .line 1848
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 1849
    .line 1850
    .line 1851
    move-result v2

    .line 1852
    if-eq v1, v2, :cond_38

    .line 1853
    .line 1854
    const/4 v4, 0x1

    .line 1855
    goto :goto_17

    .line 1856
    :cond_38
    move/from16 v4, v20

    .line 1857
    .line 1858
    :goto_17
    if-nez v4, :cond_39

    .line 1859
    .line 1860
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1861
    .line 1862
    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 1863
    .line 1864
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1865
    .line 1866
    sub-int/2addr v2, v1

    .line 1867
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 1868
    .line 1869
    .line 1870
    move-result v1

    .line 1871
    int-to-double v1, v1

    .line 1872
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1873
    .line 1874
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1875
    .line 1876
    int-to-double v3, v3

    .line 1877
    div-double/2addr v1, v3

    .line 1878
    const-wide v3, 0x3fb999999999999aL    # 0.1

    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    cmpl-double v1, v1, v3

    .line 1884
    .line 1885
    if-lez v1, :cond_3f

    .line 1886
    .line 1887
    :cond_39
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1888
    .line 1889
    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1890
    .line 1891
    iget v3, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 1892
    .line 1893
    iput v3, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1894
    .line 1895
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1896
    .line 1897
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 1898
    .line 1899
    .line 1900
    move-result v1

    .line 1901
    if-eqz v1, :cond_3a

    .line 1902
    .line 1903
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1904
    .line 1905
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1906
    .line 1907
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1908
    .line 1909
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 1910
    .line 1911
    .line 1912
    move-result v3

    .line 1913
    if-eq v1, v3, :cond_3a

    .line 1914
    .line 1915
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1916
    .line 1917
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1918
    .line 1919
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 1920
    .line 1921
    .line 1922
    move-result v3

    .line 1923
    iput v3, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1924
    .line 1925
    :cond_3a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1926
    .line 1927
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 1928
    .line 1929
    .line 1930
    move-result v1

    .line 1931
    const-string v3, ") with bandwidth(Mbps: "

    .line 1932
    .line 1933
    if-eqz v1, :cond_3c

    .line 1934
    .line 1935
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1936
    .line 1937
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1938
    .line 1939
    const/16 v4, 0x32

    .line 1940
    .line 1941
    if-le v1, v4, :cond_3b

    .line 1942
    .line 1943
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 1944
    .line 1945
    if-nez v1, :cond_3b

    .line 1946
    .line 1947
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1948
    .line 1949
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v4

    .line 1953
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1954
    .line 1955
    iget v5, v5, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 1956
    .line 1957
    invoke-static {v2, v5, v1, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mdeleteRule(IILcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)I

    .line 1958
    .line 1959
    .line 1960
    move-result v1

    .line 1961
    if-nez v1, :cond_3f

    .line 1962
    .line 1963
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1964
    .line 1965
    const-string v2, "Rules are deleted for ("

    .line 1966
    .line 1967
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1968
    .line 1969
    .line 1970
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1971
    .line 1972
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v2

    .line 1976
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    .line 1978
    .line 1979
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    .line 1981
    .line 1982
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 1983
    .line 1984
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1985
    .line 1986
    const-string v3, "), since its more than 50"

    .line 1987
    .line 1988
    invoke-static {v3, v2, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v1

    .line 1992
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1993
    .line 1994
    .line 1995
    const/4 v3, 0x1

    .line 1996
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsBgSetToMax:Z

    .line 1997
    .line 1998
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1999
    .line 2000
    const/4 v2, 0x0

    .line 2001
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Z)V

    .line 2002
    .line 2003
    .line 2004
    goto/16 :goto_19

    .line 2005
    .line 2006
    :cond_3b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2007
    .line 2008
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v3

    .line 2012
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 2013
    .line 2014
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 2015
    .line 2016
    invoke-static {v2, v4, v1, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mreplaceRule(IILcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)I

    .line 2017
    .line 2018
    .line 2019
    move-result v1

    .line 2020
    if-nez v1, :cond_3f

    .line 2021
    .line 2022
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2023
    .line 2024
    const-string v3, "Rules are replaced for ("

    .line 2025
    .line 2026
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2027
    .line 2028
    .line 2029
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2030
    .line 2031
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v3

    .line 2035
    const-string v4, ") with bandwidth(Mbps: last="

    .line 2036
    .line 2037
    const-string v5, " new="

    .line 2038
    .line 2039
    invoke-static {v1, v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2040
    .line 2041
    .line 2042
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 2043
    .line 2044
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 2045
    .line 2046
    invoke-static {v15, v2, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v1

    .line 2050
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 2051
    .line 2052
    .line 2053
    goto :goto_19

    .line 2054
    :cond_3c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 2055
    .line 2056
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 2057
    .line 2058
    const/16 v4, 0x32

    .line 2059
    .line 2060
    if-lt v1, v4, :cond_3d

    .line 2061
    .line 2062
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 2063
    .line 2064
    if-lez v1, :cond_3e

    .line 2065
    .line 2066
    :cond_3d
    const/4 v15, 0x1

    .line 2067
    goto :goto_18

    .line 2068
    :cond_3e
    const/4 v15, 0x1

    .line 2069
    iput-boolean v15, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsBgSetToMax:Z

    .line 2070
    .line 2071
    goto :goto_19

    .line 2072
    :goto_18
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2073
    .line 2074
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v2

    .line 2078
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 2079
    .line 2080
    iget v5, v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 2081
    .line 2082
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 2083
    .line 2084
    invoke-static {v5, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mapplyRule(IILcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)I

    .line 2085
    .line 2086
    .line 2087
    move-result v1

    .line 2088
    if-nez v1, :cond_3f

    .line 2089
    .line 2090
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2091
    .line 2092
    invoke-static {v1, v15}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Z)V

    .line 2093
    .line 2094
    .line 2095
    const/4 v2, 0x0

    .line 2096
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsBgSetToMax:Z

    .line 2097
    .line 2098
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2099
    .line 2100
    const-string v2, "Rules are applied for ("

    .line 2101
    .line 2102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2103
    .line 2104
    .line 2105
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2106
    .line 2107
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v2

    .line 2111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    .line 2113
    .line 2114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2115
    .line 2116
    .line 2117
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 2118
    .line 2119
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 2120
    .line 2121
    const-string v3, ") since its less than 50"

    .line 2122
    .line 2123
    invoke-static {v3, v2, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 2124
    .line 2125
    .line 2126
    move-result-object v1

    .line 2127
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 2128
    .line 2129
    .line 2130
    :cond_3f
    :goto_19
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalRxBytes:J

    .line 2131
    .line 2132
    sub-long v1, v16, v1

    .line 2133
    .line 2134
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalTxBytes:J

    .line 2135
    .line 2136
    sub-long v3, v18, v3

    .line 2137
    .line 2138
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidRxBytes:J

    .line 2139
    .line 2140
    sub-long v5, v31, v5

    .line 2141
    .line 2142
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidTxBytes:J

    .line 2143
    .line 2144
    sub-long v7, v11, v7

    .line 2145
    .line 2146
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->deleteRuleCondition(JJJJ)V

    .line 2147
    .line 2148
    .line 2149
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2150
    .line 2151
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v54

    .line 2155
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v55

    .line 2159
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mSmaSpeed:[J

    .line 2160
    .line 2161
    const/16 v36, 0x0

    .line 2162
    .line 2163
    aget-wide v2, v2, v36

    .line 2164
    .line 2165
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v56

    .line 2169
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mSmaSpeed:[J

    .line 2170
    .line 2171
    const/16 v53, 0x1

    .line 2172
    .line 2173
    aget-wide v2, v2, v53

    .line 2174
    .line 2175
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2176
    .line 2177
    .line 2178
    move-result-object v57

    .line 2179
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 2180
    .line 2181
    aget-wide v2, v2, v36

    .line 2182
    .line 2183
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2184
    .line 2185
    .line 2186
    move-result-object v58

    .line 2187
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mEmaSpeed:[J

    .line 2188
    .line 2189
    aget-wide v2, v2, v53

    .line 2190
    .line 2191
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v59

    .line 2195
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v60

    .line 2199
    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2200
    .line 2201
    .line 2202
    move-result-object v61

    .line 2203
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 2204
    .line 2205
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 2206
    .line 2207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2208
    .line 2209
    .line 2210
    move-result-object v62

    .line 2211
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 2212
    .line 2213
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 2214
    .line 2215
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v63

    .line 2219
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 2220
    .line 2221
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 2222
    .line 2223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v64

    .line 2227
    iget v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 2228
    .line 2229
    if-lez v2, :cond_40

    .line 2230
    .line 2231
    iget v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundBandwidth:I

    .line 2232
    .line 2233
    goto :goto_1a

    .line 2234
    :cond_40
    const/4 v2, -0x1

    .line 2235
    :goto_1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2236
    .line 2237
    .line 2238
    move-result-object v65

    .line 2239
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdRxBitRate:J

    .line 2240
    .line 2241
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2242
    .line 2243
    .line 2244
    move-result-object v66

    .line 2245
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mThresholdTxBitRate:J

    .line 2246
    .line 2247
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2248
    .line 2249
    .line 2250
    move-result-object v67

    .line 2251
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 2252
    .line 2253
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 2254
    .line 2255
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2256
    .line 2257
    .line 2258
    move-result-object v68

    .line 2259
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2260
    .line 2261
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 2262
    .line 2263
    .line 2264
    move-result v2

    .line 2265
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v69

    .line 2269
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mStdDevWithEma:[J

    .line 2270
    .line 2271
    const/16 v36, 0x0

    .line 2272
    .line 2273
    aget-wide v2, v2, v36

    .line 2274
    .line 2275
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v70

    .line 2279
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mStdDevWithEma:[J

    .line 2280
    .line 2281
    const/16 v53, 0x1

    .line 2282
    .line 2283
    aget-wide v2, v2, v53

    .line 2284
    .line 2285
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2286
    .line 2287
    .line 2288
    move-result-object v71

    .line 2289
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLongEmaSpeed:[D

    .line 2290
    .line 2291
    aget-wide v2, v2, v36

    .line 2292
    .line 2293
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2294
    .line 2295
    .line 2296
    move-result-object v72

    .line 2297
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mLongEmaSpeed:[D

    .line 2298
    .line 2299
    aget-wide v2, v2, v53

    .line 2300
    .line 2301
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2302
    .line 2303
    .line 2304
    move-result-object v73

    .line 2305
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mShortEmaSpeed:[D

    .line 2306
    .line 2307
    aget-wide v2, v2, v36

    .line 2308
    .line 2309
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v74

    .line 2313
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mShortEmaSpeed:[D

    .line 2314
    .line 2315
    aget-wide v2, v2, v53

    .line 2316
    .line 2317
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v75

    .line 2321
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2322
    .line 2323
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 2324
    .line 2325
    .line 2326
    move-result v2

    .line 2327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v76

    .line 2331
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2332
    .line 2333
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 2334
    .line 2335
    .line 2336
    move-result v2

    .line 2337
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2338
    .line 2339
    .line 2340
    move-result-object v77

    .line 2341
    filled-new-array/range {v54 .. v77}, [Ljava/lang/Object;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v2

    .line 2345
    const-string v3, "speedUid(K: R=%d T=%d) SMA(K: R=%d T=%d) EMA(K: R=%d T=%d) speedTotal(K: R=%d T=%d) bandwidth(M: Bg=%d Target=%d Comp=%d Upper=%d) Threshold(K: R=%d T=%d) UID=%d Rule=%b StdDev(K: R=%d T=%d) LongEMA(K: R=%.1f T=%.1f) ShortEMA(K: R=%.1f T=%.1f) maxLinkSpeed(M: R=%d T=%d)"

    .line 2346
    .line 2347
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2348
    .line 2349
    .line 2350
    move-result-object v1

    .line 2351
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2352
    .line 2353
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 2354
    .line 2355
    .line 2356
    move-result v2

    .line 2357
    if-nez v2, :cond_42

    .line 2358
    .line 2359
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mIsBgSetToMax:Z

    .line 2360
    .line 2361
    if-eqz v2, :cond_41

    .line 2362
    .line 2363
    goto :goto_1b

    .line 2364
    :cond_41
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 2365
    .line 2366
    .line 2367
    goto :goto_1c

    .line 2368
    :cond_42
    :goto_1b
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 2369
    .line 2370
    .line 2371
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2372
    .line 2373
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 2374
    .line 2375
    .line 2376
    :goto_1c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2377
    .line 2378
    move-wide/from16 v6, v27

    .line 2379
    .line 2380
    long-to-int v2, v6

    .line 2381
    move-wide/from16 v3, v34

    .line 2382
    .line 2383
    long-to-int v3, v3

    .line 2384
    long-to-int v4, v9

    .line 2385
    move-wide/from16 v5, v39

    .line 2386
    .line 2387
    long-to-int v5, v5

    .line 2388
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 2389
    .line 2390
    .line 2391
    move-result v6

    .line 2392
    mul-int/lit16 v6, v6, 0x400

    .line 2393
    .line 2394
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2395
    .line 2396
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 2397
    .line 2398
    .line 2399
    move-result v7

    .line 2400
    mul-int/lit16 v7, v7, 0x400

    .line 2401
    .line 2402
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2403
    .line 2404
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmGoogleEstimatedRxBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 2405
    .line 2406
    .line 2407
    move-result v48

    .line 2408
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2409
    .line 2410
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmGoogleEstimatedTxBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 2411
    .line 2412
    .line 2413
    move-result v49

    .line 2414
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2415
    .line 2416
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 2417
    .line 2418
    .line 2419
    move-result v8

    .line 2420
    if-eqz v8, :cond_43

    .line 2421
    .line 2422
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 2423
    .line 2424
    iget v8, v8, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 2425
    .line 2426
    mul-int/lit16 v15, v8, 0x400

    .line 2427
    .line 2428
    move/from16 v50, v15

    .line 2429
    .line 2430
    goto :goto_1d

    .line 2431
    :cond_43
    move/from16 v50, v36

    .line 2432
    .line 2433
    :goto_1d
    const/16 v51, 0x32

    .line 2434
    .line 2435
    const/16 v52, 0x0

    .line 2436
    .line 2437
    move-object/from16 v41, v1

    .line 2438
    .line 2439
    move/from16 v42, v2

    .line 2440
    .line 2441
    move/from16 v43, v3

    .line 2442
    .line 2443
    move/from16 v44, v4

    .line 2444
    .line 2445
    move/from16 v45, v5

    .line 2446
    .line 2447
    move/from16 v46, v6

    .line 2448
    .line 2449
    move/from16 v47, v7

    .line 2450
    .line 2451
    invoke-virtual/range {v41 .. v52}, Lcom/samsung/android/server/wifi/SemApeService;->updateLiveSession(IIIIIIIIIII)V

    .line 2452
    .line 2453
    .line 2454
    move-wide/from16 v1, v18

    .line 2455
    .line 2456
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalTxBytes:J

    .line 2457
    .line 2458
    move-wide/from16 v1, v16

    .line 2459
    .line 2460
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalRxBytes:J

    .line 2461
    .line 2462
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidTxBytes:J

    .line 2463
    .line 2464
    move-wide/from16 v1, v31

    .line 2465
    .line 2466
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUidRxBytes:J

    .line 2467
    .line 2468
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 2469
    .line 2470
    if-lez v1, :cond_45

    .line 2471
    .line 2472
    const/16 v53, 0x1

    .line 2473
    .line 2474
    add-int/lit8 v1, v1, -0x1

    .line 2475
    .line 2476
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 2477
    .line 2478
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundGuardSeconds:I

    .line 2479
    .line 2480
    if-lez v1, :cond_44

    .line 2481
    .line 2482
    add-int/lit8 v1, v1, -0x1

    .line 2483
    .line 2484
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundGuardSeconds:I

    .line 2485
    .line 2486
    :cond_44
    return-void

    .line 2487
    :cond_45
    const/16 v53, 0x1

    .line 2488
    .line 2489
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundReleasedSeconds:I

    .line 2490
    .line 2491
    add-int/lit8 v1, v1, 0x1

    .line 2492
    .line 2493
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mUpperBoundReleasedSeconds:I

    .line 2494
    .line 2495
    return-void
.end method

.method private updateStats(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalSecondsOfApeEnabled:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalSecondsOfApeEnabled:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 17
    .line 18
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 19
    .line 20
    mul-int/lit16 v0, v0, 0x400

    .line 21
    .line 22
    long-to-double p1, p1

    .line 23
    int-to-double v0, v0

    .line 24
    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    mul-double/2addr v0, v4

    .line 30
    cmpl-double p1, p1, v0

    .line 31
    .line 32
    if-lez p1, :cond_0

    .line 33
    .line 34
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalSecondsOfBackgroundLimited:J

    .line 35
    .line 36
    add-long/2addr p1, v2

    .line 37
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->mTotalSecondsOfBackgroundLimited:J

    .line 38
    .line 39
    :cond_0
    return-void
.end method
