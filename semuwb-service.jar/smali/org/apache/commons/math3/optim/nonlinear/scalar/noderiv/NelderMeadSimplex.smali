.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;
.source "NelderMeadSimplex.java"


# static fields
.field private static final DEFAULT_GAMMA:D = 0.5

.field private static final DEFAULT_KHI:D = 2.0

.field private static final DEFAULT_RHO:D = 1.0

.field private static final DEFAULT_SIGMA:D = 0.5


# instance fields
.field private final gamma:D

.field private final khi:D

.field private final rho:D

.field private final sigma:D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>(ID)V

    .line 56
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 12
    .param p1, "n"    # I
    .param p2, "sideLength"    # D

    .line 68
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .end local p1    # "n":I
    .end local p2    # "sideLength":D
    .local v1, "n":I
    .local v2, "sideLength":D
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>(IDDDDD)V

    .line 70
    return-void
.end method

.method public constructor <init>(IDDDD)V
    .locals 12
    .param p1, "n"    # I
    .param p2, "rho"    # D
    .param p4, "khi"    # D
    .param p6, "gamma"    # D
    .param p8, "sigma"    # D

    .line 108
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>(IDDDDD)V

    .line 109
    return-void
.end method

.method public constructor <init>(IDDDDD)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "sideLength"    # D
    .param p4, "rho"    # D
    .param p6, "khi"    # D
    .param p8, "gamma"    # D
    .param p10, "sigma"    # D

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>(ID)V

    .line 89
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    .line 90
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    .line 91
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    .line 92
    iput-wide p10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    .line 93
    return-void
.end method

.method public constructor <init>([D)V
    .locals 10
    .param p1, "steps"    # [D

    .line 120
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "steps":[D
    .local v1, "steps":[D
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>([DDDDD)V

    .line 121
    return-void
.end method

.method public constructor <init>([DDDDD)V
    .locals 0
    .param p1, "steps"    # [D
    .param p2, "rho"    # D
    .param p4, "khi"    # D
    .param p6, "gamma"    # D
    .param p8, "sigma"    # D

    .line 138
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([D)V

    .line 140
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    .line 141
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    .line 142
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    .line 143
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    .line 144
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 10
    .param p1, "referenceSimplex"    # [[D

    .line 155
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "referenceSimplex":[[D
    .local v1, "referenceSimplex":[[D
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>([[DDDDD)V

    .line 156
    return-void
.end method

.method public constructor <init>([[DDDDD)V
    .locals 0
    .param p1, "referenceSimplex"    # [[D
    .param p2, "rho"    # D
    .param p4, "khi"    # D
    .param p6, "gamma"    # D
    .param p8, "sigma"    # D

    .line 175
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([[D)V

    .line 177
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    .line 178
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    .line 179
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    .line 180
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    .line 181
    return-void
.end method


# virtual methods
.method public iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .locals 26
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

    .line 188
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getDimension()I

    move-result v3

    .line 191
    .local v3, "n":I
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v5

    .line 192
    .local v5, "best":Lorg/apache/commons/math3/optim/PointValuePair;
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v6

    .line 193
    .local v6, "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v7

    .line 194
    .local v7, "worst":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-virtual {v7}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v8

    .line 198
    .local v8, "xWorst":[D
    new-array v9, v3, [D

    .line 199
    .local v9, "centroid":[D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_1

    .line 200
    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v11

    .line 201
    .local v11, "x":[D
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v3, :cond_0

    .line 202
    aget-wide v13, v9, v12

    aget-wide v15, v11, v12

    add-double/2addr v13, v15

    aput-wide v13, v9, v12

    .line 201
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 199
    .end local v11    # "x":[D
    .end local v12    # "j":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 205
    .end local v10    # "i":I
    :cond_1
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v12, v3

    div-double/2addr v10, v12

    .line 206
    .local v10, "scaling":D
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_2
    if-ge v12, v3, :cond_2

    .line 207
    aget-wide v13, v9, v12

    mul-double/2addr v13, v10

    aput-wide v13, v9, v12

    .line 206
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 211
    .end local v12    # "j":I
    :cond_2
    new-array v12, v3, [D

    .line 212
    .local v12, "xR":[D
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v3, :cond_3

    .line 213
    aget-wide v14, v9, v13

    move-object/from16 v17, v5

    .end local v5    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    .local v17, "best":Lorg/apache/commons/math3/optim/PointValuePair;
    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    aget-wide v18, v9, v13

    aget-wide v20, v8, v13

    sub-double v18, v18, v20

    mul-double v4, v4, v18

    add-double/2addr v14, v4

    aput-wide v14, v12, v13

    .line 212
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v17

    const/4 v4, 0x0

    goto :goto_3

    .end local v17    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v5    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_3
    move-object/from16 v17, v5

    .line 215
    .end local v5    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v13    # "j":I
    .restart local v17    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    new-instance v4, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v13

    const/4 v5, 0x0

    invoke-direct {v4, v12, v13, v14, v5}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 218
    .local v4, "reflected":Lorg/apache/commons/math3/optim/PointValuePair;
    move-object/from16 v5, v17

    .end local v17    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v5    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-interface {v2, v5, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    if-gtz v13, :cond_4

    invoke-interface {v2, v4, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_4

    .line 221
    invoke-virtual {v0, v4, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    move-object/from16 v19, v5

    move-object v15, v6

    move-object/from16 v17, v8

    move-object v14, v9

    move v9, v3

    goto/16 :goto_b

    .line 222
    :cond_4
    invoke-interface {v2, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_7

    .line 224
    new-array v13, v3, [D

    .line 225
    .local v13, "xE":[D
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    if-ge v14, v3, :cond_5

    .line 226
    aget-wide v17, v9, v14

    move-object/from16 v19, v5

    move-object v15, v6

    .end local v5    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v6    # "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    .local v15, "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    .local v19, "best":Lorg/apache/commons/math3/optim/PointValuePair;
    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    aget-wide v20, v12, v14

    aget-wide v22, v9, v14

    sub-double v20, v20, v22

    mul-double v5, v5, v20

    add-double v17, v17, v5

    aput-wide v17, v13, v14

    .line 225
    add-int/lit8 v14, v14, 0x1

    move-object v6, v15

    move-object/from16 v5, v19

    goto :goto_4

    .end local v15    # "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v19    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v5    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v6    # "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_5
    move-object/from16 v19, v5

    move-object v15, v6

    .line 228
    .end local v5    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v6    # "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v14    # "j":I
    .restart local v15    # "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v19    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    new-instance v5, Lorg/apache/commons/math3/optim/PointValuePair;

    move-object v6, v8

    move-object v14, v9

    .end local v8    # "xWorst":[D
    .end local v9    # "centroid":[D
    .local v6, "xWorst":[D
    .local v14, "centroid":[D
    invoke-interface {v1, v13}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v8

    move-object/from16 v17, v6

    const/4 v6, 0x0

    .end local v6    # "xWorst":[D
    .local v17, "xWorst":[D
    invoke-direct {v5, v13, v8, v9, v6}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 231
    .local v5, "expanded":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-interface {v2, v5, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_6

    .line 233
    invoke-virtual {v0, v5, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    goto :goto_5

    .line 236
    :cond_6
    invoke-virtual {v0, v4, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    .line 238
    .end local v5    # "expanded":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v13    # "xE":[D
    :goto_5
    move v9, v3

    goto/16 :goto_b

    .line 239
    .end local v14    # "centroid":[D
    .end local v15    # "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v17    # "xWorst":[D
    .end local v19    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    .local v5, "best":Lorg/apache/commons/math3/optim/PointValuePair;
    .local v6, "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v8    # "xWorst":[D
    .restart local v9    # "centroid":[D
    :cond_7
    move-object/from16 v19, v5

    move-object v15, v6

    move-object/from16 v17, v8

    move-object v14, v9

    .end local v5    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v6    # "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v8    # "xWorst":[D
    .end local v9    # "centroid":[D
    .restart local v14    # "centroid":[D
    .restart local v15    # "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v17    # "xWorst":[D
    .restart local v19    # "best":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-interface {v2, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_a

    .line 241
    new-array v5, v3, [D

    .line 242
    .local v5, "xC":[D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_6
    if-ge v6, v3, :cond_8

    .line 243
    aget-wide v8, v14, v6

    move-wide/from16 v20, v8

    iget-wide v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    aget-wide v22, v12, v6

    aget-wide v24, v14, v6

    sub-double v22, v22, v24

    mul-double v8, v8, v22

    add-double v8, v20, v8

    aput-wide v8, v5, v6

    .line 242
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 245
    .end local v6    # "j":I
    :cond_8
    new-instance v6, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v8

    const/4 v13, 0x0

    invoke-direct {v6, v5, v8, v9, v13}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 247
    .local v6, "outContracted":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-interface {v2, v6, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-gtz v8, :cond_9

    .line 249
    invoke-virtual {v0, v6, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    .line 250
    return-void

    .line 252
    .end local v5    # "xC":[D
    .end local v6    # "outContracted":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_9
    goto :goto_8

    .line 254
    :cond_a
    new-array v5, v3, [D

    .line 255
    .restart local v5    # "xC":[D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_7
    if-ge v6, v3, :cond_b

    .line 256
    aget-wide v8, v14, v6

    move-wide/from16 v20, v8

    iget-wide v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    aget-wide v22, v14, v6

    aget-wide v24, v17, v6

    sub-double v22, v22, v24

    mul-double v8, v8, v22

    sub-double v8, v20, v8

    aput-wide v8, v5, v6

    .line 255
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 258
    .end local v6    # "j":I
    :cond_b
    new-instance v6, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v8

    const/4 v13, 0x0

    invoke-direct {v6, v5, v8, v9, v13}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 261
    .local v6, "inContracted":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-interface {v2, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_c

    .line 263
    invoke-virtual {v0, v6, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    .line 264
    return-void

    .line 269
    .end local v5    # "xC":[D
    .end local v6    # "inContracted":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_c
    :goto_8
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v5

    .line 270
    .local v5, "xSmallest":[D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_9
    if-gt v6, v3, :cond_e

    .line 271
    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/optim/PointValuePair;->getPoint()[D

    move-result-object v8

    .line 272
    .local v8, "x":[D
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_a
    if-ge v9, v3, :cond_d

    .line 273
    aget-wide v20, v5, v9

    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    aget-wide v22, v8, v9

    aget-wide v24, v5, v9

    sub-double v22, v22, v24

    mul-double v1, v1, v22

    add-double v20, v20, v1

    aput-wide v20, v8, v9

    .line 272
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_a

    .line 275
    .end local v9    # "j":I
    :cond_d
    new-instance v1, Lorg/apache/commons/math3/optim/PointValuePair;

    move v9, v3

    .end local v3    # "n":I
    .local v9, "n":I
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/4 v13, 0x0

    invoke-direct {v1, v8, v2, v3, v13}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->setPoint(ILorg/apache/commons/math3/optim/PointValuePair;)V

    .line 270
    .end local v8    # "x":[D
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v9

    goto :goto_9

    .end local v9    # "n":I
    .restart local v3    # "n":I
    :cond_e
    move v9, v3

    .line 277
    .end local v3    # "n":I
    .end local v6    # "i":I
    .restart local v9    # "n":I
    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 279
    .end local v5    # "xSmallest":[D
    :goto_b
    return-void
.end method
