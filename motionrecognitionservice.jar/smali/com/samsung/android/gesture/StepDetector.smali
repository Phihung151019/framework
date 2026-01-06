.class Lcom/samsung/android/gesture/StepDetector;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# static fields
.field static final th_MaxVar:F = 2.0f

.field static final th_Max_P2V:F = 5.0f

.field static final th_Max_Step_Length:I = 0x32

.field static final th_MinVar:F = 0.2f

.field static final th_Min_P2V:F = 0.5f

.field static final th_Min_Step_Length:I = 0x8

.field static final th_Resting:I = 0x78

.field static final th_minNormValue:F = 0.2f


# instance fields
.field SW_Signal:[F

.field ZC_OK:I

.field ZC_cand:I

.field ZC_cand_ok:I

.field ZC_cntOK:I

.field ZC_cntOK_Time:[J

.field ZC_fSign:I

.field baseSignal:F

.field baseSignal_LPF:[F

.field firstCheck:Z

.field getVariance:Lcom/samsung/android/gesture/GetVariance;

.field iPeriod:J

.field iResting:I

.field makeBaseSignal:Lcom/samsung/android/gesture/MakeBaseSignal;

.field makeSlidingWindowSignal:[Lcom/samsung/android/gesture/MakeSlidingWindowSignal;

.field maxSignal:F

.field minSignal:F

.field norm:F

.field peak2valley:F

.field periodWalk:J

.field varSignal:F

.field walk_Cnt:I

.field walk_OK:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/gesture/StepDetector;->SW_Signal:[F

    .line 639
    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    .line 640
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/gesture/StepDetector;->firstCheck:Z

    .line 643
    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_fSign:I

    .line 645
    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, Lcom/samsung/android/gesture/StepDetector;->minSignal:F

    const/high16 v3, -0x3d380000    # -100.0f

    iput v3, p0, Lcom/samsung/android/gesture/StepDetector;->maxSignal:F

    .line 646
    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->iResting:I

    .line 648
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->walk_OK:I

    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->walk_Cnt:I

    .line 649
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gesture/StepDetector;->periodWalk:J

    .line 650
    iput-wide v2, p0, Lcom/samsung/android/gesture/StepDetector;->iPeriod:J

    .line 651
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK_Time:[J

    .line 654
    new-array v1, v0, [Lcom/samsung/android/gesture/MakeSlidingWindowSignal;

    iput-object v1, p0, Lcom/samsung/android/gesture/StepDetector;->makeSlidingWindowSignal:[Lcom/samsung/android/gesture/MakeSlidingWindowSignal;

    .line 658
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 659
    iget-object v2, p0, Lcom/samsung/android/gesture/StepDetector;->makeSlidingWindowSignal:[Lcom/samsung/android/gesture/MakeSlidingWindowSignal;

    new-instance v3, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;

    invoke-direct {v3}, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;-><init>()V

    aput-object v3, v2, v1

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    .end local v1    # "i":I
    :cond_0
    new-instance v0, Lcom/samsung/android/gesture/MakeBaseSignal;

    invoke-direct {v0}, Lcom/samsung/android/gesture/MakeBaseSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->makeBaseSignal:Lcom/samsung/android/gesture/MakeBaseSignal;

    .line 662
    invoke-virtual {p0}, Lcom/samsung/android/gesture/StepDetector;->initParameter()V

    .line 663
    return-void
.end method


# virtual methods
.method checkFinalWalkFlag()V
    .locals 7

    .line 788
    iget-wide v0, p0, Lcom/samsung/android/gesture/StepDetector;->periodWalk:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-wide v3, p0, Lcom/samsung/android/gesture/StepDetector;->periodWalk:J

    const-wide/16 v5, 0x32

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->peak2valley:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->peak2valley:F

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->varSignal:F

    const v3, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->varSignal:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 791
    iput v1, p0, Lcom/samsung/android/gesture/StepDetector;->walk_OK:I

    .line 792
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->walk_Cnt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->walk_Cnt:I

    .line 793
    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->iResting:I

    .line 794
    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_OK:I

    .line 795
    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand_ok:I

    .line 796
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/android/gesture/StepDetector;->periodWalk:J

    .line 797
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->peak2valley:F

    .line 798
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->minSignal:F

    .line 799
    const/high16 v0, -0x3d380000    # -100.0f

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->maxSignal:F

    .line 800
    new-instance v0, Lcom/samsung/android/gesture/GetVariance;

    invoke-direct {v0}, Lcom/samsung/android/gesture/GetVariance;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->getVariance:Lcom/samsung/android/gesture/GetVariance;

    .line 803
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->walk_OK:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->iResting:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_1

    .line 804
    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->walk_OK:I

    .line 805
    invoke-virtual {p0}, Lcom/samsung/android/gesture/StepDetector;->initParameter()V

    .line 806
    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK_Time:[J

    iget-wide v3, p0, Lcom/samsung/android/gesture/StepDetector;->iPeriod:J

    aput-wide v3, v0, v2

    .line 808
    :cond_1
    return-void
.end method

.method checkPeriod()V
    .locals 5

    .line 749
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand_ok:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand_ok:I

    if-ne v0, v1, :cond_4

    .line 750
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand_ok:I

    .line 751
    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK:I

    .line 752
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand:I

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x2

    if-ne v0, v2, :cond_2

    .line 753
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->minSignal:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->minSignal:F

    .line 754
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->minSignal:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 755
    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_OK:I

    .line 756
    new-instance v0, Lcom/samsung/android/gesture/GetVariance;

    invoke-direct {v0}, Lcom/samsung/android/gesture/GetVariance;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->getVariance:Lcom/samsung/android/gesture/GetVariance;

    goto :goto_0

    .line 759
    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->minSignal:F

    .line 760
    iput v4, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_fSign:I

    goto :goto_0

    .line 764
    :cond_2
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand:I

    if-ne v0, v4, :cond_4

    .line 765
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->maxSignal:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->maxSignal:F

    .line 766
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->maxSignal:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 767
    iput v1, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_OK:I

    goto :goto_0

    .line 770
    :cond_3
    const/high16 v0, -0x3d380000    # -100.0f

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->maxSignal:F

    .line 771
    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_fSign:I

    .line 775
    :cond_4
    :goto_0
    return-void
.end method

.method checkZeroCrossing()V
    .locals 7

    .line 721
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK:I

    const/16 v1, 0xd2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 722
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK:I

    .line 724
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->iResting:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->iResting:I

    .line 726
    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    const/16 v4, 0x8

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    aget v0, v0, v2

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 727
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_fSign:I

    if-ne v0, v6, :cond_1

    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK:I

    if-le v0, v4, :cond_1

    .line 728
    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand:I

    .line 729
    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand_ok:I

    .line 730
    iput v2, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_fSign:I

    goto :goto_0

    .line 733
    :cond_1
    iput v5, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand:I

    goto :goto_0

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    aget v0, v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    aget v0, v0, v2

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    .line 737
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_fSign:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK:I

    if-le v0, v4, :cond_3

    .line 738
    iput v6, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand:I

    .line 739
    iput v5, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand_ok:I

    .line 740
    iput v6, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_fSign:I

    goto :goto_0

    .line 743
    :cond_3
    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand:I

    .line 746
    :cond_4
    :goto_0
    return-void
.end method

.method initParameter()V
    .locals 3

    .line 666
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand:I

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cand_ok:I

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK:I

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_OK:I

    .line 667
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_fSign:I

    .line 668
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/samsung/android/gesture/StepDetector;->minSignal:F

    const/high16 v1, -0x3d380000    # -100.0f

    iput v1, p0, Lcom/samsung/android/gesture/StepDetector;->maxSignal:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/StepDetector;->peak2valley:F

    iput v1, p0, Lcom/samsung/android/gesture/StepDetector;->varSignal:F

    .line 669
    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->iResting:I

    .line 670
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/gesture/StepDetector;->periodWalk:J

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->walk_Cnt:I

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->walk_OK:I

    .line 671
    new-instance v0, Lcom/samsung/android/gesture/GetVariance;

    invoke-direct {v0}, Lcom/samsung/android/gesture/GetVariance;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->getVariance:Lcom/samsung/android/gesture/GetVariance;

    .line 672
    return-void
.end method

.method makeWalkFeature()V
    .locals 5

    .line 778
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_OK:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 779
    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK_Time:[J

    iget-object v2, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK_Time:[J

    aget-wide v2, v2, v1

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    .line 780
    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK_Time:[J

    iget-wide v2, p0, Lcom/samsung/android/gesture/StepDetector;->iPeriod:J

    aput-wide v2, v0, v1

    .line 782
    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK_Time:[J

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/samsung/android/gesture/StepDetector;->ZC_cntOK_Time:[J

    aget-wide v2, v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/gesture/StepDetector;->periodWalk:J

    .line 783
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->minSignal:F

    iget v1, p0, Lcom/samsung/android/gesture/StepDetector;->maxSignal:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->peak2valley:F

    .line 785
    :cond_0
    return-void
.end method

.method preProcessSignal([F)V
    .locals 7
    .param p1, "acc"    # [F

    .line 702
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/samsung/android/gesture/StepDetector;->SW_Signal:[F

    iget-object v2, p0, Lcom/samsung/android/gesture/StepDetector;->makeSlidingWindowSignal:[Lcom/samsung/android/gesture/MakeSlidingWindowSignal;

    aget-object v2, v2, v0

    aget v3, p1, v0

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->LPF_meanWindow(FI)F

    move-result v2

    aput v2, v1, v0

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/gesture/StepDetector;->SW_Signal:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/samsung/android/gesture/StepDetector;->SW_Signal:[F

    aget v3, v3, v2

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/gesture/StepDetector;->SW_Signal:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v5, p0, Lcom/samsung/android/gesture/StepDetector;->SW_Signal:[F

    aget v5, v5, v4

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/gesture/StepDetector;->SW_Signal:[F

    const/4 v5, 0x2

    aget v3, v3, v5

    iget-object v6, p0, Lcom/samsung/android/gesture/StepDetector;->SW_Signal:[F

    aget v5, v6, v5

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, p0, Lcom/samsung/android/gesture/StepDetector;->norm:F

    .line 707
    iget-object v1, p0, Lcom/samsung/android/gesture/StepDetector;->makeBaseSignal:Lcom/samsung/android/gesture/MakeBaseSignal;

    iget v3, p0, Lcom/samsung/android/gesture/StepDetector;->norm:F

    const/16 v5, 0xa

    invoke-virtual {v1, v3, v5}, Lcom/samsung/android/gesture/MakeBaseSignal;->makeAccBaseSignal(FI)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal:F

    .line 709
    iget-boolean v1, p0, Lcom/samsung/android/gesture/StepDetector;->firstCheck:Z

    const v3, 0x3f4ccccd    # 0.8f

    if-eqz v1, :cond_1

    .line 710
    iput-boolean v2, p0, Lcom/samsung/android/gesture/StepDetector;->firstCheck:Z

    .line 711
    iget-object v1, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    iget-object v5, p0, Lcom/samsung/android/gesture/StepDetector;->makeBaseSignal:Lcom/samsung/android/gesture/MakeBaseSignal;

    iget v6, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal:F

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/gesture/MakeBaseSignal;->LPF(FF)F

    move-result v3

    aput v3, v1, v2

    .line 712
    iget-object v1, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    iget-object v3, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    aget v2, v3, v2

    aput v2, v1, v4

    goto :goto_1

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    iget-object v5, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    aget v5, v5, v4

    aput v5, v1, v2

    .line 716
    iget-object v1, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    iget-object v2, p0, Lcom/samsung/android/gesture/StepDetector;->makeBaseSignal:Lcom/samsung/android/gesture/MakeBaseSignal;

    iget v5, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal:F

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/gesture/MakeBaseSignal;->LPF(FF)F

    move-result v2

    aput v2, v1, v4

    .line 718
    :goto_1
    return-void
.end method

.method process([F)I
    .locals 4
    .param p1, "accRaw"    # [F

    .line 675
    iget-wide v0, p0, Lcom/samsung/android/gesture/StepDetector;->iPeriod:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/gesture/StepDetector;->iPeriod:J

    .line 676
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/StepDetector;->preProcessSignal([F)V

    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/gesture/StepDetector;->updateMinMax()V

    .line 678
    invoke-virtual {p0}, Lcom/samsung/android/gesture/StepDetector;->updateVar()V

    .line 679
    invoke-virtual {p0}, Lcom/samsung/android/gesture/StepDetector;->checkZeroCrossing()V

    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/gesture/StepDetector;->checkPeriod()V

    .line 681
    invoke-virtual {p0}, Lcom/samsung/android/gesture/StepDetector;->makeWalkFeature()V

    .line 682
    invoke-virtual {p0}, Lcom/samsung/android/gesture/StepDetector;->checkFinalWalkFlag()V

    .line 684
    iget v0, p0, Lcom/samsung/android/gesture/StepDetector;->walk_Cnt:I

    return v0
.end method

.method updateMinMax()V
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v2, p0, Lcom/samsung/android/gesture/StepDetector;->maxSignal:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->maxSignal:F

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    aget v0, v0, v1

    iget v2, p0, Lcom/samsung/android/gesture/StepDetector;->minSignal:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->minSignal:F

    .line 694
    :cond_1
    return-void
.end method

.method updateVar()V
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/samsung/android/gesture/StepDetector;->getVariance:Lcom/samsung/android/gesture/GetVariance;

    iget-object v1, p0, Lcom/samsung/android/gesture/StepDetector;->baseSignal_LPF:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/GetVariance;->getVaraince(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/StepDetector;->varSignal:F

    .line 698
    return-void
.end method
