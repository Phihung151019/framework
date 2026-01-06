.class public abstract Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;
.super Ljava/lang/Object;
.source "AbstractSimplex.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/OptimizationData;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final dimension:I

.field private simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

.field private startConfiguration:[[D


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .line 66
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;-><init>(ID)V

    .line 67
    return-void
.end method

.method protected constructor <init>(ID)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "sideLength"    # D

    .line 77
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->createHypercubeSteps(ID)[D

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;-><init>([D)V

    .line 78
    return-void
.end method

.method protected constructor <init>([D)V
    .locals 8
    .param p1, "steps"    # [D

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-eqz p1, :cond_4

    .line 102
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 105
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    .line 109
    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    iget v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

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

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->startConfiguration:[[D

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    if-ge v0, v2, :cond_2

    .line 111
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->startConfiguration:[[D

    aget-object v2, v2, v0

    .line 112
    .local v2, "vertexI":[D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    add-int/lit8 v4, v0, 0x1

    if-ge v3, v4, :cond_1

    .line 113
    aget-wide v4, p1, v3

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 116
    add-int/lit8 v4, v3, 0x1

    invoke-static {p1, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 114
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EQUAL_VERTICES_IN_SIMPLEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v4, v5, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 110
    .end local v2    # "vertexI":[D
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 103
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v0

    .line 100
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method protected constructor <init>([[D)V
    .locals 11
    .param p1, "referenceSimplex"    # [[D

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    array-length v0, p1

    if-lez v0, :cond_7

    .line 138
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    .line 142
    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->startConfiguration:[[D

    .line 143
    aget-object v0, p1, v1

    .line 146
    .local v0, "ref0":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 147
    aget-object v2, p1, v1

    .line 150
    .local v2, "refI":[D
    array-length v3, v2

    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    if-ne v3, v4, :cond_5

    .line 153
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 154
    aget-object v4, p1, v3

    .line 155
    .local v4, "refJ":[D
    const/4 v5, 0x1

    .line 156
    .local v5, "allEquals":Z
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    iget v7, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    if-ge v6, v7, :cond_1

    .line 157
    aget-wide v7, v2, v6

    aget-wide v9, v4, v6

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_0

    .line 158
    const/4 v5, 0x0

    .line 159
    goto :goto_3

    .line 156
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 162
    .end local v6    # "k":I
    :cond_1
    :goto_3
    if-nez v5, :cond_2

    .line 153
    .end local v4    # "refJ":[D
    .end local v5    # "allEquals":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    .restart local v4    # "refJ":[D
    .restart local v5    # "allEquals":Z
    :cond_2
    new-instance v6, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EQUAL_VERTICES_IN_SIMPLEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v6

    .line 169
    .end local v3    # "j":I
    .end local v4    # "refJ":[D
    .end local v5    # "allEquals":Z
    :cond_3
    if-lez v1, :cond_4

    .line 170
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->startConfiguration:[[D

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    .line 171
    .local v3, "confI":[D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    iget v5, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    if-ge v4, v5, :cond_4

    .line 172
    aget-wide v5, v2, v4

    aget-wide v7, v0, v4

    sub-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 146
    .end local v2    # "refI":[D
    .end local v3    # "confI":[D
    .end local v4    # "k":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .restart local v2    # "refI":[D
    :cond_5
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, v2

    iget v5, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 176
    .end local v1    # "i":I
    .end local v2    # "refI":[D
    :cond_6
    return-void

    .line 135
    .end local v0    # "ref0":[D
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLEX_NEED_ONE_POINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method private static createHypercubeSteps(ID)[D
    .locals 2
    .param p0, "n"    # I
    .param p1, "sideLength"    # D

    .line 341
    new-array v0, p0, [D

    .line 342
    .local v0, "steps":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 343
    aput-wide p1, v0, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public build([D)V
    .locals 10
    .param p1, "startPoint"    # [D

    .line 218
    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 223
    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/PointValuePair;

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/PointValuePair;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    if-ge v0, v1, :cond_1

    .line 228
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->startConfiguration:[[D

    aget-object v1, v1, v0

    .line 229
    .local v1, "confI":[D
    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    new-array v4, v4, [D

    .line 230
    .local v4, "vertexI":[D
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    if-ge v5, v6, :cond_0

    .line 231
    aget-wide v6, p1, v5

    aget-wide v8, v1, v5

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 230
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 233
    .end local v5    # "k":I
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    add-int/lit8 v6, v0, 0x1

    new-instance v7, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-direct {v7, v4, v2, v3}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    aput-object v7, v5, v6

    .line 227
    .end local v1    # "confI":[D
    .end local v4    # "vertexI":[D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 219
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .locals 8
    .param p1, "evaluationFunction"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aget-object v1, v1, v0

    .line 250
    .local v1, "vertex":Lorg/apache/commons/math3/optimization/PointValuePair;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/PointValuePair;->getPointRef()[D

    move-result-object v2

    .line 251
    .local v2, "point":[D
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    new-instance v4, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v2, v5, v6, v7}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DDZ)V

    aput-object v4, v3, v0

    .line 248
    .end local v1    # "vertex":Lorg/apache/commons/math3/optimization/PointValuePair;
    .end local v2    # "point":[D
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-static {v0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 258
    return-void
.end method

.method public getDimension()I
    .locals 1

    .line 184
    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    return v0
.end method

.method public getPoint(I)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 4
    .param p1, "index"    # I

    .line 297
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aget-object v0, v0, p1

    return-object v0

    .line 299
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getPoints()[Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 4

    .line 285
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/PointValuePair;

    .line 286
    .local v0, "copy":[Lorg/apache/commons/math3/optimization/PointValuePair;
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    array-length v0, v0

    return v0
.end method

.method public abstract iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation
.end method

.method protected replaceWorstPoint(Lorg/apache/commons/math3/optimization/PointValuePair;Ljava/util/Comparator;)V
    .locals 3
    .param p1, "pointValuePair"    # Lorg/apache/commons/math3/optimization/PointValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 269
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    if-ge v0, v1, :cond_1

    .line 270
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aget-object v1, v1, v0

    invoke-interface {p2, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 271
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aget-object v1, v1, v0

    .line 272
    .local v1, "tmp":Lorg/apache/commons/math3/optimization/PointValuePair;
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aput-object p1, v2, v0

    .line 273
    move-object p1, v1

    .line 269
    .end local v1    # "tmp":Lorg/apache/commons/math3/optimization/PointValuePair;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    iget v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->dimension:I

    aput-object p1, v0, v1

    .line 277
    return-void
.end method

.method protected setPoint(ILorg/apache/commons/math3/optimization/PointValuePair;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "point"    # Lorg/apache/commons/math3/optimization/PointValuePair;

    .line 312
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aput-object p2, v0, p1

    .line 317
    return-void

    .line 314
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method protected setPoints([Lorg/apache/commons/math3/optimization/PointValuePair;)V
    .locals 3
    .param p1, "points"    # [Lorg/apache/commons/math3/optimization/PointValuePair;

    .line 326
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 329
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    .line 330
    return-void

    .line 327
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optimization/PointValuePair;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method
