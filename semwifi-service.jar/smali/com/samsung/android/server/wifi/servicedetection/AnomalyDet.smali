.class Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private afterLastAnomaly:I

.field private anomaliesLifeCnt:[I

.field private anomalyCnt:I

.field private continuousAnomalyCnt:I

.field private continuousNoAnomalyCnt:I

.field private flagFirstAnomaly:I

.field private maxAnomalyLife:I

.field private maxNumAnomalies:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxNumAnomalies:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxAnomalyLife:I

    .line 7
    .line 8
    new-array p1, p1, [I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousNoAnomalyCnt:I

    .line 14
    .line 15
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    .line 16
    .line 17
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->flagFirstAnomaly:I

    .line 18
    .line 19
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    .line 20
    .line 21
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method anomalyFound()[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxAnomalyLife:I

    .line 6
    .line 7
    aput v2, v0, v1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    add-int/2addr v1, v0

    .line 11
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    .line 12
    .line 13
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->flagFirstAnomaly:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-ne v2, v0, :cond_1

    .line 17
    .line 18
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    .line 19
    .line 20
    if-ne v2, v0, :cond_0

    .line 21
    .line 22
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    .line 23
    .line 24
    add-int/2addr v2, v0

    .line 25
    iput v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    .line 26
    .line 27
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    .line 31
    .line 32
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->flagFirstAnomaly:I

    .line 36
    .line 37
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    .line 38
    .line 39
    :goto_0
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxNumAnomalies:I

    .line 40
    .line 41
    if-lt v1, v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    .line 47
    .line 48
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    .line 49
    .line 50
    filled-new-array {v0, p0}, [I

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method dataCheck()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousNoAnomalyCnt:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    .line 14
    .line 15
    sub-int/2addr v0, v2

    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    .line 17
    .line 18
    move v0, v1

    .line 19
    :goto_0
    iget v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxNumAnomalies:I

    .line 20
    .line 21
    sub-int/2addr v3, v2

    .line 22
    if-ge v0, v3, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    .line 25
    .line 26
    add-int/lit8 v4, v0, 0x1

    .line 27
    .line 28
    aget v5, v3, v4

    .line 29
    .line 30
    sub-int/2addr v5, v2

    .line 31
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    aput v5, v3, v0

    .line 36
    .line 37
    move v0, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v0, v1

    .line 40
    :goto_1
    iget v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxNumAnomalies:I

    .line 41
    .line 42
    if-ge v0, v3, :cond_2

    .line 43
    .line 44
    iget-object v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    .line 45
    .line 46
    aget v4, v3, v0

    .line 47
    .line 48
    sub-int/2addr v4, v2

    .line 49
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    aput v4, v3, v0

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousNoAnomalyCnt:I

    .line 59
    .line 60
    add-int/2addr v0, v2

    .line 61
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousNoAnomalyCnt:I

    .line 62
    .line 63
    :cond_2
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    .line 64
    .line 65
    add-int/2addr v0, v2

    .line 66
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    .line 67
    .line 68
    const/4 v2, 0x2

    .line 69
    if-lt v0, v2, :cond_3

    .line 70
    .line 71
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousNoAnomalyCnt:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->flagFirstAnomaly:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    .line 11
    .line 12
    move v1, v0

    .line 13
    :goto_0
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxNumAnomalies:I

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    .line 18
    .line 19
    aput v0, v2, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
