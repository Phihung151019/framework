.class Lcom/samsung/android/gesture/MakeSlidingWindowSignal;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# static fields
.field static final winSizeForMean:I = 0xc


# instance fields
.field firstCallForMean:Z

.field idx:I

.field mean:F

.field windowForMean:[F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->firstCallForMean:Z

    .line 491
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->windowForMean:[F

    return-void
.end method


# virtual methods
.method LPF_meanWindow(FI)F
    .locals 3
    .param p1, "input"    # F
    .param p2, "winSize"    # I

    .line 495
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->firstCallForMean:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    if-ne v0, p2, :cond_0

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->firstCallForMean:Z

    .line 499
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    rem-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    .line 500
    iget-object v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->windowForMean:[F

    iget v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    aget v0, v0, v1

    .line 501
    .local v0, "prevData":F
    iget-object v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->windowForMean:[F

    iget v2, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    aput p1, v1, v2

    .line 503
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->firstCallForMean:Z

    if-eqz v1, :cond_1

    .line 504
    iget v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->mean:F

    iget v2, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->mean:F

    goto :goto_0

    .line 507
    :cond_1
    iget v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->mean:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    add-float/2addr v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->mean:F

    .line 509
    :goto_0
    iget v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    .line 511
    iget v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->mean:F

    return v1
.end method
