.class public Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;
.super Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;
.source "SimpleUnivariateValueChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/AbstractConvergenceChecker<",
        "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITERATION_CHECK_DISABLED:I = -0x1


# instance fields
.field private final maxIterationCount:I


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "relativeThreshold"    # D
    .param p3, "absoluteThreshold"    # D

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;-><init>(DD)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->maxIterationCount:I

    .line 69
    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 2
    .param p1, "relativeThreshold"    # D
    .param p3, "absoluteThreshold"    # D
    .param p5, "maxIter"    # I

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;-><init>(DD)V

    .line 90
    if-lez p5, :cond_0

    .line 93
    iput p5, p0, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->maxIterationCount:I

    .line 94
    return-void

    .line 91
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 40
    check-cast p2, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    check-cast p3, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->converged(ILorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;)Z

    move-result p1

    return p1
.end method

.method public converged(ILorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;)Z
    .locals 11
    .param p1, "iteration"    # I
    .param p2, "previous"    # Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .param p3, "current"    # Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    .line 116
    iget v0, p0, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->maxIterationCount:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->maxIterationCount:I

    if-lt p1, v0, :cond_0

    .line 117
    return v2

    .line 120
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    .line 121
    .local v0, "p":D
    invoke-virtual {p3}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v3

    .line 122
    .local v3, "c":D
    sub-double v5, v0, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    .line 123
    .local v5, "difference":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    .line 124
    .local v7, "size":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->getRelativeThreshold()D

    move-result-wide v9

    mul-double/2addr v9, v7

    cmpg-double v9, v5, v9

    if-lez v9, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->getAbsoluteThreshold()D

    move-result-wide v9

    cmpg-double v9, v5, v9

    if-gtz v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method
