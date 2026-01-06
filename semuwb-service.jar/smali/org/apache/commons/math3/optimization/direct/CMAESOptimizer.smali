.class public Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;
.source "CMAESOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_CHECKFEASABLECOUNT:I = 0x0

.field public static final DEFAULT_DIAGONALONLY:I = 0x0

.field public static final DEFAULT_ISACTIVECMA:Z = true

.field public static final DEFAULT_MAXITERATIONS:I = 0x7530

.field public static final DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

.field public static final DEFAULT_STOPFITNESS:D


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

.field private checkFeasableCount:I

.field private chiN:D

.field private cs:D

.field private damps:D

.field private diagC:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagonalOnly:I

.field private dimension:I

.field private fitnessHistory:[D

.field private generateStatistics:Z

.field private historySize:I

.field private inputSigma:[D

.field private isActiveCMA:Z

.field private isMinimize:Z

.field private iterations:I

.field private lambda:I

.field private logMu2:D

.field private maxIterations:I

.field private mu:I

.field private mueff:D

.field private normps:D

.field private pc:Lorg/apache/commons/math3/linear/RealMatrix;

.field private ps:Lorg/apache/commons/math3/linear/RealMatrix;

.field private random:Lorg/apache/commons/math3/random/RandomGenerator;

.field private sigma:D

.field private statisticsDHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private statisticsFitnessHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private statisticsMeanHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private statisticsSigmaHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private stopFitness:D

.field private stopTolFun:D

.field private stopTolHistFun:D

.field private stopTolUpX:D

.field private stopTolX:D

.field private weights:Lorg/apache/commons/math3/linear/RealMatrix;

.field private xmean:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lorg/apache/commons/math3/random/MersenneTwister;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/MersenneTwister;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I)V

    .line 238
    return-void
.end method

.method public constructor <init>(I)V
    .locals 12
    .param p1, "lambda"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    sget-object v9, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x7530

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "lambda":I
    .local v1, "lambda":I
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 252
    return-void
.end method

.method public constructor <init>(IDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
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
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 355
    .local p9, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-direct {p0, p9}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    .line 141
    iput-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    .line 356
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    .line 357
    iput-wide p2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    .line 358
    iput-boolean p4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isActiveCMA:Z

    .line 359
    iput p5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 360
    iput p6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    .line 361
    iput-object p7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 362
    iput-boolean p8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    .line 363
    return-void
.end method

.method public constructor <init>(I[D)V
    .locals 11
    .param p1, "lambda"    # I
    .param p2, "inputSigma"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    sget-object v9, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    const/4 v10, 0x0

    const/16 v3, 0x7530

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .end local p1    # "lambda":I
    .end local p2    # "inputSigma":[D
    .local v1, "lambda":I
    .local v2, "inputSigma":[D
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;Z)V

    .line 267
    return-void
.end method

.method public constructor <init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;Z)V
    .locals 12
    .param p1, "lambda"    # I
    .param p2, "inputSigma"    # [D
    .param p3, "maxIterations"    # I
    .param p4, "stopFitness"    # D
    .param p6, "isActiveCMA"    # Z
    .param p7, "diagonalOnly"    # I
    .param p8, "checkFeasableCount"    # I
    .param p9, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p10, "generateStatistics"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    new-instance v11, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v11}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 293
    return-void
.end method

.method public constructor <init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .param p1, "lambda"    # I
    .param p2, "inputSigma"    # [D
    .param p3, "maxIterations"    # I
    .param p4, "stopFitness"    # D
    .param p6, "isActiveCMA"    # Z
    .param p7, "diagonalOnly"    # I
    .param p8, "checkFeasableCount"    # I
    .param p9, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p10, "generateStatistics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[DIDZII",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Z",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    .local p11, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-direct {p0, p11}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    .line 141
    iput-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    .line 321
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    .line 322
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    .line 323
    iput p3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    .line 324
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    .line 325
    iput-boolean p6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isActiveCMA:Z

    .line 326
    iput p7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 327
    iput p8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    .line 328
    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 329
    iput-boolean p10, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    .line 330
    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    .line 85
    iget-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    return v0
.end method

.method private checkParameters()V
    .locals 11

    .line 670
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getStartPoint()[D

    move-result-object v0

    .line 671
    .local v0, "init":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getLowerBound()[D

    move-result-object v1

    .line 672
    .local v1, "lB":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getUpperBound()[D

    move-result-object v2

    .line 674
    .local v2, "uB":[D
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    if-eqz v3, :cond_3

    .line 675
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    array-length v3, v3

    array-length v4, v0

    if-ne v3, v4, :cond_2

    .line 678
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 679
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    aget-wide v4, v4, v3

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    .line 683
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    aget-wide v4, v4, v3

    aget-wide v6, v2, v3

    aget-wide v8, v1, v3

    sub-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 678
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 684
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

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

    .line 681
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/exception/NotPositiveException;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v4

    .line 676
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    array-length v4, v4

    array-length v5, v0

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 688
    :cond_3
    return-void
.end method

.method private static copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V
    .locals 3
    .param p0, "m1"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "col1"    # I
    .param p2, "m2"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "col2"    # I

    .line 1251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1252
    invoke-interface {p0, v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v1

    invoke-interface {p2, v0, p3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 1251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1254
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1226
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1227
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

    .line 1228
    .local v0, "d":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1229
    aget-object v3, v0, v1

    invoke-interface {p0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1231
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v1

    .line 1233
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

    .line 1234
    .restart local v0    # "d":[[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1235
    aget-object v3, v0, v1

    invoke-interface {p0, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 1234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1237
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

    .line 1165
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

    .line 1166
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1167
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1168
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    div-double/2addr v5, v7

    aput-wide v5, v4, v3

    .line 1167
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1166
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1171
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

    .line 1276
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

    .line 1277
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    if-ge v2, p0, :cond_1

    .line 1278
    if-ge v2, p1, :cond_0

    .line 1279
    aget-object v3, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    .line 1277
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1282
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private initializeCMA([D)V
    .locals 27
    .param p1, "guess"    # [D

    .line 696
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    if-gtz v2, :cond_0

    .line 699
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v5, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-int v2, v5

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    .line 702
    :cond_0
    array-length v2, v1

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v7, v6, v7

    const/4 v8, 0x0

    aput v2, v6, v8

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 703
    .local v2, "sigmaArray":[[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v9, v1

    if-ge v6, v9, :cond_2

    .line 706
    aget-object v9, v2, v6

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    if-nez v12, :cond_1

    const-wide v10, 0x3fd3333333333333L    # 0.3

    goto :goto_1

    :cond_1
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    aget-wide v10, v10, v6

    :goto_1
    aput-wide v10, v9, v8

    .line 703
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 708
    .end local v6    # "i":I
    :cond_2
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v6, v2, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 709
    .local v6, "insigma":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v12

    iput-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    .line 712
    const-wide v12, 0x408f400000000000L    # 1000.0

    invoke-static {v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v14

    mul-double/2addr v14, v12

    iput-wide v14, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolUpX:D

    .line 713
    const-wide v12, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-static {v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v14

    mul-double/2addr v14, v12

    iput-wide v14, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolX:D

    .line 714
    const-wide v12, 0x3d719799812dea11L    # 1.0E-12

    iput-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolFun:D

    .line 715
    const-wide v12, 0x3d3c25c268497682L    # 1.0E-13

    iput-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolHistFun:D

    .line 718
    iget v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    div-int/2addr v9, v5

    iput v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    .line 719
    iget v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    int-to-double v12, v9

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    iput-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->logMu2:D

    .line 720
    iget v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v12 .. v17}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sequence(DDD)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-interface {v9, v12, v13}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    iget-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->logMu2:D

    invoke-interface {v9, v12, v13}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 721
    const-wide/16 v12, 0x0

    .line 722
    .local v12, "sumw":D
    const-wide/16 v14, 0x0

    .line 723
    .local v14, "sumwq":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-wide/from16 v16, v3

    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    if-ge v9, v3, :cond_3

    .line 724
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v9, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    .line 725
    .local v3, "w":D
    add-double/2addr v12, v3

    .line 726
    mul-double v18, v3, v3

    add-double v14, v14, v18

    .line 723
    .end local v3    # "w":D
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v3, v16

    goto :goto_2

    .line 728
    .end local v9    # "i":I
    :cond_3
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move v4, v5

    move-object/from16 v18, v6

    .end local v6    # "insigma":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v18, "insigma":Lorg/apache/commons/math3/linear/RealMatrix;
    div-double v5, v8, v12

    invoke-interface {v3, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 729
    mul-double v5, v12, v12

    div-double/2addr v5, v14

    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    .line 732
    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move/from16 v19, v4

    move-wide/from16 v20, v5

    int-to-double v4, v3

    div-double v5, v20, v4

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    add-double/2addr v5, v3

    move-wide/from16 v20, v3

    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v3, v3, 0x4

    int-to-double v3, v3

    move/from16 v22, v7

    move-wide/from16 v23, v8

    iget-wide v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v25

    iget v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v10, v9

    div-double/2addr v7, v10

    add-double/2addr v3, v7

    div-double/2addr v5, v3

    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    .line 734
    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    add-double v3, v3, v25

    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v5, v5

    iget-wide v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    add-double/2addr v5, v7

    add-double v5, v5, v16

    div-double/2addr v3, v5

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    .line 735
    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    sub-double v3, v3, v23

    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v5, v5, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    sub-double v3, v3, v23

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    mul-double v3, v3, v25

    add-double v3, v3, v23

    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v5, v5

    iget v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    int-to-double v7, v7

    const-wide v9, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    add-double/2addr v7, v9

    div-double/2addr v5, v7

    sub-double v8, v23, v5

    const-wide v5, 0x3fd3333333333333L    # 0.3

    invoke-static {v5, v6, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    add-double/2addr v3, v5

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    .line 739
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v3, v3

    const-wide v5, 0x3ff4cccccccccccdL    # 1.3

    add-double/2addr v3, v5

    iget v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v7, v7

    add-double/2addr v7, v5

    mul-double/2addr v3, v7

    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    add-double/2addr v3, v5

    div-double v3, v25, v3

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    .line 740
    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    sub-double v8, v23, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    sub-double v3, v3, v25

    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    div-double v5, v23, v5

    add-double/2addr v3, v5

    mul-double v3, v3, v25

    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v5, v5, 0x2

    iget v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v6, v6, 0x2

    mul-int/2addr v5, v6

    int-to-double v5, v5

    iget-wide v10, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    add-double/2addr v5, v10

    div-double/2addr v3, v5

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    .line 742
    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    add-double/2addr v5, v7

    mul-double/2addr v3, v5

    div-double v3, v3, v16

    move-wide/from16 v5, v23

    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    .line 743
    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    sub-double v3, v5, v3

    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    iget v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v9, v9

    add-double/2addr v9, v7

    mul-double/2addr v5, v9

    div-double v5, v5, v16

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmuSep:D

    .line 744
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v5, v5

    mul-double v5, v5, v20

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    div-double v8, v23, v5

    sub-double v8, v23, v8

    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v5, v5

    const-wide/high16 v10, 0x4035000000000000L    # 21.0

    mul-double/2addr v5, v10

    iget v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v10, v7

    mul-double/2addr v5, v10

    div-double v5, v23, v5

    add-double/2addr v8, v5

    mul-double/2addr v3, v8

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->chiN:D

    .line 747
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 748
    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    div-double v8, v23, v3

    move-object/from16 v6, v18

    .end local v18    # "insigma":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v6    # "insigma":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 749
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 750
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move/from16 v4, v22

    invoke-static {v3, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 751
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 752
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->normps:D

    .line 754
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 755
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 756
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iget v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v5, v7, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 757
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 758
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    mul-int/lit8 v3, v3, 0x1e

    int-to-double v3, v3

    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    int-to-double v7, v5

    div-double/2addr v3, v7

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0xa

    iput v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->historySize:I

    .line 759
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->historySize:I

    new-array v3, v3, [D

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    .line 760
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->historySize:I

    if-ge v3, v4, :cond_4

    .line 761
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    aput-wide v7, v4, v3

    .line 760
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 763
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private static inverse([I)[I
    .locals 3
    .param p0, "indices"    # [I

    .line 1396
    array-length v0, p0

    new-array v0, v0, [I

    .line 1397
    .local v0, "inverse":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1398
    aget v2, p0, v1

    aput v1, v0, v2

    .line 1397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1400
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1106
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

    .line 1107
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1108
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1109
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 1108
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1107
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1112
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static max(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1334
    const-wide v0, -0x10000000000001L

    .line 1335
    .local v0, "max":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1336
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1337
    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 1338
    .local v4, "e":D
    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    .line 1339
    move-wide v0, v4

    .line 1336
    .end local v4    # "e":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1335
    .end local v3    # "c":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1343
    .end local v2    # "r":I
    :cond_2
    return-wide v0
.end method

.method private static max([D)D
    .locals 5
    .param p0, "m"    # [D

    .line 1368
    const-wide v0, -0x10000000000001L

    .line 1369
    .local v0, "max":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1370
    aget-wide v3, p0, v2

    cmpg-double v3, v0, v3

    if-gez v3, :cond_0

    .line 1371
    aget-wide v0, p0, v2

    .line 1369
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1374
    .end local v2    # "r":I
    :cond_1
    return-wide v0
.end method

.method private static min(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1351
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1352
    .local v0, "min":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1353
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1354
    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 1355
    .local v4, "e":D
    cmpl-double v6, v0, v4

    if-lez v6, :cond_0

    .line 1356
    move-wide v0, v4

    .line 1353
    .end local v4    # "e":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1352
    .end local v3    # "c":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1360
    .end local v2    # "r":I
    :cond_2
    return-wide v0
.end method

.method private static min([D)D
    .locals 5
    .param p0, "m"    # [D

    .line 1382
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1383
    .local v0, "min":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1384
    aget-wide v3, p0, v2

    cmpl-double v3, v0, v3

    if-lez v3, :cond_0

    .line 1385
    aget-wide v0, p0, v2

    .line 1383
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1388
    .end local v2    # "r":I
    :cond_1
    return-wide v0
.end method

.method private static ones(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "n"    # I
    .param p1, "m"    # I

    .line 1262
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

    .line 1263
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1264
    aget-object v3, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 1263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1266
    .end local v2    # "r":I
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private varargs parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;

    .line 654
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optimization/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 655
    .local v3, "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;

    if-eqz v4, :cond_0

    .line 656
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;->getSigma()[D

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    .line 657
    goto :goto_1

    .line 659
    :cond_0
    instance-of v4, v3, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;

    if-eqz v4, :cond_1

    .line 660
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;->getPopulationSize()I

    move-result v4

    iput v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    .line 661
    nop

    .line 654
    .end local v3    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optimization/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void
.end method

.method private static push([DD)V
    .locals 3
    .param p0, "vals"    # [D
    .param p1, "val"    # D

    .line 928
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 929
    add-int/lit8 v1, v0, -0x1

    aget-wide v1, p0, v1

    aput-wide v1, p0, v0

    .line 928
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 931
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    aput-wide p1, p0, v0

    .line 932
    return-void
.end method

.method private randn(I)[D
    .locals 4
    .param p1, "size"    # I

    .line 1420
    new-array v0, p1, [D

    .line 1421
    .local v0, "randn":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1422
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1424
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p1, "size"    # I
    .param p2, "popSize"    # I

    .line 1433
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

    .line 1434
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1435
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 1436
    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 1435
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1434
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1439
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

    .line 1301
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 1302
    .local v0, "rd":I
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 1303
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

    .line 1304
    .local v2, "d":[[D
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_0
    mul-int v5, p1, v0

    if-ge v4, v5, :cond_1

    .line 1305
    const/4 v5, 0x0

    .local v5, "c":I
    :goto_1
    mul-int v6, p2, v1

    if-ge v5, v6, :cond_0

    .line 1306
    aget-object v6, v2, v4

    rem-int v7, v4, v0

    rem-int v8, v5, v1

    invoke-interface {p0, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    aput-wide v7, v6, v5

    .line 1305
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1304
    .end local v5    # "c":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1309
    .end local v4    # "r":I
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v4
.end method

.method private static reverse([I)[I
    .locals 3
    .param p0, "indices"    # [I

    .line 1408
    array-length v0, p0

    new-array v0, v0, [I

    .line 1409
    .local v0, "reverse":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1410
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    aput v2, v0, v1

    .line 1409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1412
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "cols"    # [I

    .line 1180
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

    .line 1181
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1182
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1183
    aget-object v4, v0, v2

    aget v5, p1, v3

    invoke-interface {p0, v2, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 1182
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1181
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1186
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

    .line 1319
    sub-double v0, p2, p0

    div-double/2addr v0, p4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 1320
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

    .line 1321
    .local v1, "d":[[D
    move-wide v3, p0

    .line 1322
    .local v3, "value":D
    const/4 v5, 0x0

    .local v5, "r":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 1323
    aget-object v6, v1, v5

    aput-wide v3, v6, v2

    .line 1324
    add-double/2addr v3, p4

    .line 1322
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1326
    .end local v5    # "r":I
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v5, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v5
.end method

.method private sortedIndices([D)[I
    .locals 5
    .param p1, "doubles"    # [D

    .line 941
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    .line 942
    .local v0, "dis":[Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 943
    new-instance v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    aget-wide v3, p1, v1

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;-><init>(DI)V

    aput-object v2, v0, v1

    .line 942
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 945
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 946
    array-length v1, p1

    new-array v1, v1, [I

    .line 947
    .local v1, "indices":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 948
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->access$100(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;)I

    move-result v3

    aput v3, v1, v2

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 950
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1120
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

    .line 1121
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1122
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1123
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 1122
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1121
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1126
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1134
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

    .line 1135
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1136
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1137
    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 1138
    .local v4, "e":D
    aget-object v6, v0, v2

    mul-double v7, v4, v4

    aput-wide v7, v6, v3

    .line 1136
    .end local v4    # "e":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1135
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1141
    .end local v2    # "r":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static sumRows(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 1209
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

    .line 1210
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1211
    const-wide/16 v3, 0x0

    .line 1212
    .local v3, "sum":D
    const/4 v5, 0x0

    .local v5, "r":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1213
    invoke-interface {p0, v5, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    add-double/2addr v3, v6

    .line 1212
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1215
    .end local v5    # "r":I
    :cond_0
    aget-object v5, v1, v0

    aput-wide v3, v5, v2

    .line 1210
    .end local v3    # "sum":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1217
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

    .line 1150
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

    .line 1151
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1152
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1153
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    mul-double/2addr v5, v7

    aput-wide v5, v4, v3

    .line 1152
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1151
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1156
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

    .line 1195
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

    .line 1196
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1197
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1198
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

    .line 1197
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1196
    .end local v3    # "c":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1201
    .end local v2    # "r":I
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private updateBD(D)V
    .locals 10
    .param p1, "negccov"    # D

    .line 891
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    add-double/2addr v0, v2

    add-double/2addr v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    int-to-double v0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v0, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    iget-wide v8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    add-double/2addr v6, v8

    add-double/2addr v6, p1

    div-double/2addr v0, v6

    iget v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v6

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4

    .line 894
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 896
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 897
    .local v0, "eig":Lorg/apache/commons/math3/linear/EigenDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 898
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getD()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 899
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 900
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v6

    cmpg-double v4, v6, v2

    const-wide v6, 0x42d6bcc41e900000L    # 1.0E14

    if-gtz v4, :cond_2

    .line 901
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    if-ge v4, v8, :cond_1

    .line 902
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v8, v4, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_0

    .line 903
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v8, v4, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 901
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 906
    .end local v4    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v1

    div-double/2addr v1, v6

    .line 907
    .local v1, "tfac":D
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    iget v8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v4, v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 908
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 910
    .end local v1    # "tfac":D
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v3

    mul-double/2addr v3, v6

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    .line 911
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v1

    div-double/2addr v1, v6

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 912
    .restart local v1    # "tfac":D
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    iget v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v4, v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 913
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 915
    .end local v1    # "tfac":D
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 916
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 917
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v2, v3, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 919
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

    .line 828
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 829
    .local v1, "negccov":D
    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    add-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 830
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    const/4 v4, 0x1

    move-object/from16 v7, p5

    invoke-static {v7, v4, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    move-object/from16 v8, p2

    invoke-interface {v8, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v9, v11, v9

    invoke-interface {v3, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 832
    .local v3, "arpos":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v10}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    invoke-interface {v9, v13, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    .line 835
    .local v9, "roneu":Lorg/apache/commons/math3/linear/RealMatrix;
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    if-eqz p1, :cond_0

    move-wide v15, v11

    goto :goto_0

    :cond_0
    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    move-wide v15, v11

    iget-wide v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    mul-double/2addr v5, v11

    iget-wide v10, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    sub-double v10, v13, v10

    mul-double/2addr v5, v10

    .line 836
    .local v5, "oldFac":D
    :goto_0
    iget-wide v10, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    sub-double v11, v15, v10

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    sub-double/2addr v11, v13

    add-double/2addr v5, v11

    .line 837
    iget-boolean v10, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isActiveCMA:Z

    if-eqz v10, :cond_2

    .line 839
    iget-wide v10, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    sub-double v11, v15, v10

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v11, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    mul-double/2addr v11, v13

    iget v10, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v10, v10, 0x2

    int-to-double v13, v10

    move-wide v15, v5

    .end local v5    # "oldFac":D
    .local v15, "oldFac":D
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v13, v14, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    mul-double v13, v13, v17

    add-double/2addr v4, v13

    div-double/2addr v11, v4

    .line 842
    .end local v1    # "negccov":D
    .local v11, "negccov":D
    const-wide v1, 0x3fe51eb851eb851fL    # 0.66

    .line 844
    .local v1, "negminresidualvariance":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 846
    .local v4, "negalphaold":D
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->reverse([I)[I

    move-result-object v6

    .line 847
    .local v6, "arReverseIndex":[I
    iget v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    invoke-static {v6, v13}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v13

    move-object/from16 v14, p3

    invoke-static {v14, v13}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v13

    .line 848
    .local v13, "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v13}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sumRows(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    .line 849
    .local v10, "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    move-wide/from16 v19, v1

    .end local v1    # "negminresidualvariance":D
    .local v19, "negminresidualvariance":D
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v2

    .line 850
    .local v2, "idxnorms":[I
    invoke-static {v10, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 851
    .local v1, "arnormsSorted":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v21, v2

    .end local v2    # "idxnorms":[I
    .local v21, "idxnorms":[I
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->reverse([I)[I

    move-result-object v2

    .line 852
    .local v2, "idxReverse":[I
    move-wide/from16 v22, v4

    .end local v4    # "negalphaold":D
    .local v22, "negalphaold":D
    invoke-static {v10, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 853
    .local v4, "arnormsReverse":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v4, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->divide(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 854
    .end local v10    # "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v5, "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inverse([I)[I

    move-result-object v10

    .line 855
    .local v10, "idxInv":[I
    move-object/from16 v24, v1

    .end local v1    # "arnormsSorted":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v24, "arnormsSorted":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v5, v10}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 857
    .local v1, "arnormsInv":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v25, v2

    .end local v2    # "idxReverse":[I
    .local v25, "idxReverse":[I
    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v26, v4

    .end local v4    # "arnormsReverse":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v26, "arnormsReverse":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v27

    const-wide v29, 0x3fd5c28f5c28f5c2L    # 0.33999999999999997

    div-double v29, v29, v27

    .line 859
    .local v29, "negcovMax":D
    cmpl-double v2, v11, v29

    if-lez v2, :cond_1

    .line 860
    move-wide/from16 v11, v29

    .line 862
    :cond_1
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object v4, v10

    .end local v10    # "idxInv":[I
    .local v4, "idxInv":[I
    invoke-static {v13, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 863
    .end local v13    # "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v2, "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v13, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v13

    .line 864
    .local v13, "artmp":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v10}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

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

    .line 865
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

    .line 866
    .end local v15    # "oldFac":D
    .local v4, "oldFac":D
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v15, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v15

    invoke-interface {v15, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v15

    move-wide/from16 v31, v4

    .end local v4    # "oldFac":D
    .local v31, "oldFac":D
    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    mul-double v27, v27, v11

    add-double v4, v4, v27

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v27, v2

    .end local v2    # "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v27, "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move-object/from16 v28, v6

    const/4 v6, 0x1

    .end local v6    # "arReverseIndex":[I
    .local v28, "arReverseIndex":[I
    invoke-static {v5, v6, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v15, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 873
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

    .line 875
    .end local v11    # "negccov":D
    .end local v31    # "oldFac":D
    .local v1, "negccov":D
    .local v5, "oldFac":D
    :cond_2
    move-object/from16 v14, p3

    move-wide v15, v5

    .end local v5    # "oldFac":D
    .restart local v15    # "oldFac":D
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .end local v15    # "oldFac":D
    .restart local v5    # "oldFac":D
    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-wide v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    invoke-interface {v3, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    const/4 v10, 0x1

    invoke-static {v12, v10, v13}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    invoke-static {v10, v12}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v11, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_1

    .line 829
    .end local v3    # "arpos":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v5    # "oldFac":D
    .end local v9    # "roneu":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_3
    move-object/from16 v8, p2

    move-object/from16 v14, p3

    move-object/from16 v7, p5

    .line 882
    :goto_1
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateBD(D)V

    .line 883
    return-void
.end method

.method private updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 6
    .param p1, "hsig"    # Z
    .param p2, "bestArz"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 797
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 798
    .local v0, "oldFac":D
    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmuSep:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 799
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmuSep:D

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 803
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 804
    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    iget v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    if-le v2, v3, :cond_1

    .line 807
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 808
    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    iget v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 809
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 810
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 812
    :cond_1
    return-void
.end method

.method private updateEvolutionPaths(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z
    .locals 11
    .param p1, "zmean"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "xold"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 774
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v1, v3, v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    sub-double v7, v9, v7

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 776
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->normps:D

    .line 777
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->normps:D

    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    sub-double v5, v3, v5

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v5, v6, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v5

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v0, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->chiN:D

    div-double/2addr v0, v5

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

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

    .line 780
    .local v0, "hsig":Z
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    sub-double/2addr v3, v5

    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 781
    if-eqz v0, :cond_1

    .line 782
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    sub-double/2addr v9, v5

    mul-double/2addr v3, v9

    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    div-double/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 784
    :cond_1
    return v0
.end method

.method private static zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p0, "n"    # I
    .param p1, "m"    # I

    .line 1291
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 40

    .line 498
    move-object/from16 v1, p0

    invoke-direct {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkParameters()V

    .line 500
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v0

    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optimization/GoalType;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    .line 501
    new-instance v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;-><init>(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)V

    move-object v7, v0

    .line 502
    .local v7, "fitfun":Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getStartPoint()[D

    move-result-object v8

    .line 504
    .local v8, "guess":[D
    array-length v0, v8

    iput v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    .line 505
    invoke-direct {v1, v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->initializeCMA([D)V

    .line 506
    const/4 v0, 0x0

    iput v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    .line 507
    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->value([D)D

    move-result-wide v2

    .line 508
    .local v2, "bestValue":D
    iget-object v4, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v4, v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->push([DD)V

    .line 509
    new-instance v4, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getStartPoint()[D

    move-result-object v5

    iget-boolean v6, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    if-eqz v6, :cond_0

    move-wide v9, v2

    goto :goto_0

    :cond_0
    neg-double v9, v2

    :goto_0
    invoke-direct {v4, v5, v9, v10}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 511
    .local v4, "optimum":Lorg/apache/commons/math3/optimization/PointValuePair;
    const/4 v5, 0x0

    .line 516
    .local v5, "lastResult":Lorg/apache/commons/math3/optimization/PointValuePair;
    const/4 v9, 0x1

    iput v9, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    move-wide v10, v2

    move-object v12, v4

    move-object v13, v5

    .end local v2    # "bestValue":D
    .end local v4    # "optimum":Lorg/apache/commons/math3/optimization/PointValuePair;
    .end local v5    # "lastResult":Lorg/apache/commons/math3/optimization/PointValuePair;
    .local v10, "bestValue":D
    .local v12, "optimum":Lorg/apache/commons/math3/optimization/PointValuePair;
    .local v13, "lastResult":Lorg/apache/commons/math3/optimization/PointValuePair;
    :goto_1
    iget v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    iget v3, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    if-gt v2, v3, :cond_1c

    .line 518
    iget v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    iget v3, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 519
    .local v4, "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    iget v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    iget v3, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v14

    .line 520
    .local v14, "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    iget v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    new-array v15, v2, [D

    .line 522
    .local v15, "fitness":[D
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    iget v3, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    if-ge v2, v3, :cond_5

    .line 523
    const/4 v3, 0x0

    .line 524
    .local v3, "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget v6, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    add-int/2addr v6, v9

    if-ge v5, v6, :cond_3

    .line 525
    iget v6, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    if-gtz v6, :cond_1

    .line 526
    iget-object v6, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    move/from16 v16, v9

    iget-object v9, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v9, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    move-object/from16 v18, v8

    .end local v8    # "guess":[D
    .local v18, "guess":[D
    iget-wide v8, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    invoke-interface {v0, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    move-object v3, v0

    .end local v3    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v0, "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    goto :goto_4

    .line 529
    .end local v0    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v18    # "guess":[D
    .restart local v3    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v8    # "guess":[D
    :cond_1
    move-object/from16 v18, v8

    move/from16 v16, v9

    .end local v8    # "guess":[D
    .restart local v18    # "guess":[D
    iget-object v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v6, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    iget-wide v8, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    move-object v3, v0

    .line 532
    :goto_4
    iget v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    if-ge v5, v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->isFeasible([D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    goto :goto_5

    .line 537
    :cond_2
    iget v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->randn(I)[D

    move-result-object v0

    invoke-interface {v4, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    .line 524
    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v16

    move-object/from16 v8, v18

    const/4 v0, 0x0

    goto :goto_3

    .end local v18    # "guess":[D
    .restart local v8    # "guess":[D
    :cond_3
    move-object/from16 v18, v8

    move/from16 v16, v9

    .line 539
    .end local v5    # "i":I
    .end local v8    # "guess":[D
    .restart local v18    # "guess":[D
    :cond_4
    :goto_5
    const/4 v0, 0x0

    invoke-static {v3, v0, v14, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V

    .line 541
    :try_start_0
    invoke-interface {v14, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->value([D)D

    move-result-wide v5

    aput-wide v5, v15, v2
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/TooManyEvaluationsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    nop

    .line 522
    .end local v3    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, v16

    move-object/from16 v8, v18

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 542
    .restart local v3    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
    move-wide/from16 v22, v10

    goto/16 :goto_f

    .line 522
    .end local v0    # "e":Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
    .end local v3    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v18    # "guess":[D
    .restart local v8    # "guess":[D
    :cond_5
    move-object/from16 v18, v8

    move/from16 v16, v9

    .line 547
    .end local v2    # "k":I
    .end local v8    # "guess":[D
    .restart local v18    # "guess":[D
    invoke-direct {v1, v15}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v5

    .line 549
    .local v5, "arindex":[I
    iget-object v6, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 550
    .local v6, "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    iget v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    invoke-static {v5, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v14, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 551
    .local v3, "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 552
    iget v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    invoke-static {v5, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v4, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 553
    .local v0, "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    .line 554
    .local v8, "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-direct {v1, v8, v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateEvolutionPaths(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z

    move-result v2

    .line 555
    .local v2, "hsig":Z
    iget v9, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    if-gtz v9, :cond_6

    .line 556
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateCovariance(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V

    goto :goto_6

    .line 558
    :cond_6
    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V

    .line 561
    :goto_6
    move-object/from16 v19, v8

    .end local v8    # "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v19, "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-wide v8, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    move-wide/from16 v20, v8

    iget-wide v8, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->normps:D

    move-wide/from16 v22, v8

    iget-wide v8, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->chiN:D

    div-double v8, v22, v8

    move-wide/from16 v22, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v8

    iget-wide v8, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    mul-double v22, v22, v8

    iget-wide v8, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    div-double v8, v22, v8

    move-wide/from16 v22, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .end local v10    # "bestValue":D
    .local v22, "bestValue":D
    invoke-static {v10, v11, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v8

    mul-double v8, v8, v20

    iput-wide v8, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    .line 562
    const/16 v17, 0x0

    aget v8, v5, v17

    aget-wide v8, v15, v8

    .line 563
    .local v8, "bestFitness":D
    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    aget v10, v5, v10

    aget-wide v10, v15, v10

    .line 564
    .local v10, "worstFitness":D
    cmpl-double v20, v22, v8

    if-lez v20, :cond_8

    .line 565
    move-wide/from16 v20, v8

    .line 566
    .end local v22    # "bestValue":D
    .local v20, "bestValue":D
    move-object v13, v12

    .line 567
    move-object/from16 v24, v0

    .end local v0    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v24, "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v0, Lorg/apache/commons/math3/optimization/PointValuePair;

    move/from16 v25, v2

    move-object/from16 v26, v4

    const/4 v2, 0x0

    .end local v2    # "hsig":Z
    .end local v4    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v25, "hsig":Z
    .local v26, "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v3, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    invoke-static {v7, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->access$000(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;[D)[D

    move-result-object v2

    iget-boolean v4, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    move-object/from16 v27, v5

    if-eqz v4, :cond_7

    move-wide v4, v8

    goto :goto_7

    .end local v5    # "arindex":[I
    .local v27, "arindex":[I
    :cond_7
    neg-double v4, v8

    :goto_7
    invoke-direct {v0, v2, v4, v5}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    move-object v12, v0

    .line 569
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    iget v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    invoke-interface {v0, v2, v12, v13}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 571
    move-wide/from16 v10, v20

    goto/16 :goto_10

    .line 564
    .end local v20    # "bestValue":D
    .end local v24    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v25    # "hsig":Z
    .end local v26    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v27    # "arindex":[I
    .restart local v0    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v2    # "hsig":Z
    .restart local v4    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v5    # "arindex":[I
    .restart local v22    # "bestValue":D
    :cond_8
    move-object/from16 v24, v0

    move/from16 v25, v2

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    .end local v0    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v2    # "hsig":Z
    .end local v4    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v5    # "arindex":[I
    .restart local v24    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v25    # "hsig":Z
    .restart local v26    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v27    # "arindex":[I
    move-wide/from16 v20, v22

    .line 576
    .end local v22    # "bestValue":D
    .restart local v20    # "bestValue":D
    :cond_9
    iget-wide v4, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    const-wide/16 v22, 0x0

    cmpl-double v0, v4, v22

    if-eqz v0, :cond_b

    iget-boolean v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    iget-wide v4, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    neg-double v4, v4

    :goto_8
    cmpg-double v0, v8, v4

    if-gez v0, :cond_b

    .line 577
    goto/16 :goto_d

    .line 579
    :cond_b
    iget-object v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v0

    .line 580
    .local v0, "sqrtDiagC":[D
    iget-object v4, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    .line 581
    .local v4, "pcCol":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget v5, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    if-ge v2, v5, :cond_e

    .line 582
    move-object/from16 v28, v4

    .end local v4    # "pcCol":[D
    .local v28, "pcCol":[D
    iget-wide v4, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    aget-wide v29, v28, v2

    move-wide/from16 v31, v4

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    .end local v14    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v15    # "fitness":[D
    .local v29, "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v30, "fitness":[D
    aget-wide v14, v0, v2

    invoke-static {v4, v5, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    mul-double v4, v4, v31

    iget-wide v14, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolX:D

    cmpl-double v4, v4, v14

    if-lez v4, :cond_c

    .line 583
    goto :goto_a

    .line 585
    :cond_c
    iget v4, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_d

    .line 586
    goto/16 :goto_d

    .line 581
    :cond_d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v28

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    goto :goto_9

    .end local v28    # "pcCol":[D
    .end local v29    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v30    # "fitness":[D
    .restart local v4    # "pcCol":[D
    .restart local v14    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v15    # "fitness":[D
    :cond_e
    move-object/from16 v28, v4

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    .line 589
    .end local v2    # "i":I
    .end local v4    # "pcCol":[D
    .end local v14    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v15    # "fitness":[D
    .restart local v28    # "pcCol":[D
    .restart local v29    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v30    # "fitness":[D
    :goto_a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b
    iget v4, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    if-ge v2, v4, :cond_10

    .line 590
    iget-wide v4, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    aget-wide v14, v0, v2

    mul-double/2addr v4, v14

    iget-wide v14, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolUpX:D

    cmpl-double v4, v4, v14

    if-lez v4, :cond_f

    .line 591
    goto/16 :goto_d

    .line 589
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 594
    .end local v2    # "i":I
    :cond_10
    iget-object v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min([D)D

    move-result-wide v4

    .line 595
    .local v4, "historyBest":D
    iget-object v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max([D)D

    move-result-wide v14

    .line 596
    .local v14, "historyWorst":D
    iget v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    move-object/from16 v31, v0

    .end local v0    # "sqrtDiagC":[D
    .local v31, "sqrtDiagC":[D
    const/4 v0, 0x2

    if-le v2, v0, :cond_11

    invoke-static {v14, v15, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v32

    invoke-static {v4, v5, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v34

    sub-double v32, v32, v34

    move-wide/from16 v34, v10

    .end local v10    # "worstFitness":D
    .local v34, "worstFitness":D
    iget-wide v10, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolFun:D

    cmpg-double v2, v32, v10

    if-gez v2, :cond_12

    .line 599
    goto :goto_d

    .line 596
    .end local v34    # "worstFitness":D
    .restart local v10    # "worstFitness":D
    :cond_11
    move-wide/from16 v34, v10

    .line 601
    .end local v10    # "worstFitness":D
    .restart local v34    # "worstFitness":D
    :cond_12
    iget v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    iget-object v10, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    array-length v10, v10

    if-le v2, v10, :cond_13

    sub-double v10, v14, v4

    move-wide/from16 v32, v10

    iget-wide v10, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolHistFun:D

    cmpg-double v2, v32, v10

    if-gez v2, :cond_13

    .line 603
    goto :goto_d

    .line 606
    :cond_13
    iget-object v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v10

    iget-object v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v32

    div-double v10, v10, v32

    const-wide v32, 0x416312d000000000L    # 1.0E7

    cmpl-double v2, v10, v32

    if-lez v2, :cond_14

    .line 607
    goto :goto_d

    .line 610
    :cond_14
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 611
    new-instance v2, Lorg/apache/commons/math3/optimization/PointValuePair;

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v11

    iget-boolean v10, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    if-eqz v10, :cond_15

    move-wide v0, v8

    goto :goto_c

    :cond_15
    neg-double v0, v8

    :goto_c
    invoke-direct {v2, v11, v0, v1}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 614
    .local v2, "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    if-eqz v13, :cond_16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    move-object/from16 v1, p0

    iget v11, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    invoke-interface {v0, v11, v2, v13}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 616
    nop

    .line 638
    .end local v2    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    .end local v3    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v4    # "historyBest":D
    .end local v6    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v8    # "bestFitness":D
    .end local v14    # "historyWorst":D
    .end local v19    # "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v24    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v25    # "hsig":Z
    .end local v26    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v27    # "arindex":[I
    .end local v28    # "pcCol":[D
    .end local v29    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v30    # "fitness":[D
    .end local v31    # "sqrtDiagC":[D
    .end local v34    # "worstFitness":D
    :goto_d
    move-wide/from16 v10, v20

    goto/16 :goto_10

    .line 614
    .restart local v2    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    .restart local v3    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v4    # "historyBest":D
    .restart local v6    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v8    # "bestFitness":D
    .restart local v14    # "historyWorst":D
    .restart local v19    # "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v24    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v25    # "hsig":Z
    .restart local v26    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v27    # "arindex":[I
    .restart local v28    # "pcCol":[D
    .restart local v29    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v30    # "fitness":[D
    .restart local v31    # "sqrtDiagC":[D
    .restart local v34    # "worstFitness":D
    :cond_16
    move-object/from16 v1, p0

    .line 618
    :cond_17
    move-object v0, v2

    move-object v13, v0

    .line 621
    .end local v2    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    :cond_18
    iget v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    int-to-double v10, v0

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    div-double v10, v10, v32

    const-wide v32, 0x3fb999999999999aL    # 0.1

    add-double v10, v10, v32

    double-to-int v0, v10

    aget v0, v27, v0

    aget-wide v10, v30, v0

    cmpl-double v0, v20, v10

    if-nez v0, :cond_19

    .line 622
    move-object v0, v3

    .end local v3    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .local v0, "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-wide v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    const-wide v36, 0x3fc999999999999aL    # 0.2

    iget-wide v10, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    move-wide/from16 v38, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    div-double/2addr v10, v2

    add-double v10, v10, v36

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double v2, v2, v38

    iput-wide v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    goto :goto_e

    .line 621
    .end local v0    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v3    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_19
    move-object v0, v3

    const-wide v36, 0x3fc999999999999aL    # 0.2

    .line 624
    .end local v3    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v0    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    :goto_e
    iget v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    const/4 v10, 0x2

    if-le v2, v10, :cond_1a

    invoke-static {v14, v15, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-static {v4, v5, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v10

    sub-double/2addr v2, v10

    cmpl-double v2, v2, v22

    if-nez v2, :cond_1a

    .line 626
    iget-wide v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    iget-wide v10, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    div-double/2addr v10, v2

    add-double v10, v10, v36

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double v2, v2, v22

    iput-wide v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    .line 629
    :cond_1a
    iget-object v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v2, v8, v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->push([DD)V

    .line 630
    sub-double v10, v34, v8

    invoke-virtual {v7, v10, v11}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->setValueRange(D)V

    .line 631
    iget-boolean v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    if-eqz v2, :cond_1b

    .line 632
    iget-object v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    iget-wide v10, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    iget-object v3, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v2, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    iget-object v3, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    const-wide v10, 0x40f86a0000000000L    # 100000.0

    invoke-interface {v3, v10, v11}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    .end local v0    # "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v4    # "historyBest":D
    .end local v6    # "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v8    # "bestFitness":D
    .end local v14    # "historyWorst":D
    .end local v19    # "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v24    # "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v25    # "hsig":Z
    .end local v26    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v27    # "arindex":[I
    .end local v28    # "pcCol":[D
    .end local v29    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v30    # "fitness":[D
    .end local v31    # "sqrtDiagC":[D
    .end local v34    # "worstFitness":D
    :cond_1b
    iget v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    move/from16 v9, v16

    move-object/from16 v8, v18

    move-wide/from16 v10, v20

    const/4 v0, 0x0

    goto/16 :goto_1

    .end local v18    # "guess":[D
    .end local v20    # "bestValue":D
    .local v8, "guess":[D
    .local v10, "bestValue":D
    :cond_1c
    move-object/from16 v18, v8

    move-wide/from16 v22, v10

    .line 638
    .end local v8    # "guess":[D
    .end local v10    # "bestValue":D
    .restart local v18    # "guess":[D
    .restart local v22    # "bestValue":D
    :goto_f
    move-wide/from16 v10, v22

    .end local v22    # "bestValue":D
    .restart local v10    # "bestValue":D
    :goto_10
    return-object v12
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

    .line 390
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

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

    .line 383
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

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

    .line 376
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

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

    .line 369
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    return-object v0
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;

    .line 488
    invoke-direct {p0, p4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method
