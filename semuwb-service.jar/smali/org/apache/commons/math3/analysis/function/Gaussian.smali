.class public Lorg/apache/commons/math3/analysis/function/Gaussian;
.super Ljava/lang/Object;
.source "Gaussian.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;
    }
.end annotation


# instance fields
.field private final i2s2:D

.field private final is:D

.field private final mean:D

.field private final norm:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 89
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Gaussian;-><init>(DD)V

    .line 90
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 11
    .param p1, "mean"    # D
    .param p3, "sigma"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 82
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v5, v2, v0

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    .end local p1    # "mean":D
    .end local p3    # "sigma":D
    .local v7, "mean":D
    .local v9, "sigma":D
    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/analysis/function/Gaussian;-><init>(DDD)V

    .line 83
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 4
    .param p1, "norm"    # D
    .param p3, "mean"    # D
    .param p5, "sigma"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, 0x0

    cmpg-double v0, p5, v0

    if-lez v0, :cond_0

    .line 66
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->norm:D

    .line 67
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->mean:D

    .line 68
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p5

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    .line 69
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    mul-double/2addr v2, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->i2s2:D

    .line 70
    return-void

    .line 63
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method static synthetic access$000(DDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D

    .line 40
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/analysis/function/Gaussian;->value(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static value(DDD)D
    .locals 2
    .param p0, "xMinusMean"    # D
    .param p2, "norm"    # D
    .param p4, "i2s2"    # D

    .line 205
    neg-double v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    return-wide v0
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 8
    .param p1, "x"    # D

    .line 94
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->mean:D

    sub-double v2, p1, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->norm:D

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->i2s2:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/function/Gaussian;->value(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 21
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 214
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v3

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->mean:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    .line 215
    .local v1, "u":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [D

    .line 224
    .local v3, "f":[D
    array-length v5, v3

    new-array v5, v5, [D

    .line 225
    .local v5, "p":[D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    aput-wide v6, v5, v8

    .line 226
    mul-double v6, v1, v1

    .line 227
    .local v6, "u2":D
    iget-wide v9, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->norm:D

    const-wide/high16 v11, -0x4020000000000000L    # -0.5

    mul-double/2addr v11, v6

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    .line 228
    .local v9, "coeff":D
    sget-wide v11, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v11, v9, v11

    if-gtz v11, :cond_0

    .line 229
    const-wide/16 v11, 0x0

    invoke-static {v3, v11, v12}, Ljava/util/Arrays;->fill([DD)V

    move-object/from16 v17, v5

    goto/16 :goto_3

    .line 231
    :cond_0
    aput-wide v9, v3, v8

    .line 232
    const/4 v11, 0x1

    .local v11, "n":I
    :goto_0
    array-length v12, v3

    if-ge v11, v12, :cond_5

    .line 235
    const-wide/16 v12, 0x0

    .line 236
    .local v12, "v":D
    add-int/lit8 v14, v11, -0x1

    aget-wide v14, v5, v14

    neg-double v14, v14

    aput-wide v14, v5, v11

    .line 237
    move v14, v11

    .local v14, "k":I
    :goto_1
    if-ltz v14, :cond_3

    .line 238
    mul-double v15, v12, v6

    aget-wide v17, v5, v14

    add-double v12, v15, v17

    .line 239
    const/4 v15, 0x2

    if-le v14, v15, :cond_1

    .line 240
    add-int/lit8 v15, v14, -0x2

    move/from16 v16, v8

    add-int/lit8 v8, v14, -0x1

    move/from16 v18, v4

    move-object/from16 v17, v5

    .end local v5    # "p":[D
    .local v17, "p":[D
    int-to-double v4, v8

    add-int/lit8 v8, v14, -0x1

    aget-wide v19, v17, v8

    mul-double v4, v4, v19

    add-int/lit8 v8, v14, -0x3

    aget-wide v19, v17, v8

    sub-double v4, v4, v19

    aput-wide v4, v17, v15

    goto :goto_2

    .line 241
    .end local v17    # "p":[D
    .restart local v5    # "p":[D
    :cond_1
    move/from16 v18, v4

    move-object/from16 v17, v5

    move/from16 v16, v8

    .end local v5    # "p":[D
    .restart local v17    # "p":[D
    if-ne v14, v15, :cond_2

    .line 242
    aget-wide v4, v17, v18

    aput-wide v4, v17, v16

    .line 237
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, -0x2

    move/from16 v8, v16

    move-object/from16 v5, v17

    move/from16 v4, v18

    goto :goto_1

    .end local v17    # "p":[D
    .restart local v5    # "p":[D
    :cond_3
    move/from16 v18, v4

    move-object/from16 v17, v5

    move/from16 v16, v8

    .line 245
    .end local v5    # "p":[D
    .end local v14    # "k":I
    .restart local v17    # "p":[D
    and-int/lit8 v4, v11, 0x1

    move/from16 v5, v18

    if-ne v4, v5, :cond_4

    .line 246
    mul-double/2addr v12, v1

    .line 249
    :cond_4
    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    mul-double/2addr v9, v14

    .line 250
    mul-double v14, v9, v12

    aput-wide v14, v3, v11

    .line 232
    .end local v12    # "v":D
    add-int/lit8 v11, v11, 0x1

    move v4, v5

    move/from16 v8, v16

    move-object/from16 v5, v17

    goto :goto_0

    .end local v17    # "p":[D
    .restart local v5    # "p":[D
    :cond_5
    move-object/from16 v17, v5

    .line 255
    .end local v5    # "p":[D
    .end local v11    # "n":I
    .restart local v17    # "p":[D
    :goto_3
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    return-object v5
.end method
