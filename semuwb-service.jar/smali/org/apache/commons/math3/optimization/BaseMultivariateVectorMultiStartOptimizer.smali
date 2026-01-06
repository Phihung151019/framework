.class public Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;
.super Ljava/lang/Object;
.source "BaseMultivariateVectorMultiStartOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<",
        "TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

.field private maxEvaluations:I

.field private optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

.field private final optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<",
            "TFUNC;>;"
        }
    .end annotation
.end field

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 2
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomVectorGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<",
            "TFUNC;>;I",
            "Lorg/apache/commons/math3/random/RandomVectorGenerator;",
            ")V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    .local p1, "optimizer":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<TFUNC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 78
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 82
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    .line 83
    iput p2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->starts:I

    .line 84
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    .line 85
    return-void

    .line 79
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 76
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method private sortPairs([D[D)V
    .locals 2
    .param p1, "target"    # [D
    .param p2, "weights"    # [D

    .line 183
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;-><init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;[D[D)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 204
    return-void
.end method


# virtual methods
.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    invoke-interface {v0}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 128
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    return v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 123
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->maxEvaluations:I

    return v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 3

    .line 115
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 11
    .param p1, "maxEval"    # I
    .param p3, "target"    # [D
    .param p4, "weights"    # [D
    .param p5, "startPoint"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;, "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;, "TFUNC;"
    iput p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->maxEvaluations:I

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "lastException":Ljava/lang/RuntimeException;
    iget v1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->starts:I

    new-array v1, v1, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    .line 145
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    .line 148
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v0

    .end local v0    # "lastException":Ljava/lang/RuntimeException;
    .local v2, "lastException":Ljava/lang/RuntimeException;
    .local v3, "i":I
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->starts:I

    if-ge v3, v0, :cond_1

    .line 152
    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    iget v6, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    sub-int v6, p1, v6

    if-nez v3, :cond_0

    move-object/from16 v10, p5

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    invoke-interface {v7}, Lorg/apache/commons/math3/random/RandomVectorGenerator;->nextVector()[D

    move-result-object v7

    move-object v10, v7

    :goto_1
    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-interface/range {v5 .. v10}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v5

    aput-object v5, v0, v3
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/ConvergenceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "mue":Ljava/lang/RuntimeException;
    move-object v2, v0

    .line 158
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    aput-object v4, v5, v3

    goto :goto_3

    .line 154
    .end local v0    # "mue":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 155
    .local v0, "oe":Lorg/apache/commons/math3/exception/ConvergenceException;
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    aput-object v4, v5, v3

    .line 159
    .end local v0    # "oe":Lorg/apache/commons/math3/exception/ConvergenceException;
    :goto_2
    nop

    .line 162
    :goto_3
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    invoke-interface {v4}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->getEvaluations()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->sortPairs([D[D)V

    .line 167
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    aget-object v0, v0, v1

    return-object v0

    .line 168
    :cond_2
    throw v2
.end method
