.class public Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;,
        Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;,
        Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;
    }
.end annotation


# static fields
.field private static final BEACON_MISS:I = 0x2

.field private static final BEACON_NONE:I = 0x0

.field private static final BEACON_SUDDEN_DROP:I = 0x1

.field public static final DETECTED_GEOMAGNETIC:I = 0x1

.field public static final DETECTED_NONE:I = 0x0

.field public static final DETECTED_RSSI:I = 0x2

.field private static final ELE_REASON_BCN_DROP:I = 0x5

.field private static final ELE_REASON_BCN_MISS:I = 0x4

.field private static final ELE_REASON_BIG_SIGNAL_EXP:I = 0x7

.field private static final ELE_REASON_MOBILE_WIFI_CHG:I = 0x1

.field private static final ELE_REASON_MOBILE_WIFI_GEO:I = 0x3

.field private static final ELE_REASON_NONE:I = 0x0

.field private static final ELE_REASON_ON_LVL2:I = 0x2

.field private static final ELE_REASON_TX_INCREASE:I = 0x6

.field public static final ELE_STATE_DETECTED:I = 0x1

.field public static final ELE_STATE_DISABLED_NETWORK:I = 0x2

.field public static final ELE_STATE_EXIT_BY_STEP:I = 0x3

.field public static final ELE_STATE_NONE:I = 0x0

.field public static final ENABLE_BY_EXPIRE_TIME:I = 0x3

.field public static final ENABLE_BY_SNS_OFF:I = 0x5

.field public static final ENABLE_BY_STEPS:I = 0x4

.field private static final EXPIRE_COUNT:I = 0xb4

.field private static final MINIMUM_RSSI:I = -0x46

.field private static final PREVIOUS_CHECK_CNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SemWifiEleStateTracker"

.field private static final mBaroExpireMSTime:J = 0x7d0L

.field private static mIsScanRunning:Z = false

.field private static final mStepExpireMSTime:J = 0x2bf20L


# instance fields
.field private mAggTxBadDetection:Z

.field private mBaroNotSupported:Z

.field private final mBarometerReader:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;

.field private mBcnCheckingPrevState:I

.field private mBcnCheckingState:I

.field private mBcnDropExpireCnt:I

.field private mBcnHistoryCnt:I

.field private mBcnMissExpireCnt:I

.field private mBigSignalChangeExpirationCnt:I

.field private mBlockDetectionUntilNewAssoc:Z

.field private mBlockRoamTimer:Ljava/util/Timer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBarometer:F

.field private mDetectionPending:Z

.field private mDoorOpenCheckCount:I

.field private mEleMoving:Z

.field private mElePrevGeoMagnetic:[Z

.field private mEleReason:I

.field private mEleState:I

.field private mExpireCount:I

.field private mGeoAvailable:Z

.field private mGeoEnabled:Z

.field mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

.field mGeoMagneticAction:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

.field private mGeomagneticEleState:Z

.field private mIsInRoamSession:Z

.field private mLastStepByEle:J

.field private mLimitMonitorTimeByLevel2Cnt:I

.field private mMonitorEnabled:Z

.field private mPedoIsStepPending:Z

.field private mPedoStepExpirationCnt:I

.field private mPollingSkip:Z

.field private mPrevBarometer:F

.field private mPrevBcnCnt:I

.field private mPrevBcnDiff:[I

.field private mPrevBcnDropCond:I

.field private mPrevGeomagneticEleState:Z

.field private mPrevMobileRssi:[I

.field private mPrevStepCnt:J

.field private mPrevStepState:[Z

.field private mPrevTxBadCnt:I

.field private mPrevWifiRssi:[I

.field private mPreviousBssid:Ljava/lang/String;

.field private mRecentBaroChangeTime:J

.field private mRecentStepCntChangeTime:J

.field private mScanHistory:[Z

.field private mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

.field private mSmallBaroDetected:Z

.field private mStableCount:I

.field private mTempElevatorDetectedCycleCount:I

.field private mTempGeoChange:Z

.field private mTempLev2Change:Z

.field private mTempMobileChange:Z

.field private mTempTxChange:Z

.field private mTxBadHistory:[Z

.field private mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

.field private final mWifiScanner:Landroid/net/wifi/WifiScanner;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEleMoving(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiEleStateTrackerCallBack(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBaroNotSupported(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBaroNotSupported:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBlockRoamTimer(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockRoamTimer:Ljava/util/Timer;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentBarometer(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mCurrentBarometer:F

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGeomagneticEleState(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrevBarometer(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBarometer:F

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRecentBaroChangeTime(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentBaroChangeTime:J

    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSmallBaroDetected(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSmallBaroDetected:Z

    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;Landroid/net/wifi/WifiScanner;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingState:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingPrevState:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDropCond:I

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    .line 14
    .line 15
    const/16 v1, 0xb4

    .line 16
    .line 17
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    .line 18
    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mMonitorEnabled:Z

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    .line 25
    .line 26
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepCnt:J

    .line 31
    .line 32
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentStepCntChangeTime:J

    .line 33
    .line 34
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLastStepByEle:J

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagneticAction:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockRoamTimer:Ljava/util/Timer;

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoAvailable:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevGeomagneticEleState:Z

    .line 50
    .line 51
    const/4 v1, 0x6

    .line 52
    new-array v5, v1, [I

    .line 53
    .line 54
    iput-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 55
    .line 56
    new-array v5, v1, [I

    .line 57
    .line 58
    iput-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 59
    .line 60
    new-array v5, v1, [I

    .line 61
    .line 62
    iput-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 63
    .line 64
    new-array v5, v1, [Z

    .line 65
    .line 66
    iput-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 67
    .line 68
    new-array v5, v1, [Z

    .line 69
    .line 70
    iput-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 71
    .line 72
    new-array v5, v1, [Z

    .line 73
    .line 74
    iput-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 75
    .line 76
    new-array v1, v1, [Z

    .line 77
    .line 78
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 79
    .line 80
    const/4 v1, -0x1

    .line 81
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnCnt:I

    .line 82
    .line 83
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevTxBadCnt:I

    .line 84
    .line 85
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 86
    .line 87
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    .line 88
    .line 89
    const/4 v1, 0x3

    .line 90
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mStableCount:I

    .line 91
    .line 92
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDoorOpenCheckCount:I

    .line 93
    .line 94
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleState:I

    .line 95
    .line 96
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    .line 97
    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mAggTxBadDetection:Z

    .line 99
    .line 100
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPollingSkip:Z

    .line 101
    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    .line 103
    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsInRoamSession:Z

    .line 105
    .line 106
    const-string v1, ""

    .line 107
    .line 108
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPreviousBssid:Ljava/lang/String;

    .line 109
    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockDetectionUntilNewAssoc:Z

    .line 111
    .line 112
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    .line 113
    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempMobileChange:Z

    .line 115
    .line 116
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempGeoChange:Z

    .line 117
    .line 118
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempLev2Change:Z

    .line 119
    .line 120
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempTxChange:Z

    .line 121
    .line 122
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempElevatorDetectedCycleCount:I

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBarometer:F

    .line 126
    .line 127
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mCurrentBarometer:F

    .line 128
    .line 129
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSmallBaroDetected:Z

    .line 130
    .line 131
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBaroNotSupported:Z

    .line 132
    .line 133
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentBaroChangeTime:J

    .line 134
    .line 135
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mContext:Landroid/content/Context;

    .line 136
    .line 137
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 138
    .line 139
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 140
    .line 141
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 142
    .line 143
    new-instance p2, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 144
    .line 145
    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 149
    .line 150
    new-instance p2, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 151
    .line 152
    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 156
    .line 157
    new-instance p2, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;

    .line 158
    .line 159
    invoke-direct {p2, p0, p1, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Landroid/content/Context;I)V

    .line 160
    .line 161
    .line 162
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBarometerReader:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;

    .line 163
    .line 164
    new-instance p1, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;

    .line 165
    .line 166
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 167
    .line 168
    .line 169
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagneticAction:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    .line 170
    .line 171
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 172
    .line 173
    if-eqz p1, :cond_0

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->getAPISupportFlag()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_0

    .line 180
    .line 181
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagneticAction:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    .line 182
    .line 183
    if-eqz p1, :cond_0

    .line 184
    .line 185
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoAvailable:Z

    .line 186
    .line 187
    :cond_0
    return-void
.end method

.method private eleDetected(III)I
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "Ele valid detection. Elapsed time after last WALK : "

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentStepCntChangeTime:J

    .line 13
    .line 14
    sub-long/2addr v0, v3

    .line 15
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " mPedoStepExpirationCnt : "

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    .line 24
    .line 25
    const-string v1, "SemWifiEleStateTracker"

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, ""

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v0, v2

    .line 46
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v4, 0x0

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPreviousBssid:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    move v2, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v2, v4

    .line 65
    :goto_1
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPreviousBssid:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockDetectionUntilNewAssoc:Z

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    const-string p0, "Ignore detection - mBlockDetectionUntilNewAssoc is true. it could be continuous ELE pattern."

    .line 74
    .line 75
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    return v4

    .line 79
    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockDetectionUntilNewAssoc:Z

    .line 80
    .line 81
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 82
    .line 83
    const/4 v2, 0x2

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    move v0, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    move v0, v2

    .line 89
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v6, "Ele detection parameters BD : "

    .line 92
    .line 93
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 97
    .line 98
    aget v6, v6, v4

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v6, " "

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 109
    .line 110
    aget v7, v7, v3

    .line 111
    .line 112
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 119
    .line 120
    aget v7, v7, v2

    .line 121
    .line 122
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 129
    .line 130
    const/4 v8, 0x3

    .line 131
    aget v7, v7, v8

    .line 132
    .line 133
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 140
    .line 141
    const/4 v9, 0x4

    .line 142
    aget v7, v7, v9

    .line 143
    .line 144
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 151
    .line 152
    const/4 v10, 0x5

    .line 153
    aget v7, v7, v10

    .line 154
    .line 155
    const-string v11, " MD : "

    .line 156
    .line 157
    invoke-static {v5, v7, v6, p1, v11}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 161
    .line 162
    aget v7, v7, v4

    .line 163
    .line 164
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 171
    .line 172
    aget v7, v7, v3

    .line 173
    .line 174
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 181
    .line 182
    aget v7, v7, v2

    .line 183
    .line 184
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 191
    .line 192
    aget v7, v7, v8

    .line 193
    .line 194
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 201
    .line 202
    aget v7, v7, v9

    .line 203
    .line 204
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 211
    .line 212
    aget v7, v7, v10

    .line 213
    .line 214
    const-string v11, " WD : "

    .line 215
    .line 216
    invoke-static {v5, v7, v6, p2, v11}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 220
    .line 221
    aget v7, v7, v4

    .line 222
    .line 223
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 230
    .line 231
    aget v7, v7, v3

    .line 232
    .line 233
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 240
    .line 241
    aget v7, v7, v2

    .line 242
    .line 243
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 250
    .line 251
    aget v7, v7, v8

    .line 252
    .line 253
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 260
    .line 261
    aget v7, v7, v9

    .line 262
    .line 263
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 270
    .line 271
    aget v7, v7, v10

    .line 272
    .line 273
    const-string v11, " GC : "

    .line 274
    .line 275
    invoke-static {v5, v7, v6, p3, v11}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 279
    .line 280
    aget-boolean v7, v7, v4

    .line 281
    .line 282
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 289
    .line 290
    aget-boolean v7, v7, v3

    .line 291
    .line 292
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 299
    .line 300
    aget-boolean v7, v7, v2

    .line 301
    .line 302
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 309
    .line 310
    aget-boolean v7, v7, v8

    .line 311
    .line 312
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 319
    .line 320
    aget-boolean v7, v7, v9

    .line 321
    .line 322
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 329
    .line 330
    aget-boolean v7, v7, v10

    .line 331
    .line 332
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v7, " SC : "

    .line 336
    .line 337
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 341
    .line 342
    aget-boolean v7, v7, v4

    .line 343
    .line 344
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 351
    .line 352
    aget-boolean v7, v7, v3

    .line 353
    .line 354
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 361
    .line 362
    aget-boolean v7, v7, v2

    .line 363
    .line 364
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 371
    .line 372
    aget-boolean v7, v7, v8

    .line 373
    .line 374
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 381
    .line 382
    aget-boolean v7, v7, v9

    .line 383
    .line 384
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 391
    .line 392
    aget-boolean v7, v7, v10

    .line 393
    .line 394
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v7, "  SH : "

    .line 398
    .line 399
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 403
    .line 404
    aget-boolean v7, v7, v4

    .line 405
    .line 406
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 413
    .line 414
    aget-boolean v7, v7, v3

    .line 415
    .line 416
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 423
    .line 424
    aget-boolean v7, v7, v2

    .line 425
    .line 426
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 433
    .line 434
    aget-boolean v7, v7, v8

    .line 435
    .line 436
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 443
    .line 444
    aget-boolean v7, v7, v9

    .line 445
    .line 446
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 453
    .line 454
    aget-boolean v7, v7, v10

    .line 455
    .line 456
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    const-string v7, "  TB : "

    .line 460
    .line 461
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 465
    .line 466
    aget-boolean v7, v7, v4

    .line 467
    .line 468
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 475
    .line 476
    aget-boolean v7, v7, v3

    .line 477
    .line 478
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 485
    .line 486
    aget-boolean v2, v7, v2

    .line 487
    .line 488
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 495
    .line 496
    aget-boolean v2, v2, v8

    .line 497
    .line 498
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 505
    .line 506
    aget-boolean v2, v2, v9

    .line 507
    .line 508
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 515
    .line 516
    aget-boolean v2, v2, v10

    .line 517
    .line 518
    invoke-static {v5, v2, v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 519
    .line 520
    .line 521
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 522
    .line 523
    const-string v5, "ITYP"

    .line 524
    .line 525
    const-string v6, "SSIV"

    .line 526
    .line 527
    invoke-virtual {v2, v6, v5, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 528
    .line 529
    .line 530
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 531
    .line 532
    const-string v5, "ISTE"

    .line 533
    .line 534
    invoke-virtual {v2, v6, v5, p1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 535
    .line 536
    .line 537
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 538
    .line 539
    const-string v2, "ITRI"

    .line 540
    .line 541
    invoke-virtual {p1, v6, v2, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 542
    .line 543
    .line 544
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 545
    .line 546
    const-string p2, "IFRN"

    .line 547
    .line 548
    invoke-virtual {p1, v6, p2, p3}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 549
    .line 550
    .line 551
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 552
    .line 553
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 554
    .line 555
    aget-boolean p2, p2, v10

    .line 556
    .line 557
    const-string p3, "ITPD"

    .line 558
    .line 559
    invoke-virtual {p1, v6, p3, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 560
    .line 561
    .line 562
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 563
    .line 564
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 565
    .line 566
    aget-boolean p2, p2, v10

    .line 567
    .line 568
    const-string p3, "ISPD"

    .line 569
    .line 570
    invoke-virtual {p1, v6, p3, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 571
    .line 572
    .line 573
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 574
    .line 575
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 576
    .line 577
    aget-boolean p2, p2, v10

    .line 578
    .line 579
    const-string p3, "IRSS"

    .line 580
    .line 581
    invoke-virtual {p1, v6, p3, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 582
    .line 583
    .line 584
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 585
    .line 586
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 587
    .line 588
    aget-boolean p2, p2, v10

    .line 589
    .line 590
    const-string p3, "ILSP"

    .line 591
    .line 592
    invoke-virtual {p1, v6, p3, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 593
    .line 594
    .line 595
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setMonitorEnabled(Z)V

    .line 596
    .line 597
    .line 598
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    .line 599
    .line 600
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getCurrentStepCnt()J

    .line 604
    .line 605
    .line 606
    move-result-wide p1

    .line 607
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLastStepByEle:J

    .line 608
    .line 609
    new-instance p1, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    const-string p2, "eleDetected - last step : "

    .line 612
    .line 613
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    iget-wide p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLastStepByEle:J

    .line 617
    .line 618
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object p1

    .line 625
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .line 627
    .line 628
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->runRecoveryEnableTimer()V

    .line 629
    .line 630
    .line 631
    iput v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDoorOpenCheckCount:I

    .line 632
    .line 633
    return v0
.end method

.method private getBcnState(IIIZZ)I
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "SemWifiEleStateTracker"

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    if-ne p1, v0, :cond_5

    .line 8
    .line 9
    const-string p1, "getBcnState - previousNonZeroBeaconCnt Non Zero Beacon Count Condition!"

    .line 10
    .line 11
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x5

    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingPrevState:I

    .line 22
    .line 23
    if-ne v0, v3, :cond_2

    .line 24
    .line 25
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDropCond:I

    .line 26
    .line 27
    if-lt p1, p3, :cond_1

    .line 28
    .line 29
    const-string p1, "getBcnState - Sudden Drop continue!"

    .line 30
    .line 31
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    .line 35
    .line 36
    sub-int/2addr p1, v3

    .line 37
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    .line 38
    .line 39
    :goto_0
    move v1, v3

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    const-string p1, "getBcnState - Sudden Drop finished."

    .line 42
    .line 43
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iput v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const-string v0, "getBcnState - Sudden Drop checking prevAverBcnCnt : "

    .line 50
    .line 51
    invoke-static {v0, p2, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x9

    .line 55
    .line 56
    if-lt p2, v0, :cond_3

    .line 57
    .line 58
    const/4 p1, 0x3

    .line 59
    if-gt p3, p1, :cond_7

    .line 60
    .line 61
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDropCond:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v0, 0x7

    .line 65
    if-lt p2, v0, :cond_4

    .line 66
    .line 67
    if-gt p3, v1, :cond_7

    .line 68
    .line 69
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDropCond:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    if-lt p2, p1, :cond_7

    .line 73
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getMaxBcnDiff()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-gt p1, v0, :cond_7

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isScanHappenedRecentTime()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_7

    .line 85
    .line 86
    if-nez p5, :cond_7

    .line 87
    .line 88
    if-eqz p4, :cond_7

    .line 89
    .line 90
    if-gt p3, v3, :cond_7

    .line 91
    .line 92
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDropCond:I

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    if-nez p3, :cond_6

    .line 96
    .line 97
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    .line 98
    .line 99
    if-lez p1, :cond_6

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string p2, "getBcnState - already in beacon miss in progress!  mBcnMissExpireCnt : "

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    .line 121
    .line 122
    sub-int/2addr p1, v3

    .line 123
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    .line 127
    .line 128
    :cond_7
    :goto_1
    move v1, v4

    .line 129
    :goto_2
    if-nez p3, :cond_8

    .line 130
    .line 131
    iput v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    .line 132
    .line 133
    :cond_8
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingPrevState:I

    .line 134
    .line 135
    return v1
.end method

.method private getEleDetectionType(IIIIIZZ)I
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isStationaryMoment()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const-string v3, "SemWifiEleStateTracker"

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isBigMobileSignalChanged()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isBigWifiSignalChanged()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBaroNotSupported:Z

    .line 20
    .line 21
    if-nez v6, :cond_5

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempMobileChange:Z

    .line 28
    .line 29
    :cond_0
    if-nez v4, :cond_1

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempLev2Change:Z

    .line 34
    .line 35
    :cond_2
    if-nez p1, :cond_3

    .line 36
    .line 37
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempGeoChange:Z

    .line 38
    .line 39
    :cond_3
    iget v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingState:I

    .line 40
    .line 41
    if-eq v7, v1, :cond_4

    .line 42
    .line 43
    if-ne v7, v2, :cond_5

    .line 44
    .line 45
    :cond_4
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempTxChange:Z

    .line 46
    .line 47
    :cond_5
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSmallBaroDetected:Z

    .line 48
    .line 49
    if-nez v7, :cond_7

    .line 50
    .line 51
    if-eqz v6, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    move-object v4, p0

    .line 55
    move v7, p1

    .line 56
    move v5, p4

    .line 57
    move v6, p5

    .line 58
    move/from16 v8, p6

    .line 59
    .line 60
    move/from16 v9, p7

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_7
    :goto_0
    if-eqz v4, :cond_8

    .line 64
    .line 65
    if-nez v5, :cond_9

    .line 66
    .line 67
    :cond_8
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempMobileChange:Z

    .line 68
    .line 69
    if-eqz v6, :cond_a

    .line 70
    .line 71
    :cond_9
    const-string v6, "getEleDetectionType - mTwoBigSignalChangeExpirationCnt start!"

    .line 72
    .line 73
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    if-nez p1, :cond_a

    .line 77
    .line 78
    const-string p4, "getEleDetectionType - Ele detection by mTwoBigSignalChangeExpirationCnt"

    .line 79
    .line 80
    invoke-static {v3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 84
    .line 85
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->eleDetected(III)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->resetTempFlags()V

    .line 90
    .line 91
    .line 92
    return p1

    .line 93
    :cond_a
    if-nez v4, :cond_b

    .line 94
    .line 95
    if-nez v5, :cond_b

    .line 96
    .line 97
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempLev2Change:Z

    .line 98
    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    :cond_b
    const/4 v4, 0x4

    .line 102
    iput v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    .line 103
    .line 104
    const-string v4, "getEleDetectionType - mBigSignalChangeExpirationCnt start!"

    .line 105
    .line 106
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    iget v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    .line 110
    .line 111
    if-lez v4, :cond_c

    .line 112
    .line 113
    const-string p4, "getEleDetectionType - Ele detection after Level2 transition"

    .line 114
    .line 115
    invoke-static {v3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->resetTempFlags()V

    .line 121
    .line 122
    .line 123
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->eleDetected(III)I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    return p0

    .line 128
    :cond_c
    if-eqz p1, :cond_d

    .line 129
    .line 130
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempGeoChange:Z

    .line 131
    .line 132
    if-eqz v4, :cond_6

    .line 133
    .line 134
    :cond_d
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 135
    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    const-string p4, "getEleDetectionType - Ele detection by Big signal change & Geomagnetic sensor"

    .line 139
    .line 140
    invoke-static {v3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    const/4 p4, 0x3

    .line 144
    iput p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 145
    .line 146
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->resetTempFlags()V

    .line 147
    .line 148
    .line 149
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->eleDetected(III)I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    return p0

    .line 154
    :goto_1
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getBcnState(IIIZZ)I

    .line 155
    .line 156
    .line 157
    move-result p4

    .line 158
    iput p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingState:I

    .line 159
    .line 160
    iget-boolean p5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSmallBaroDetected:Z

    .line 161
    .line 162
    const/4 v5, 0x0

    .line 163
    if-nez p5, :cond_e

    .line 164
    .line 165
    iget-boolean p5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBaroNotSupported:Z

    .line 166
    .line 167
    if-eqz p5, :cond_19

    .line 168
    .line 169
    :cond_e
    if-eq p4, v1, :cond_f

    .line 170
    .line 171
    if-eq p4, v2, :cond_f

    .line 172
    .line 173
    iget-boolean p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempTxChange:Z

    .line 174
    .line 175
    if-eqz p4, :cond_19

    .line 176
    .line 177
    :cond_f
    const-string p4, "CheckEleEnvironment - Beacon loss checking started! bcnDiff : "

    .line 178
    .line 179
    invoke-static {p4, p1, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-boolean p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 183
    .line 184
    if-eqz p4, :cond_10

    .line 185
    .line 186
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isGeomagneticValueChanged()Z

    .line 187
    .line 188
    .line 189
    move-result p4

    .line 190
    if-nez p4, :cond_12

    .line 191
    .line 192
    :cond_10
    iget-boolean p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    .line 193
    .line 194
    if-nez p4, :cond_12

    .line 195
    .line 196
    iget p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    .line 197
    .line 198
    if-lez p4, :cond_11

    .line 199
    .line 200
    if-nez v0, :cond_12

    .line 201
    .line 202
    :cond_11
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMatchedEleSignalPattern(II)Z

    .line 203
    .line 204
    .line 205
    move-result p4

    .line 206
    if-eqz p4, :cond_19

    .line 207
    .line 208
    if-eqz v0, :cond_19

    .line 209
    .line 210
    :cond_12
    iget-boolean p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mAggTxBadDetection:Z

    .line 211
    .line 212
    if-eqz p4, :cond_14

    .line 213
    .line 214
    if-eqz p6, :cond_14

    .line 215
    .line 216
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isPrevHalfTimeTxBad()Z

    .line 217
    .line 218
    .line 219
    move-result p4

    .line 220
    if-eqz p4, :cond_13

    .line 221
    .line 222
    if-nez p1, :cond_14

    .line 223
    .line 224
    :cond_13
    new-instance p4, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string p5, "getEleDetectionType - Ele detected! with txbad, mBigSignalChangeExpirationCnt : "

    .line 227
    .line 228
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget p5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    .line 232
    .line 233
    invoke-static {v3, p5, p4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 234
    .line 235
    .line 236
    const/4 p4, 0x6

    .line 237
    iput p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 238
    .line 239
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->resetTempFlags()V

    .line 240
    .line 241
    .line 242
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->eleDetected(III)I

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    return p0

    .line 247
    :cond_14
    :try_start_0
    iget-object p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 248
    .line 249
    invoke-virtual {p4}, Landroid/net/wifi/WifiScanner;->isScanning()Z

    .line 250
    .line 251
    .line 252
    move-result p4

    .line 253
    sput-boolean p4, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsScanRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :catch_0
    sput-boolean v5, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsScanRunning:Z

    .line 257
    .line 258
    :goto_2
    sget-boolean p4, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsScanRunning:Z

    .line 259
    .line 260
    if-nez p4, :cond_15

    .line 261
    .line 262
    iget-boolean p5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    .line 263
    .line 264
    if-eqz p5, :cond_17

    .line 265
    .line 266
    :cond_15
    iget-boolean p5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 267
    .line 268
    if-nez p5, :cond_17

    .line 269
    .line 270
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    .line 271
    .line 272
    if-eqz p4, :cond_16

    .line 273
    .line 274
    const-string p0, "getEleDetectionType - Beacon loss ignored by ScanRunning"

    .line 275
    .line 276
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_16
    const-string p0, "getEleDetectionType - Beacon loss ignored by Step Cnt Pending"

    .line 281
    .line 282
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_17
    iget-boolean p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsInRoamSession:Z

    .line 287
    .line 288
    if-eqz p4, :cond_18

    .line 289
    .line 290
    const-string p0, "getEleDetectionType - Beacon loss ignored during Roaming"

    .line 291
    .line 292
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_18
    new-instance p4, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string p5, "getEleDetectionType - Ele detected! mBigSignalChangeExpirationCnt : "

    .line 299
    .line 300
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget p5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    .line 304
    .line 305
    invoke-static {v3, p5, p4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 306
    .line 307
    .line 308
    const/4 p4, 0x7

    .line 309
    iput p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 310
    .line 311
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->resetTempFlags()V

    .line 312
    .line 313
    .line 314
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->eleDetected(III)I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    :cond_19
    :goto_3
    return v5
.end method

.method private getMaxBcnDiff()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x5

    .line 8
    :goto_0
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 9
    .line 10
    rsub-int/lit8 v2, v2, 0x6

    .line 11
    .line 12
    if-lt v0, v2, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 15
    .line 16
    aget v2, v2, v0

    .line 17
    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    move v1, v2

    .line 21
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return v1
.end method

.method private getPrevAverBcnCnt()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x5

    .line 8
    :goto_0
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 9
    .line 10
    rsub-int/lit8 v3, v2, 0x6

    .line 11
    .line 12
    if-lt v0, v3, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 15
    .line 16
    aget v2, v2, v0

    .line 17
    .line 18
    add-int/2addr v1, v2

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    div-int/2addr v1, v2

    .line 23
    return v1
.end method

.method private getPrevNonZeroBcnCnt()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    :goto_0
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 8
    .line 9
    rsub-int/lit8 v2, v2, 0x6

    .line 10
    .line 11
    if-lt v0, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 14
    .line 15
    aget v2, v2, v0

    .line 16
    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v1
.end method

.method private isBigMobileSignalChanged()Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    move v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    const/4 v4, 0x5

    .line 6
    if-ge v2, v4, :cond_3

    .line 7
    .line 8
    move v4, v2

    .line 9
    :goto_1
    const/4 v5, 0x6

    .line 10
    if-ge v4, v5, :cond_2

    .line 11
    .line 12
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 13
    .line 14
    aget v6, v5, v0

    .line 15
    .line 16
    aget v5, v5, v4

    .line 17
    .line 18
    sub-int/2addr v6, v5

    .line 19
    const/16 v5, 0xc

    .line 20
    .line 21
    if-ge v6, v5, :cond_1

    .line 22
    .line 23
    const/16 v5, -0xc

    .line 24
    .line 25
    if-gt v6, v5, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_2
    move v3, v1

    .line 32
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    return v3
.end method

.method private isBigWifiSignalChanged()Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    move v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    const/4 v4, 0x5

    .line 6
    if-ge v2, v4, :cond_2

    .line 7
    .line 8
    move v4, v2

    .line 9
    :goto_1
    const/4 v5, 0x6

    .line 10
    if-ge v4, v5, :cond_1

    .line 11
    .line 12
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 13
    .line 14
    aget v6, v5, v0

    .line 15
    .line 16
    aget v5, v5, v4

    .line 17
    .line 18
    sub-int/2addr v6, v5

    .line 19
    const/16 v5, 0x9

    .line 20
    .line 21
    if-lt v6, v5, :cond_0

    .line 22
    .line 23
    move v3, v1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v3
.end method

.method private isContinuousMobileRssiDecrease(I)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget v1, p0, v0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    aget v3, p0, v2

    .line 11
    .line 12
    if-lt v1, v3, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    aget v1, p0, v1

    .line 16
    .line 17
    if-lt v3, v1, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    aget v3, p0, v3

    .line 21
    .line 22
    if-lt v1, v3, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    aget v1, p0, v1

    .line 26
    .line 27
    if-lt v3, v1, :cond_1

    .line 28
    .line 29
    const/4 v3, 0x5

    .line 30
    aget p0, p0, v3

    .line 31
    .line 32
    if-lt v1, p0, :cond_1

    .line 33
    .line 34
    if-lt p0, p1, :cond_1

    .line 35
    .line 36
    const-string p0, "SemWifiEleStateTracker"

    .line 37
    .line 38
    const-string p1, "isContinuousMobileRssiDecrease true"

    .line 39
    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v2

    .line 44
    :cond_1
    return v0
.end method

.method private isDoorOpenMobileSignal(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    :goto_0
    const/4 v1, 0x6

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 6
    .line 7
    aget v1, v1, v0

    .line 8
    .line 9
    sub-int v1, p1, v1

    .line 10
    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    if-le v1, v2, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method private isEleRecentStepChangeProved()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentStepCntChangeTime:J

    .line 12
    .line 13
    const-wide/16 v6, 0x0

    .line 14
    .line 15
    cmp-long p0, v4, v6

    .line 16
    .line 17
    if-lez p0, :cond_1

    .line 18
    .line 19
    sub-long/2addr v2, v4

    .line 20
    const-wide/32 v4, 0x2bf20

    .line 21
    .line 22
    .line 23
    cmp-long p0, v2, v4

    .line 24
    .line 25
    if-gez p0, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method private isGeomagneticValueChanged()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevGeomagneticEleState:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/4 v2, 0x6

    .line 13
    if-ge v0, v2, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 16
    .line 17
    aget-boolean v2, v2, v0

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private isMatchedEleSignalPattern(II)Z
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x6

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMobileRssiChangedDuringDiffTime(III)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v2, :cond_5

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    const/4 v4, 0x7

    .line 12
    invoke-direct {p0, p1, v2, v4}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMobileRssiChangedDuringDiffTime(III)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v2, 0x8

    .line 20
    .line 21
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMobileRssiChangedDuringDiffTime(III)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 29
    .line 30
    aget v2, v2, v4

    .line 31
    .line 32
    if-ge p2, v2, :cond_1

    .line 33
    .line 34
    return v3

    .line 35
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isContinuousMobileRssiDecrease(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-direct {p0, p1, v2, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMobileRssiChangedDuringDiffTime(III)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x5

    .line 49
    invoke-direct {p0, p2, v2, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isWifiRssiChangedDuringDiffTime(III)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    :cond_2
    const/16 v0, 0xb

    .line 56
    .line 57
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMobileRssiChangedDuringDiffTime(III)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 64
    .line 65
    aget p0, p0, v4

    .line 66
    .line 67
    if-gt p2, p0, :cond_4

    .line 68
    .line 69
    :cond_3
    return v3

    .line 70
    :cond_4
    return v4

    .line 71
    :cond_5
    :goto_0
    return v3
.end method

.method private isMobileRssiChangedDuringDiffTime(III)Z
    .locals 2

    .line 1
    rsub-int/lit8 v0, p2, 0x6

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 4
    .line 5
    aget p0, p0, v0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    neg-int v1, p1

    .line 14
    neg-int p0, p0

    .line 15
    sub-int/2addr v1, p0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v1, v0

    .line 18
    :goto_0
    if-lt v1, p3, :cond_2

    .line 19
    .line 20
    const-string p0, "isMobileRssiChangedDuringDiffTime - mobileRssi : "

    .line 21
    .line 22
    const-string v0, " secondsCope :"

    .line 23
    .line 24
    const-string v1, " diffCond :"

    .line 25
    .line 26
    invoke-static {p0, v0, p1, p2, v1}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "SemWifiEleStateTracker"

    .line 31
    .line 32
    invoke-static {p1, p3, p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_2
    return v0
.end method

.method public static isPedometerSensorAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "sensor"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/SensorManager;

    .line 8
    .line 9
    const-string v0, "SemWifiEleStateTracker"

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x13

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const-string p0, "STEP_COUNTER available"

    .line 22
    .line 23
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    if-nez p0, :cond_1

    .line 30
    .line 31
    const-string v1, "STEP_COUNTER not available"

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    return p0
.end method

.method private isPrevHalfTimeTxBad()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x3

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 7
    .line 8
    aget-boolean v2, v2, v1

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v0
.end method

.method private isScanHappenedRecentTime()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x6

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 7
    .line 8
    aget-boolean v2, v2, v1

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v0
.end method

.method private isStationaryMoment()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    move v2, v0

    .line 9
    :goto_0
    const/4 v3, 0x6

    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 13
    .line 14
    aget-boolean v3, v3, v2

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    return v0
.end method

.method private isWifiRssiChangedDuringDiffTime(III)Z
    .locals 2

    .line 1
    rsub-int/lit8 v0, p2, 0x6

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 4
    .line 5
    aget p0, p0, v0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    neg-int v1, p1

    .line 14
    neg-int p0, p0

    .line 15
    sub-int/2addr v1, p0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v1, v0

    .line 18
    :goto_0
    if-lt v1, p3, :cond_2

    .line 19
    .line 20
    const-string p0, "isWifiRssiChangedDuringDiffTime - wifiRssi : "

    .line 21
    .line 22
    const-string v0, " secondsCope :"

    .line 23
    .line 24
    const-string v1, " diffCond :"

    .line 25
    .line 26
    invoke-static {p0, v0, p1, p2, v1}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "SemWifiEleStateTracker"

    .line 31
    .line 32
    invoke-static {p1, p3, p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_2
    return v0
.end method

.method private printParameterHistory()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Ele Parameters BD : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    aget v3, v3, v4

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    aget v3, v3, v5

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 44
    .line 45
    const/4 v6, 0x3

    .line 46
    aget v3, v3, v6

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 55
    .line 56
    const/4 v7, 0x4

    .line 57
    aget v3, v3, v7

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 66
    .line 67
    const/4 v8, 0x5

    .line 68
    aget v3, v3, v8

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v3, " MD : "

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 79
    .line 80
    aget v3, v3, v2

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 89
    .line 90
    aget v3, v3, v4

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 99
    .line 100
    aget v3, v3, v5

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 109
    .line 110
    aget v3, v3, v6

    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 119
    .line 120
    aget v3, v3, v7

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 129
    .line 130
    aget v3, v3, v8

    .line 131
    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v3, " WD : "

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 141
    .line 142
    aget v3, v3, v2

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 151
    .line 152
    aget v3, v3, v4

    .line 153
    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 161
    .line 162
    aget v3, v3, v5

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 171
    .line 172
    aget v3, v3, v6

    .line 173
    .line 174
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 181
    .line 182
    aget v3, v3, v7

    .line 183
    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 191
    .line 192
    aget v3, v3, v8

    .line 193
    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v3, " GC : "

    .line 198
    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 203
    .line 204
    aget-boolean v3, v3, v2

    .line 205
    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 213
    .line 214
    aget-boolean v3, v3, v4

    .line 215
    .line 216
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 223
    .line 224
    aget-boolean v3, v3, v5

    .line 225
    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 233
    .line 234
    aget-boolean v3, v3, v6

    .line 235
    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 243
    .line 244
    aget-boolean v3, v3, v7

    .line 245
    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 253
    .line 254
    aget-boolean v3, v3, v8

    .line 255
    .line 256
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v3, " SC : "

    .line 260
    .line 261
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 265
    .line 266
    aget-boolean v3, v3, v2

    .line 267
    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 275
    .line 276
    aget-boolean v3, v3, v4

    .line 277
    .line 278
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 285
    .line 286
    aget-boolean v3, v3, v5

    .line 287
    .line 288
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 295
    .line 296
    aget-boolean v3, v3, v6

    .line 297
    .line 298
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 305
    .line 306
    aget-boolean v3, v3, v7

    .line 307
    .line 308
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 315
    .line 316
    aget-boolean v3, v3, v8

    .line 317
    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string v3, " SH : "

    .line 322
    .line 323
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 327
    .line 328
    aget-boolean v3, v3, v2

    .line 329
    .line 330
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 337
    .line 338
    aget-boolean v3, v3, v4

    .line 339
    .line 340
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 347
    .line 348
    aget-boolean v3, v3, v5

    .line 349
    .line 350
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 357
    .line 358
    aget-boolean v3, v3, v6

    .line 359
    .line 360
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 367
    .line 368
    aget-boolean v3, v3, v7

    .line 369
    .line 370
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 377
    .line 378
    aget-boolean v3, v3, v8

    .line 379
    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v3, " TB : "

    .line 384
    .line 385
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 389
    .line 390
    aget-boolean v2, v3, v2

    .line 391
    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 399
    .line 400
    aget-boolean v2, v2, v4

    .line 401
    .line 402
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 409
    .line 410
    aget-boolean v2, v2, v5

    .line 411
    .line 412
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 419
    .line 420
    aget-boolean v2, v2, v6

    .line 421
    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 429
    .line 430
    aget-boolean v2, v2, v7

    .line 431
    .line 432
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 439
    .line 440
    aget-boolean p0, p0, v8

    .line 441
    .line 442
    const-string v1, "SemWifiEleStateTracker"

    .line 443
    .line 444
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 445
    .line 446
    .line 447
    return-void
.end method

.method private resetTempFlags()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempMobileChange:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempGeoChange:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempLev2Change:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempTxChange:Z

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempElevatorDetectedCycleCount:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSmallBaroDetected:Z

    .line 13
    .line 14
    return-void
.end method

.method private runRecoveryEnableTimer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockRoamTimer:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiEleStateTracker"

    .line 6
    .line 7
    const-string v1, "mBlockRoamTimer timer canceled"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockRoamTimer:Ljava/util/Timer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/util/Timer;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockRoamTimer:Ljava/util/Timer;

    .line 23
    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v2, 0x61a8

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private setBarometerResults(F)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBarometer:F

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    cmpl-float v2, v2, v3

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBarometer:F

    .line 13
    .line 14
    :cond_0
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentBaroChangeTime:J

    .line 15
    .line 16
    sub-long/2addr v0, v4

    .line 17
    const-wide/16 v4, 0x7d0

    .line 18
    .line 19
    cmp-long v0, v0, v4

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-ltz v0, :cond_1

    .line 24
    .line 25
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mCurrentBarometer:F

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentBaroChangeTime:J

    .line 32
    .line 33
    move p1, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move p1, v2

    .line 36
    :goto_0
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBarometer:F

    .line 37
    .line 38
    cmpl-float v4, v0, v3

    .line 39
    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    iget v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mCurrentBarometer:F

    .line 43
    .line 44
    cmpl-float v3, v4, v3

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    sub-float/2addr v4, v0

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, "Pressure Diff: "

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v0, "SemWifiEleStateTracker"

    .line 66
    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    float-to-double v3, v4

    .line 71
    const-wide v5, -0x4036666666666666L    # -0.2

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    cmpg-double p1, v3, v5

    .line 77
    .line 78
    if-ltz p1, :cond_2

    .line 79
    .line 80
    const-wide v5, 0x3fc999999999999aL    # 0.2

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    cmpl-double p1, v3, v5

    .line 86
    .line 87
    if-lez p1, :cond_3

    .line 88
    .line 89
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSmallBaroDetected:Z

    .line 90
    .line 91
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempElevatorDetectedCycleCount:I

    .line 92
    .line 93
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v1, "Barometer value: Prev "

    .line 96
    .line 97
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBarometer:F

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, " Current "

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mCurrentBarometer:F

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, " mSmallBaroDetected : "

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSmallBaroDetected:Z

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mCurrentBarometer:F

    .line 133
    .line 134
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBarometer:F

    .line 135
    .line 136
    :cond_4
    return-void
.end method

.method private setMonitorEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    .line 11
    :cond_0
    const-string v0, "SemWifiEleStateTracker"

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mMonitorEnabled:Z

    if-nez v1, :cond_1

    .line 12
    const-string v1, "mMonitorEnabled true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, v0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->resetParameters(IZZ)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 15
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mMonitorEnabled:Z

    if-eqz v1, :cond_2

    .line 16
    const-string v1, "mMonitorEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->unregisterGeomagneticListener()V

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->unregisterBarometer()V

    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;->eleCheckFinished()V

    .line 20
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mMonitorEnabled:Z

    return-void
.end method

.method private shiftParameters(IIIZIZZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    sub-int/2addr v1, v2

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    sub-int/2addr v1, v2

    .line 14
    aput p1, v0, v1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 17
    .line 18
    array-length v0, p1

    .line 19
    sub-int/2addr v0, v2

    .line 20
    invoke-static {p1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 24
    .line 25
    array-length v0, p1

    .line 26
    sub-int/2addr v0, v2

    .line 27
    aput p2, p1, v0

    .line 28
    .line 29
    const/4 p1, -0x1

    .line 30
    if-eq p3, p1, :cond_1

    .line 31
    .line 32
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 33
    .line 34
    const/4 p2, 0x6

    .line 35
    if-ge p1, p2, :cond_0

    .line 36
    .line 37
    if-nez p5, :cond_0

    .line 38
    .line 39
    add-int/2addr p1, v2

    .line 40
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 43
    .line 44
    array-length p2, p1

    .line 45
    sub-int/2addr p2, v2

    .line 46
    invoke-static {p1, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 50
    .line 51
    array-length p2, p1

    .line 52
    sub-int/2addr p2, v2

    .line 53
    aput p3, p1, p2

    .line 54
    .line 55
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 56
    .line 57
    array-length p2, p1

    .line 58
    sub-int/2addr p2, v2

    .line 59
    invoke-static {p1, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 63
    .line 64
    array-length p2, p1

    .line 65
    sub-int/2addr p2, v2

    .line 66
    aput-boolean p8, p1, p2

    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 69
    .line 70
    array-length p2, p1

    .line 71
    sub-int/2addr p2, v2

    .line 72
    invoke-static {p1, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 76
    .line 77
    array-length p2, p1

    .line 78
    sub-int/2addr p2, v2

    .line 79
    aput-boolean p7, p1, p2

    .line 80
    .line 81
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 82
    .line 83
    array-length p2, p1

    .line 84
    sub-int/2addr p2, v2

    .line 85
    invoke-static {p1, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 89
    .line 90
    array-length p2, p1

    .line 91
    sub-int/2addr p2, v2

    .line 92
    aput-boolean p4, p1, p2

    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 95
    .line 96
    array-length p2, p1

    .line 97
    sub-int/2addr p2, v2

    .line 98
    invoke-static {p1, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 102
    .line 103
    array-length p1, p0

    .line 104
    sub-int/2addr p1, v2

    .line 105
    aput-boolean p6, p0, p1

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public checkDoorOpen(III)V
    .locals 10

    .line 1
    const-string p2, "checkDoorOpen"

    .line 2
    .line 3
    const-string v0, "SemWifiEleStateTracker"

    .line 4
    .line 5
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    if-eq p2, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDoorOpenCheckCount:I

    .line 15
    .line 16
    rem-int/2addr p2, v1

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->printParameterHistory()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDoorOpenCheckCount:I

    .line 23
    .line 24
    add-int/lit8 p2, p2, 0x1

    .line 25
    .line 26
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDoorOpenCheckCount:I

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isStationaryMoment()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isDoorOpenMobileSignal(I)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    const-string p2, "door open signal detected"

    .line 41
    .line 42
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->runRecoveryEnableTimer()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    move-object v1, p0

    .line 56
    move v2, p1

    .line 57
    move v3, p3

    .line 58
    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->shiftParameters(IIIZIZZZ)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    iput-boolean p0, v1, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    .line 63
    .line 64
    return-void
.end method

.method public checkNeedRecoverFromEle()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    .line 2
    .line 3
    const-string v1, "SemWifiEleStateTracker"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "mEleMoving to false by Pedometer."

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->clearEleMoving()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;->eleEnableRecovery()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleState:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v0, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne v0, v2, :cond_2

    .line 27
    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "checkNeedRecoverFromEle - step (current, last) : "

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getCurrentStepCnt()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, " , "

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLastStepByEle:J

    .line 48
    .line 49
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getCurrentStepCnt()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLastStepByEle:J

    .line 64
    .line 65
    sub-long/2addr v2, v4

    .line 66
    const-wide/16 v4, 0xa

    .line 67
    .line 68
    cmp-long v0, v2, v4

    .line 69
    .line 70
    if-lez v0, :cond_2

    .line 71
    .line 72
    const-string v0, "ele finished by step"

    .line 73
    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    .line 78
    .line 79
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;->eleFinishedByStep()V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method

.method public clearEleMoving()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    .line 3
    .line 4
    return-void
.end method

.method public geomagneticEnable()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoAvailable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isGeomagneticSensorEnableValidTime()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "SemWifiEleStateTracker"

    .line 16
    .line 17
    const-string v1, "registerEleGeomagnetic sensor by Pedometer Walk."

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->registerGeomagneticListener()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public getCurrentStepCnt()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->isPedometerEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->getCurrentTotalStepCnt()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepCnt:J

    .line 18
    .line 19
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepCnt:J

    .line 20
    .line 21
    return-wide v0
.end method

.method public getEleReason()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 2
    .line 3
    return p0
.end method

.method public getEleState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleState:I

    .line 2
    .line 3
    return p0
.end method

.method public getPollingEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPollingSkip:Z

    .line 2
    .line 3
    return p0
.end method

.method public isBeginTimeGeoMagneticRequired()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepCnt:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->isPedometerEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepCnt:J

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->getCurrentTotalStepCnt()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "SemWifiEleStateTracker"

    .line 32
    .line 33
    const-string v1, "Pedometer step movement detected! enable GeoMagnetic Sensor!"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentStepCntChangeTime:J

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->registerGeomagneticListener()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public isEleDetected(IIIIZ)I
    .locals 15

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move/from16 v3, p3

    .line 4
    .line 5
    move/from16 v10, p4

    .line 6
    .line 7
    const/4 v11, 0x0

    .line 8
    iput v11, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 9
    .line 10
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    .line 11
    .line 12
    rem-int/lit8 v2, v1, 0x6

    .line 13
    .line 14
    const/4 v12, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    if-ne v1, v12, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->printParameterHistory()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    .line 23
    .line 24
    add-int/lit8 v2, v1, -0x1

    .line 25
    .line 26
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    .line 27
    .line 28
    const-string v9, "SemWifiEleStateTracker"

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    const-string v0, "Monitoring finished by expiration count"

    .line 33
    .line 34
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v11}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setMonitorEnabled(Z)V

    .line 38
    .line 39
    .line 40
    return v11

    .line 41
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getPrevNonZeroBcnCnt()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getPrevAverBcnCnt()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnCnt:I

    .line 50
    .line 51
    const/4 v2, -0x1

    .line 52
    if-eq v1, v2, :cond_7

    .line 53
    .line 54
    if-gez v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0, v12, v11, v12}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->resetParameters(IZZ)V

    .line 57
    .line 58
    .line 59
    return v11

    .line 60
    :cond_3
    sub-int v1, v0, v1

    .line 61
    .line 62
    if-gt v1, v2, :cond_4

    .line 63
    .line 64
    const-string v4, "isEleDetected - Abnormal beacon cnt : "

    .line 65
    .line 66
    invoke-static {v4, v1, v9}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    move v1, v6

    .line 70
    :cond_4
    const/16 v4, 0xd

    .line 71
    .line 72
    if-le v1, v4, :cond_5

    .line 73
    .line 74
    move v1, v4

    .line 75
    :cond_5
    if-lez v1, :cond_6

    .line 76
    .line 77
    iput-boolean v11, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    .line 78
    .line 79
    :cond_6
    move v4, v1

    .line 80
    goto :goto_0

    .line 81
    :cond_7
    move v4, v2

    .line 82
    :goto_0
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevTxBadCnt:I

    .line 83
    .line 84
    if-ne v1, v2, :cond_9

    .line 85
    .line 86
    :cond_8
    move v7, v11

    .line 87
    goto :goto_1

    .line 88
    :cond_9
    if-ge v1, v10, :cond_8

    .line 89
    .line 90
    move v7, v12

    .line 91
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBaroNotSupported:Z

    .line 92
    .line 93
    if-nez v1, :cond_a

    .line 94
    .line 95
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBarometerReader:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;

    .line 96
    .line 97
    if-eqz v1, :cond_a

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->getBaroPressure()F

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setBarometerResults(F)V

    .line 104
    .line 105
    .line 106
    :cond_a
    const/16 v1, -0x46

    .line 107
    .line 108
    const/4 v13, 0x4

    .line 109
    if-gt v3, v1, :cond_b

    .line 110
    .line 111
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 112
    .line 113
    const/4 v2, 0x6

    .line 114
    if-lt v1, v2, :cond_b

    .line 115
    .line 116
    if-ge v4, v13, :cond_b

    .line 117
    .line 118
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 119
    .line 120
    aget v1, v1, v11

    .line 121
    .line 122
    if-gt v3, v1, :cond_b

    .line 123
    .line 124
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isEleRecentStepChangeProved()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_b

    .line 129
    .line 130
    move-object v1, p0

    .line 131
    move/from16 v8, p5

    .line 132
    .line 133
    move v2, v4

    .line 134
    move v4, v3

    .line 135
    move/from16 v3, p1

    .line 136
    .line 137
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getEleDetectionType(IIIIIZZ)I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    move v14, v5

    .line 142
    goto :goto_2

    .line 143
    :cond_b
    move v2, v4

    .line 144
    move v14, v11

    .line 145
    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempMobileChange:Z

    .line 146
    .line 147
    if-nez v3, :cond_c

    .line 148
    .line 149
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempGeoChange:Z

    .line 150
    .line 151
    if-nez v3, :cond_c

    .line 152
    .line 153
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempLev2Change:Z

    .line 154
    .line 155
    if-nez v3, :cond_c

    .line 156
    .line 157
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempTxChange:Z

    .line 158
    .line 159
    if-nez v3, :cond_c

    .line 160
    .line 161
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSmallBaroDetected:Z

    .line 162
    .line 163
    if-eqz v3, :cond_d

    .line 164
    .line 165
    :cond_c
    iget v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempElevatorDetectedCycleCount:I

    .line 166
    .line 167
    add-int/2addr v3, v12

    .line 168
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempElevatorDetectedCycleCount:I

    .line 169
    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v4, "StatusDetection:mTempMobileChange: "

    .line 173
    .line 174
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempMobileChange:Z

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v4, " mTempGeoChange: "

    .line 183
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempGeoChange:Z

    .line 188
    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v4, " mTempLev2Change:  mTempTxChange: "

    .line 193
    .line 194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempTxChange:Z

    .line 198
    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v4, " mSmallBaroDetected: "

    .line 203
    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSmallBaroDetected:Z

    .line 208
    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v4, " mTempElevatorDetectedCycleCount: "

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempElevatorDetectedCycleCount:I

    .line 218
    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    iget v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTempElevatorDetectedCycleCount:I

    .line 230
    .line 231
    if-le v3, v13, :cond_d

    .line 232
    .line 233
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->resetTempFlags()V

    .line 234
    .line 235
    .line 236
    :cond_d
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevGeomagneticEleState:Z

    .line 237
    .line 238
    if-nez v3, :cond_e

    .line 239
    .line 240
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 241
    .line 242
    if-eqz v3, :cond_e

    .line 243
    .line 244
    move v5, v12

    .line 245
    goto :goto_3

    .line 246
    :cond_e
    move v5, v11

    .line 247
    :goto_3
    iget v6, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mStableCount:I

    .line 248
    .line 249
    move v8, v7

    .line 250
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    .line 251
    .line 252
    move-object v1, p0

    .line 253
    move/from16 v3, p3

    .line 254
    .line 255
    move/from16 v9, p5

    .line 256
    .line 257
    move v4, v2

    .line 258
    move/from16 v2, p1

    .line 259
    .line 260
    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->shiftParameters(IIIZIZZZ)V

    .line 261
    .line 262
    .line 263
    iput v10, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevTxBadCnt:I

    .line 264
    .line 265
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnCnt:I

    .line 266
    .line 267
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 268
    .line 269
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevGeomagneticEleState:Z

    .line 270
    .line 271
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mStableCount:I

    .line 272
    .line 273
    if-eqz v0, :cond_f

    .line 274
    .line 275
    sub-int/2addr v0, v12

    .line 276
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mStableCount:I

    .line 277
    .line 278
    :cond_f
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    .line 279
    .line 280
    if-eqz v0, :cond_10

    .line 281
    .line 282
    sub-int/2addr v0, v12

    .line 283
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    .line 284
    .line 285
    :cond_10
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    .line 286
    .line 287
    if-eqz v0, :cond_11

    .line 288
    .line 289
    sub-int/2addr v0, v12

    .line 290
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    .line 291
    .line 292
    :cond_11
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    .line 293
    .line 294
    if-eqz v0, :cond_12

    .line 295
    .line 296
    sub-int/2addr v0, v12

    .line 297
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    .line 298
    .line 299
    :cond_12
    iput-boolean v11, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    .line 300
    .line 301
    return v14
.end method

.method public isGeomagneticSensorEnableValidTime()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    if-le p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public isInEleMoving()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    .line 2
    .line 3
    return p0
.end method

.method public isMonitoring()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mMonitorEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public limitMonitorTimeByLevel2()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    .line 5
    .line 6
    return-void
.end method

.method public registerBarometer()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBarometerReader:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->startReading()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public registerGeomagneticListener()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoAvailable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagneticAction:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->registerEleDetector(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;)Z

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    .line 18
    .line 19
    const-string p0, "SemWifiEleStateTracker"

    .line 20
    .line 21
    const-string v0, "registerGeomagneticListener done"

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public registerPedometer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->registerPedometer()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public resetParameters(IZZ)V
    .locals 2

    .line 1
    const-string v0, "SemWifiEleStateTracker"

    .line 2
    .line 3
    const-string v1, "resetEleParameters"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSmallBaroDetected:Z

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    move p3, v0

    .line 14
    :goto_0
    const/4 v1, 0x6

    .line 15
    if-ge p3, v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    .line 18
    .line 19
    aput v0, v1, p3

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    .line 22
    .line 23
    aput v0, v1, p3

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    .line 26
    .line 27
    aput v0, v1, p3

    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    .line 30
    .line 31
    aput-boolean v0, v1, p3

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    .line 34
    .line 35
    aput-boolean v0, v1, p3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    .line 38
    .line 39
    aput-boolean v0, v1, p3

    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    .line 42
    .line 43
    aput-boolean v0, v1, p3

    .line 44
    .line 45
    add-int/lit8 p3, p3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p3, -0x1

    .line 49
    iput p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnCnt:I

    .line 50
    .line 51
    iput p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevTxBadCnt:I

    .line 52
    .line 53
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 54
    .line 55
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mStableCount:I

    .line 56
    .line 57
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPollingSkip:Z

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    .line 64
    .line 65
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    .line 66
    .line 67
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    .line 68
    .line 69
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingPrevState:I

    .line 70
    .line 71
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    .line 72
    .line 73
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    .line 74
    .line 75
    if-eqz p2, :cond_1

    .line 76
    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockDetectionUntilNewAssoc:Z

    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public setAggTxBadDetection(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mAggTxBadDetection:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEleState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleState:I

    .line 2
    .line 3
    const-string p0, "setEleState - mEleState : "

    .line 4
    .line 5
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "SemWifiEleStateTracker"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setMonitorEnabled(ZZ)V
    .locals 2

    .line 1
    const-string v0, "setMonitorEnabled : "

    const-string v1, "SemWifiEleStateTracker"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setMonitorEnabled(Z)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockDetectionUntilNewAssoc:Z

    :cond_0
    return-void
.end method

.method public setPedoRecentStep()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    .line 3
    .line 4
    const/16 v0, 0xb4

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    .line 7
    .line 8
    return-void
.end method

.method public setPollingSkip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPollingSkip:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRoam(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsInRoamSession:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSemWifiEleStateTrackerCallBack(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    .line 2
    .line 3
    return-void
.end method

.method public unregisterBarometer()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBarometerReader:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->stopReading()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public unregisterGeomagneticListener()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoAvailable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->unregisterEleDetector()V

    .line 15
    .line 16
    .line 17
    const-string p0, "SemWifiEleStateTracker"

    .line 18
    .line 19
    const-string v0, "unregisterGeomagneticListener done"

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public unregisterPedometer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->unregisterPedometer()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
