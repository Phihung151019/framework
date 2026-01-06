.class public Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static CCA_FLAG:I = 0x0

.field private static CHANGE_THRESHOLD:F = 0.2f

.field private static CONSEC_ZERO_CNT_MAX:I = 0x12

.field private static EXPONENT_LIMIT:I = 0x9

.field private static final G:I = 0x106

.field private static final G1:F = 1.2f

.field private static final G2:F = 1.2f

.field private static INCREMENT_LIMIT:I = 0x4e20

.field private static final INTERVAL_THRESHOLD_N_ADAPTATION:I = 0x7918

.field private static LONG_TERM_COOL_DOWN_TIMER:I = 0x3

.field private static final MAX_TWT_INTERVAL_BASE:I = 0x186a0

.field private static final MIN_TWT_INTERVAL_BASE:I = 0x3a98

.field private static MIN_TWT_INTERVAL_HIGH_CCA:I = 0x3a98

.field private static N_FREQ_DECR_THRESHOLD:I = 0x5

.field private static N_FREQ_INCR_THRESHOLD:I = 0x19

.field private static POLLING_DURATION:I = 0x7a120

.field private static SHORT_TERM_COOL_DOWN_TIMER:I = 0x3

.field private static SP_WINDOW_SIZE:I = 0x3

.field private static final TWT_INTERVAL_INIT_BASE:I = 0x4e20


# instance fields
.field private INTERVAL_RESET_THRESHOLD:I

.field private L1_VAL:I

.field private L_VAL:I

.field private MAX_TWT_INTERVAL:I

.field private MAX_TWT_INTERVAL_HIGH_CCA:I

.field private MIN_TWT_INTERVAL:I

.field private N_BASEV1:F

.field private RESET_AVG_PKT_CNT:I

.field private RESET_THRESHOLD_DIFFERENCE:I

.field private RESET_THRESHOLD_HIGH:F

.field private RESET_THRESHOLD_LOW:F

.field private RESET_THRESHOLD_MULTIPLIER:I

.field private RESET_TOTAL_ZERO_SP_CNT:I

.field private TWT_INTERVAL_INIT:I

.field avgPktCntPrev:F

.field avgPktCntPrev_1:F

.field consecIncreaseCnt:I

.field consecZeroCntIndex:I

.field consecZeroCntWindow:[I

.field coolDownTimer1:I

.field coolDownTimer2:I

.field private mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

.field numSPsObserved:I

.field optimizedSpWindowSize:I

.field prevConsecZeroCnt:I

.field previousState:I

.field spWindow:[F

.field spWindowIndex:I

.field totalZeroCntWindow:[I

.field totalZeroCntWindowIndex:I

.field twtInterval:I

.field twtIntervalLastNegotiated:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->N_BASEV1:F

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L_VAL:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L1_VAL:I

    .line 12
    .line 13
    const v0, 0x186a0

    .line 14
    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    .line 17
    .line 18
    const/16 v1, 0x3a98

    .line 19
    .line 20
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 21
    .line 22
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL_HIGH_CCA:I

    .line 23
    .line 24
    const/16 v0, 0x7530

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INTERVAL_RESET_THRESHOLD:I

    .line 27
    .line 28
    const/16 v0, 0x4e20

    .line 29
    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    .line 31
    .line 32
    const/high16 v0, 0x3f000000    # 0.5f

    .line 33
    .line 34
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_HIGH:F

    .line 35
    .line 36
    const v0, 0x3e4ccccd    # 0.2f

    .line 37
    .line 38
    .line 39
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_LOW:F

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_TOTAL_ZERO_SP_CNT:I

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_MULTIPLIER:I

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_DIFFERENCE:I

    .line 50
    .line 51
    const/4 v1, 0x5

    .line 52
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_AVG_PKT_CNT:I

    .line 53
    .line 54
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->optimizedSpWindowSize:I

    .line 55
    .line 56
    new-array v1, v0, [F

    .line 57
    .line 58
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindow:[F

    .line 59
    .line 60
    new-array v1, v0, [I

    .line 61
    .line 62
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntWindow:[I

    .line 63
    .line 64
    new-array v0, v0, [I

    .line 65
    .line 66
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindow:[I

    .line 67
    .line 68
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 69
    .line 70
    return-void
.end method

.method private checkIntervalBounds()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method private reset()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindowIndex:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    .line 21
    .line 22
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->prevConsecZeroCnt:I

    .line 23
    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntIndex:I

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindowIndex:I

    .line 27
    .line 28
    const v1, 0x461c4000    # 10000.0f

    .line 29
    .line 30
    .line 31
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev:F

    .line 32
    .line 33
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev_1:F

    .line 34
    .line 35
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->previousState:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "New param.  "

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L_VAL:I

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L1_VAL:I

    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->N_BASEV1:F

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    sget v4, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SP_WINDOW_SIZE:I

    .line 81
    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    sget v4, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 105
    .line 106
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private runCustom([JIIII)I
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, p2, :cond_0

    .line 5
    .line 6
    aget-wide v3, p1, v2

    .line 7
    .line 8
    add-long/2addr v0, v3

    .line 9
    add-int/lit8 v2, v2, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    long-to-float v0, v0

    .line 15
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    mul-float/2addr v0, v1

    .line 19
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->POLLING_DURATION:I

    .line 20
    .line 21
    mul-int/2addr v1, p2

    .line 22
    int-to-float v1, v1

    .line 23
    div-float/2addr v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_1
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_LOW:F

    .line 27
    .line 28
    cmpg-float v0, v0, v1

    .line 29
    .line 30
    if-gez v0, :cond_2

    .line 31
    .line 32
    iput p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 33
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->runV1_New([JIII)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_2
    iput p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->previousState:I

    .line 43
    .line 44
    return p5
.end method

.method private runV1_New([JIII)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->previousState:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v2, v4, :cond_0

    .line 10
    .line 11
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    .line 12
    .line 13
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 14
    .line 15
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    .line 16
    .line 17
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 18
    .line 19
    iput v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->previousState:I

    .line 20
    .line 21
    :cond_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->checkIntervalBounds()V

    .line 24
    .line 25
    .line 26
    iget v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 30
    .line 31
    if-lez v2, :cond_2

    .line 32
    .line 33
    sub-int/2addr v2, v4

    .line 34
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 35
    .line 36
    :cond_2
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 37
    .line 38
    if-lez v2, :cond_3

    .line 39
    .line 40
    sub-int/2addr v2, v4

    .line 41
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 42
    .line 43
    :cond_3
    aget-wide v5, p1, v3

    .line 44
    .line 45
    const-wide/16 v7, 0x0

    .line 46
    .line 47
    cmp-long v2, v5, v7

    .line 48
    .line 49
    if-nez v2, :cond_5

    .line 50
    .line 51
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->prevConsecZeroCnt:I

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    :cond_4
    move v9, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_5
    move v2, v3

    .line 60
    move v9, v2

    .line 61
    :goto_0
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    .line 62
    .line 63
    add-int/2addr v10, v4

    .line 64
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    .line 65
    .line 66
    move v11, v3

    .line 67
    move v10, v4

    .line 68
    :goto_1
    if-ge v10, v1, :cond_8

    .line 69
    .line 70
    aget-wide v12, p1, v10

    .line 71
    .line 72
    add-long/2addr v5, v12

    .line 73
    iget v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    .line 74
    .line 75
    add-int/2addr v14, v4

    .line 76
    iput v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    .line 77
    .line 78
    cmp-long v14, v12, v7

    .line 79
    .line 80
    if-nez v14, :cond_6

    .line 81
    .line 82
    add-int/lit8 v9, v9, 0x1

    .line 83
    .line 84
    :cond_6
    add-int/lit8 v14, v10, -0x1

    .line 85
    .line 86
    aget-wide v14, p1, v14

    .line 87
    .line 88
    cmp-long v14, v14, v7

    .line 89
    .line 90
    if-nez v14, :cond_7

    .line 91
    .line 92
    cmp-long v12, v12, v7

    .line 93
    .line 94
    if-nez v12, :cond_7

    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_7
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    move v2, v3

    .line 104
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_8
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->prevConsecZeroCnt:I

    .line 108
    .line 109
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindow:[F

    .line 114
    .line 115
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindowIndex:I

    .line 116
    .line 117
    long-to-float v5, v5

    .line 118
    aput v5, v7, v8

    .line 119
    .line 120
    add-int/2addr v8, v4

    .line 121
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->optimizedSpWindowSize:I

    .line 122
    .line 123
    rem-int/2addr v8, v6

    .line 124
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindowIndex:I

    .line 125
    .line 126
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntWindow:[I

    .line 127
    .line 128
    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntIndex:I

    .line 129
    .line 130
    aput v2, v7, v8

    .line 131
    .line 132
    add-int/2addr v8, v4

    .line 133
    rem-int/2addr v8, v6

    .line 134
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntIndex:I

    .line 135
    .line 136
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindow:[I

    .line 137
    .line 138
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindowIndex:I

    .line 139
    .line 140
    aput v9, v2, v7

    .line 141
    .line 142
    add-int/2addr v7, v4

    .line 143
    rem-int/2addr v7, v6

    .line 144
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindowIndex:I

    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    if-eqz v1, :cond_9

    .line 148
    .line 149
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 150
    .line 151
    int-to-float v6, v6

    .line 152
    mul-float/2addr v5, v6

    .line 153
    sget v6, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->POLLING_DURATION:I

    .line 154
    .line 155
    mul-int/2addr v6, v1

    .line 156
    int-to-float v6, v6

    .line 157
    div-float/2addr v5, v6

    .line 158
    goto :goto_3

    .line 159
    :cond_9
    move v5, v2

    .line 160
    :goto_3
    move v6, v3

    .line 161
    move v7, v6

    .line 162
    move v8, v7

    .line 163
    :goto_4
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->optimizedSpWindowSize:I

    .line 164
    .line 165
    if-ge v6, v9, :cond_a

    .line 166
    .line 167
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntWindow:[I

    .line 168
    .line 169
    aget v9, v9, v6

    .line 170
    .line 171
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindow:[I

    .line 176
    .line 177
    aget v9, v9, v6

    .line 178
    .line 179
    add-int/2addr v8, v9

    .line 180
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindow:[F

    .line 181
    .line 182
    aget v9, v9, v6

    .line 183
    .line 184
    add-float/2addr v2, v9

    .line 185
    add-int/lit8 v6, v6, 0x1

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_a
    sget v6, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->CONSEC_ZERO_CNT_MAX:I

    .line 189
    .line 190
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->optimizedSpWindowSize:I

    .line 195
    .line 196
    div-int/2addr v6, v7

    .line 197
    div-int/2addr v8, v7

    .line 198
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 199
    .line 200
    int-to-float v10, v9

    .line 201
    mul-float/2addr v2, v10

    .line 202
    sget v10, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->POLLING_DURATION:I

    .line 203
    .line 204
    mul-int/2addr v10, v1

    .line 205
    mul-int/2addr v10, v7

    .line 206
    int-to-float v1, v10

    .line 207
    div-float/2addr v2, v1

    .line 208
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev_1:F

    .line 209
    .line 210
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_LOW:F

    .line 211
    .line 212
    cmpg-float v1, v1, v10

    .line 213
    .line 214
    if-gez v1, :cond_b

    .line 215
    .line 216
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_HIGH:F

    .line 217
    .line 218
    cmpl-float v1, v5, v1

    .line 219
    .line 220
    if-lez v1, :cond_b

    .line 221
    .line 222
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_TOTAL_ZERO_SP_CNT:I

    .line 223
    .line 224
    if-ge v8, v1, :cond_b

    .line 225
    .line 226
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INTERVAL_RESET_THRESHOLD:I

    .line 227
    .line 228
    if-gt v9, v1, :cond_d

    .line 229
    .line 230
    :cond_b
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev:F

    .line 231
    .line 232
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_MULTIPLIER:I

    .line 233
    .line 234
    int-to-float v10, v10

    .line 235
    mul-float/2addr v10, v1

    .line 236
    cmpg-float v10, v10, v5

    .line 237
    .line 238
    if-gez v10, :cond_c

    .line 239
    .line 240
    sub-float v10, v5, v1

    .line 241
    .line 242
    iget v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_DIFFERENCE:I

    .line 243
    .line 244
    int-to-float v11, v11

    .line 245
    cmpl-float v10, v10, v11

    .line 246
    .line 247
    if-lez v10, :cond_c

    .line 248
    .line 249
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INTERVAL_RESET_THRESHOLD:I

    .line 250
    .line 251
    if-gt v9, v10, :cond_d

    .line 252
    .line 253
    :cond_c
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_AVG_PKT_CNT:I

    .line 254
    .line 255
    int-to-float v10, v10

    .line 256
    cmpl-float v10, v5, v10

    .line 257
    .line 258
    if-lez v10, :cond_e

    .line 259
    .line 260
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INTERVAL_RESET_THRESHOLD:I

    .line 261
    .line 262
    if-le v9, v10, :cond_e

    .line 263
    .line 264
    :cond_d
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->reset()V

    .line 265
    .line 266
    .line 267
    iget v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 268
    .line 269
    return v0

    .line 270
    :cond_e
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    .line 271
    .line 272
    if-ge v10, v7, :cond_f

    .line 273
    .line 274
    return v9

    .line 275
    :cond_f
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev_1:F

    .line 276
    .line 277
    iput v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev:F

    .line 278
    .line 279
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 280
    .line 281
    if-gtz v1, :cond_11

    .line 282
    .line 283
    add-int/2addr v6, v4

    .line 284
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L1_VAL:I

    .line 285
    .line 286
    if-le v6, v1, :cond_10

    .line 287
    .line 288
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    .line 289
    .line 290
    if-ge v9, v1, :cond_10

    .line 291
    .line 292
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    .line 293
    .line 294
    add-int/2addr v1, v4

    .line 295
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    .line 296
    .line 297
    move v1, v4

    .line 298
    goto :goto_5

    .line 299
    :cond_10
    iput v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    .line 300
    .line 301
    :cond_11
    move v1, v3

    .line 302
    :goto_5
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 303
    .line 304
    if-gtz v5, :cond_14

    .line 305
    .line 306
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->N_BASEV1:F

    .line 307
    .line 308
    const/16 v6, 0x7918

    .line 309
    .line 310
    move/from16 v7, p4

    .line 311
    .line 312
    if-ge v7, v6, :cond_12

    .line 313
    .line 314
    const/high16 v6, 0x40000000    # 2.0f

    .line 315
    .line 316
    mul-float/2addr v5, v6

    .line 317
    :cond_12
    cmpl-float v2, v2, v5

    .line 318
    .line 319
    if-lez v2, :cond_13

    .line 320
    .line 321
    move v2, v3

    .line 322
    goto :goto_6

    .line 323
    :cond_13
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L_VAL:I

    .line 324
    .line 325
    if-le v8, v2, :cond_14

    .line 326
    .line 327
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    .line 328
    .line 329
    if-ge v9, v2, :cond_14

    .line 330
    .line 331
    move v2, v4

    .line 332
    move v4, v3

    .line 333
    goto :goto_6

    .line 334
    :cond_14
    move v2, v3

    .line 335
    move v4, v2

    .line 336
    :goto_6
    if-eqz v4, :cond_18

    .line 337
    .line 338
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    .line 339
    .line 340
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 341
    .line 342
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    .line 343
    .line 344
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 345
    .line 346
    div-int/lit8 v1, v9, 0x14

    .line 347
    .line 348
    sub-int v2, v9, v1

    .line 349
    .line 350
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 351
    .line 352
    if-le v2, v4, :cond_15

    .line 353
    .line 354
    sub-int v2, v9, v1

    .line 355
    .line 356
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    .line 357
    .line 358
    if-gt v2, v5, :cond_15

    .line 359
    .line 360
    sub-int/2addr v9, v1

    .line 361
    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_15
    sub-int v2, v9, v1

    .line 365
    .line 366
    if-ge v2, v4, :cond_16

    .line 367
    .line 368
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 369
    .line 370
    goto :goto_7

    .line 371
    :cond_16
    sub-int/2addr v9, v1

    .line 372
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    .line 373
    .line 374
    if-le v9, v1, :cond_17

    .line 375
    .line 376
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 377
    .line 378
    :cond_17
    :goto_7
    iput v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    .line 379
    .line 380
    goto/16 :goto_8

    .line 381
    .line 382
    :cond_18
    const-wide v3, 0x3ff3333340000000L    # 1.2000000476837158

    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    if-eqz v2, :cond_1b

    .line 388
    .line 389
    if-eqz v1, :cond_1b

    .line 390
    .line 391
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->EXPONENT_LIMIT:I

    .line 392
    .line 393
    int-to-float v1, v1

    .line 394
    int-to-float v2, v8

    .line 395
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L_VAL:I

    .line 396
    .line 397
    int-to-float v5, v5

    .line 398
    div-float/2addr v2, v5

    .line 399
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    float-to-double v1, v1

    .line 404
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 405
    .line 406
    .line 407
    move-result-wide v1

    .line 408
    sget v5, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->EXPONENT_LIMIT:I

    .line 409
    .line 410
    int-to-float v5, v5

    .line 411
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    .line 412
    .line 413
    int-to-float v6, v6

    .line 414
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    float-to-double v5, v5

    .line 419
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 420
    .line 421
    .line 422
    move-result-wide v3

    .line 423
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 424
    .line 425
    .line 426
    move-result-wide v1

    .line 427
    double-to-int v1, v1

    .line 428
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 429
    .line 430
    mul-int/2addr v1, v2

    .line 431
    div-int/lit8 v1, v1, 0xa

    .line 432
    .line 433
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INCREMENT_LIMIT:I

    .line 434
    .line 435
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    .line 440
    .line 441
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 442
    .line 443
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    .line 444
    .line 445
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 446
    .line 447
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 448
    .line 449
    add-int v3, v2, v1

    .line 450
    .line 451
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    .line 452
    .line 453
    if-gt v3, v4, :cond_19

    .line 454
    .line 455
    add-int v3, v2, v1

    .line 456
    .line 457
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 458
    .line 459
    if-le v3, v5, :cond_19

    .line 460
    .line 461
    add-int/2addr v2, v1

    .line 462
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 463
    .line 464
    goto/16 :goto_8

    .line 465
    .line 466
    :cond_19
    add-int v3, v2, v1

    .line 467
    .line 468
    if-le v3, v4, :cond_1a

    .line 469
    .line 470
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 471
    .line 472
    goto/16 :goto_8

    .line 473
    .line 474
    :cond_1a
    add-int/2addr v2, v1

    .line 475
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 476
    .line 477
    if-ge v2, v1, :cond_22

    .line 478
    .line 479
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 480
    .line 481
    goto/16 :goto_8

    .line 482
    .line 483
    :cond_1b
    if-eqz v2, :cond_1e

    .line 484
    .line 485
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->EXPONENT_LIMIT:I

    .line 486
    .line 487
    int-to-float v1, v1

    .line 488
    int-to-float v2, v8

    .line 489
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->L_VAL:I

    .line 490
    .line 491
    int-to-float v5, v5

    .line 492
    div-float/2addr v2, v5

    .line 493
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    float-to-double v1, v1

    .line 498
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 499
    .line 500
    .line 501
    move-result-wide v1

    .line 502
    double-to-int v1, v1

    .line 503
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 504
    .line 505
    mul-int/2addr v1, v2

    .line 506
    div-int/lit8 v1, v1, 0xa

    .line 507
    .line 508
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INCREMENT_LIMIT:I

    .line 509
    .line 510
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    .line 515
    .line 516
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 517
    .line 518
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    .line 519
    .line 520
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 521
    .line 522
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 523
    .line 524
    add-int v3, v2, v1

    .line 525
    .line 526
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    .line 527
    .line 528
    if-gt v3, v4, :cond_1c

    .line 529
    .line 530
    add-int v3, v2, v1

    .line 531
    .line 532
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 533
    .line 534
    if-le v3, v5, :cond_1c

    .line 535
    .line 536
    add-int/2addr v2, v1

    .line 537
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 538
    .line 539
    goto :goto_8

    .line 540
    :cond_1c
    add-int v3, v2, v1

    .line 541
    .line 542
    if-le v3, v4, :cond_1d

    .line 543
    .line 544
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 545
    .line 546
    goto :goto_8

    .line 547
    :cond_1d
    add-int/2addr v2, v1

    .line 548
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 549
    .line 550
    if-ge v2, v1, :cond_22

    .line 551
    .line 552
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 553
    .line 554
    goto :goto_8

    .line 555
    :cond_1e
    if-eqz v1, :cond_21

    .line 556
    .line 557
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->EXPONENT_LIMIT:I

    .line 558
    .line 559
    int-to-float v1, v1

    .line 560
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    .line 561
    .line 562
    int-to-float v2, v2

    .line 563
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    float-to-double v1, v1

    .line 568
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 569
    .line 570
    .line 571
    move-result-wide v1

    .line 572
    double-to-int v1, v1

    .line 573
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 574
    .line 575
    mul-int/2addr v1, v2

    .line 576
    div-int/lit8 v1, v1, 0xa

    .line 577
    .line 578
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INCREMENT_LIMIT:I

    .line 579
    .line 580
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    .line 585
    .line 586
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 587
    .line 588
    sget v2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    .line 589
    .line 590
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 591
    .line 592
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 593
    .line 594
    add-int v3, v2, v1

    .line 595
    .line 596
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    .line 597
    .line 598
    if-gt v3, v4, :cond_1f

    .line 599
    .line 600
    add-int v3, v2, v1

    .line 601
    .line 602
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 603
    .line 604
    if-le v3, v5, :cond_1f

    .line 605
    .line 606
    add-int/2addr v2, v1

    .line 607
    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 608
    .line 609
    goto :goto_8

    .line 610
    :cond_1f
    add-int v3, v2, v1

    .line 611
    .line 612
    if-le v3, v4, :cond_20

    .line 613
    .line 614
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 615
    .line 616
    goto :goto_8

    .line 617
    :cond_20
    add-int/2addr v2, v1

    .line 618
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 619
    .line 620
    if-ge v2, v1, :cond_22

    .line 621
    .line 622
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 623
    .line 624
    goto :goto_8

    .line 625
    :cond_21
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->checkIntervalBounds()V

    .line 626
    .line 627
    .line 628
    :cond_22
    :goto_8
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->checkIntervalBounds()V

    .line 629
    .line 630
    .line 631
    iget v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 632
    .line 633
    return v0
.end method


# virtual methods
.method public init()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 10
    .line 11
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    .line 12
    .line 13
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->spWindowIndex:I

    .line 23
    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->numSPsObserved:I

    .line 25
    .line 26
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->SHORT_TERM_COOL_DOWN_TIMER:I

    .line 27
    .line 28
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer1:I

    .line 29
    .line 30
    sget v1, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->LONG_TERM_COOL_DOWN_TIMER:I

    .line 31
    .line 32
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->coolDownTimer2:I

    .line 33
    .line 34
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecIncreaseCnt:I

    .line 35
    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->prevConsecZeroCnt:I

    .line 37
    .line 38
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->consecZeroCntIndex:I

    .line 39
    .line 40
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->totalZeroCntWindowIndex:I

    .line 41
    .line 42
    const v1, 0x461c4000    # 10000.0f

    .line 43
    .line 44
    .line 45
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev:F

    .line 46
    .line 47
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->avgPktCntPrev_1:F

    .line 48
    .line 49
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->previousState:I

    .line 50
    .line 51
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 52
    .line 53
    return p0
.end method

.method public run([JJIII)I
    .locals 0

    .line 1
    long-to-int p2, p2

    .line 2
    iput p6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MIN_TWT_INTERVAL:I

    .line 3
    .line 4
    iput p6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    .line 5
    .line 6
    move p3, p4

    .line 7
    move p4, p5

    .line 8
    move p5, p6

    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->runCustom([JIIII)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ne p1, p5, :cond_0

    .line 14
    .line 15
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    .line 19
    .line 20
    sub-int/2addr p2, p1

    .line 21
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    int-to-float p2, p2

    .line 26
    sget p3, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->CHANGE_THRESHOLD:F

    .line 27
    .line 28
    iget p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    .line 29
    .line 30
    int-to-float p5, p4

    .line 31
    mul-float/2addr p3, p5

    .line 32
    cmpl-float p2, p2, p3

    .line 33
    .line 34
    if-lez p2, :cond_3

    .line 35
    .line 36
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->TWT_INTERVAL_INIT:I

    .line 37
    .line 38
    if-ne p1, p2, :cond_1

    .line 39
    .line 40
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sub-int p2, p1, p4

    .line 44
    .line 45
    sget p3, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INCREMENT_LIMIT:I

    .line 46
    .line 47
    if-le p2, p3, :cond_2

    .line 48
    .line 49
    add-int/2addr p4, p3

    .line 50
    iput p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    .line 51
    .line 52
    iput p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->MAX_TWT_INTERVAL:I

    .line 59
    .line 60
    if-ne p1, p2, :cond_4

    .line 61
    .line 62
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    .line 63
    .line 64
    :cond_4
    :goto_0
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtIntervalLastNegotiated:I

    .line 65
    .line 66
    return p0
.end method

.method public setIntervalResetThresholds(IFFIIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->INTERVAL_RESET_THRESHOLD:I

    .line 2
    .line 3
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_HIGH:F

    .line 4
    .line 5
    iput p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_LOW:F

    .line 6
    .line 7
    iput p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_TOTAL_ZERO_SP_CNT:I

    .line 8
    .line 9
    iput p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_MULTIPLIER:I

    .line 10
    .line 11
    iput p6, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_DIFFERENCE:I

    .line 12
    .line 13
    iput p7, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_AVG_PKT_CNT:I

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->reset()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setResetThresholdHigh(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->RESET_THRESHOLD_HIGH:F

    .line 2
    .line 3
    return-void
.end method

.method public setTwtInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->twtInterval:I

    .line 2
    .line 3
    return-void
.end method
