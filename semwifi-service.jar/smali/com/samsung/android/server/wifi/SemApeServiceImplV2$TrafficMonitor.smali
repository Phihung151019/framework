.class abstract Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TrafficMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;
    }
.end annotation


# static fields
.field protected static final INACTIVE_NRT_COUNT_LIMIT:I = 0x5

.field protected static final INITIAL_LINKSPEED_DIVIDE_FACTOR:I = 0xa

.field protected static final INITIAL_MIN_NRT_ALLOC:I = 0x5

.field protected static final LONG_CALIBRATION_TIMER:I = 0xb4

.field protected static final MAX_TIME_STORE:J = 0x7530L

.field protected static final NETWORK_BOTTLENECK_MAX_COUNT:I = 0x5

.field protected static final NRT_DECREASING_SMOOTHING_FACTOR:D = 0.75

.field protected static final NRT_INCREASING_SMOOTHING_FACTOR:D = 0.3

.field protected static final NRT_MIN_KBPS_THRESHOLD:I = 0x320

.field protected static final RECAL_TIMER_INIT:I = 0x3

.field protected static final SERVER_BOTTLENECK_MAX_COUNT:I = 0x3

.field protected static final SHORT_CALIBRATION_TIMER:I = 0x5a

.field protected static final UNDER_UTILIZATION_FACTOR:D = 0.7


# instance fields
.field mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

.field protected mCalibrationTimer:I

.field protected mIsBgSetToMax:Z

.field protected mIsRulesDeleted:Z

.field protected mLastTime:J

.field protected mMaxRssi:I

.field protected mMinRssi:I

.field protected mNetworkBottleneckCount:I

.field protected mNetworkBottleneckEstimate:J

.field protected mNrtAlloc:I

.field protected mNrtInactiveCount:I

.field protected mPackageName:Ljava/lang/String;

.field protected mPrevRssi:I

.field protected mRecalTimer:I

.field mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

.field protected mServerBottleneckCount:I

.field protected mSpeedTotalEstimate:J

.field protected mStrictAllocTimer:I

.field protected mTimer:I

.field protected mTotalSecondsOfApeEnabled:J

.field protected mTotalSecondsOfNrtLimited:J

.field mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

.field protected mUid:I

.field protected mUpdatedTotalEstimate:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;ILjava/lang/String;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 12
    .line 13
    new-instance p2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 14
    .line 15
    const/4 p3, 0x1

    .line 16
    invoke-direct {p2, p0, p3, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;ZI)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 20
    .line 21
    new-instance p2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 22
    .line 23
    invoke-direct {p2, p0, p1, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;ZI)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method protected checkRssiFluctuation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mPrevRssi:I

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMaxRssi:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMaxRssi:I

    .line 47
    .line 48
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMinRssi:I

    .line 49
    .line 50
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMinRssi:I

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mPrevRssi:I

    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method protected deleteRuleCondition()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsBgSetToMax:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->getActiveNrt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtInactiveCount:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    add-int/2addr v0, v2

    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtInactiveCount:I

    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    if-ne v0, v3, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const-string v0, "For continuous 5, the nrt traffic is below 800Kbps, so will delete the rule"

    .line 38
    .line 39
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 49
    .line 50
    iget v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 51
    .line 52
    invoke-static {v0, v3, v4, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mdeleteRule(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;II)I

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v3, "SpecialRuleDel"

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "For continuous 5, the nrt traffic is below 800Kbps, but rule has been already deleted"

    .line 73
    .line 74
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsBgSetToMax:Z

    .line 78
    .line 79
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsRulesDeleted:Z

    .line 80
    .line 81
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtInactiveCount:I

    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 84
    .line 85
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 86
    .line 87
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 88
    .line 89
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mstoreNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;II)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void

    .line 93
    :cond_3
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtInactiveCount:I

    .line 94
    .line 95
    return-void
.end method

.method protected estimateBottleneck()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->isRestrictPhase()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$misActiveNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->estimateNetworkBottleneck()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckCount:I

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckEstimate:J

    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$misActiveNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$misActiveNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    return-void

    .line 44
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->estimateServerBottleneck()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method protected estimateNetworkBottleneck()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-double v0, v0

    .line 8
    iget v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 9
    .line 10
    int-to-double v2, v2

    .line 11
    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr v2, v4

    .line 17
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    mul-double/2addr v2, v4

    .line 23
    cmpg-double v0, v0, v2

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-gtz v0, :cond_0

    .line 27
    .line 28
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckCount:I

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckCount:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckCount:I

    .line 36
    .line 37
    :goto_0
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckEstimate:J

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedTotal(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    cmp-long v0, v2, v4

    .line 46
    .line 47
    if-gez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedTotal(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckEstimate:J

    .line 56
    .line 57
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckCount:I

    .line 58
    .line 59
    const/4 v2, 0x5

    .line 60
    if-lt v0, v2, :cond_2

    .line 61
    .line 62
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckEstimate:J

    .line 63
    .line 64
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 65
    .line 66
    cmp-long v0, v2, v4

    .line 67
    .line 68
    if-gez v0, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, "E2E after Network bottleneck="

    .line 79
    .line 80
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckEstimate:J

    .line 84
    .line 85
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v3, " Prev="

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 94
    .line 95
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v2, "Detected network bottleneck("

    .line 108
    .line 109
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckCount:I

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v2, "), mNetworkBottleneckEstimate="

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckEstimate:J

    .line 123
    .line 124
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckEstimate:J

    .line 135
    .line 136
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 137
    .line 138
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckCount:I

    .line 139
    .line 140
    const-wide/16 v0, 0x0

    .line 141
    .line 142
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckEstimate:J

    .line 143
    .line 144
    :cond_2
    return-void
.end method

.method protected estimateServerBottleneck()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRxSpeedGoogleApiDefaultValue(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 10
    .line 11
    long-to-double v0, v0

    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-double v2, v2

    .line 19
    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    mul-double/2addr v2, v4

    .line 25
    cmpg-double v0, v0, v2

    .line 26
    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mServerBottleneckCount:I

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mServerBottleneckCount:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mServerBottleneckCount:I

    .line 38
    .line 39
    :goto_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mServerBottleneckCount:I

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    if-lt v0, v1, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "Detected server bottleneck("

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mServerBottleneckCount:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "), so using GoogleAPI="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    int-to-long v0, v0

    .line 84
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 88
    .line 89
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 90
    .line 91
    return-void
.end method

.method protected getActiveNrt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$misActiveNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$misActiveNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/2addr v0, p0

    .line 19
    return v0
.end method

.method protected init()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$minit(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$minit(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckEstimate:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mSpeedTotalEstimate:J

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNetworkBottleneckCount:I

    .line 25
    .line 26
    iput v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mServerBottleneckCount:I

    .line 27
    .line 28
    iput v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 29
    .line 30
    const/16 v3, 0xb4

    .line 31
    .line 32
    iput v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibrationTimer:I

    .line 33
    .line 34
    iput v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtInactiveCount:I

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mLastTime:J

    .line 41
    .line 42
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iput v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mPrevRssi:I

    .line 49
    .line 50
    iput v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMaxRssi:I

    .line 51
    .line 52
    iput v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMinRssi:I

    .line 53
    .line 54
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsRulesDeleted:Z

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsBgSetToMax:Z

    .line 57
    .line 58
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTimeLastNrtAllocCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    cmp-long v0, v2, v0

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmLastUid(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 75
    .line 76
    if-ne v0, v1, :cond_1

    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTimeLastNrtAllocCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    sub-long/2addr v0, v2

    .line 89
    const-wide/16 v2, 0x7530

    .line 90
    .line 91
    cmp-long v0, v0, v2

    .line 92
    .line 93
    if-lez v0, :cond_0

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "Historical nrt bandwidth value "

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmLastNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmTimeLastNrtAllocCaptured(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 126
    .line 127
    const/4 v1, 0x5

    .line 128
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmLastNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmLastUid(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 143
    .line 144
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    div-int/lit8 v0, v0, 0xa

    .line 153
    .line 154
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 155
    .line 156
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmLastNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    const/4 v1, 0x1

    .line 165
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 170
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v1, "init: Bandwidth bg="

    .line 174
    .line 175
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 179
    .line 180
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method protected isLinkHighSpeed()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    int-to-long v2, p0

    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/16 v2, 0x3e8

    .line 21
    .line 22
    div-long/2addr v0, v2

    .line 23
    const-wide/16 v2, 0x41

    .line 24
    .line 25
    cmp-long p0, v0, v2

    .line 26
    .line 27
    if-ltz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method protected isRestrictPhase()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_STRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_MORE:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method protected abstract periodicFunction()V
.end method

.method protected updateCalibState()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibrationTimer:I

    .line 4
    .line 5
    rem-int/2addr v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "RecalStart"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRecalTimer:I

    .line 28
    .line 29
    if-ge v0, v1, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 36
    .line 37
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "Recal"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    if-ne v0, v1, :cond_2

    .line 48
    .line 49
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 54
    .line 55
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string v0, "RestrictStart"

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    iget v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mStrictAllocTimer:I

    .line 66
    .line 67
    add-int/2addr v1, v2

    .line 68
    if-ge v0, v1, :cond_3

    .line 69
    .line 70
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_STRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 75
    .line 76
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "RestrictStrict"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 91
    .line 92
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string v0, "Restrict"

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method protected updateRules(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmStaticNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmStaticNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmStaticNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const-string v3, ")"

    .line 43
    .line 44
    const-string v4, " new="

    .line 45
    .line 46
    const-string v5, ") with bandwidth(Mbps: last="

    .line 47
    .line 48
    const-string v6, "Rules are replaced for ("

    .line 49
    .line 50
    const-string v7, "Rep="

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 55
    .line 56
    if-eq p1, v0, :cond_7

    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 65
    .line 66
    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mreplaceRule(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;II)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_7

    .line 71
    .line 72
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v0, v1, v5, p1, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 110
    .line 111
    invoke-static {v3, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 120
    .line 121
    sget-object v8, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 122
    .line 123
    if-eq v0, v8, :cond_3

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->isLinkHighSpeed()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->isRestrictPhase()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->getActiveNrt()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 145
    .line 146
    if-eq p1, v0, :cond_7

    .line 147
    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 155
    .line 156
    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mreplaceRule(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;II)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_7

    .line 161
    .line 162
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 163
    .line 164
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 191
    .line 192
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v0, v1, v5, p1, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 200
    .line 201
    invoke-static {v3, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 210
    .line 211
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    iget v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 216
    .line 217
    invoke-static {v0, v3, p1, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mdeleteRule(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;II)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_4

    .line 222
    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v0, "Rules are deleted for ("

    .line 226
    .line 227
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 231
    .line 232
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-string v3, ") since RECAL_START or isLinkHighSpeed=true"

    .line 237
    .line 238
    invoke-static {p1, v0, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsBgSetToMax:Z

    .line 246
    .line 247
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 248
    .line 249
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V

    .line 250
    .line 251
    .line 252
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 253
    .line 254
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    const-string p1, "RuleDeleted"

    .line 259
    .line 260
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 265
    .line 266
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    const-string p1, "RuleDeletedFailed"

    .line 271
    .line 272
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 277
    .line 278
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmStaticNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    const-string v0, ") with bandwidth(Mbps: "

    .line 283
    .line 284
    const-string v3, "Rules are applied for ("

    .line 285
    .line 286
    const-string v4, "RuleApplied"

    .line 287
    .line 288
    if-eqz p1, :cond_6

    .line 289
    .line 290
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 291
    .line 292
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    iget v6, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 297
    .line 298
    iget v7, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 299
    .line 300
    invoke-static {p1, v5, v6, v7}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mapplyRule(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;II)I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-nez p1, :cond_7

    .line 305
    .line 306
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 307
    .line 308
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V

    .line 309
    .line 310
    .line 311
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsBgSetToMax:Z

    .line 312
    .line 313
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 314
    .line 315
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 328
    .line 329
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 340
    .line 341
    const-string v0, ") due to static alloc"

    .line 342
    .line 343
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->isLinkHighSpeed()Z

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    if-nez p1, :cond_8

    .line 356
    .line 357
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->isRestrictPhase()Z

    .line 358
    .line 359
    .line 360
    move-result p1

    .line 361
    if-eqz p1, :cond_7

    .line 362
    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->getActiveNrt()I

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    if-eqz p1, :cond_7

    .line 368
    .line 369
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 370
    .line 371
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    iget v6, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 376
    .line 377
    iget v7, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 378
    .line 379
    invoke-static {p1, v5, v6, v7}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mapplyRule(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;II)I

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    if-nez p1, :cond_7

    .line 384
    .line 385
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 386
    .line 387
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V

    .line 388
    .line 389
    .line 390
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsBgSetToMax:Z

    .line 391
    .line 392
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 393
    .line 394
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->appendExtraInfo(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 407
    .line 408
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 419
    .line 420
    const-string v0, ") since isLinkHighSpeed=false"

    .line 421
    .line 422
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    :cond_7
    return-void

    .line 430
    :cond_8
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mIsBgSetToMax:Z

    .line 431
    .line 432
    return-void
.end method

.method protected updateStats(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTotalSecondsOfApeEnabled:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTotalSecondsOfApeEnabled:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 17
    .line 18
    mul-int/lit16 v0, v0, 0x3e8

    .line 19
    .line 20
    long-to-double p1, p1

    .line 21
    int-to-double v0, v0

    .line 22
    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    mul-double/2addr v0, v4

    .line 28
    cmpl-double p1, p1, v0

    .line 29
    .line 30
    if-lez p1, :cond_0

    .line 31
    .line 32
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTotalSecondsOfNrtLimited:J

    .line 33
    .line 34
    add-long/2addr p1, v2

    .line 35
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTotalSecondsOfNrtLimited:J

    .line 36
    .line 37
    :cond_0
    return-void
.end method
