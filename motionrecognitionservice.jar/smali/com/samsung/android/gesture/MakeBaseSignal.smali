.class Lcom/samsung/android/gesture/MakeBaseSignal;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# static fields
.field static final alpha:F = 0.8f

.field static final bufSizeForBaseSignal:I = 0xa


# instance fields
.field LPF_baseSignal:F

.field LPF_firstRun:Z

.field bufferForBaseSignal:[F

.field firstCallForMakeBaseSignal:Z

.field idx:I

.field prev_LPF_baseSignal:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->firstCallForMakeBaseSignal:Z

    .line 519
    const/16 v1, 0xa

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->bufferForBaseSignal:[F

    .line 520
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->LPF_baseSignal:F

    .line 521
    iput v1, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->prev_LPF_baseSignal:F

    .line 522
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->LPF_firstRun:Z

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    return-void
.end method


# virtual methods
.method LPF(FF)F
    .locals 2
    .param p1, "newData"    # F
    .param p2, "alpha"    # F

    .line 586
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->LPF_firstRun:Z

    if-eqz v0, :cond_0

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->LPF_firstRun:Z

    .line 588
    iput p1, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->prev_LPF_baseSignal:F

    .line 591
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->prev_LPF_baseSignal:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->LPF_baseSignal:F

    .line 592
    iget v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->LPF_baseSignal:F

    iput v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->prev_LPF_baseSignal:F

    .line 594
    iget v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->LPF_baseSignal:F

    return v0
.end method

.method makeAccBaseSignal(FI)F
    .locals 7
    .param p1, "input"    # F
    .param p2, "bufSize"    # I

    .line 529
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->firstCallForMakeBaseSignal:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    if-ne v0, p2, :cond_0

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->firstCallForMakeBaseSignal:Z

    .line 533
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    rem-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    .line 534
    iget-object v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->bufferForBaseSignal:[F

    iget v1, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    aput p1, v0, v1

    .line 536
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->firstCallForMakeBaseSignal:Z

    if-eqz v0, :cond_1

    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "session2":F
    const/4 v1, 0x0

    .line 539
    .local v1, "session1":F
    iget v2, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    .line 540
    sub-float v2, v0, v1

    return v2

    .line 542
    .end local v0    # "session2":F
    .end local v1    # "session1":F
    :cond_1
    div-int/lit8 v0, p2, 0x2

    .line 544
    .local v0, "halfBufSize":I
    iget v1, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    if-ge v1, v0, :cond_5

    .line 545
    const/4 v1, 0x0

    .line 546
    .local v1, "cnt":I
    const/4 v2, 0x0

    .line 548
    .local v2, "tempSum":F
    iget v3, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 549
    iget-object v4, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->bufferForBaseSignal:[F

    aget v4, v4, v3

    add-float/2addr v2, v4

    .line 550
    add-int/lit8 v1, v1, 0x1

    .line 548
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 552
    :cond_2
    add-int/lit8 v3, p2, -0x1

    :goto_1
    add-int/lit8 v4, p2, -0x1

    sub-int v5, v0, v1

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_3

    .line 553
    iget-object v4, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->bufferForBaseSignal:[F

    aget v4, v4, v3

    add-float/2addr v2, v4

    .line 552
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 555
    :cond_3
    int-to-float v4, v0

    div-float v4, v2, v4

    .line 556
    .local v4, "session2":F
    const/4 v2, 0x0

    .line 557
    move v5, v3

    .local v5, "j":I
    :goto_2
    sub-int v6, v3, v0

    if-le v5, v6, :cond_4

    .line 558
    iget-object v6, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->bufferForBaseSignal:[F

    aget v6, v6, v5

    add-float/2addr v2, v6

    .line 557
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 560
    .end local v5    # "j":I
    :cond_4
    int-to-float v5, v0

    div-float/2addr v2, v5

    .line 561
    .end local v1    # "cnt":I
    .end local v3    # "i":I
    .local v2, "session1":F
    goto :goto_6

    .line 563
    .end local v2    # "session1":F
    .end local v4    # "session2":F
    :cond_5
    const/4 v1, 0x0

    .line 564
    .restart local v1    # "cnt":I
    const/4 v2, 0x0

    .line 567
    .local v2, "tempSum":F
    iget v3, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    .restart local v3    # "i":I
    :goto_3
    iget v4, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_6

    .line 568
    iget-object v4, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->bufferForBaseSignal:[F

    aget v4, v4, v3

    add-float/2addr v2, v4

    .line 567
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 570
    :cond_6
    int-to-float v4, v0

    div-float v4, v2, v4

    .line 571
    .restart local v4    # "session2":F
    const/4 v2, 0x0

    .line 572
    move v5, v3

    .restart local v5    # "j":I
    :goto_4
    if-ltz v5, :cond_7

    .line 573
    add-int/lit8 v1, v1, 0x1

    .line 574
    iget-object v6, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->bufferForBaseSignal:[F

    aget v6, v6, v5

    add-float/2addr v2, v6

    .line 572
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 576
    .end local v5    # "j":I
    :cond_7
    add-int/lit8 v3, p2, -0x1

    :goto_5
    add-int/lit8 v5, p2, -0x1

    sub-int v6, v0, v1

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_8

    .line 577
    iget-object v5, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->bufferForBaseSignal:[F

    aget v5, v5, v3

    add-float/2addr v2, v5

    .line 576
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 579
    :cond_8
    int-to-float v5, v0

    div-float v5, v2, v5

    move v2, v5

    .line 581
    .end local v1    # "cnt":I
    .end local v3    # "i":I
    .local v2, "session1":F
    :goto_6
    iget v1, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/MakeBaseSignal;->idx:I

    .line 582
    sub-float v1, v4, v2

    return v1
.end method
