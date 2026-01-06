.class public Lorg/apache/commons/math3/analysis/function/Sinc;
.super Ljava/lang/Object;
.source "Sinc.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# static fields
.field private static final SHORTCUT:D = 0.006


# instance fields
.field private final normalized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/function/Sinc;-><init>(Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "normalized"    # Z

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean p1, p0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    .line 82
    return-void
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

    .line 86
    iget-boolean v0, p0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p1

    goto :goto_0

    :cond_0
    move-wide v0, p1

    .line 87
    .local v0, "scaledX":D
    :goto_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f789374bc6a7efaL    # 0.006

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 89
    mul-double v2, v0, v0

    .line 90
    .local v2, "scaledX2":D
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    sub-double v4, v2, v4

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    add-double/2addr v4, v6

    div-double/2addr v4, v6

    return-wide v4

    .line 93
    .end local v2    # "scaledX2":D
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 31
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 111
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    .line 112
    .local v6, "scaledX":D
    mul-double v8, v6, v6

    .line 114
    .local v8, "scaledX2":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    const/4 v10, 0x1

    add-int/2addr v1, v10

    new-array v1, v1, [D

    .line 116
    .local v1, "f":[D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3f789374bc6a7efaL    # 0.006

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_5

    .line 118
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v12, v1

    if-ge v11, v12, :cond_4

    .line 119
    div-int/lit8 v12, v11, 0x2

    .line 120
    .local v12, "k":I
    and-int/lit8 v13, v11, 0x1

    if-nez v13, :cond_2

    .line 122
    and-int/lit8 v13, v12, 0x1

    if-nez v13, :cond_1

    move v13, v10

    goto :goto_2

    :cond_1
    const/4 v13, -0x1

    :goto_2
    int-to-double v13, v13

    add-int/lit8 v15, v11, 0x1

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    int-to-double v2, v15

    div-double v2, v4, v2

    mul-int/lit8 v15, v11, 0x2

    add-int/lit8 v15, v15, 0x6

    move-wide/from16 v18, v4

    int-to-double v4, v15

    div-double v4, v18, v4

    mul-int/lit8 v15, v11, 0x18

    add-int/lit8 v15, v15, 0x78

    move/from16 v20, v11

    .end local v11    # "i":I
    .local v20, "i":I
    int-to-double v10, v15

    div-double v10, v8, v10

    sub-double/2addr v4, v10

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    mul-double/2addr v13, v2

    aput-wide v13, v1, v20

    goto :goto_4

    .line 126
    .end local v20    # "i":I
    .restart local v11    # "i":I
    :cond_2
    move-wide/from16 v18, v4

    move/from16 v20, v11

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    .end local v11    # "i":I
    .restart local v20    # "i":I
    and-int/lit8 v2, v12, 0x1

    if-nez v2, :cond_3

    neg-double v2, v6

    goto :goto_3

    :cond_3
    move-wide v2, v6

    :goto_3
    add-int/lit8 v11, v20, 0x2

    int-to-double v4, v11

    div-double v4, v18, v4

    mul-int/lit8 v11, v20, 0x6

    add-int/lit8 v11, v11, 0x18

    int-to-double v10, v11

    div-double v10, v18, v10

    mul-int/lit8 v13, v20, 0x78

    add-int/lit16 v13, v13, 0x2d0

    int-to-double v13, v13

    div-double v13, v8, v13

    sub-double/2addr v10, v13

    mul-double/2addr v10, v8

    sub-double/2addr v4, v10

    mul-double/2addr v2, v4

    aput-wide v2, v1, v20

    .line 118
    .end local v12    # "k":I
    :goto_4
    add-int/lit8 v11, v20, 0x1

    move-wide/from16 v4, v18

    const/4 v10, 0x1

    .end local v20    # "i":I
    .restart local v11    # "i":I
    goto :goto_1

    :cond_4
    move/from16 v20, v11

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    .end local v11    # "i":I
    goto/16 :goto_8

    .line 133
    :cond_5
    move-wide/from16 v18, v4

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v4, v18, v6

    .line 134
    .local v4, "inv":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    .line 135
    .local v2, "cos":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v10

    .line 137
    .local v10, "sin":D
    mul-double v12, v4, v10

    const/4 v14, 0x0

    aput-wide v12, v1, v14

    .line 149
    array-length v12, v1

    new-array v12, v12, [D

    .line 150
    .local v12, "sc":[D
    aput-wide v18, v12, v14

    .line 152
    move-wide/from16 v18, v4

    .line 153
    .local v18, "coeff":D
    const/4 v13, 0x1

    .local v13, "n":I
    :goto_5
    array-length v15, v1

    if-ge v13, v15, :cond_8

    .line 155
    const-wide/16 v20, 0x0

    .line 156
    .local v20, "s":D
    const-wide/16 v22, 0x0

    .line 160
    .local v22, "c":D
    and-int/lit8 v15, v13, 0x1

    if-nez v15, :cond_6

    .line 162
    const-wide/16 v24, 0x0

    aput-wide v24, v12, v13

    .line 163
    move v15, v13

    .local v15, "kStart":I
    goto :goto_6

    .line 166
    .end local v15    # "kStart":I
    :cond_6
    add-int/lit8 v15, v13, -0x1

    aget-wide v24, v12, v15

    aput-wide v24, v12, v13

    .line 167
    aget-wide v22, v12, v13

    .line 168
    add-int/lit8 v15, v13, -0x1

    .line 172
    .restart local v15    # "kStart":I
    :goto_6
    move/from16 v24, v15

    move/from16 v30, v24

    move/from16 v24, v14

    move/from16 v14, v30

    .local v14, "k":I
    :goto_7
    move-wide/from16 v25, v2

    const/4 v2, 0x1

    .end local v2    # "cos":D
    .local v25, "cos":D
    if-le v14, v2, :cond_7

    .line 175
    sub-int v3, v14, v13

    int-to-double v2, v3

    aget-wide v27, v12, v14

    mul-double v2, v2, v27

    add-int/lit8 v27, v14, -0x1

    aget-wide v27, v12, v27

    sub-double v2, v2, v27

    aput-wide v2, v12, v14

    .line 176
    mul-double v2, v20, v8

    aget-wide v27, v12, v14

    add-double v20, v2, v27

    .line 179
    add-int/lit8 v2, v14, -0x1

    add-int/lit8 v3, v14, -0x1

    sub-int/2addr v3, v13

    move/from16 v27, v2

    int-to-double v2, v3

    add-int/lit8 v28, v14, -0x1

    aget-wide v28, v12, v28

    mul-double v2, v2, v28

    add-int/lit8 v28, v14, -0x2

    aget-wide v28, v12, v28

    add-double v2, v2, v28

    aput-wide v2, v12, v27

    .line 180
    mul-double v2, v22, v8

    add-int/lit8 v27, v14, -0x1

    aget-wide v27, v12, v27

    add-double v22, v2, v27

    .line 172
    add-int/lit8 v14, v14, -0x2

    move-wide/from16 v2, v25

    goto :goto_7

    .line 183
    .end local v14    # "k":I
    :cond_7
    aget-wide v2, v12, v24

    neg-int v14, v13

    move-wide/from16 v27, v2

    int-to-double v2, v14

    mul-double v2, v2, v27

    aput-wide v2, v12, v24

    .line 184
    mul-double v2, v20, v8

    aget-wide v27, v12, v24

    add-double v2, v2, v27

    .line 186
    .end local v20    # "s":D
    .local v2, "s":D
    mul-double v18, v18, v4

    .line 187
    mul-double v20, v2, v10

    mul-double v27, v22, v6

    mul-double v27, v27, v25

    add-double v20, v20, v27

    mul-double v20, v20, v18

    aput-wide v20, v1, v13

    .line 153
    .end local v2    # "s":D
    .end local v15    # "kStart":I
    .end local v22    # "c":D
    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v24

    move-wide/from16 v2, v25

    goto/16 :goto_5

    .end local v25    # "cos":D
    .local v2, "cos":D
    :cond_8
    move-wide/from16 v25, v2

    .line 193
    .end local v2    # "cos":D
    .end local v4    # "inv":D
    .end local v10    # "sin":D
    .end local v12    # "sc":[D
    .end local v13    # "n":I
    .end local v18    # "coeff":D
    :goto_8
    iget-boolean v2, v0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    if-eqz v2, :cond_9

    .line 194
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 195
    .local v2, "scale":D
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_9
    array-length v5, v1

    if-ge v4, v5, :cond_9

    .line 196
    aget-wide v10, v1, v4

    mul-double/2addr v10, v2

    aput-wide v10, v1, v4

    .line 197
    mul-double v2, v2, v16

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 201
    .end local v2    # "scale":D
    .end local v4    # "i":I
    :cond_9
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    return-object v3
.end method
