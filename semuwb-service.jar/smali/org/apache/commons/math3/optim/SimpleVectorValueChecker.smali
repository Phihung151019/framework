.class public Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;
.super Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;
.source "SimpleVectorValueChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/AbstractConvergenceChecker<",
        "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
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

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;-><init>(DD)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;->maxIterationCount:I

    .line 68
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
    iput p5, p0, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;->maxIterationCount:I

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

    .line 38
    check-cast p2, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    check-cast p3, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;->converged(ILorg/apache/commons/math3/optim/PointVectorValuePair;Lorg/apache/commons/math3/optim/PointVectorValuePair;)Z

    move-result p1

    return p1
.end method

.method public converged(ILorg/apache/commons/math3/optim/PointVectorValuePair;Lorg/apache/commons/math3/optim/PointVectorValuePair;)Z
    .locals 16
    .param p1, "iteration"    # I
    .param p2, "previous"    # Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .param p3, "current"    # Lorg/apache/commons/math3/optim/PointVectorValuePair;

    .line 116
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;->maxIterationCount:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;->maxIterationCount:I

    move/from16 v2, p1

    if-lt v2, v1, :cond_1

    .line 117
    return v3

    .line 116
    :cond_0
    move/from16 v2, p1

    .line 120
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getValueRef()[D

    move-result-object v1

    .line 121
    .local v1, "p":[D
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getValueRef()[D

    move-result-object v4

    .line 122
    .local v4, "c":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_3

    .line 123
    aget-wide v6, v1, v5

    .line 124
    .local v6, "pi":D
    aget-wide v8, v4, v5

    .line 125
    .local v8, "ci":D
    sub-double v10, v6, v8

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    .line 126
    .local v10, "difference":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    .line 127
    .local v12, "size":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;->getRelativeThreshold()D

    move-result-wide v14

    mul-double/2addr v14, v12

    cmpl-double v14, v10, v14

    if-lez v14, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;->getAbsoluteThreshold()D

    move-result-wide v14

    cmpl-double v14, v10, v14

    if-lez v14, :cond_2

    .line 129
    const/4 v3, 0x0

    return v3

    .line 122
    .end local v6    # "pi":D
    .end local v8    # "ci":D
    .end local v10    # "difference":D
    .end local v12    # "size":D
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    .end local v5    # "i":I
    :cond_3
    return v3
.end method
