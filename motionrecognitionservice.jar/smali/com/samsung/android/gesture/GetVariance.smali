.class Lcom/samsung/android/gesture/GetVariance;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# instance fields
.field firstCall:Z

.field iData:I

.field mean:F

.field squareMean:F

.field variance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/GetVariance;->firstCall:Z

    .line 607
    return-void
.end method


# virtual methods
.method getVaraince(F)F
    .locals 3
    .param p1, "input"    # F

    .line 610
    iget v0, p0, Lcom/samsung/android/gesture/GetVariance;->iData:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/GetVariance;->iData:I

    .line 611
    iget-boolean v0, p0, Lcom/samsung/android/gesture/GetVariance;->firstCall:Z

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/GetVariance;->firstCall:Z

    .line 613
    iput p1, p0, Lcom/samsung/android/gesture/GetVariance;->mean:F

    .line 614
    mul-float v0, p1, p1

    iput v0, p0, Lcom/samsung/android/gesture/GetVariance;->squareMean:F

    .line 615
    const/4 v0, 0x0

    return v0

    .line 618
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/GetVariance;->mean:F

    iget v1, p0, Lcom/samsung/android/gesture/GetVariance;->iData:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lcom/samsung/android/gesture/GetVariance;->iData:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/GetVariance;->mean:F

    .line 619
    iget v0, p0, Lcom/samsung/android/gesture/GetVariance;->squareMean:F

    iget v1, p0, Lcom/samsung/android/gesture/GetVariance;->iData:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/gesture/GetVariance;->iData:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/GetVariance;->squareMean:F

    .line 620
    iget v0, p0, Lcom/samsung/android/gesture/GetVariance;->squareMean:F

    iget v1, p0, Lcom/samsung/android/gesture/GetVariance;->mean:F

    iget v2, p0, Lcom/samsung/android/gesture/GetVariance;->mean:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/GetVariance;->variance:F

    .line 621
    iget v0, p0, Lcom/samsung/android/gesture/GetVariance;->variance:F

    return v0
.end method
