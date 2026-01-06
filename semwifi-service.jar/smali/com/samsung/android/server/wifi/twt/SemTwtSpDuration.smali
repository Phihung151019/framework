.class public Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final BOOST_MULTIPLIER:[F

.field private static final BOOST_OFFSET:[F

.field private static final CC_BURST:I = 0x802

.field private static final CC_RANDOM:I = 0xbea

.field private static final CC_STABLE:I = 0x17a2

.field private static final INVERSE_MODEL_ALPHA:F = 1.9f

.field private static final LINKSPEED_HIGH:I = 0x320

.field private static final LINKSPEED_LOW:I = 0x46

.field private static final LINKSPEED_MID:I = 0x12c

.field private static final MAX_PACKET_SIZE:J = 0x2cbeL

.field private static final MINIMUM_EPSILON:J = 0x3e8L

.field private static final OVERFLOW_THRESHOLD_PERCENT:[F

.field private static final SPEEDFACTOR_DEFAULT:F = 1.9f

.field private static final SPEEDFACTOR_HIGH:F = 2.7f

.field private static final SPEEDFACTOR_LOW:F = 1.6f

.field private static final SPEEDFACTOR_MID:F = 2.0f

.field private static final TT_BURST:I = 0x3

.field private static final TT_RANDOM:I = 0x1

.field private static final TT_STABLE:I = 0x2


# instance fields
.field private mAdaptiveEpsilonUpdate:Z

.field private mAverageBuffPkt:J

.field private mAverageBufferTime:J

.field private mAverageTdt:J

.field private mAverageTotalPkt:J

.field private mCongestionDivider:J

.field private mDurationUpdateThreshold:F

.field private mEpsilon:J

.field private mEpsilonUpdateThreshold:F

.field private mIntervalScaleFactor:F

.field private mLongTermCounter:J

.field private mMaxTdt:J

.field private mMinSPDuration:I

.field private mNumRetries:J

.field private mOverflowGuard:J

.field private mOverflowGuardThr:F

.field private mOverflowTdtWeight:F

.field private mOverflowThreshold:I

.field private mOverflowThresholdPercent:F

.field private mSP:I

.field private mStableGuard:J

.field private mStableGuardHiEpsThr:F

.field private mStableGuardLoEpsThr:F

.field private mStableTdtWeight:F

.field private mStdTdt:J

.field private mTdtOverhead:J

.field private mTdtUpdateMode:I

.field private mTrafficType:I

.field private mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

.field private mTwtInterval:I

.field private mUpdateStatus:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->BOOST_MULTIPLIER:[F

    .line 8
    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->BOOST_OFFSET:[F

    .line 15
    .line 16
    new-array v0, v0, [F

    .line 17
    .line 18
    fill-array-data v0, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->OVERFLOW_THRESHOLD_PERCENT:[F

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 4
        0x0
        0x40600000    # 3.5f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :array_1
    .array-data 4
        0x0
        0x43c80000    # 400.0f
        0x43c80000    # 400.0f
        0x44bb8000    # 1500.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAdaptiveEpsilonUpdate:Z

    .line 6
    .line 7
    const v1, 0x3e4ccccd    # 0.2f

    .line 8
    .line 9
    .line 10
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuardThr:F

    .line 11
    .line 12
    const v1, 0x3d4ccccd    # 0.05f

    .line 13
    .line 14
    .line 15
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardLoEpsThr:F

    .line 16
    .line 17
    const v2, 0x3dcccccd    # 0.1f

    .line 18
    .line 19
    .line 20
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardHiEpsThr:F

    .line 21
    .line 22
    const-wide/32 v2, 0x11170

    .line 23
    .line 24
    .line 25
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mCongestionDivider:J

    .line 26
    .line 27
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThresholdPercent:F

    .line 28
    .line 29
    const/high16 v1, 0x44000000    # 512.0f

    .line 30
    .line 31
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mDurationUpdateThreshold:F

    .line 32
    .line 33
    const/high16 v1, 0x42480000    # 50.0f

    .line 34
    .line 35
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilonUpdateThreshold:F

    .line 36
    .line 37
    const/16 v1, 0x400

    .line 38
    .line 39
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMinSPDuration:I

    .line 40
    .line 41
    const/high16 v1, 0x3f000000    # 0.5f

    .line 42
    .line 43
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableTdtWeight:F

    .line 44
    .line 45
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowTdtWeight:F

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    .line 49
    .line 50
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    .line 51
    .line 52
    const-wide/16 v0, 0xc8

    .line 53
    .line 54
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtOverhead:J

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->init()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 63
    .line 64
    return-void
.end method

.method private updateEpsilon(IJ)B
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAdaptiveEpsilonUpdate:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->calculateEpsilon(IJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmEpsilon(J)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "WD param. 1 "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThreshold:I

    .line 41
    .line 42
    invoke-static {v1, p0, v2, p1, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    return p1
.end method

.method private updateOnIntervalChange(JJII)V
    .locals 2

    .line 1
    int-to-float v0, p5

    .line 2
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    .line 3
    .line 4
    int-to-float v1, v1

    .line 5
    div-float/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mIntervalScaleFactor:F

    .line 7
    .line 8
    long-to-float p1, p1

    .line 9
    mul-float/2addr v0, p1

    .line 10
    float-to-long p1, v0

    .line 11
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->updateOnStableCondition(JJII)B

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private updateOnOverflowTrigger(JJI)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmMaxTdt(J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmAverageTdt(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p5}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTwtInterval(I)V

    .line 13
    .line 14
    .line 15
    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuardThr:F

    .line 16
    .line 17
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    .line 18
    .line 19
    int-to-float p2, p2

    .line 20
    mul-float/2addr p1, p2

    .line 21
    float-to-int p1, p1

    .line 22
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 23
    .line 24
    add-int/2addr p2, p1

    .line 25
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmMaxTdt(J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmAverageTdt(J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p5}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTwtInterval(I)V

    .line 35
    .line 36
    .line 37
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuardThr:F

    .line 38
    .line 39
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    mul-float/2addr p5, v0

    .line 43
    float-to-long v0, p5

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowGuard(J)V

    .line 45
    .line 46
    .line 47
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    if-ne p5, v0, :cond_1

    .line 51
    .line 52
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowTdtWeight:F

    .line 53
    .line 54
    long-to-float p3, p3

    .line 55
    mul-float/2addr p3, p5

    .line 56
    const/high16 p4, 0x3f800000    # 1.0f

    .line 57
    .line 58
    sub-float/2addr p4, p5

    .line 59
    long-to-float p1, p1

    .line 60
    mul-float/2addr p4, p1

    .line 61
    add-float/2addr p4, p3

    .line 62
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuard:J

    .line 63
    .line 64
    long-to-float p1, p1

    .line 65
    add-float/2addr p4, p1

    .line 66
    float-to-int p1, p4

    .line 67
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    .line 71
    .line 72
    iget-wide p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuard:J

    .line 73
    .line 74
    add-long/2addr p1, p3

    .line 75
    long-to-int p1, p1

    .line 76
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 77
    .line 78
    :goto_0
    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 79
    .line 80
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMinSPDuration:I

    .line 81
    .line 82
    if-ge p1, p2, :cond_2

    .line 83
    .line 84
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method private updateOnStableCondition(JJII)B
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmMaxTdt(J)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmAverageTdt(J)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p5}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTwtInterval(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmSP()I

    .line 11
    .line 12
    .line 13
    move-result p5

    .line 14
    if-eq p6, p5, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmSP(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    .line 20
    .line 21
    int-to-long v0, p5

    .line 22
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mCongestionDivider:J

    .line 23
    .line 24
    cmp-long p6, v0, v2

    .line 25
    .line 26
    if-lez p6, :cond_1

    .line 27
    .line 28
    iget p6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardLoEpsThr:F

    .line 29
    .line 30
    int-to-float p5, p5

    .line 31
    mul-float/2addr p6, p5

    .line 32
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    .line 33
    .line 34
    long-to-float p5, v0

    .line 35
    invoke-static {p6, p5}, Ljava/lang/Math;->max(FF)F

    .line 36
    .line 37
    .line 38
    move-result p5

    .line 39
    float-to-long p5, p5

    .line 40
    invoke-virtual {p0, p5, p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuard(J)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget p6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardHiEpsThr:F

    .line 45
    .line 46
    int-to-float p5, p5

    .line 47
    mul-float/2addr p6, p5

    .line 48
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    .line 49
    .line 50
    long-to-float p5, v0

    .line 51
    invoke-static {p6, p5}, Ljava/lang/Math;->max(FF)F

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    float-to-long p5, p5

    .line 56
    invoke-virtual {p0, p5, p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuard(J)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    .line 60
    .line 61
    const/4 p6, 0x1

    .line 62
    if-ne p5, p6, :cond_2

    .line 63
    .line 64
    iget p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableTdtWeight:F

    .line 65
    .line 66
    long-to-float p3, p3

    .line 67
    mul-float/2addr p3, p5

    .line 68
    const/high16 p4, 0x3f800000    # 1.0f

    .line 69
    .line 70
    sub-float/2addr p4, p5

    .line 71
    long-to-float p1, p1

    .line 72
    mul-float/2addr p4, p1

    .line 73
    add-float/2addr p4, p3

    .line 74
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuard:J

    .line 75
    .line 76
    long-to-float p1, p1

    .line 77
    add-float/2addr p4, p1

    .line 78
    float-to-int p1, p4

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    .line 81
    .line 82
    iget-wide p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuard:J

    .line 83
    .line 84
    add-long/2addr p1, p3

    .line 85
    long-to-int p1, p1

    .line 86
    :goto_1
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    .line 87
    .line 88
    const/4 p3, 0x2

    .line 89
    if-ne p2, p3, :cond_3

    .line 90
    .line 91
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    .line 92
    .line 93
    iget-wide p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    .line 94
    .line 95
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStdTdt:J

    .line 96
    .line 97
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 98
    .line 99
    .line 100
    move-result-wide p3

    .line 101
    add-long/2addr p3, p1

    .line 102
    long-to-int p1, p3

    .line 103
    :cond_3
    shr-int/lit8 p1, p1, 0x8

    .line 104
    .line 105
    mul-int/lit16 p1, p1, 0x100

    .line 106
    .line 107
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMinSPDuration:I

    .line 108
    .line 109
    if-ge p1, p2, :cond_4

    .line 110
    .line 111
    move p1, p2

    .line 112
    :cond_4
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 113
    .line 114
    sub-int/2addr p2, p1

    .line 115
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    int-to-float p2, p2

    .line 120
    iget p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mDurationUpdateThreshold:F

    .line 121
    .line 122
    cmpg-float p2, p2, p3

    .line 123
    .line 124
    if-gez p2, :cond_5

    .line 125
    .line 126
    const/4 p0, 0x0

    .line 127
    return p0

    .line 128
    :cond_5
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 129
    .line 130
    return p6
.end method


# virtual methods
.method public calculateEpsilon(IJ)J
    .locals 5

    .line 1
    const/16 v0, 0x320

    .line 2
    .line 3
    const v1, 0x3ff33333    # 1.9f

    .line 4
    .line 5
    .line 6
    if-le p1, v0, :cond_0

    .line 7
    .line 8
    const v0, 0x402ccccd    # 2.7f

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x12c

    .line 13
    .line 14
    if-le p1, v0, :cond_1

    .line 15
    .line 16
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 v0, 0x46

    .line 20
    .line 21
    if-le p1, v0, :cond_2

    .line 22
    .line 23
    const v0, 0x3fcccccd    # 1.6f

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move v0, v1

    .line 28
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 29
    .line 30
    cmp-long v2, p2, v2

    .line 31
    .line 32
    if-ltz v2, :cond_3

    .line 33
    .line 34
    const/high16 p2, 0x43340000    # 180.0f

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    long-to-float p2, p2

    .line 38
    const/high16 p3, 0x447a0000    # 1000.0f

    .line 39
    .line 40
    div-float/2addr p2, p3

    .line 41
    const/high16 p3, 0x3f800000    # 1.0f

    .line 42
    .line 43
    sub-float/2addr p3, p2

    .line 44
    div-float/2addr v1, p3

    .line 45
    const p2, -0x4099999a    # -0.9f

    .line 46
    .line 47
    .line 48
    add-float/2addr p2, v1

    .line 49
    :goto_1
    const-wide/32 v1, 0x165f0

    .line 50
    .line 51
    .line 52
    int-to-long v3, p1

    .line 53
    div-long/2addr v1, v3

    .line 54
    long-to-float p1, v1

    .line 55
    mul-float/2addr v0, p1

    .line 56
    mul-float/2addr v0, p2

    .line 57
    iget-wide p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtOverhead:J

    .line 58
    .line 59
    long-to-float p0, p0

    .line 60
    add-float/2addr v0, p0

    .line 61
    float-to-long p0, v0

    .line 62
    return-wide p0
.end method

.method public enableAdaptiveEpsilonUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAdaptiveEpsilonUpdate:Z

    .line 2
    .line 3
    return-void
.end method

.method public getmAverageBuffPkt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageBuffPkt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmAverageBufferTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageBufferTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmAverageTdt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTdt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmAverageTotalPkt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTotalPkt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmBoostFactors()[F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "WD param. 2 "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->BOOST_MULTIPLIER:[F

    .line 11
    .line 12
    iget v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    .line 13
    .line 14
    aget v3, v2, v3

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, " "

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget-object v4, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->BOOST_OFFSET:[F

    .line 25
    .line 26
    iget v5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    .line 27
    .line 28
    aget v5, v4, v5

    .line 29
    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    .line 50
    .line 51
    aget v0, v2, p0

    .line 52
    .line 53
    aget p0, v4, p0

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    new-array v1, v1, [F

    .line 57
    .line 58
    aput v0, v1, v3

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    aput p0, v1, v0

    .line 62
    .line 63
    return-object v1
.end method

.method public getmCongestionDivider()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mCongestionDivider:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmDurationUpdateThreshold()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mDurationUpdateThreshold:F

    .line 2
    .line 3
    return p0
.end method

.method public getmEpsilon()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmEpsilonUpdateThreshold()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilonUpdateThreshold:F

    .line 2
    .line 3
    return p0
.end method

.method public getmIntervalScaleFactor()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mIntervalScaleFactor:F

    .line 2
    .line 3
    return p0
.end method

.method public getmLongTermCounter()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mLongTermCounter:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmMaxTdt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmMinSPDuration()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMinSPDuration:I

    .line 2
    .line 3
    return p0
.end method

.method public getmNumRetries()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mNumRetries:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmOverflowGuard()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuard:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmOverflowGuardThr()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuardThr:F

    .line 2
    .line 3
    return p0
.end method

.method public getmOverflowTdtWeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowTdtWeight:F

    .line 2
    .line 3
    return p0
.end method

.method public getmOverflowThreshold()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThreshold:I

    .line 2
    .line 3
    return p0
.end method

.method public getmOverflowThresholdPercent()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThresholdPercent:F

    .line 2
    .line 3
    return p0
.end method

.method public getmSP()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 2
    .line 3
    return p0
.end method

.method public getmStableGuard()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuard:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmStableGuardHiEpsThr()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardHiEpsThr:F

    .line 2
    .line 3
    return p0
.end method

.method public getmStableGuardLoEpsThr()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardLoEpsThr:F

    .line 2
    .line 3
    return p0
.end method

.method public getmStableTdtWeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableTdtWeight:F

    .line 2
    .line 3
    return p0
.end method

.method public getmStdTdt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStdTdt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getmTrafficType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    .line 2
    .line 3
    return p0
.end method

.method public getmTwtInterval()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    .line 2
    .line 3
    return p0
.end method

.method public init()V
    .locals 7

    .line 1
    const-wide/16 v0, 0x64

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mLongTermCounter:J

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTdt:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageBuffPkt:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTotalPkt:J

    .line 14
    .line 15
    const v2, 0x9c40

    .line 16
    .line 17
    .line 18
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    .line 19
    .line 20
    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    .line 21
    .line 22
    int-to-double v5, v2

    .line 23
    mul-double/2addr v5, v3

    .line 24
    double-to-int v2, v5

    .line 25
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 26
    .line 27
    const-wide/16 v2, 0x3e8

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuard:J

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuard:J

    .line 34
    .line 35
    const/16 v0, 0x5dc

    .line 36
    .line 37
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThreshold:I

    .line 38
    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    .line 41
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mIntervalScaleFactor:F

    .line 42
    .line 43
    return-void
.end method

.method public ismTdtUpdateMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    .line 2
    .line 3
    return p0
.end method

.method public maxDurationCheck(II)I
    .locals 0

    .line 1
    const p0, 0x13880

    .line 2
    .line 3
    .line 4
    if-lt p2, p0, :cond_0

    .line 5
    .line 6
    const p0, 0xfe00

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 p0, 0x4e20

    .line 11
    .line 12
    if-le p2, p0, :cond_1

    .line 13
    .line 14
    mul-int/lit8 p0, p2, 0x8

    .line 15
    .line 16
    div-int/lit8 p0, p0, 0xa

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    add-int/lit16 p0, p2, -0xdac

    .line 20
    .line 21
    :goto_0
    if-ge p1, p0, :cond_2

    .line 22
    .line 23
    return p1

    .line 24
    :cond_2
    return p2
.end method

.method public run(JJIIZJIIIIJ[I)B
    .locals 5

    move v0, p10

    const/4 v1, 0x0

    .line 1
    iput-byte v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    .line 2
    invoke-virtual {p0, p10}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTwtInterval(I)V

    .line 3
    invoke-virtual {p0, p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmSP(I)V

    .line 4
    iget-byte v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    move/from16 v4, p12

    invoke-direct {p0, v4, p8, p9}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->updateEpsilon(IJ)B

    move-result v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    move-wide/from16 v2, p14

    long-to-double v2, v2

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 6
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStdTdt(J)V

    if-eqz p7, :cond_0

    .line 7
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->updateOnOverflowTrigger(JJI)V

    .line 8
    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    invoke-virtual {p0, p1, p10}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->maxDurationCheck(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    const/4 p1, 0x1

    .line 9
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    .line 10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string p2, "OP requested "

    const-string p3, " "

    .line 11
    invoke-static {p2, p5, p3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 12
    iget p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStdTdt:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 13
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    return p0

    .line 14
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    if-eq p5, v1, :cond_1

    .line 15
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->updateOnIntervalChange(JJII)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->updateOnStableCondition(JJII)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    .line 17
    :goto_0
    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    invoke-virtual {p0, p1, p10}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->maxDurationCheck(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 18
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mUpdateStatus:B

    return p0
.end method

.method public setmAverageBuffPkt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageBuffPkt:J

    .line 2
    .line 3
    return-void
.end method

.method public setmAverageBufferTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageBufferTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setmAverageTdt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTdt:J

    .line 2
    .line 3
    return-void
.end method

.method public setmAverageTotalPkt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mAverageTotalPkt:J

    .line 2
    .line 3
    return-void
.end method

.method public setmCongestionDivider(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mCongestionDivider:J

    .line 2
    .line 3
    return-void
.end method

.method public setmDurationUpdateThreshold(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mDurationUpdateThreshold:F

    .line 2
    .line 3
    return-void
.end method

.method public setmEpsilon(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilon:J

    .line 2
    .line 3
    return-void
.end method

.method public setmEpsilonUpdateThreshold(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mEpsilonUpdateThreshold:F

    .line 2
    .line 3
    return-void
.end method

.method public setmIntervalScaleFactor(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mIntervalScaleFactor:F

    .line 2
    .line 3
    return-void
.end method

.method public setmLongTermCounter(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mLongTermCounter:J

    .line 2
    .line 3
    return-void
.end method

.method public setmMaxTdt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMaxTdt:J

    .line 2
    .line 3
    return-void
.end method

.method public setmMinSPDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mMinSPDuration:I

    .line 2
    .line 3
    return-void
.end method

.method public setmNumRetries(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mNumRetries:J

    .line 2
    .line 3
    return-void
.end method

.method public setmOverflowGuard(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuard:J

    .line 2
    .line 3
    return-void
.end method

.method public setmOverflowGuardThr(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowGuardThr:F

    .line 2
    .line 3
    return-void
.end method

.method public setmOverflowTdtWeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowTdtWeight:F

    .line 2
    .line 3
    return-void
.end method

.method public setmOverflowThreshold(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThreshold:I

    .line 2
    .line 3
    return-void
.end method

.method public setmOverflowThresholdPercent(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mOverflowThresholdPercent:F

    .line 2
    .line 3
    return-void
.end method

.method public setmSP(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mSP:I

    .line 2
    .line 3
    return-void
.end method

.method public setmStableGuard(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuard:J

    .line 2
    .line 3
    return-void
.end method

.method public setmStableGuardHiEpsThr(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardHiEpsThr:F

    .line 2
    .line 3
    return-void
.end method

.method public setmStableGuardLoEpsThr(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableGuardLoEpsThr:F

    .line 2
    .line 3
    return-void
.end method

.method public setmStableTdtWeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStableTdtWeight:F

    .line 2
    .line 3
    return-void
.end method

.method public setmStdTdt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mStdTdt:J

    .line 2
    .line 3
    return-void
.end method

.method public setmTdtUpdateMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTdtUpdateMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setmTrafficType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    .line 2
    .line 3
    return-void
.end method

.method public setmTwtInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTwtInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public trafficTypeCallingPeriod()I
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->mTrafficType:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/16 p0, 0x802

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    const/16 p0, 0x17a2

    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    const/16 p0, 0xbea

    .line 16
    .line 17
    return p0
.end method
