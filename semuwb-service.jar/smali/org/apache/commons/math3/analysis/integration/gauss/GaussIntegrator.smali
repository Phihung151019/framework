.class public Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
.super Ljava/lang/Object;
.source "GaussIntegrator.java"


# instance fields
.field private final points:[D

.field private final weights:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair<",
            "[D[D>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 75
    .local p1, "pointsAndWeights":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[D[D>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>([D[D)V

    .line 76
    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 3
    .param p1, "points"    # [D
    .param p2, "weights"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 57
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    .line 59
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    .line 60
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->weights:[D

    .line 61
    return-void

    .line 53
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public getNumberOfPoints()I
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    array-length v0, v0

    return v0
.end method

.method public getPoint(I)D
    .locals 2
    .param p1, "index"    # I

    .line 117
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getWeight(I)D
    .locals 2
    .param p1, "index"    # I

    .line 127
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->weights:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public integrate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)D
    .locals 17
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 89
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 90
    .local v1, "s":D
    const-wide/16 v3, 0x0

    .line 91
    .local v3, "c":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 92
    iget-object v6, v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    aget-wide v6, v6, v5

    .line 93
    .local v6, "x":D
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->weights:[D

    aget-wide v8, v8, v5

    .line 94
    .local v8, "w":D
    move-object/from16 v10, p1

    invoke-interface {v10, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    sub-double/2addr v11, v3

    .line 95
    .local v11, "y":D
    add-double v13, v1, v11

    .line 96
    .local v13, "t":D
    sub-double v15, v13, v1

    sub-double v3, v15, v11

    .line 97
    move-wide v1, v13

    .line 91
    .end local v6    # "x":D
    .end local v8    # "w":D
    .end local v11    # "y":D
    .end local v13    # "t":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    .line 99
    .end local v5    # "i":I
    return-wide v1
.end method
