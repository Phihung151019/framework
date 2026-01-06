.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "CMAESOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;
    }
.end annotation


# instance fields
.field private B:Lorg/apache/commons/math3/linear/RealMatrix;

.field private BD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private C:Lorg/apache/commons/math3/linear/RealMatrix;

.field private D:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cc:D

.field private ccov1:D

.field private ccov1Sep:D

.field private ccovmu:D

.field private ccovmuSep:D

.field private final checkFeasableCount:I

.field private chiN:D

.field private cs:D

.field private damps:D

.field private diagC:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagonalOnly:I

.field private dimension:I

.field private fitnessHistory:[D

.field private final generateStatistics:Z

.field private historySize:I

.field private inputSigma:[D

.field private final isActiveCMA:Z

.field private isMinimize:Z

.field private iterations:I

.field private lambda:I

.field private logMu2:D

.field private final maxIterations:I

.field private mu:I

.field private mueff:D

.field private normps:D

.field private pc:Lorg/apache/commons/math3/linear/RealMatrix;

.field private ps:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field private sigma:D

.field private final statisticsDHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private final statisticsFitnessHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final statisticsMeanHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private final statisticsSigmaHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final stopFitness:D

.field private stopTolFun:D

.field private stopTolHistFun:D

.field private stopTolUpX:D

.field private stopTolX:D

.field private weights:Lorg/apache/commons/math3/linear/RealMatrix;

.field private xmean:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(IDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 1
    .param p1, "maxIterations"    # I
    .param p2, "stopFitness"    # D
    .param p4, "isActiveCMA"    # Z
    .param p5, "diagonalOnly"    # I
    .param p6, "checkFeasableCount"    # I
    .param p7, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p8, "generateStatistics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDZII",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Z",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p9, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-direct {p0, p9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    .line 234
    iput p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->maxIterations:I

    .line 235
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopFitness:D

    .line 236
    iput-boolean p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isActiveCMA:Z

    .line 237
    iput p5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    .line 238
    iput p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkFeasableCount:I

    .line 239
    iput-object p7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 240
    iput-boolean p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->generateStatistics:Z

    .line 241
    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    .line 81
    iget-boolean v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    return v0
.end method

.method private checkParameters()V
    .locals 11

    .line 559
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getStartPoint()[D

    move-result-object v0

    .line 560
    .local v0, "init":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getLowerBound()[D

    move-result-object v1

    .line 561
    .local v1, "lB":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getUpperBound()[D

    move-result-object v2

    .line 563
    .local v2, "uB":[D
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    if-eqz v3, :cond_2

    .line 564
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    array-length v3, v3

    array-length v4, v0

    if-ne v3, v4, :cond_1

    .line 567
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 568
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    aget-wide v4, v4, v3

    aget-wide v6, v2, v3

    aget-wide v8, v1, v3

    sub-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 567
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 569
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-wide v7, v2, v3

    aget-wide v9, v1, v3

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 565
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    array-length v4, v4

    array-length v5, v0

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 573
    :cond_2
    return-void
.end method

.method private static copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V
    .locals 3
    .param p0, "m1"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "col1"    # I
    .param p2, "m2"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "col2"    # I

    .line 1164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1165
    invoke-interface {p0, v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v1

    invoke-interface {p2, v0, p3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 1164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1167
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1139
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1140
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1141
    .local v0, "d":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1142
    aget-object v3, v0, v1

    invoke-interface {p0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1144
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v1

    .line 1146
    .end local v0    # "d":[[D
    :cond_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    new-array v1, v1, [I

    aput v3, v1, v3

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1147
    .restart local v0    # "d":[[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1148
    aget-object v3, v0, v1

    invoke-interface {p0, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 1147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1150
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v1
.end method

.method private static divide(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "n"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1078
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1079
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1080
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1081
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    div-double/2addr v5, v7

    aput-wide v5, v4, v3

    .line 1080
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1079
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1084
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static eye(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "n"    # I
    .param p1, "m"    # I

    .line 1189
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p0, v0, v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1190
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    if-ge v2, p0, :cond_1

    .line 1191
    if-ge v2, p1, :cond_0

    .line 1192
    aget-object v3, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    .line 1190
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1195
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private initializeCMA([D)V
    .locals 26
    .param p1, "guess"    # [D

    .line 581
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    if-lez v2, :cond_3

    .line 585
    array-length v2, v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v5, v4, v5

    const/4 v6, 0x0

    aput v2, v4, v6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 586
    .local v2, "sigmaArray":[[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v1

    if-ge v4, v7, :cond_0

    .line 587
    aget-object v7, v2, v4

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    aget-wide v8, v8, v4

    aput-wide v8, v7, v6

    .line 586
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 589
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v2, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 590
    .local v4, "insigma":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v7

    iput-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    .line 593
    const-wide v7, 0x408f400000000000L    # 1000.0

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v9

    mul-double/2addr v9, v7

    iput-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolUpX:D

    .line 594
    const-wide v7, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v9

    mul-double/2addr v9, v7

    iput-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolX:D

    .line 595
    const-wide v7, 0x3d719799812dea11L    # 1.0E-12

    iput-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolFun:D

    .line 596
    const-wide v7, 0x3d3c25c268497682L    # 1.0E-13

    iput-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolHistFun:D

    .line 599
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    div-int/2addr v7, v3

    iput v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    .line 600
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v7

    iput-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->logMu2:D

    .line 601
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    int-to-double v10, v7

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v8 .. v13}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sequence(DDD)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    iget-wide v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->logMu2:D

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 602
    const-wide/16 v7, 0x0

    .line 603
    .local v7, "sumw":D
    const-wide/16 v9, 0x0

    .line 604
    .local v9, "sumwq":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    if-ge v11, v12, :cond_1

    .line 605
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v12, v11, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v12

    .line 606
    .local v12, "w":D
    add-double/2addr v7, v12

    .line 607
    mul-double v14, v12, v12

    add-double/2addr v9, v14

    .line 604
    .end local v12    # "w":D
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 609
    .end local v11    # "i":I
    :cond_1
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v13, v11, v7

    invoke-interface {v6, v13, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    iput-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 610
    mul-double v13, v7, v7

    div-double/2addr v13, v9

    iput-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    .line 613
    iget-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move v15, v5

    int-to-double v5, v6

    div-double/2addr v13, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    add-double/2addr v13, v5

    move/from16 v16, v3

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/lit8 v3, v3, 0x4

    move-wide/from16 v17, v5

    int-to-double v5, v3

    move-wide/from16 v19, v11

    iget-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    mul-double v11, v11, v21

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move-object/from16 v23, v2

    .end local v2    # "sigmaArray":[[D
    .local v23, "sigmaArray":[[D
    int-to-double v1, v3

    div-double/2addr v11, v1

    add-double/2addr v5, v11

    div-double/2addr v13, v5

    iput-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    .line 615
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    add-double v1, v1, v21

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v5, v3

    iget-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    add-double/2addr v5, v11

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    add-double/2addr v5, v11

    div-double/2addr v1, v5

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    .line 616
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    sub-double v1, v1, v19

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/2addr v3, v15

    int-to-double v5, v3

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    sub-double v1, v1, v19

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    mul-double v1, v1, v21

    add-double v1, v1, v19

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v5, v3

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->maxIterations:I

    int-to-double v13, v3

    const-wide v24, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    add-double v13, v13, v24

    div-double/2addr v5, v13

    sub-double v5, v19, v5

    const-wide v13, 0x3fd3333333333333L    # 0.3

    invoke-static {v13, v14, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    mul-double/2addr v1, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    add-double/2addr v1, v5

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    .line 620
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v1, v1

    const-wide v5, 0x3ff4cccccccccccdL    # 1.3

    add-double/2addr v1, v5

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v13, v3

    add-double/2addr v13, v5

    mul-double/2addr v1, v13

    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    add-double/2addr v1, v5

    div-double v1, v21, v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    .line 621
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    sub-double v1, v19, v1

    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    sub-double v5, v5, v21

    iget-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    div-double v13, v19, v13

    add-double/2addr v5, v13

    mul-double v5, v5, v21

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/lit8 v3, v3, 0x2

    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/lit8 v13, v13, 0x2

    mul-int/2addr v3, v13

    int-to-double v13, v3

    move-wide/from16 v21, v11

    iget-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    add-double/2addr v13, v11

    div-double/2addr v5, v13

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    .line 623
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v5, v3

    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    add-double/2addr v5, v11

    mul-double/2addr v1, v5

    div-double v1, v1, v21

    move-wide/from16 v5, v19

    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    .line 624
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    sub-double v1, v5, v1

    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v13, v3

    add-double/2addr v13, v11

    mul-double/2addr v5, v13

    div-double v5, v5, v21

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmuSep:D

    .line 625
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v5, v3

    mul-double v5, v5, v17

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    div-double v11, v19, v5

    sub-double v11, v19, v11

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v5, v3

    const-wide/high16 v13, 0x4035000000000000L    # 21.0

    mul-double/2addr v5, v13

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v13, v3

    mul-double/2addr v5, v13

    div-double v5, v19, v5

    add-double/2addr v11, v5

    mul-double/2addr v1, v11

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->chiN:D

    .line 628
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 629
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    div-double v11, v19, v1

    invoke-interface {v4, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 630
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 631
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v1, v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 632
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v1, v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 633
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->normps:D

    .line 635
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 636
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    const/4 v15, 0x1

    invoke-static {v1, v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 637
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v2, v3, v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 638
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 639
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    mul-int/lit8 v1, v1, 0x1e

    int-to-double v1, v1

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    int-to-double v5, v3

    div-double/2addr v1, v5

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->historySize:I

    .line 640
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->historySize:I

    new-array v1, v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    .line 641
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->historySize:I

    if-ge v1, v2, :cond_2

    .line 642
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    aput-wide v5, v2, v1

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 644
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 582
    .end local v4    # "insigma":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v7    # "sumw":D
    .end local v9    # "sumwq":D
    .end local v23    # "sigmaArray":[[D
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method private static inverse([I)[I
    .locals 3
    .param p0, "indices"    # [I

    .line 1309
    array-length v0, p0

    new-array v0, v0, [I

    .line 1310
    .local v0, "inverse":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1311
    aget v2, p0, v1

    aput v1, v0, v2

    .line 1310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1313
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1019
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1020
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1021
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1022
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 1021
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1020
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1025
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static max(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1247
    const-wide v0, -0x10000000000001L

    .line 1248
    .local v0, "max":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1249
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1250
    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 1251
    .local v4, "e":D
    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    .line 1252
    move-wide v0, v4

    .line 1249
    .end local v4    # "e":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1248
    .end local v3    # "c":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1256
    .end local v2    # "r":I
    :cond_2
    return-wide v0
.end method

.method private static max([D)D
    .locals 5
    .param p0, "m"    # [D

    .line 1281
    const-wide v0, -0x10000000000001L

    .line 1282
    .local v0, "max":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1283
    aget-wide v3, p0, v2

    cmpg-double v3, v0, v3

    if-gez v3, :cond_0

    .line 1284
    aget-wide v0, p0, v2

    .line 1282
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1287
    .end local v2    # "r":I
    :cond_1
    return-wide v0
.end method

.method private static min(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1264
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1265
    .local v0, "min":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1266
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1267
    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 1268
    .local v4, "e":D
    cmpl-double v6, v0, v4

    if-lez v6, :cond_0

    .line 1269
    move-wide v0, v4

    .line 1266
    .end local v4    # "e":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1265
    .end local v3    # "c":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1273
    .end local v2    # "r":I
    :cond_2
    return-wide v0
.end method

.method private static min([D)D
    .locals 5
    .param p0, "m"    # [D

    .line 1295
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1296
    .local v0, "min":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1297
    aget-wide v3, p0, v2

    cmpl-double v3, v0, v3

    if-lez v3, :cond_0

    .line 1298
    aget-wide v0, p0, v2

    .line 1296
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1301
    .end local v2    # "r":I
    :cond_1
    return-wide v0
.end method

.method private static ones(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "n"    # I
    .param p1, "m"    # I

    .line 1175
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p0, v0, v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1176
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1177
    aget-object v3, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 1176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1179
    .end local v2    # "r":I
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static push([DD)V
    .locals 3
    .param p0, "vals"    # [D
    .param p1, "val"    # D

    .line 811
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 812
    add-int/lit8 v1, v0, -0x1

    aget-wide v1, p0, v1

    aput-wide v1, p0, v0

    .line 811
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 814
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    aput-wide p1, p0, v0

    .line 815
    return-void
.end method

.method private randn(I)[D
    .locals 4
    .param p1, "size"    # I

    .line 1333
    new-array v0, p1, [D

    .line 1334
    .local v0, "randn":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1335
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1337
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p1, "size"    # I
    .param p2, "popSize"    # I

    .line 1346
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1347
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1348
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 1349
    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 1348
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1347
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1352
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9
    .param p0, "mat"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "n"    # I
    .param p2, "m"    # I

    .line 1214
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 1215
    .local v0, "rd":I
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 1216
    .local v1, "cd":I
    mul-int v2, p1, v0

    mul-int v3, p2, v1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x0

    aput v2, v4, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 1217
    .local v2, "d":[[D
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_0
    mul-int v5, p1, v0

    if-ge v4, v5, :cond_1

    .line 1218
    const/4 v5, 0x0

    .local v5, "c":I
    :goto_1
    mul-int v6, p2, v1

    if-ge v5, v6, :cond_0

    .line 1219
    aget-object v6, v2, v4

    rem-int v7, v4, v0

    rem-int v8, v5, v1

    invoke-interface {p0, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    aput-wide v7, v6, v5

    .line 1218
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1217
    .end local v5    # "c":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1222
    .end local v4    # "r":I
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v4
.end method

.method private static reverse([I)[I
    .locals 3
    .param p0, "indices"    # [I

    .line 1321
    array-length v0, p0

    new-array v0, v0, [I

    .line 1322
    .local v0, "reverse":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1323
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    aput v2, v0, v1

    .line 1322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1325
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "cols"    # [I

    .line 1093
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1094
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1095
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1096
    aget-object v4, v0, v2

    aget v5, p1, v3

    invoke-interface {p0, v2, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 1095
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1094
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1099
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static sequence(DDD)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p0, "start"    # D
    .param p2, "end"    # D
    .param p4, "step"    # D

    .line 1232
    sub-double v0, p2, p0

    div-double/2addr v0, p4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 1233
    .local v0, "size":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1234
    .local v1, "d":[[D
    move-wide v3, p0

    .line 1235
    .local v3, "value":D
    const/4 v5, 0x0

    .local v5, "r":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 1236
    aget-object v6, v1, v5

    aput-wide v3, v6, v2

    .line 1237
    add-double/2addr v3, p4

    .line 1235
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1239
    .end local v5    # "r":I
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v5, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v5
.end method

.method private sortedIndices([D)[I
    .locals 5
    .param p1, "doubles"    # [D

    .line 824
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;

    .line 825
    .local v0, "dis":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 826
    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;

    aget-wide v3, p1, v1

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;-><init>(DI)V

    aput-object v2, v0, v1

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 829
    array-length v1, p1

    new-array v1, v1, [I

    .line 830
    .local v1, "indices":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 831
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;->access$300(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;)I

    move-result v3

    aput v3, v1, v2

    .line 830
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 833
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1033
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1034
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1035
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1036
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1034
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1039
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1047
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1048
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1049
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1050
    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 1051
    .local v4, "e":D
    aget-object v6, v0, v2

    mul-double v7, v4, v4

    aput-wide v7, v6, v3

    .line 1049
    .end local v4    # "e":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1048
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1054
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static sumRows(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1122
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput v2, v1, v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1123
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1124
    const-wide/16 v3, 0x0

    .line 1125
    .local v3, "sum":D
    const/4 v5, 0x0

    .local v5, "r":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1126
    invoke-interface {p0, v5, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    add-double/2addr v3, v6

    .line 1125
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1128
    .end local v5    # "r":I
    :cond_0
    aget-object v5, v1, v0

    aput-wide v3, v5, v2

    .line 1123
    .end local v3    # "sum":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1130
    .end local v2    # "c":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "n"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1063
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1064
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1065
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1066
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    mul-double/2addr v5, v7

    aput-wide v5, v4, v3

    .line 1065
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1064
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1069
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "k"    # I

    .line 1108
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1109
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1110
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1111
    aget-object v4, v0, v2

    sub-int v5, v3, p1

    if-gt v2, v5, :cond_0

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    goto :goto_2

    :cond_0
    const-wide/16 v5, 0x0

    :goto_2
    aput-wide v5, v4, v3

    .line 1110
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1109
    .end local v3    # "c":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1114
    .end local v2    # "r":I
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private updateBD(D)V
    .locals 10
    .param p1, "negccov"    # D

    .line 774
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    add-double/2addr v0, v2

    add-double/2addr v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    int-to-double v0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v0, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    iget-wide v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    add-double/2addr v6, v8

    add-double/2addr v6, p1

    div-double/2addr v0, v6

    iget v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v6

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4

    .line 777
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 779
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 780
    .local v0, "eig":Lorg/apache/commons/math3/linear/EigenDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 781
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getD()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 782
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 783
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v6

    cmpg-double v4, v6, v2

    const-wide v6, 0x42d6bcc41e900000L    # 1.0E14

    if-gtz v4, :cond_2

    .line 784
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    if-ge v4, v8, :cond_1

    .line 785
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v8, v4, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_0

    .line 786
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v8, v4, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 784
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 789
    .end local v4    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v1

    div-double/2addr v1, v6

    .line 790
    .local v1, "tfac":D
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    iget v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v4, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 791
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 793
    .end local v1    # "tfac":D
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v3

    mul-double/2addr v3, v6

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    .line 794
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v1

    div-double/2addr v1, v6

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 795
    .restart local v1    # "tfac":D
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    iget v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v4, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 796
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 798
    .end local v1    # "tfac":D
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 799
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 800
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v2, v3, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 802
    .end local v0    # "eig":Lorg/apache/commons/math3/linear/EigenDecomposition;
    :cond_4
    return-void
.end method

.method private updateCovariance(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 34
    .param p1, "hsig"    # Z
    .param p2, "bestArx"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "arz"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p4, "arindex"    # [I
    .param p5, "xold"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 710
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 711
    .local v1, "negccov":D
    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    add-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 712
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    const/4 v4, 0x1

    move-object/from16 v7, p5

    invoke-static {v7, v4, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    move-object/from16 v8, p2

    invoke-interface {v8, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v9, v11, v9

    invoke-interface {v3, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 714
    .local v3, "arpos":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v10}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    iget-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    invoke-interface {v9, v13, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    .line 717
    .local v9, "roneu":Lorg/apache/commons/math3/linear/RealMatrix;
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    if-eqz p1, :cond_0

    move-wide v15, v11

    goto :goto_0

    :cond_0
    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    move-wide v15, v11

    iget-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    mul-double/2addr v5, v11

    iget-wide v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    sub-double v10, v13, v10

    mul-double/2addr v5, v10

    .line 718
    .local v5, "oldFac":D
    :goto_0
    iget-wide v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    sub-double v11, v15, v10

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    sub-double/2addr v11, v13

    add-double/2addr v5, v11

    .line 719
    iget-boolean v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isActiveCMA:Z

    if-eqz v10, :cond_2

    .line 721
    iget-wide v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    sub-double v11, v15, v10

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v11, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    mul-double/2addr v11, v13

    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/lit8 v10, v10, 0x2

    int-to-double v13, v10

    move-wide v15, v5

    .end local v5    # "oldFac":D
    .local v15, "oldFac":D
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v13, v14, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    iget-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    mul-double v13, v13, v17

    add-double/2addr v4, v13

    div-double/2addr v11, v4

    .line 725
    .end local v1    # "negccov":D
    .local v11, "negccov":D
    const-wide v1, 0x3fe51eb851eb851fL    # 0.66

    .line 727
    .local v1, "negminresidualvariance":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 729
    .local v4, "negalphaold":D
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->reverse([I)[I

    move-result-object v6

    .line 730
    .local v6, "arReverseIndex":[I
    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    invoke-static {v6, v13}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v13

    move-object/from16 v14, p3

    invoke-static {v14, v13}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v13

    .line 731
    .local v13, "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v13}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sumRows(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    .line 732
    .local v10, "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    move-wide/from16 v19, v1

    .end local v1    # "negminresidualvariance":D
    .local v19, "negminresidualvariance":D
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v2

    .line 733
    .local v2, "idxnorms":[I
    invoke-static {v10, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 734
    .local v1, "arnormsSorted":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v21, v2

    .end local v2    # "idxnorms":[I
    .local v21, "idxnorms":[I
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->reverse([I)[I

    move-result-object v2

    .line 735
    .local v2, "idxReverse":[I
    move-wide/from16 v22, v4

    .end local v4    # "negalphaold":D
    .local v22, "negalphaold":D
    invoke-static {v10, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 736
    .local v4, "arnormsReverse":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v4, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->divide(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 737
    .end local v10    # "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v5, "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inverse([I)[I

    move-result-object v10

    .line 738
    .local v10, "idxInv":[I
    move-object/from16 v24, v1

    .end local v1    # "arnormsSorted":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v24, "arnormsSorted":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v5, v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 740
    .local v1, "arnormsInv":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v25, v2

    .end local v2    # "idxReverse":[I
    .local v25, "idxReverse":[I
    invoke-static {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v26, v4

    .end local v4    # "arnormsReverse":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v26, "arnormsReverse":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v27

    const-wide v29, 0x3fd5c28f5c28f5c2L    # 0.33999999999999997

    div-double v29, v29, v27

    .line 742
    .local v29, "negcovMax":D
    cmpl-double v2, v11, v29

    if-lez v2, :cond_1

    .line 743
    move-wide/from16 v11, v29

    .line 745
    :cond_1
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object v4, v10

    .end local v10    # "idxInv":[I
    .local v4, "idxInv":[I
    invoke-static {v13, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 746
    .end local v13    # "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v2, "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v13, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v13

    .line 747
    .local v13, "artmp":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v13, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    move-object/from16 v17, v1

    .end local v1    # "arnormsInv":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v17, "arnormsInv":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v13}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v10, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 748
    .local v1, "Cneg":Lorg/apache/commons/math3/linear/RealMatrix;
    const-wide/high16 v27, 0x3fe0000000000000L    # 0.5

    mul-double v31, v11, v27

    move-object/from16 v33, v4

    move-object v10, v5

    .end local v4    # "idxInv":[I
    .end local v5    # "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v10, "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v33, "idxInv":[I
    add-double v4, v15, v31

    .line 749
    .end local v15    # "oldFac":D
    .local v4, "oldFac":D
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v15, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v15

    invoke-interface {v15, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v15

    move-wide/from16 v31, v4

    .end local v4    # "oldFac":D
    .local v31, "oldFac":D
    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    mul-double v27, v27, v11

    add-double v4, v4, v27

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v27, v2

    .end local v2    # "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v27, "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move-object/from16 v28, v6

    const/4 v6, 0x1

    .end local v6    # "arReverseIndex":[I
    .local v28, "arReverseIndex":[I
    invoke-static {v5, v6, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v15, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 756
    .end local v1    # "Cneg":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v10    # "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v13    # "artmp":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v17    # "arnormsInv":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v19    # "negminresidualvariance":D
    .end local v21    # "idxnorms":[I
    .end local v22    # "negalphaold":D
    .end local v24    # "arnormsSorted":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v25    # "idxReverse":[I
    .end local v26    # "arnormsReverse":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v27    # "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v28    # "arReverseIndex":[I
    .end local v29    # "negcovMax":D
    .end local v33    # "idxInv":[I
    move-wide v1, v11

    goto :goto_1

    .line 758
    .end local v11    # "negccov":D
    .end local v31    # "oldFac":D
    .local v1, "negccov":D
    .local v5, "oldFac":D
    :cond_2
    move-object/from16 v14, p3

    move-wide v15, v5

    .end local v5    # "oldFac":D
    .restart local v15    # "oldFac":D
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .end local v15    # "oldFac":D
    .restart local v5    # "oldFac":D
    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    invoke-interface {v3, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    const/4 v10, 0x1

    invoke-static {v12, v10, v13}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    invoke-static {v10, v12}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v11, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_1

    .line 711
    .end local v3    # "arpos":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v5    # "oldFac":D
    .end local v9    # "roneu":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_3
    move-object/from16 v8, p2

    move-object/from16 v14, p3

    move-object/from16 v7, p5

    .line 765
    :goto_1
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateBD(D)V

    .line 766
    return-void
.end method

.method private updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 6
    .param p1, "hsig"    # Z
    .param p2, "bestArz"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 679
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 680
    .local v0, "oldFac":D
    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmuSep:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 681
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmuSep:D

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 685
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 686
    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    iget v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    if-le v2, v3, :cond_1

    .line 689
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    .line 690
    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    iget v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 691
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 692
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 694
    :cond_1
    return-void
.end method

.method private updateEvolutionPaths(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z
    .locals 11
    .param p1, "zmean"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "xold"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 655
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v1, v3, v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    sub-double v7, v9, v7

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 658
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->normps:D

    .line 659
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->normps:D

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    sub-double v5, v3, v5

    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v5, v6, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v5

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v0, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->chiN:D

    div-double/2addr v0, v5

    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v5, v2

    add-double/2addr v5, v3

    div-double v5, v9, v5

    const-wide v7, 0x3ff6666666666666L    # 1.4

    add-double/2addr v5, v7

    cmpg-double v0, v0, v5

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 662
    .local v0, "hsig":Z
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    sub-double/2addr v3, v5

    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 663
    if-eqz v0, :cond_1

    .line 664
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    sub-double/2addr v9, v5

    mul-double/2addr v3, v9

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    div-double/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 666
    :cond_1
    return v0
.end method

.method private valueRange([Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D
    .locals 10
    .param p1, "vpPairs"    # [Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    .line 842
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 843
    .local v0, "max":D
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 844
    .local v2, "min":D
    move-object v4, p1

    .local v4, "arr$":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 845
    .local v7, "vpPair":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v8

    cmpl-double v8, v8, v0

    if-lez v8, :cond_0

    .line 846
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v0

    .line 848
    :cond_0
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_1

    .line 849
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v2

    .line 844
    .end local v7    # "vpPair":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 852
    .end local v4    # "arr$":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_2
    sub-double v4, v0, v2

    return-wide v4
.end method

.method private static zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p0, "n"    # I
    .param p1, "m"    # I

    .line 1204
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 46

    .line 372
    move-object/from16 v1, p0

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v0

    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    .line 373
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)V

    move-object v7, v0

    .line 374
    .local v7, "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getStartPoint()[D

    move-result-object v8

    .line 376
    .local v8, "guess":[D
    array-length v0, v8

    iput v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    .line 377
    invoke-direct {v1, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->initializeCMA([D)V

    .line 378
    const/4 v0, 0x0

    iput v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    .line 379
    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->value([D)Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    move-result-object v9

    .line 380
    .local v9, "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    invoke-static {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v2

    invoke-static {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$100(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 381
    .local v2, "bestValue":D
    iget-object v4, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v4, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->push([DD)V

    .line 382
    new-instance v4, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getStartPoint()[D

    move-result-object v5

    iget-boolean v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    if-eqz v6, :cond_0

    move-wide v10, v2

    goto :goto_0

    :cond_0
    neg-double v10, v2

    :goto_0
    invoke-direct {v4, v5, v10, v11}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 385
    .local v4, "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    const/4 v5, 0x0

    .line 390
    .local v5, "lastResult":Lorg/apache/commons/math3/optim/PointValuePair;
    const/4 v10, 0x1

    iput v10, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    move-wide v11, v2

    move-object v13, v4

    move-object v14, v5

    .end local v2    # "bestValue":D
    .end local v4    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v5    # "lastResult":Lorg/apache/commons/math3/optim/PointValuePair;
    .local v11, "bestValue":D
    .local v13, "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .local v14, "lastResult":Lorg/apache/commons/math3/optim/PointValuePair;
    :goto_1
    iget v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    iget v3, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->maxIterations:I

    if-gt v2, v3, :cond_1c

    .line 391
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->incrementIterationCount()V

    .line 394
    iget v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    iget v3, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 395
    .local v4, "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    iget v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    iget v3, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v15

    .line 396
    .local v15, "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    iget v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    new-array v2, v2, [D

    .line 397
    .local v2, "fitness":[D
    iget v3, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    new-array v3, v3, [Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    .line 399
    .local v3, "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    iget v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    if-ge v5, v6, :cond_5

    .line 400
    const/4 v6, 0x0

    .line 401
    .local v6, "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    const/16 v16, 0x0

    move/from16 v45, v16

    move/from16 v16, v10

    move/from16 v10, v45

    .local v10, "i":I
    :goto_3
    iget v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkFeasableCount:I

    add-int/lit8 v0, v0, 0x1

    if-ge v10, v0, :cond_3

    .line 402
    iget v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    if-gtz v0, :cond_1

    .line 403
    iget-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v18, v6

    .end local v6    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v18, "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v19, v8

    .end local v8    # "guess":[D
    .local v19, "guess":[D
    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    move-object/from16 v20, v9

    .end local v9    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .local v20, "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    iget-wide v8, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    move-object v6, v0

    .end local v18    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v0, "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    goto :goto_4

    .line 406
    .end local v0    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v19    # "guess":[D
    .end local v20    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .restart local v6    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v8    # "guess":[D
    .restart local v9    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    :cond_1
    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .end local v6    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v8    # "guess":[D
    .end local v9    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .restart local v18    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v19    # "guess":[D
    .restart local v20    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    iget-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    iget-wide v8, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    move-object v6, v0

    .line 409
    .end local v18    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v6    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    :goto_4
    iget v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkFeasableCount:I

    if-ge v10, v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->isFeasible([D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    goto :goto_5

    .line 414
    :cond_2
    iget v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->randn(I)[D

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    .line 401
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    const/4 v0, 0x0

    goto :goto_3

    .end local v19    # "guess":[D
    .end local v20    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .restart local v8    # "guess":[D
    .restart local v9    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    :cond_3
    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 416
    .end local v8    # "guess":[D
    .end local v9    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .end local v10    # "i":I
    .restart local v19    # "guess":[D
    .restart local v20    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    :cond_4
    :goto_5
    const/4 v0, 0x0

    invoke-static {v6, v0, v15, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V

    .line 418
    :try_start_0
    invoke-interface {v15, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->value([D)Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    move-result-object v0

    aput-object v0, v3, v5
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/TooManyEvaluationsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    nop

    .line 399
    .end local v6    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v16

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 419
    .restart local v6    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
    move-object/from16 v38, v7

    move-wide/from16 v27, v11

    goto/16 :goto_12

    .line 399
    .end local v0    # "e":Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
    .end local v6    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v19    # "guess":[D
    .end local v20    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .restart local v8    # "guess":[D
    .restart local v9    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    :cond_5
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v16, v10

    .line 425
    .end local v5    # "k":I
    .end local v8    # "guess":[D
    .end local v9    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .restart local v19    # "guess":[D
    .restart local v20    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    invoke-direct {v1, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->valueRange([Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v8

    .line 426
    .local v8, "valueRange":D
    const/4 v0, 0x0

    .local v0, "iValue":I
    :goto_6
    array-length v5, v3

    if-ge v0, v5, :cond_6

    .line 427
    aget-object v5, v3, v0

    invoke-static {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v5

    aget-object v10, v3, v0

    invoke-static {v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$100(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v21

    mul-double v21, v21, v8

    add-double v5, v5, v21

    aput-wide v5, v2, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 431
    .end local v0    # "iValue":I
    :cond_6
    invoke-direct {v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v5

    .line 433
    .local v5, "arindex":[I
    iget-object v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 434
    .local v6, "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    iget v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    invoke-static {v5, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v15, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 435
    .local v0, "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v10, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    iput-object v10, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 436
    iget v10, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    invoke-static {v5, v10}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v10

    invoke-static {v4, v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    .line 437
    .local v10, "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v18, v0

    .end local v0    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v18, "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 438
    .local v0, "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v21, v2

    .end local v2    # "fitness":[D
    .local v21, "fitness":[D
    invoke-direct {v1, v0, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateEvolutionPaths(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z

    move-result v2

    .line 439
    .local v2, "hsig":Z
    move-object/from16 v22, v0

    .end local v0    # "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v22, "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    iget v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    if-gtz v0, :cond_7

    .line 440
    move-object/from16 v45, v18

    move-object/from16 v18, v3

    move-object/from16 v3, v45

    .local v3, "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v18, "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateCovariance(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V

    goto :goto_7

    .line 442
    .local v3, "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .local v18, "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_7
    move-object/from16 v45, v18

    move-object/from16 v18, v3

    move-object/from16 v3, v45

    .local v3, "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v18, "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    invoke-direct {v1, v2, v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V

    .line 445
    :goto_7
    move-wide/from16 v23, v8

    .end local v8    # "valueRange":D
    .local v23, "valueRange":D
    iget-wide v8, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v25, v8

    iget-wide v8, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->normps:D

    move-wide/from16 v27, v8

    iget-wide v8, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->chiN:D

    div-double v8, v27, v8

    move-wide/from16 v27, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v27, v27, v8

    iget-wide v8, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    mul-double v27, v27, v8

    iget-wide v8, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    div-double v8, v27, v8

    move-object v0, v10

    move-wide/from16 v27, v11

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .end local v10    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v11    # "bestValue":D
    .local v0, "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v27, "bestValue":D
    invoke-static {v10, v11, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v8

    mul-double v8, v8, v25

    iput-wide v8, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    .line 446
    const/16 v17, 0x0

    aget v8, v5, v17

    aget-wide v8, v21, v8

    .line 447
    .local v8, "bestFitness":D
    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    aget v10, v5, v10

    aget-wide v10, v21, v10

    .line 448
    .local v10, "worstFitness":D
    cmpl-double v12, v27, v8

    if-lez v12, :cond_9

    .line 449
    move-wide/from16 v25, v8

    .line 450
    .end local v27    # "bestValue":D
    .local v25, "bestValue":D
    move-object v14, v13

    .line 451
    new-instance v12, Lorg/apache/commons/math3/optim/PointValuePair;

    move-object/from16 v29, v0

    move/from16 v30, v2

    const/4 v0, 0x0

    .end local v0    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v2    # "hsig":Z
    .local v29, "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v30, "hsig":Z
    invoke-interface {v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v2

    invoke-static {v7, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->access$200(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;[D)[D

    move-result-object v0

    iget-boolean v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    if-eqz v2, :cond_8

    move-object v2, v4

    move-object/from16 v31, v5

    move-wide v4, v8

    goto :goto_8

    :cond_8
    move-object v2, v4

    move-object/from16 v31, v5

    .end local v4    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v5    # "arindex":[I
    .local v2, "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v31, "arindex":[I
    neg-double v4, v8

    :goto_8
    invoke-direct {v12, v0, v4, v5}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    move-object v13, v12

    .line 453
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    iget v4, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    invoke-interface {v0, v4, v13, v14}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 455
    move-object/from16 v38, v7

    move-wide/from16 v11, v25

    goto/16 :goto_13

    .line 448
    .end local v25    # "bestValue":D
    .end local v29    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v30    # "hsig":Z
    .end local v31    # "arindex":[I
    .restart local v0    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v2, "hsig":Z
    .restart local v4    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v5    # "arindex":[I
    .restart local v27    # "bestValue":D
    :cond_9
    move-object/from16 v29, v0

    move/from16 v30, v2

    move-object v2, v4

    move-object/from16 v31, v5

    .end local v0    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v4    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v5    # "arindex":[I
    .local v2, "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v29    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v30    # "hsig":Z
    .restart local v31    # "arindex":[I
    move-wide/from16 v25, v27

    .line 460
    .end local v27    # "bestValue":D
    .restart local v25    # "bestValue":D
    :cond_a
    iget-wide v4, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopFitness:D

    const-wide/16 v27, 0x0

    cmpl-double v0, v4, v27

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    iget-wide v4, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopFitness:D

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    neg-double v4, v4

    :goto_9
    cmpg-double v0, v8, v4

    if-gez v0, :cond_c

    .line 461
    move-object/from16 v38, v7

    move-object/from16 v33, v13

    goto/16 :goto_e

    .line 463
    :cond_c
    iget-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v0

    .line 464
    .local v0, "sqrtDiagC":[D
    iget-object v5, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v5

    .line 465
    .local v5, "pcCol":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    iget v12, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    if-ge v4, v12, :cond_f

    .line 466
    move-object/from16 v32, v5

    move-object v12, v6

    .end local v5    # "pcCol":[D
    .end local v6    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v12, "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v32, "pcCol":[D
    iget-wide v5, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    aget-wide v33, v32, v4

    move-wide/from16 v35, v5

    invoke-static/range {v33 .. v34}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    move-object/from16 v34, v12

    move-object/from16 v33, v13

    .end local v12    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v13    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .local v33, "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .local v34, "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    aget-wide v12, v0, v4

    invoke-static {v5, v6, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    mul-double v5, v5, v35

    iget-wide v12, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolX:D

    cmpl-double v5, v5, v12

    if-lez v5, :cond_d

    .line 467
    goto :goto_b

    .line 469
    :cond_d
    iget v5, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_e

    .line 470
    move-object/from16 v38, v7

    goto/16 :goto_e

    .line 465
    :cond_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v32

    move-object/from16 v13, v33

    move-object/from16 v6, v34

    goto :goto_a

    .end local v32    # "pcCol":[D
    .end local v33    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v34    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v5    # "pcCol":[D
    .restart local v6    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v13    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_f
    move-object/from16 v32, v5

    move-object/from16 v34, v6

    move-object/from16 v33, v13

    .line 473
    .end local v4    # "i":I
    .end local v5    # "pcCol":[D
    .end local v6    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v13    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v32    # "pcCol":[D
    .restart local v33    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v34    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    :goto_b
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_c
    iget v5, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    if-ge v4, v5, :cond_11

    .line 474
    iget-wide v5, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    aget-wide v12, v0, v4

    mul-double/2addr v5, v12

    iget-wide v12, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolUpX:D

    cmpl-double v5, v5, v12

    if-lez v5, :cond_10

    .line 475
    move-object/from16 v38, v7

    goto/16 :goto_e

    .line 473
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 478
    .end local v4    # "i":I
    :cond_11
    iget-object v4, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min([D)D

    move-result-wide v4

    .line 479
    .local v4, "historyBest":D
    iget-object v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max([D)D

    move-result-wide v12

    .line 480
    .local v12, "historyWorst":D
    iget v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    move-object/from16 v35, v0

    .end local v0    # "sqrtDiagC":[D
    .local v35, "sqrtDiagC":[D
    const/4 v0, 0x2

    if-le v6, v0, :cond_12

    invoke-static {v12, v13, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v36

    invoke-static {v4, v5, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v38

    sub-double v36, v36, v38

    move-object/from16 v38, v7

    .end local v7    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    .local v38, "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    iget-wide v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolFun:D

    cmpg-double v6, v36, v6

    if-gez v6, :cond_13

    .line 483
    goto :goto_e

    .line 480
    .end local v38    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    .restart local v7    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    :cond_12
    move-object/from16 v38, v7

    .line 485
    .end local v7    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    .restart local v38    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    :cond_13
    iget v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    iget-object v7, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    array-length v7, v7

    if-le v6, v7, :cond_14

    sub-double v6, v12, v4

    move-wide/from16 v36, v6

    iget-wide v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolHistFun:D

    cmpg-double v6, v36, v6

    if-gez v6, :cond_14

    .line 487
    goto :goto_e

    .line 490
    :cond_14
    iget-object v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v6

    iget-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v39

    div-double v6, v6, v39

    const-wide v39, 0x416312d000000000L    # 1.0E7

    cmpl-double v0, v6, v39

    if-lez v0, :cond_15

    .line 491
    goto :goto_e

    .line 494
    :cond_15
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 495
    new-instance v0, Lorg/apache/commons/math3/optim/PointValuePair;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v7

    iget-boolean v6, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    move-object/from16 v37, v2

    if-eqz v6, :cond_16

    move-object v6, v3

    move-wide v2, v8

    goto :goto_d

    :cond_16
    move-object v6, v3

    .end local v2    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v3    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v6, "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v37, "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    neg-double v2, v8

    :goto_d
    invoke-direct {v0, v7, v2, v3}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 498
    .local v0, "current":Lorg/apache/commons/math3/optim/PointValuePair;
    if-eqz v14, :cond_17

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v2

    iget v3, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    invoke-interface {v2, v3, v0, v14}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 500
    nop

    .line 521
    .end local v0    # "current":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v4    # "historyBest":D
    .end local v6    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v8    # "bestFitness":D
    .end local v10    # "worstFitness":D
    .end local v12    # "historyWorst":D
    .end local v15    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v18    # "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .end local v21    # "fitness":[D
    .end local v22    # "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v23    # "valueRange":D
    .end local v29    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v30    # "hsig":Z
    .end local v31    # "arindex":[I
    .end local v32    # "pcCol":[D
    .end local v33    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v34    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v35    # "sqrtDiagC":[D
    .end local v37    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v38    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    .restart local v7    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    .restart local v13    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    :goto_e
    move-wide/from16 v11, v25

    move-object/from16 v13, v33

    .end local v7    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    .end local v13    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v33    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v38    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    goto/16 :goto_13

    .line 502
    .restart local v0    # "current":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v4    # "historyBest":D
    .restart local v6    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v8    # "bestFitness":D
    .restart local v10    # "worstFitness":D
    .restart local v12    # "historyWorst":D
    .restart local v15    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v18    # "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .restart local v21    # "fitness":[D
    .restart local v22    # "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v23    # "valueRange":D
    .restart local v29    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v30    # "hsig":Z
    .restart local v31    # "arindex":[I
    .restart local v32    # "pcCol":[D
    .restart local v34    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v35    # "sqrtDiagC":[D
    .restart local v37    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_17
    move-object v2, v0

    move-object v14, v2

    .end local v14    # "lastResult":Lorg/apache/commons/math3/optim/PointValuePair;
    .local v2, "lastResult":Lorg/apache/commons/math3/optim/PointValuePair;
    goto :goto_f

    .line 494
    .end local v0    # "current":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v6    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v37    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v2, "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v3    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v14    # "lastResult":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_18
    move-object/from16 v37, v2

    move-object v6, v3

    .line 505
    .end local v2    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v3    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v6    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v37    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    :goto_f
    iget v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    int-to-double v2, v0

    const-wide/high16 v39, 0x4010000000000000L    # 4.0

    div-double v2, v2, v39

    const-wide v39, 0x3fb999999999999aL    # 0.1

    add-double v2, v2, v39

    double-to-int v0, v2

    aget v0, v31, v0

    aget-wide v2, v21, v0

    cmpl-double v0, v25, v2

    if-nez v0, :cond_19

    .line 506
    const-wide v39, 0x3fc999999999999aL    # 0.2

    iget-wide v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v41, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    move-wide/from16 v43, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    div-double v2, v43, v2

    add-double v2, v2, v39

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double v2, v2, v41

    iput-wide v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    goto :goto_10

    .line 505
    :cond_19
    const-wide v39, 0x3fc999999999999aL    # 0.2

    .line 508
    :goto_10
    iget v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_1a

    invoke-static {v12, v13, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-static {v4, v5, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v41

    sub-double v2, v2, v41

    cmpl-double v0, v2, v27

    if-nez v0, :cond_1a

    .line 510
    iget-wide v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v27, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    move-wide/from16 v41, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    div-double v2, v41, v2

    add-double v2, v2, v39

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double v2, v2, v27

    iput-wide v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    .line 513
    :cond_1a
    iget-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v0, v8, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->push([DD)V

    .line 514
    iget-boolean v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->generateStatistics:Z

    if-eqz v0, :cond_1b

    .line 515
    iget-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    iget-wide v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    iget-object v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    iget-object v2, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-wide/from16 v27, v4

    .end local v4    # "historyBest":D
    .local v27, "historyBest":D
    const-wide v3, 0x40f86a0000000000L    # 100000.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 514
    .end local v27    # "historyBest":D
    .restart local v4    # "historyBest":D
    :cond_1b
    move-wide/from16 v27, v4

    .line 390
    .end local v4    # "historyBest":D
    .end local v6    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v8    # "bestFitness":D
    .end local v10    # "worstFitness":D
    .end local v12    # "historyWorst":D
    .end local v15    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v18    # "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .end local v21    # "fitness":[D
    .end local v22    # "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v23    # "valueRange":D
    .end local v29    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v30    # "hsig":Z
    .end local v31    # "arindex":[I
    .end local v32    # "pcCol":[D
    .end local v34    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v35    # "sqrtDiagC":[D
    .end local v37    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    :goto_11
    iget v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    move/from16 v10, v16

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-wide/from16 v11, v25

    move-object/from16 v13, v33

    move-object/from16 v7, v38

    const/4 v0, 0x0

    goto/16 :goto_1

    .end local v19    # "guess":[D
    .end local v20    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .end local v25    # "bestValue":D
    .end local v33    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v38    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    .restart local v7    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    .local v8, "guess":[D
    .restart local v9    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .restart local v11    # "bestValue":D
    .restart local v13    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_1c
    move-object/from16 v38, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-wide/from16 v27, v11

    .line 521
    .end local v7    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    .end local v8    # "guess":[D
    .end local v9    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .end local v11    # "bestValue":D
    .restart local v19    # "guess":[D
    .restart local v20    # "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .local v27, "bestValue":D
    .restart local v38    # "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    :goto_12
    move-wide/from16 v11, v27

    .end local v27    # "bestValue":D
    .restart local v11    # "bestValue":D
    :goto_13
    return-object v13
.end method

.method public getStatisticsDHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsFitnessHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsMeanHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsSigmaHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 365
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 537
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 541
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 542
    .local v3, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;

    if-eqz v4, :cond_0

    .line 543
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;->getSigma()[D

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    .line 544
    goto :goto_1

    .line 546
    :cond_0
    instance-of v4, v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;

    if-eqz v4, :cond_1

    .line 547
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;->getPopulationSize()I

    move-result v4

    iput v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    .line 548
    nop

    .line 541
    .end local v3    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkParameters()V

    .line 553
    return-void
.end method
