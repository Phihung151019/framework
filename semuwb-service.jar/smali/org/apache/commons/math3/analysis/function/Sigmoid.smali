.class public Lorg/apache/commons/math3/analysis/function/Sigmoid;
.super Ljava/lang/Object;
.source "Sigmoid.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;
    }
.end annotation


# instance fields
.field private final hi:D

.field private final lo:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 52
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Sigmoid;-><init>(DD)V

    .line 53
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "lo"    # D
    .param p3, "hi"    # D

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    .line 64
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->hi:D

    .line 65
    return-void
.end method

.method static synthetic access$000(DDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D

    .line 41
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/analysis/function/Sigmoid;->value(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static value(DDD)D
    .locals 6
    .param p0, "x"    # D
    .param p2, "lo"    # D
    .param p4, "hi"    # D

    .line 161
    sub-double v0, p4, p2

    neg-double v2, p0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    add-double/2addr v0, p2

    return-wide v0
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 6
    .param p1, "x"    # D

    .line 77
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->hi:D

    move-wide v0, p1

    .end local p1    # "x":D
    .local v0, "x":D
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Sigmoid;->value(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 27
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 170
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [D

    .line 171
    .local v1, "f":[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v3

    neg-double v3, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v3

    .line 172
    .local v3, "exp":D
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    .line 175
    iget-wide v9, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    aput-wide v9, v1, v8

    .line 176
    array-length v5, v1

    invoke-static {v1, v2, v5, v6, v7}, Ljava/util/Arrays;->fill([DIID)V

    move-wide/from16 v23, v3

    goto/16 :goto_3

    .line 186
    :cond_0
    array-length v5, v1

    new-array v5, v5, [D

    .line 188
    .local v5, "p":[D
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double v11, v3, v9

    div-double v11, v9, v11

    .line 189
    .local v11, "inv":D
    iget-wide v13, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->hi:D

    move-wide v15, v6

    iget-wide v6, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    sub-double/2addr v13, v6

    .line 190
    .local v13, "coeff":D
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 193
    const-wide/16 v17, 0x0

    .line 194
    .local v17, "v":D
    aput-wide v9, v5, v6

    .line 195
    move v7, v6

    .local v7, "k":I
    :goto_1
    if-ltz v7, :cond_2

    .line 196
    mul-double v19, v17, v3

    aget-wide v21, v5, v7

    add-double v17, v19, v21

    .line 197
    if-le v7, v2, :cond_1

    .line 198
    add-int/lit8 v19, v7, -0x1

    sub-int v20, v6, v7

    add-int/lit8 v2, v20, 0x2

    move/from16 v20, v8

    int-to-double v8, v2

    add-int/lit8 v2, v7, -0x2

    aget-wide v23, v5, v2

    mul-double v8, v8, v23

    add-int/lit8 v2, v7, -0x1

    move-wide/from16 v23, v3

    .end local v3    # "exp":D
    .local v23, "exp":D
    int-to-double v2, v2

    add-int/lit8 v4, v7, -0x1

    aget-wide v25, v5, v4

    mul-double v2, v2, v25

    sub-double/2addr v8, v2

    aput-wide v8, v5, v19

    goto :goto_2

    .line 200
    .end local v23    # "exp":D
    .restart local v3    # "exp":D
    :cond_1
    move-wide/from16 v23, v3

    move/from16 v20, v8

    .end local v3    # "exp":D
    .restart local v23    # "exp":D
    aput-wide v15, v5, v20

    .line 195
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move/from16 v8, v20

    move-wide/from16 v3, v23

    const/4 v2, 0x1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .end local v23    # "exp":D
    .restart local v3    # "exp":D
    :cond_2
    move-wide/from16 v23, v3

    move/from16 v20, v8

    .line 204
    .end local v3    # "exp":D
    .end local v7    # "k":I
    .restart local v23    # "exp":D
    mul-double/2addr v13, v11

    .line 205
    mul-double v2, v13, v17

    aput-wide v2, v1, v6

    .line 190
    .end local v17    # "v":D
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v3, v23

    const/4 v2, 0x1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .end local v23    # "exp":D
    .restart local v3    # "exp":D
    :cond_3
    move-wide/from16 v23, v3

    move/from16 v20, v8

    .line 210
    .end local v3    # "exp":D
    .end local v6    # "n":I
    .restart local v23    # "exp":D
    aget-wide v2, v1, v20

    iget-wide v6, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    add-double/2addr v2, v6

    aput-wide v2, v1, v20

    .line 214
    .end local v5    # "p":[D
    .end local v11    # "inv":D
    .end local v13    # "coeff":D
    :goto_3
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    return-object v3
.end method
