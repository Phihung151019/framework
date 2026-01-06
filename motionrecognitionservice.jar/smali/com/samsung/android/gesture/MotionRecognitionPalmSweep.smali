.class public Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;
.super Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
.source "MotionRecognitionPalmSweep.java"


# static fields
.field private static final DEVICE_TYPE_PHONE:I = 0x0

.field private static final DEVICE_TYPE_PHONE_STRING:Ljava/lang/String; = "phone"

.field private static final DEVICE_TYPE_TABLET:I = 0x1

.field private static final DEVICE_TYPE_TABLET_STRING:Ljava/lang/String; = "tablet"

.field private static final DEVICE_TYPE_UNKNOWN:I = -0x1

.field private static final DEVICE_TYPE_UNKNOWN_STRING:Ljava/lang/String; = "unknown"

.field private static final EPSILON:F = 1.0E-7f

.field private static final SWEEP_DIRECTION_FULL:I = 0x4

.field private static final SWEEP_DIRECTION_LEFT:I = 0x2

.field private static final SWEEP_DIRECTION_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PalmMotion"

.field private static final THRESHOLD_INCH:F = 4.0f

.field private static final WEIGHT_FACTOR:F = 0.7f

.field private static final sweptAreaSize:I = 0x8


# instance fields
.field private BASE_SCREEN_WIDTH_SWEEP:I

.field private BASE_SWEEP_VAR_X:F

.field private IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

.field private final THRESHOLD_COORDINATE_Y:I

.field private THRESHOLD_ECCEN_SWEEP:F

.field private THRESHOLD_ECCEN_SWEEP_LANDSCAPE:F

.field private THRESHOLD_ECCEN_SWEEP_PORTRAIT:F

.field private THRESHOLD_MAJOR_SWEEP:F

.field private THRESHOLD_MAJOR_SWEEP_LANDSCAPE:F

.field private THRESHOLD_MAJOR_SWEEP_PORTRAIT:F

.field private THRESHOLD_SWEEP_DIST:I

.field private TOLERANCE_REVERSE_DIST_SWEEP:F

.field private mCntUnderEccenTH:I

.field private mExceedVar:F

.field private mFailCntArea:I

.field private mFailCntDist:I

.field private mFailCntEccen:I

.field private mFailCntReverse:I

.field private mFailCntTime:I

.field private mFailCntVar:I

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsEnabledPalmSweep:Z

.field private mIsReadyPalmSweep:Z

.field private mIsSweepDown:Z

.field private mIsSweepDownPrev:Z

.field private mLastMeanX:F

.field private mLastTimeSweepEvent:J

.field private mMeanX:F

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mPalmSweepCnt:I

.field private mPassCnt:I

.field protected mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

.field private mSumLeftToRight:F

.field private mSumRightToLeft:F

.field private mSweepStartX:F

.field private final mSweptArea:[Z

.field private mTimeSweepStartMS:J

.field private final mTypeDevice:I

.field private mbSuccessCoordinateY:Z

.field private slope:F

.field private yIntercept:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "palmData"    # Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;-><init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V

    .line 111
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    .line 112
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_PORTRAIT:F

    .line 113
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_LANDSCAPE:F

    .line 114
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    .line 115
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_PORTRAIT:F

    .line 116
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_LANDSCAPE:F

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

    .line 119
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SCREEN_WIDTH_SWEEP:I

    .line 120
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    .line 122
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_SWEEP_DIST:I

    .line 123
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SCREEN_WIDTH_SWEEP:I

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->TOLERANCE_REVERSE_DIST_SWEEP:F

    .line 125
    const/16 v2, 0xfa

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_COORDINATE_Y:I

    .line 130
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    .line 131
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    .line 132
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 133
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDownPrev:Z

    .line 134
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    .line 136
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweepStartX:F

    .line 137
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mTimeSweepStartMS:J

    .line 138
    iput-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastTimeSweepEvent:J

    .line 140
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    .line 141
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastMeanX:F

    .line 143
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    .line 144
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    .line 145
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mExceedVar:F

    .line 146
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    .line 147
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mbSuccessCoordinateY:Z

    .line 149
    const/16 v2, 0x8

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    .line 152
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPassCnt:I

    .line 153
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntArea:I

    .line 154
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntEccen:I

    .line 155
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntVar:I

    .line 156
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntDist:I

    .line 157
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntTime:I

    .line 158
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntReverse:I

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mInputManager:Landroid/hardware/input/InputManager;

    .line 162
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 165
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->slope:F

    .line 166
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->yIntercept:F

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getDeviceType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mTypeDevice:I

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PALM_SWEEP] TypeDevice :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mTypeDevice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PalmMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method private calculateDistanceEquation()V
    .locals 6

    .line 499
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMinWidth()I

    move-result v0

    int-to-float v0, v0

    .line 500
    .local v0, "x1":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    .line 502
    .local v2, "y1":F
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMaxWidth()I

    move-result v3

    int-to-float v3, v3

    .line 503
    .local v3, "x2":F
    div-float v1, v3, v1

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v1, v4

    .line 505
    .local v1, "y2":F
    sub-float v4, v3, v0

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 506
    return-void

    .line 509
    :cond_0
    sub-float v4, v1, v2

    sub-float v5, v3, v0

    div-float/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->slope:F

    .line 511
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->slope:F

    mul-float/2addr v4, v0

    sub-float v4, v2, v4

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->yIntercept:F

    .line 512
    return-void
.end method

.method private checkActionMoveToKeep()V
    .locals 4

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastTimeActionUp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 447
    .local v0, "timeGap":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1e

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 448
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 449
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 451
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->setActionMoveEvent()V

    .line 453
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDownPrev:Z

    if-eqz v2, :cond_0

    .line 454
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 455
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    .line 456
    const-string v2, "PalmMotion"

    const-string v3, "[PALM_SWEEP] KEEP ACTION MOVE!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    return-void
.end method

.method private checkCurrentSweptAreaInDisplay()V
    .locals 4

    .line 732
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    div-int/2addr v0, v1

    .line 733
    .local v0, "range":I
    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_2

    .line 734
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_SWEEP] Out of range! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PalmMotion"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    if-le v0, v1, :cond_1

    const/4 v0, 0x7

    .line 736
    :cond_1
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 740
    :cond_3
    return-void
.end method

.method private checkPocketMode()Z
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->getPopUpState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    const-string v0, "PalmMotion"

    const-string v1, "[PALM_SWEEP] SKIP PALM SWEEP IN ACCIDENTAL TOUCH PREVENTION MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v0, 0x1

    return v0

    .line 828
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkSweepDownFailConditions()V
    .locals 4

    .line 665
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 666
    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumEccen()F

    move-result v0

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 667
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    .line 670
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 671
    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMeanY()F

    move-result v0

    const/high16 v2, 0x437a0000    # 250.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 672
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mbSuccessCoordinateY:Z

    .line 675
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastMeanX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 678
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastMeanX:F

    sub-float/2addr v0, v2

    .line 679
    .local v0, "delta":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    .line 680
    :cond_2
    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    .line 684
    .end local v0    # "delta":F
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 685
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mExceedVar:F

    .line 687
    :cond_4
    return-void
.end method

.method private checkSweepDownLastConditions(FLjava/lang/StringBuffer;)Z
    .locals 5
    .param p1, "movedDistance"    # F
    .param p2, "sweepDirection"    # Ljava/lang/StringBuffer;

    .line 691
    const/4 v0, 0x1

    .line 693
    .local v0, "isSweepDown":Z
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->isSuccessConditionSweptArea()Z

    move-result v1

    const-string v2, "PalmMotion"

    if-nez v1, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_SWEEP] FAIL by SWEPT_AREA   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    invoke-static {v3}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntArea:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntArea:I

    .line 699
    :cond_0
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    div-int/lit8 v3, v3, 0x2

    const-string v4, " > "

    if-le v1, v3, :cond_1

    .line 700
    const/4 v0, 0x0

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_SWEEP] FAIL by UNDER_ECCEN ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntEccen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntEccen:I

    .line 705
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mExceedVar:F

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 706
    const/4 v0, 0x0

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_SWEEP] FAIL by EXCEED_VAR  ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mExceedVar:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (BASE_SWEEP_VAR_X)]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntVar:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntVar:I

    .line 711
    :cond_2
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_SWEEP_DIST:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    .line 712
    const/4 v0, 0x0

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_SWEEP] FAIL by DISTANCE  ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Dist:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_SWEEP_DIST:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [ R->L : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ] [ L->R : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ] [ WIDTH: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 717
    invoke-virtual {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ] [ WDPI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 718
    invoke-virtual {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getxDpi()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntDist:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntDist:I

    .line 723
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mbSuccessCoordinateY:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_4

    .line 724
    const/4 v0, 0x0

    .line 725
    const-string v1, "[PALM_SWEEP] FAIL by COORDINATE Y"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_4
    return v0
.end method

.method private checkSweepDownStartConditions()Z
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 649
    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumMajor()F

    move-result v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumEccen()F

    move-result v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMeanX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweepStartX:F

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mTimeSweepStartMS:J

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PALM_SWEEP] START [CNT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweepStartX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Major: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 655
    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumMajor()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", BASE_SWEEP_VAR_X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Landscape : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 657
    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    const-string v2, "PalmMotion"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return v1

    .line 660
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private detectSweepDownAction(FLjava/lang/StringBuffer;)V
    .locals 8
    .param p1, "movedDistance"    # F
    .param p2, "sweepDirection"    # Ljava/lang/StringBuffer;

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mTimeSweepStartMS:J

    sub-long/2addr v0, v2

    .line 770
    .local v0, "timeGap":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const-string v4, "PalmMotion"

    if-ltz v2, :cond_3

    const-wide/16 v5, 0x514

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    goto/16 :goto_0

    .line 774
    :cond_0
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->TOLERANCE_REVERSE_DIST_SWEEP:F

    cmpg-float v2, v2, v5

    const-string v5, "]"

    const-string v6, " Dist["

    if-gtz v2, :cond_1

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PALM_SWEEP] RIGHT -> LEFT  : AREA"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    invoke-static {v7}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->onPalmEvents(I)V

    goto/16 :goto_1

    .line 779
    :cond_1
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    iget v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->TOLERANCE_REVERSE_DIST_SWEEP:F

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_2

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_SWEEP] LEFT  -> RIGHT : AREA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    invoke-static {v3}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->onPalmEvents(I)V

    goto/16 :goto_1

    .line 785
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PALM_SWEEP] FAIL by REVERSE  ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Dist:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " > "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_SWEEP_DIST:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "] [ R-> L : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ] [ L-> R : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->TOLERANCE_REVERSE_DIST_SWEEP:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntReverse:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntReverse:I

    goto :goto_1

    .line 771
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PALM_SWEEP] FAIL by TIME GAP    ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " NOT 100 < GAP < 1300]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntTime:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntTime:I

    .line 790
    :goto_1
    return-void
.end method

.method private getDeviceType()I
    .locals 2

    .line 179
    const-string v0, "ro.build.characteristics"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "strType":Ljava/lang/String;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v1, 0x0

    return v1

    .line 183
    :cond_0
    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const/4 v1, 0x1

    return v1

    .line 186
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getSweepDirection(F)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "movedDistance"    # F

    .line 623
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 624
    .local v0, "sweepDirection":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 625
    const-string v1, "Right"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 628
    :cond_0
    const-string v1, "Left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    :goto_0
    return-object v0
.end method

.method private getThresholdDistance()I
    .locals 4

    .line 515
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v0

    .line 516
    .local v0, "width":I
    div-int/lit8 v1, v0, 0x2

    .line 517
    .local v1, "distance":I
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->slope:F

    const v3, 0x33d6bf95    # 1.0E-7f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 518
    return v1

    .line 519
    :cond_0
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->slope:F

    const v3, 0x3efffffd    # 0.4999999f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 520
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->slope:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->yIntercept:F

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 522
    :cond_1
    return v1
.end method

.method private isScreenWidthZero()Z
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PALM_SWEEP] #1 Screen Width is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PalmMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateScreenInfo()V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PALM_SWEEP] #2 Screen Width is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Still."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x1

    return v0

    .line 643
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSuccessConditionSweptArea()Z
    .locals 5

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "flipCnt":I
    const/4 v1, 0x0

    .line 747
    .local v1, "sweptAreaCnt":I
    const/4 v2, 0x1

    .line 748
    .local v2, "beforeValue":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 750
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    .line 751
    add-int/lit8 v1, v1, 0x1

    .line 754
    :cond_0
    if-lez v1, :cond_2

    .line 755
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    aget-boolean v4, v4, v3

    xor-int/2addr v4, v2

    if-eqz v4, :cond_1

    .line 756
    add-int/lit8 v0, v0, 0x1

    .line 758
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    aget-boolean v2, v4, v3

    .line 748
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 762
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x2

    if-ge v0, v3, :cond_5

    if-ge v1, v3, :cond_4

    goto :goto_1

    .line 765
    :cond_4
    const/4 v3, 0x1

    return v3

    .line 763
    :cond_5
    :goto_1
    const/4 v3, 0x0

    return v3
.end method

.method private sendPalmSweepEvents(ILjava/lang/String;)V
    .locals 4
    .param p1, "direction"    # I
    .param p2, "screenName"    # Ljava/lang/String;

    .line 840
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 841
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PalmMotion"

    packed-switch p1, :pswitch_data_0

    .line 855
    :pswitch_0
    return-void

    .line 851
    :pswitch_1
    const-string v2, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    goto :goto_0

    .line 847
    :pswitch_2
    const-string v2, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    goto :goto_0

    .line 843
    :pswitch_3
    const-string v2, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    nop

    .line 857
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.permission.PALM_MOTION"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 858
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPassCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPassCnt:I

    .line 859
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 860
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setBaseVarianceX()V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLowDPI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SCREEN_WIDTH_SWEEP:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    goto :goto_0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 551
    return-void

    .line 553
    :cond_1
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SCREEN_WIDTH_SWEEP:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    .line 555
    :goto_0
    return-void
.end method

.method private setThresholdDistance()V
    .locals 4

    .line 486
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v0

    .line 487
    .local v0, "screenWidth":I
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_SWEEP_DIST:I

    .line 488
    int-to-float v1, v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getxDpi()F

    move-result v2

    div-float/2addr v1, v2

    .line 489
    .local v1, "calcInch":F
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isUpdatedWidth()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->calculateDistanceEquation()V

    .line 491
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->setUpdatedWidth(Z)Z

    .line 493
    :cond_0
    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdDistance()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_SWEEP_DIST:I

    .line 496
    :cond_1
    return-void
.end method

.method private setThresholdEccenMajor()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_LANDSCAPE:F

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    .line 435
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_LANDSCAPE:F

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    goto :goto_0

    .line 437
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_PORTRAIT:F

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    .line 438
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_PORTRAIT:F

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    .line 440
    :goto_0
    return-void
.end method

.method private variableInitialize()V
    .locals 2

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 527
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDownPrev:Z

    .line 529
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    .line 530
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweepStartX:F

    .line 532
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    .line 533
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastMeanX:F

    .line 535
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    .line 536
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    .line 538
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mExceedVar:F

    .line 539
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    .line 541
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mbSuccessCoordinateY:Z

    .line 543
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 544
    return-void
.end method


# virtual methods
.method public getFailCntArea()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntArea:I

    return v0
.end method

.method public getFailCntDist()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntDist:I

    return v0
.end method

.method public getFailCntEccen()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntEccen:I

    return v0
.end method

.method public getFailCntReverse()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntReverse:I

    return v0
.end method

.method public getFailCntTime()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntTime:I

    return v0
.end method

.method public getFailCntVar()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntVar:I

    return v0
.end method

.method public getPalmSweepCnt()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    return v0
.end method

.method public getPassCnt()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPassCnt:I

    return v0
.end method

.method public getThresholdEccenSweep()F
    .locals 1

    .line 190
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    return v0
.end method

.method public getThresholdEccenSweepLandscape()F
    .locals 1

    .line 206
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_LANDSCAPE:F

    return v0
.end method

.method public getThresholdEccenSweepPortrait()F
    .locals 1

    .line 198
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_PORTRAIT:F

    return v0
.end method

.method public getThresholdMajorSweep()F
    .locals 1

    .line 214
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    return v0
.end method

.method public getThresholdMajorSweepLandscape()F
    .locals 1

    .line 230
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_LANDSCAPE:F

    return v0
.end method

.method public getThresholdMajorSweepPortrait()F
    .locals 1

    .line 222
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_PORTRAIT:F

    return v0
.end method

.method public initPalm()V
    .locals 2

    .line 472
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdDistance()V

    .line 476
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SCREEN_WIDTH_SWEEP:I

    .line 478
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->variableInitialize()V

    .line 479
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setBaseVarianceX()V

    .line 481
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SCREEN_WIDTH_SWEEP:I

    int-to-float v0, v0

    const/high16 v1, 0x40600000    # 3.5f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->TOLERANCE_REVERSE_DIST_SWEEP:F

    .line 482
    return-void
.end method

.method public isEnabledPalmSweep()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    return v0
.end method

.method public isIgnoreCheckMajorSweepEntry()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

    return v0
.end method

.method public isReadyPalmSweep()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    return v0
.end method

.method public onPalmEvents(I)V
    .locals 10
    .param p1, "direction"    # I

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 803
    .local v0, "tCurrentTime":J
    iget-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastTimeSweepEvent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "PalmMotion"

    if-eqz v2, :cond_0

    .line 804
    iget-wide v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastTimeSweepEvent:J

    sub-long v6, v0, v6

    .line 805
    .local v6, "timeGap":J
    const-wide/16 v8, 0x3e8

    cmp-long v2, v6, v8

    if-gez v2, :cond_0

    cmp-long v2, v6, v4

    if-lez v2, :cond_0

    .line 806
    iput-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastTimeSweepEvent:J

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM_SWEEP] onPalmEvents timeGap: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void

    .line 811
    .end local v6    # "timeGap":J
    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastTimeSweepEvent:J

    .line 813
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkBootComplete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 814
    const-string v2, "[PALM_SWEEP] checkBootComplete is false)"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 818
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkPocketMode()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 820
    :cond_2
    const-string v2, "MAIN"

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->sendPalmSweepEvents(ILjava/lang/String;)V

    .line 821
    return-void
.end method

.method public palmDump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     THRESHOLD_MAJOR_SWEEP_PORTRAIT  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_PORTRAIT:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     THRESHOLD_MAJOR_SWEEP_LANDSCAPE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_LANDSCAPE:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     THRESHOLD_ECCEN_SWEEP_PORTRAIT  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_PORTRAIT:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     THRESHOLD_ECCEN_SWEEP_LANDSCAPE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_LANDSCAPE:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     IGNORE_CHECK_MAJOR_SWEEP_ENTRY  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     MAX_W = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MIN_W = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     SLOPE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->slope:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", YINTERCEPT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->yIntercept:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public processPalm()V
    .locals 3

    .line 594
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDownPrev:Z

    .line 595
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastMeanX:F

    .line 596
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMeanX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    .line 598
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->isScreenWidthZero()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 600
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 601
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkSweepDownStartConditions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 604
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkCurrentSweptAreaInDisplay()V

    .line 605
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkSweepDownFailConditions()V

    .line 607
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 608
    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    if-eqz v0, :cond_3

    .line 611
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweepStartX:F

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMeanX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 612
    .local v0, "movedDistance":F
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getSweepDirection(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 613
    .local v1, "sweepDirection":Ljava/lang/StringBuffer;
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 615
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkSweepDownLastConditions(FLjava/lang/StringBuffer;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 616
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    if-eqz v2, :cond_3

    .line 617
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->detectSweepDownAction(FLjava/lang/StringBuffer;)V

    .line 620
    .end local v0    # "movedDistance":F
    .end local v1    # "sweepDirection":Ljava/lang/StringBuffer;
    :cond_3
    return-void
.end method

.method public readyPalm()V
    .locals 4

    .line 407
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateScreenInfo()V

    .line 412
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdEccenMajor()V

    .line 413
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkActionMoveToKeep()V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 416
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->setLastTimeActionUp(J)V

    .line 419
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 420
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateSimpleReadyPalmInfo()V

    .line 424
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    if-nez v0, :cond_5

    .line 425
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumMajor()F

    move-result v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    int-to-float v0, v0

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 427
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    .line 430
    :cond_5
    return-void
.end method

.method public setEnabledPalmSweep(Z)V
    .locals 0
    .param p1, "mIsEnabledPalmSweep"    # Z

    .line 250
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    .line 251
    return-void
.end method

.method public setFailCntArea(I)V
    .locals 0
    .param p1, "mFailCntArea"    # I

    .line 282
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntArea:I

    .line 283
    return-void
.end method

.method public setFailCntDist(I)V
    .locals 0
    .param p1, "mFailCntDist"    # I

    .line 306
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntDist:I

    .line 307
    return-void
.end method

.method public setFailCntEccen(I)V
    .locals 0
    .param p1, "mFailCntEccen"    # I

    .line 290
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntEccen:I

    .line 291
    return-void
.end method

.method public setFailCntReverse(I)V
    .locals 0
    .param p1, "mFailCntReverse"    # I

    .line 322
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntReverse:I

    .line 323
    return-void
.end method

.method public setFailCntTime(I)V
    .locals 0
    .param p1, "mFailCntTime"    # I

    .line 314
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntTime:I

    .line 315
    return-void
.end method

.method public setFailCntVar(I)V
    .locals 0
    .param p1, "mFailCntVar"    # I

    .line 298
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntVar:I

    .line 299
    return-void
.end method

.method public setIgnoreCheckMajorSweepEntry(Z)V
    .locals 0
    .param p1, "ignoreCheckMajorSweepEntry"    # Z

    .line 242
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

    .line 243
    return-void
.end method

.method public setInputManager(Landroid/hardware/input/InputManager;)V
    .locals 0
    .param p1, "mInputManager"    # Landroid/hardware/input/InputManager;

    .line 326
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mInputManager:Landroid/hardware/input/InputManager;

    .line 327
    return-void
.end method

.method public setPassCnt(I)V
    .locals 0
    .param p1, "mPassCnt"    # I

    .line 274
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPassCnt:I

    .line 275
    return-void
.end method

.method public setReadyPalmSweep(Z)V
    .locals 0
    .param p1, "mIsReadyPalmSweep"    # Z

    .line 266
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    .line 267
    return-void
.end method

.method public setSweepDown(Z)V
    .locals 0
    .param p1, "mIsSweepDown"    # Z

    .line 258
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 259
    return-void
.end method

.method public setThresholdEccenSweep(F)V
    .locals 0
    .param p1, "thresholdEccenSweep"    # F

    .line 194
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    .line 195
    return-void
.end method

.method public setThresholdEccenSweepLandscape(F)V
    .locals 0
    .param p1, "thresholdEccenSweepLandscape"    # F

    .line 210
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_LANDSCAPE:F

    .line 211
    return-void
.end method

.method public setThresholdEccenSweepPortrait(F)V
    .locals 0
    .param p1, "thresholdEccenSweepPortrait"    # F

    .line 202
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_PORTRAIT:F

    .line 203
    return-void
.end method

.method public setThresholdMajorSweep(F)V
    .locals 0
    .param p1, "thresholdMajorSweep"    # F

    .line 218
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    .line 219
    return-void
.end method

.method public setThresholdMajorSweepLandscape(F)V
    .locals 0
    .param p1, "thresholdMajorSweepLandscape"    # F

    .line 234
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_LANDSCAPE:F

    .line 235
    return-void
.end method

.method public setThresholdMajorSweepPortrait(F)V
    .locals 0
    .param p1, "thresholdMajorSweepPortrait"    # F

    .line 226
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_PORTRAIT:F

    .line 227
    return-void
.end method

.method public settingOnChanged()V
    .locals 7

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "settingPalmSweep":I
    const/4 v1, 0x0

    .line 345
    .local v1, "settingKeyBoard":I
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "surface_palm_swipe"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 347
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mobile_keyboard"

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 350
    if-ne v0, v4, :cond_0

    if-nez v1, :cond_0

    .line 351
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    goto :goto_0

    .line 353
    :cond_0
    iput-boolean v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    .line 356
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM] SETTINGS : [ PALM_SWEEP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Mobile Keyboard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PalmMotion"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PALM] ENABLED : [ SWEEP : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM] ACCEPTED : M_SWEEP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", E_SWEEP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IGNORE_M_SWEEP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method public startPalm()V
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMotionEvent:Landroid/view/MotionEvent;

    .line 367
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 368
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 373
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->readyPalm()V

    .line 374
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->variableInitialize()V

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->initPalm()V

    .line 378
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->update(II)V

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->processPalm()V

    .line 382
    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 383
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 384
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    .line 386
    :cond_4
    return-void
.end method
