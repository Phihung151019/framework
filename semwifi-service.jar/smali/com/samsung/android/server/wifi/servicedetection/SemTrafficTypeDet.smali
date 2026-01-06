.class public Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemTrafficTypeDet"


# instance fields
.field private anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

.field private burstLen:I

.field public burstLenMav:I

.field public burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field private burstMaxLvl:F

.field private burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field public burstMaxLvlPreMavArray:[F

.field private burstStableCnt:I

.field private burstThresh:F

.field private burstTypeThresh:I

.field private curState:I

.field private dataCnt:I

.field private dataCur:F

.field private dataDiffPre:F

.field private dataPre:F

.field private initStableLenThresh:I

.field public internalState:[I

.field private mVerboseLoggingEnabled:Z

.field private maxBurstLen:I

.field private nextState:I

.field private stableBurstCnt:I

.field private stableDiffThresh:F

.field private stableDiffThresh2:F

.field private stableTrafficLenThresh:I

.field private stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field public trafficType:[I

.field public valleyLenMav:I

.field public valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field private valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field private valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

.field public valleyLvlPreMavArray:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    .line 12
    .line 13
    new-array v1, v0, [I

    .line 14
    .line 15
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->internalState:[I

    .line 16
    .line 17
    new-array v1, v0, [F

    .line 18
    .line 19
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMavArray:[F

    .line 20
    .line 21
    new-array v1, v0, [F

    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMavArray:[F

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->initStableLenThresh:I

    .line 27
    .line 28
    const/16 v1, 0xc

    .line 29
    .line 30
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    .line 31
    .line 32
    const v1, 0x3d4ccccd    # 0.05f

    .line 33
    .line 34
    .line 35
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 36
    .line 37
    const v1, 0x3dcccccd    # 0.1f

    .line 38
    .line 39
    .line 40
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    .line 41
    .line 42
    const v1, 0x3e19999a    # 0.15f

    .line 43
    .line 44
    .line 45
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    .line 46
    .line 47
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->maxBurstLen:I

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstTypeThresh:I

    .line 51
    .line 52
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 53
    .line 54
    const/4 v2, 0x6

    .line 55
    invoke-direct {v1, v2, v0}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;-><init>(II)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 59
    .line 60
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 66
    .line 67
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 68
    .line 69
    const/16 v2, 0x8

    .line 70
    .line 71
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 75
    .line 76
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 77
    .line 78
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 82
    .line 83
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 84
    .line 85
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 89
    .line 90
    new-instance v0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 91
    .line 92
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 96
    .line 97
    new-instance v0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 98
    .line 99
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;-><init>(I)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public SemTrafficTypeDet()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0xa

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    aput v4, v2, v1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->internalState:[I

    .line 14
    .line 15
    aput v0, v2, v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMavArray:[F

    .line 18
    .line 19
    aput v3, v2, v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMavArray:[F

    .line 22
    .line 23
    aput v3, v2, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x4

    .line 29
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->initStableLenThresh:I

    .line 30
    .line 31
    const/16 v1, 0xc

    .line 32
    .line 33
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    .line 34
    .line 35
    const v1, 0x3d4ccccd    # 0.05f

    .line 36
    .line 37
    .line 38
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 39
    .line 40
    const v1, 0x3dcccccd    # 0.1f

    .line 41
    .line 42
    .line 43
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    .line 44
    .line 45
    const v1, 0x3e19999a    # 0.15f

    .line 46
    .line 47
    .line 48
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    .line 49
    .line 50
    iput v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->maxBurstLen:I

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstTypeThresh:I

    .line 54
    .line 55
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    .line 56
    .line 57
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 58
    .line 59
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCnt:I

    .line 60
    .line 61
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 62
    .line 63
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataPre:F

    .line 64
    .line 65
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 66
    .line 67
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    .line 68
    .line 69
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 70
    .line 71
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 72
    .line 73
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 74
    .line 75
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method randTrafficReset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public resetVariables()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0xa

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    aput v4, v2, v1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->internalState:[I

    .line 14
    .line 15
    aput v0, v2, v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMavArray:[F

    .line 18
    .line 19
    aput v3, v2, v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMavArray:[F

    .line 22
    .line 23
    aput v3, v2, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    .line 29
    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 31
    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCnt:I

    .line 33
    .line 34
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 35
    .line 36
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataPre:F

    .line 37
    .line 38
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 39
    .line 40
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    .line 41
    .line 42
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 43
    .line 44
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 45
    .line 46
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public setParameters(FFII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 2
    .line 3
    iput p2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    .line 4
    .line 5
    iput p3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->initStableLenThresh:I

    .line 6
    .line 7
    iput p4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstTypeThresh:I

    .line 8
    .line 9
    return-void
.end method

.method public trafficDetAlgo([F[FI)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move/from16 v2, p3

    .line 5
    .line 6
    move v3, v1

    .line 7
    :goto_0
    if-ge v3, v2, :cond_30

    .line 8
    .line 9
    iget v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 10
    .line 11
    iput v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataPre:F

    .line 12
    .line 13
    aget v5, p1, v3

    .line 14
    .line 15
    aget v6, p2, v3

    .line 16
    .line 17
    add-float/2addr v5, v6

    .line 18
    const v6, 0x49742400    # 1000000.0f

    .line 19
    .line 20
    .line 21
    div-float/2addr v5, v6

    .line 22
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 23
    .line 24
    sub-float v4, v5, v4

    .line 25
    .line 26
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCnt:I

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    add-int/2addr v6, v7

    .line 30
    iput v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCnt:I

    .line 31
    .line 32
    const/4 v8, 0x2

    .line 33
    new-array v9, v8, [I

    .line 34
    .line 35
    aput v1, v9, v1

    .line 36
    .line 37
    aput v1, v9, v7

    .line 38
    .line 39
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    .line 40
    .line 41
    const/4 v11, 0x3

    .line 42
    if-eqz v10, :cond_25

    .line 43
    .line 44
    const/4 v6, 0x4

    .line 45
    if-eq v10, v7, :cond_1b

    .line 46
    .line 47
    const-wide/16 v14, 0x3

    .line 48
    .line 49
    if-eq v10, v11, :cond_11

    .line 50
    .line 51
    const/4 v13, 0x5

    .line 52
    if-eq v10, v6, :cond_b

    .line 53
    .line 54
    if-eq v10, v13, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 57
    .line 58
    .line 59
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 60
    .line 61
    goto/16 :goto_10

    .line 62
    .line 63
    :cond_0
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->dataCheck()V

    .line 66
    .line 67
    .line 68
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 69
    .line 70
    iget-object v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 71
    .line 72
    iget v10, v10, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 73
    .line 74
    sub-float/2addr v5, v10

    .line 75
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 80
    .line 81
    cmpg-float v5, v5, v10

    .line 82
    .line 83
    if-gtz v5, :cond_1

    .line 84
    .line 85
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 86
    .line 87
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 88
    .line 89
    invoke-virtual {v5, v10}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 90
    .line 91
    .line 92
    move v5, v1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move v5, v7

    .line 95
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    iget v14, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    .line 100
    .line 101
    cmpg-float v10, v10, v14

    .line 102
    .line 103
    if-gtz v10, :cond_2

    .line 104
    .line 105
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 106
    .line 107
    iget-object v14, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 108
    .line 109
    iget v14, v14, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 110
    .line 111
    sub-float/2addr v10, v14

    .line 112
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    iget v14, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    .line 117
    .line 118
    cmpg-float v10, v10, v14

    .line 119
    .line 120
    if-gtz v10, :cond_2

    .line 121
    .line 122
    iget-object v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 123
    .line 124
    iget v14, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 125
    .line 126
    invoke-virtual {v10, v14}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    iget-object v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 131
    .line 132
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 133
    .line 134
    .line 135
    :goto_2
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    .line 136
    .line 137
    add-float/2addr v10, v4

    .line 138
    float-to-double v14, v10

    .line 139
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    .line 140
    .line 141
    const/high16 v16, 0x40000000    # 2.0f

    .line 142
    .line 143
    float-to-double v12, v10

    .line 144
    const-wide v18, 0x3ff199999999999aL    # 1.1

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    mul-double v12, v12, v18

    .line 150
    .line 151
    cmpl-double v12, v14, v12

    .line 152
    .line 153
    if-gtz v12, :cond_4

    .line 154
    .line 155
    cmpl-float v10, v4, v10

    .line 156
    .line 157
    if-lez v10, :cond_3

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_3
    move v10, v1

    .line 161
    goto :goto_4

    .line 162
    :cond_4
    :goto_3
    move v10, v7

    .line 163
    :goto_4
    if-ne v5, v7, :cond_5

    .line 164
    .line 165
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 166
    .line 167
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyFound()[I

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    :cond_5
    if-ne v10, v7, :cond_7

    .line 172
    .line 173
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 174
    .line 175
    iget-wide v9, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 176
    .line 177
    long-to-float v9, v9

    .line 178
    iget-object v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 179
    .line 180
    iget v10, v10, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 181
    .line 182
    cmpg-float v9, v9, v10

    .line 183
    .line 184
    if-gtz v9, :cond_6

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 187
    .line 188
    .line 189
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 190
    .line 191
    goto/16 :goto_10

    .line 192
    .line 193
    :cond_6
    iget-object v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 194
    .line 195
    iget v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 196
    .line 197
    invoke-virtual {v9, v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 198
    .line 199
    .line 200
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 201
    .line 202
    iget-object v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 203
    .line 204
    iget-wide v9, v9, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 205
    .line 206
    long-to-float v9, v9

    .line 207
    invoke-virtual {v5, v9}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 208
    .line 209
    .line 210
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 211
    .line 212
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 213
    .line 214
    .line 215
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 216
    .line 217
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 218
    .line 219
    .line 220
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 221
    .line 222
    add-int/2addr v5, v7

    .line 223
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 224
    .line 225
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 226
    .line 227
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 228
    .line 229
    .line 230
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 231
    .line 232
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 233
    .line 234
    iput v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 235
    .line 236
    goto/16 :goto_10

    .line 237
    .line 238
    :cond_7
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 239
    .line 240
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 241
    .line 242
    long-to-float v5, v5

    .line 243
    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 244
    .line 245
    iget v6, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 246
    .line 247
    mul-float v6, v6, v16

    .line 248
    .line 249
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    .line 250
    .line 251
    int-to-float v10, v10

    .line 252
    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    cmpl-float v5, v5, v6

    .line 257
    .line 258
    if-ltz v5, :cond_8

    .line 259
    .line 260
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 261
    .line 262
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 263
    .line 264
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 265
    .line 266
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 267
    .line 268
    .line 269
    iput v11, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 270
    .line 271
    goto/16 :goto_10

    .line 272
    .line 273
    :cond_8
    aget v5, v9, v1

    .line 274
    .line 275
    if-ge v5, v8, :cond_a

    .line 276
    .line 277
    aget v5, v9, v7

    .line 278
    .line 279
    if-lt v5, v7, :cond_9

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_9
    const/4 v5, 0x5

    .line 283
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 284
    .line 285
    goto/16 :goto_10

    .line 286
    .line 287
    :cond_a
    :goto_5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 288
    .line 289
    .line 290
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 291
    .line 292
    goto/16 :goto_10

    .line 293
    .line 294
    :cond_b
    const/high16 v16, 0x40000000    # 2.0f

    .line 295
    .line 296
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 297
    .line 298
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 303
    .line 304
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 309
    .line 310
    cmpg-float v5, v5, v6

    .line 311
    .line 312
    if-gtz v5, :cond_c

    .line 313
    .line 314
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 315
    .line 316
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 317
    .line 318
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 319
    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_c
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 323
    .line 324
    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 325
    .line 326
    iget-wide v9, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 327
    .line 328
    long-to-int v9, v9

    .line 329
    add-int/2addr v5, v9

    .line 330
    add-int/2addr v5, v7

    .line 331
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 332
    .line 333
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 334
    .line 335
    .line 336
    :goto_6
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    .line 341
    .line 342
    cmpg-float v5, v5, v6

    .line 343
    .line 344
    if-gtz v5, :cond_d

    .line 345
    .line 346
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 347
    .line 348
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 349
    .line 350
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 351
    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_d
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 355
    .line 356
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 357
    .line 358
    .line 359
    :goto_7
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 360
    .line 361
    iget-wide v9, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 362
    .line 363
    cmp-long v6, v9, v14

    .line 364
    .line 365
    const/4 v9, 0x0

    .line 366
    if-ltz v6, :cond_e

    .line 367
    .line 368
    iget v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 369
    .line 370
    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 371
    .line 372
    iget v6, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 373
    .line 374
    sub-float/2addr v5, v6

    .line 375
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    float-to-double v5, v5

    .line 380
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 381
    .line 382
    float-to-double v12, v10

    .line 383
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 384
    .line 385
    mul-double/2addr v12, v14

    .line 386
    cmpg-double v5, v5, v12

    .line 387
    .line 388
    if-gtz v5, :cond_e

    .line 389
    .line 390
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 391
    .line 392
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 393
    .line 394
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 395
    .line 396
    .line 397
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 398
    .line 399
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 400
    .line 401
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    int-to-float v6, v6

    .line 406
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 407
    .line 408
    .line 409
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 410
    .line 411
    add-int/2addr v5, v7

    .line 412
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 413
    .line 414
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 415
    .line 416
    iput v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 417
    .line 418
    const/4 v5, 0x5

    .line 419
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 420
    .line 421
    goto/16 :goto_10

    .line 422
    .line 423
    :cond_e
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 424
    .line 425
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 426
    .line 427
    long-to-float v5, v5

    .line 428
    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 429
    .line 430
    iget v6, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 431
    .line 432
    mul-float v6, v6, v16

    .line 433
    .line 434
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    .line 435
    .line 436
    int-to-float v10, v10

    .line 437
    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    .line 438
    .line 439
    .line 440
    move-result v6

    .line 441
    cmpl-float v5, v5, v6

    .line 442
    .line 443
    if-ltz v5, :cond_f

    .line 444
    .line 445
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 446
    .line 447
    iput v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 448
    .line 449
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 450
    .line 451
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 452
    .line 453
    .line 454
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 455
    .line 456
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 457
    .line 458
    .line 459
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 460
    .line 461
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 462
    .line 463
    iput v11, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 464
    .line 465
    goto/16 :goto_10

    .line 466
    .line 467
    :cond_f
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLen:I

    .line 468
    .line 469
    int-to-float v5, v5

    .line 470
    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 471
    .line 472
    iget v6, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 473
    .line 474
    iget v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->maxBurstLen:I

    .line 475
    .line 476
    int-to-float v9, v9

    .line 477
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    cmpl-float v5, v5, v6

    .line 482
    .line 483
    if-ltz v5, :cond_10

    .line 484
    .line 485
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 486
    .line 487
    .line 488
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 489
    .line 490
    goto/16 :goto_10

    .line 491
    .line 492
    :cond_10
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    .line 493
    .line 494
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 495
    .line 496
    goto/16 :goto_10

    .line 497
    .line 498
    :cond_11
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 499
    .line 500
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->dataCheck()V

    .line 501
    .line 502
    .line 503
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 508
    .line 509
    cmpg-float v5, v5, v10

    .line 510
    .line 511
    if-gtz v5, :cond_12

    .line 512
    .line 513
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 514
    .line 515
    iget-object v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 516
    .line 517
    iget v10, v10, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 518
    .line 519
    sub-float/2addr v5, v10

    .line 520
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 521
    .line 522
    .line 523
    move-result v5

    .line 524
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 525
    .line 526
    cmpg-float v5, v5, v10

    .line 527
    .line 528
    if-gtz v5, :cond_12

    .line 529
    .line 530
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 531
    .line 532
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 533
    .line 534
    invoke-virtual {v5, v10}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 535
    .line 536
    .line 537
    move v5, v1

    .line 538
    goto :goto_8

    .line 539
    :cond_12
    aget v5, v9, v7

    .line 540
    .line 541
    if-lt v5, v7, :cond_13

    .line 542
    .line 543
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 544
    .line 545
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 546
    .line 547
    .line 548
    :cond_13
    move v5, v7

    .line 549
    :goto_8
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 550
    .line 551
    .line 552
    move-result v10

    .line 553
    const-wide v16, 0x3ff999999999999aL    # 1.6

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    iget v12, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    .line 559
    .line 560
    cmpg-float v10, v10, v12

    .line 561
    .line 562
    if-gtz v10, :cond_14

    .line 563
    .line 564
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 565
    .line 566
    iget-object v12, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 567
    .line 568
    iget v12, v12, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 569
    .line 570
    sub-float/2addr v10, v12

    .line 571
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 572
    .line 573
    .line 574
    move-result v10

    .line 575
    iget v12, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    .line 576
    .line 577
    cmpg-float v10, v10, v12

    .line 578
    .line 579
    if-gtz v10, :cond_14

    .line 580
    .line 581
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 582
    .line 583
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 584
    .line 585
    invoke-virtual {v5, v10}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 586
    .line 587
    .line 588
    move v5, v1

    .line 589
    :cond_14
    if-ne v5, v7, :cond_15

    .line 590
    .line 591
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 592
    .line 593
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyFound()[I

    .line 594
    .line 595
    .line 596
    move-result-object v9

    .line 597
    :cond_15
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    .line 598
    .line 599
    add-float/2addr v5, v4

    .line 600
    float-to-double v12, v5

    .line 601
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    .line 602
    .line 603
    move-wide/from16 v18, v14

    .line 604
    .line 605
    float-to-double v14, v5

    .line 606
    mul-double v14, v14, v16

    .line 607
    .line 608
    cmpl-double v10, v12, v14

    .line 609
    .line 610
    if-gtz v10, :cond_16

    .line 611
    .line 612
    cmpl-float v5, v4, v5

    .line 613
    .line 614
    if-lez v5, :cond_17

    .line 615
    .line 616
    :cond_16
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 617
    .line 618
    iget-wide v12, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 619
    .line 620
    cmp-long v5, v12, v18

    .line 621
    .line 622
    if-ltz v5, :cond_17

    .line 623
    .line 624
    move v5, v7

    .line 625
    goto :goto_9

    .line 626
    :cond_17
    move v5, v1

    .line 627
    :goto_9
    if-ne v5, v7, :cond_18

    .line 628
    .line 629
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 630
    .line 631
    iget-object v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 632
    .line 633
    iget v9, v9, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 634
    .line 635
    invoke-virtual {v5, v9}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 636
    .line 637
    .line 638
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 639
    .line 640
    iget-object v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 641
    .line 642
    iget-wide v9, v9, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 643
    .line 644
    const-wide/16 v12, 0xa

    .line 645
    .line 646
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 647
    .line 648
    .line 649
    move-result-wide v9

    .line 650
    long-to-float v9, v9

    .line 651
    invoke-virtual {v5, v9}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 652
    .line 653
    .line 654
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 655
    .line 656
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 657
    .line 658
    .line 659
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 660
    .line 661
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 662
    .line 663
    .line 664
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 665
    .line 666
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 667
    .line 668
    .line 669
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 670
    .line 671
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 672
    .line 673
    iput v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 674
    .line 675
    goto/16 :goto_10

    .line 676
    .line 677
    :cond_18
    aget v5, v9, v1

    .line 678
    .line 679
    if-ge v5, v8, :cond_1a

    .line 680
    .line 681
    aget v5, v9, v7

    .line 682
    .line 683
    if-lt v5, v7, :cond_19

    .line 684
    .line 685
    goto :goto_a

    .line 686
    :cond_19
    iput v11, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 687
    .line 688
    goto/16 :goto_10

    .line 689
    .line 690
    :cond_1a
    :goto_a
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 691
    .line 692
    .line 693
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 694
    .line 695
    goto/16 :goto_10

    .line 696
    .line 697
    :cond_1b
    const-wide v16, 0x3ff999999999999aL    # 1.6

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 703
    .line 704
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->dataCheck()V

    .line 705
    .line 706
    .line 707
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 708
    .line 709
    .line 710
    move-result v5

    .line 711
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 712
    .line 713
    cmpg-float v5, v5, v10

    .line 714
    .line 715
    if-gtz v5, :cond_1c

    .line 716
    .line 717
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 718
    .line 719
    iget-object v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 720
    .line 721
    iget v10, v10, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 722
    .line 723
    sub-float/2addr v5, v10

    .line 724
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 725
    .line 726
    .line 727
    move-result v5

    .line 728
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 729
    .line 730
    cmpg-float v5, v5, v10

    .line 731
    .line 732
    if-gtz v5, :cond_1c

    .line 733
    .line 734
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 735
    .line 736
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 737
    .line 738
    invoke-virtual {v5, v10}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 739
    .line 740
    .line 741
    move v5, v1

    .line 742
    goto :goto_b

    .line 743
    :cond_1c
    move v5, v7

    .line 744
    :goto_b
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 745
    .line 746
    .line 747
    move-result v10

    .line 748
    iget v12, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    .line 749
    .line 750
    cmpg-float v10, v10, v12

    .line 751
    .line 752
    if-gtz v10, :cond_1d

    .line 753
    .line 754
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 755
    .line 756
    iget-object v12, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 757
    .line 758
    iget v12, v12, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 759
    .line 760
    sub-float/2addr v10, v12

    .line 761
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 762
    .line 763
    .line 764
    move-result v10

    .line 765
    iget v12, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    .line 766
    .line 767
    cmpg-float v10, v10, v12

    .line 768
    .line 769
    if-gtz v10, :cond_1d

    .line 770
    .line 771
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 772
    .line 773
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 774
    .line 775
    invoke-virtual {v5, v10}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 776
    .line 777
    .line 778
    move v5, v1

    .line 779
    :cond_1d
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    .line 780
    .line 781
    add-float/2addr v10, v4

    .line 782
    float-to-double v12, v10

    .line 783
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstThresh:F

    .line 784
    .line 785
    float-to-double v14, v10

    .line 786
    mul-double v14, v14, v16

    .line 787
    .line 788
    cmpl-double v12, v12, v14

    .line 789
    .line 790
    if-gtz v12, :cond_1f

    .line 791
    .line 792
    cmpl-float v10, v4, v10

    .line 793
    .line 794
    if-lez v10, :cond_1e

    .line 795
    .line 796
    goto :goto_c

    .line 797
    :cond_1e
    move v10, v1

    .line 798
    goto :goto_d

    .line 799
    :cond_1f
    :goto_c
    move v10, v7

    .line 800
    :goto_d
    if-ne v5, v7, :cond_20

    .line 801
    .line 802
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 803
    .line 804
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyFound()[I

    .line 805
    .line 806
    .line 807
    move-result-object v9

    .line 808
    :cond_20
    if-ne v10, v7, :cond_21

    .line 809
    .line 810
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 811
    .line 812
    iget-object v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 813
    .line 814
    iget v9, v9, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 815
    .line 816
    invoke-virtual {v5, v9}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 817
    .line 818
    .line 819
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 820
    .line 821
    iget-object v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 822
    .line 823
    iget-wide v9, v9, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 824
    .line 825
    long-to-float v9, v9

    .line 826
    invoke-virtual {v5, v9}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 827
    .line 828
    .line 829
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 830
    .line 831
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 832
    .line 833
    .line 834
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 835
    .line 836
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->reset()V

    .line 837
    .line 838
    .line 839
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 840
    .line 841
    add-int/2addr v5, v7

    .line 842
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 843
    .line 844
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 845
    .line 846
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 847
    .line 848
    .line 849
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 850
    .line 851
    iput v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvl:F

    .line 852
    .line 853
    iput v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 854
    .line 855
    goto/16 :goto_10

    .line 856
    .line 857
    :cond_21
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 858
    .line 859
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 860
    .line 861
    iget v10, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    .line 862
    .line 863
    int-to-long v12, v10

    .line 864
    cmp-long v5, v5, v12

    .line 865
    .line 866
    if-ltz v5, :cond_22

    .line 867
    .line 868
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->anomalyDet1:Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;

    .line 869
    .line 870
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 871
    .line 872
    .line 873
    iput v11, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 874
    .line 875
    goto/16 :goto_10

    .line 876
    .line 877
    :cond_22
    aget v5, v9, v1

    .line 878
    .line 879
    if-ge v5, v8, :cond_24

    .line 880
    .line 881
    aget v5, v9, v7

    .line 882
    .line 883
    if-lt v5, v7, :cond_23

    .line 884
    .line 885
    goto :goto_e

    .line 886
    :cond_23
    iput v7, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 887
    .line 888
    goto :goto_10

    .line 889
    :cond_24
    :goto_e
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 890
    .line 891
    .line 892
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 893
    .line 894
    goto :goto_10

    .line 895
    :cond_25
    if-gt v6, v7, :cond_26

    .line 896
    .line 897
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 898
    .line 899
    goto :goto_10

    .line 900
    :cond_26
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 901
    .line 902
    .line 903
    move-result v5

    .line 904
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh:F

    .line 905
    .line 906
    cmpg-float v5, v5, v6

    .line 907
    .line 908
    if-gez v5, :cond_27

    .line 909
    .line 910
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 911
    .line 912
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 913
    .line 914
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 915
    .line 916
    .line 917
    move v5, v1

    .line 918
    goto :goto_f

    .line 919
    :cond_27
    move v5, v7

    .line 920
    :goto_f
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 921
    .line 922
    .line 923
    move-result v6

    .line 924
    iget v9, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableDiffThresh2:F

    .line 925
    .line 926
    cmpg-float v6, v6, v9

    .line 927
    .line 928
    if-gez v6, :cond_28

    .line 929
    .line 930
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 931
    .line 932
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 933
    .line 934
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->run(F)F

    .line 935
    .line 936
    .line 937
    move v5, v1

    .line 938
    :cond_28
    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 939
    .line 940
    iget-wide v9, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 941
    .line 942
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->initStableLenThresh:I

    .line 943
    .line 944
    int-to-long v12, v6

    .line 945
    cmp-long v6, v9, v12

    .line 946
    .line 947
    if-ltz v6, :cond_29

    .line 948
    .line 949
    iput v7, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 950
    .line 951
    goto :goto_10

    .line 952
    :cond_29
    iget-object v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLvlMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 953
    .line 954
    iget-wide v9, v6, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 955
    .line 956
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableTrafficLenThresh:I

    .line 957
    .line 958
    int-to-long v12, v6

    .line 959
    cmp-long v6, v9, v12

    .line 960
    .line 961
    if-ltz v6, :cond_2a

    .line 962
    .line 963
    iput v11, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 964
    .line 965
    goto :goto_10

    .line 966
    :cond_2a
    if-nez v5, :cond_2b

    .line 967
    .line 968
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 969
    .line 970
    goto :goto_10

    .line 971
    :cond_2b
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->randTrafficReset()V

    .line 972
    .line 973
    .line 974
    iput v1, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 975
    .line 976
    :goto_10
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->stableBurstCnt:I

    .line 977
    .line 978
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstTypeThresh:I

    .line 979
    .line 980
    if-ge v5, v6, :cond_2e

    .line 981
    .line 982
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstStableCnt:I

    .line 983
    .line 984
    if-le v5, v6, :cond_2c

    .line 985
    .line 986
    goto :goto_11

    .line 987
    :cond_2c
    iget v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 988
    .line 989
    if-ne v5, v11, :cond_2d

    .line 990
    .line 991
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    .line 992
    .line 993
    aput v8, v5, v3

    .line 994
    .line 995
    goto :goto_12

    .line 996
    :cond_2d
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    .line 997
    .line 998
    aput v7, v5, v3

    .line 999
    .line 1000
    goto :goto_12

    .line 1001
    :cond_2e
    :goto_11
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    .line 1002
    .line 1003
    aput v11, v5, v3

    .line 1004
    .line 1005
    :goto_12
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    .line 1006
    .line 1007
    aget v6, v5, v3

    .line 1008
    .line 1009
    if-ne v6, v8, :cond_2f

    .line 1010
    .line 1011
    iget v6, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataCur:F

    .line 1012
    .line 1013
    float-to-double v8, v6

    .line 1014
    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    cmpg-double v6, v8, v10

    .line 1020
    .line 1021
    if-gtz v6, :cond_2f

    .line 1022
    .line 1023
    aput v7, v5, v3

    .line 1024
    .line 1025
    :cond_2f
    iput v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->dataDiffPre:F

    .line 1026
    .line 1027
    iget v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->nextState:I

    .line 1028
    .line 1029
    iput v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->curState:I

    .line 1030
    .line 1031
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->internalState:[I

    .line 1032
    .line 1033
    aput v4, v5, v3

    .line 1034
    .line 1035
    iget-object v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMavArray:[F

    .line 1036
    .line 1037
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 1038
    .line 1039
    iget v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 1040
    .line 1041
    aput v5, v4, v3

    .line 1042
    .line 1043
    iget-object v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMavArray:[F

    .line 1044
    .line 1045
    iget-object v5, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 1046
    .line 1047
    iget v5, v5, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 1048
    .line 1049
    aput v5, v4, v3

    .line 1050
    .line 1051
    iget-object v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 1052
    .line 1053
    iget v4, v4, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 1054
    .line 1055
    float-to-double v4, v4

    .line 1056
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 1057
    .line 1058
    add-double/2addr v4, v6

    .line 1059
    double-to-int v4, v4

    .line 1060
    iput v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenMav:I

    .line 1061
    .line 1062
    iget-object v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenPreMav:Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;

    .line 1063
    .line 1064
    iget v4, v4, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 1065
    .line 1066
    float-to-double v4, v4

    .line 1067
    add-double/2addr v4, v6

    .line 1068
    double-to-int v4, v4

    .line 1069
    iput v4, v0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenMav:I

    .line 1070
    .line 1071
    add-int/lit8 v3, v3, 0x1

    .line 1072
    .line 1073
    goto/16 :goto_0

    .line 1074
    .line 1075
    :cond_30
    return-void
.end method
