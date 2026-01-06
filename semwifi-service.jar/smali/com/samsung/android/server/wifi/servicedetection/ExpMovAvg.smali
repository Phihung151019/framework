.class Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public dataCnt:I

.field private expFactor:F

.field private initMavLen:I

.field public mavResult:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method ExpMovAvg(IF)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->dataCnt:I

    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->initMavLen:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->expFactor:F

    .line 7
    .line 8
    return-void
.end method

.method reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->dataCnt:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    .line 6
    .line 7
    return-void
.end method

.method run(F)F
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->dataCnt:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->initMavLen:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    .line 8
    .line 9
    int-to-float v2, v0

    .line 10
    mul-float/2addr v1, v2

    .line 11
    add-float/2addr v1, p1

    .line 12
    add-int/lit8 p1, v0, 0x1

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    div-float/2addr v1, p1

    .line 16
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->expFactor:F

    .line 20
    .line 21
    mul-float/2addr p1, v1

    .line 22
    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    .line 24
    sub-float/2addr v2, v1

    .line 25
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    .line 26
    .line 27
    mul-float/2addr v2, v1

    .line 28
    add-float/2addr v2, p1

    .line 29
    iput v2, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    .line 30
    .line 31
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->dataCnt:I

    .line 34
    .line 35
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    .line 36
    .line 37
    return p0
.end method
