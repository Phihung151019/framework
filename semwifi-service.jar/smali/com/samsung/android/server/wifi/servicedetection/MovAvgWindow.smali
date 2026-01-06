.class Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private dataBuffer:[F

.field public dataCnt:J

.field private dataIdx:I

.field public mavResult:F

.field private winLen:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->winLen:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 15
    .line 16
    new-array p1, p1, [F

    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataBuffer:[F

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    .line 10
    .line 11
    :goto_0
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->winLen:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataBuffer:[F

    .line 16
    .line 17
    aput v0, v2, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method run(F)F
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 2
    .line 3
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->winLen:I

    .line 4
    .line 5
    int-to-long v3, v2

    .line 6
    cmp-long v3, v0, v3

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-gez v3, :cond_0

    .line 10
    .line 11
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 12
    .line 13
    iget v3, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    .line 14
    .line 15
    int-to-float v5, v3

    .line 16
    mul-float/2addr v2, v5

    .line 17
    add-float/2addr v2, p1

    .line 18
    add-int/lit8 v5, v3, 0x1

    .line 19
    .line 20
    int-to-float v5, v5

    .line 21
    div-float/2addr v2, v5

    .line 22
    iput v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataBuffer:[F

    .line 25
    .line 26
    aput p1, v2, v3

    .line 27
    .line 28
    add-int/2addr v3, v4

    .line 29
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v3, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    .line 33
    .line 34
    if-lt v3, v2, :cond_1

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    .line 38
    .line 39
    iget v5, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 40
    .line 41
    int-to-float v6, v2

    .line 42
    mul-float/2addr v5, v6

    .line 43
    add-float/2addr v5, p1

    .line 44
    iget-object v6, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataBuffer:[F

    .line 45
    .line 46
    aget v7, v6, v3

    .line 47
    .line 48
    sub-float/2addr v5, v7

    .line 49
    int-to-float v2, v2

    .line 50
    div-float/2addr v5, v2

    .line 51
    iput v5, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 52
    .line 53
    aput p1, v6, v3

    .line 54
    .line 55
    iput v4, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget v5, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 59
    .line 60
    int-to-float v6, v2

    .line 61
    mul-float/2addr v5, v6

    .line 62
    add-float/2addr v5, p1

    .line 63
    iget-object v6, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataBuffer:[F

    .line 64
    .line 65
    aget v7, v6, v3

    .line 66
    .line 67
    sub-float/2addr v5, v7

    .line 68
    int-to-float v2, v2

    .line 69
    div-float/2addr v5, v2

    .line 70
    iput v5, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 71
    .line 72
    aput p1, v6, v3

    .line 73
    .line 74
    add-int/2addr v3, v4

    .line 75
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    .line 76
    .line 77
    :goto_0
    const-wide/16 v2, 0x1

    .line 78
    .line 79
    add-long/2addr v0, v2

    .line 80
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 81
    .line 82
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 83
    .line 84
    return p0
.end method
