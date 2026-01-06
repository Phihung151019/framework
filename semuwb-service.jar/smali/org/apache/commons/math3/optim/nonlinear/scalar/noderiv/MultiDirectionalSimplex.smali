.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;
.source "MultiDirectionalSimplex.java"


# static fields
.field private static final DEFAULT_GAMMA:D = 0.5

.field private static final DEFAULT_KHI:D = 2.0


# instance fields
.field private final gamma:D

.field private final khi:D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .line 46
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>(ID)V

    .line 47
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "sideLength"    # D

    .line 58
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .end local p1    # "n":I
    .end local p2    # "sideLength":D
    .local v1, "n":I
    .local v2, "sideLength":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>(IDDD)V

    .line 59
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "khi"    # D
    .param p4, "gamma"    # D

    .line 71
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "n":I
    .end local p2    # "khi":D
    .end local p4    # "gamma":D
    .local v1, "n":I
    .local v4, "khi":D
    .local v6, "gamma":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>(IDDD)V

    .line 72
    return-void
.end method

.method public constructor <init>(IDDD)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "sideLength"    # D
    .param p4, "khi"    # D
    .param p6, "gamma"    # D

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>(ID)V

    .line 88
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    .line 89
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    .line 90
    return-void
.end method

.method public constructor <init>([D)V
    .locals 6
    .param p1, "steps"    # [D

    .line 100
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "steps":[D
    .local v1, "steps":[D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>([DDD)V

    .line 101
    return-void
.end method

.method public constructor <init>([DDD)V
    .locals 0
    .param p1, "steps"    # [D
    .param p2, "khi"    # D
    .param p4, "gamma"    # D

    .line 114
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([D)V

    .line 116
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    .line 117
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    .line 118
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 6
    .param p1, "referenceSimplex"    # [[D

    .line 128
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "referenceSimplex":[[D
    .local v1, "referenceSimplex":[[D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>([[DDD)V

    .line 129
    return-void
.end method

.method public constructor <init>([[DDD)V
    .locals 0
    .param p1, "referenceSimplex"    # [[D
    .param p2, "khi"    # D
    .param p4, "gamma"    # D

    .line 145
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([[D)V

    .line 147
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    .line 148
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    .line 149
    return-void
.end method

.method private evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 13
    .param p1, "evaluationFunction"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .param p2, "original"    # [Lorg/apache/commons/math3/optim/PointValuePair;
    .param p3, "coeff"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "[",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            "D",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)",
            "Lorg/apache/commons/math3/optim/PointValuePair;"
        }
    .end annotation

    .line 196
    .local p5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v1

    .line 199
    .local v1, "xSmallest":[D
    aget-object v2, p2, v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->setPoint(ILorg/apache/commons/math3/optim/PointValuePair;)V

    .line 200
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getDimension()I

    move-result v2

    .line 201
    .local v2, "dim":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 202
    aget-object v4, p2, v3

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v4

    .line 203
    .local v4, "xOriginal":[D
    new-array v5, v2, [D

    .line 204
    .local v5, "xTransformed":[D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v2, :cond_0

    .line 205
    aget-wide v7, v1, v6

    aget-wide v9, v1, v6

    aget-wide v11, v4, v6

    sub-double/2addr v9, v11

    mul-double v9, v9, p3

    add-double/2addr v7, v9

    aput-wide v7, v5, v6

    .line 204
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 207
    .end local v6    # "j":I
    :cond_0
    new-instance v6, Lorg/apache/commons/math3/optim/PointValuePair;

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v6, v5, v7, v8, v0}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    invoke-virtual {p0, v3, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->setPoint(ILorg/apache/commons/math3/optim/PointValuePair;)V

    .line 201
    .end local v4    # "xOriginal":[D
    .end local v5    # "xTransformed":[D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "i":I
    :cond_1
    move-object/from16 v3, p5

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 213
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .locals 7
    .param p1, "evaluationFunction"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v2

    .line 157
    .local v2, "original":[Lorg/apache/commons/math3/optim/PointValuePair;
    const/4 v0, 0x0

    aget-object v6, v2, v0

    .line 160
    .local v6, "best":Lorg/apache/commons/math3/optim/PointValuePair;
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .end local p1    # "evaluationFunction":Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .end local p2    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    .local v1, "evaluationFunction":Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .local v5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    .line 162
    .local p1, "reflected":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-interface {v5, p1, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_1

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p2

    .line 165
    .local p2, "reflectedSimplex":[Lorg/apache/commons/math3/optim/PointValuePair;
    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v3

    .line 167
    .local v3, "expanded":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-interface {v5, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 169
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->setPoints([Lorg/apache/commons/math3/optim/PointValuePair;)V

    .line 172
    :cond_0
    return-void

    .line 176
    .end local v3    # "expanded":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local p2    # "reflectedSimplex":[Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_1
    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;

    .line 178
    return-void
.end method
