.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "PowellOptimizer.java"


# static fields
.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 62
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .line 145
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "rel":D
    .end local p3    # "abs":D
    .local v1, "rel":D
    .local v3, "abs":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 146
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 10
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .param p5, "lineRel"    # D
    .param p7, "lineAbs"    # D

    .line 162
    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 163
    return-void
.end method

.method public constructor <init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 10
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .param p5, "lineRel"    # D
    .param p7, "lineAbs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p9, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 116
    sget-wide v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double v1, p1, v1

    if-ltz v1, :cond_1

    .line 119
    const-wide/16 v1, 0x0

    cmpg-double v1, p3, v1

    if-lez v1, :cond_0

    .line 122
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->relativeThreshold:D

    .line 123
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->absoluteThreshold:D

    .line 126
    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    move-wide v4, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    .line 130
    return-void

    .line 120
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 117
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sget-wide v4, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 10
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p5, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v9, p5

    .end local p1    # "rel":D
    .end local p3    # "abs":D
    .end local p5    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    .local v1, "rel":D
    .local v3, "abs":D
    .local v9, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 94
    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 294
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    .line 298
    return-void

    .line 296
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private newPointAndDirection([D[DD)[[D
    .locals 8
    .param p1, "p"    # [D
    .param p2, "d"    # [D
    .param p3, "optimum"    # D

    .line 274
    array-length v0, p1

    .line 275
    .local v0, "n":I
    new-array v1, v0, [D

    .line 276
    .local v1, "nP":[D
    new-array v2, v0, [D

    .line 277
    .local v2, "nD":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 278
    aget-wide v4, p2, v3

    mul-double/2addr v4, p3

    aput-wide v4, v2, v3

    .line 279
    aget-wide v4, p1, v3

    aget-wide v6, v2, v3

    add-double/2addr v4, v6

    aput-wide v4, v1, v3

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [[D

    .line 283
    .local v3, "result":[[D
    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 284
    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 286
    return-object v3
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 35

    .line 168
    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->checkParameters()V

    .line 170
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v1

    .line 171
    .local v1, "goal":Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getStartPoint()[D

    move-result-object v2

    .line 172
    .local v2, "guess":[D
    array-length v3, v2

    .line 174
    .local v3, "n":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v6, 0x0

    aput v3, v4, v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 175
    .local v4, "direc":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_0

    .line 176
    aget-object v8, v4, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v8, v7

    .line 175
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 179
    .end local v7    # "i":I
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v7

    .line 182
    .local v7, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    move-object v8, v2

    .line 183
    .local v8, "x":[D
    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v9

    .line 184
    .local v9, "fVal":D
    invoke-virtual {v8}, [D->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    .line 186
    .local v11, "x1":[D
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->incrementIterationCount()V

    .line 188
    move-wide v12, v9

    .line 189
    .local v12, "fX":D
    const-wide/16 v14, 0x0

    .line 190
    .local v14, "fX2":D
    const-wide/16 v16, 0x0

    .line 191
    .local v16, "delta":D
    const/16 v18, 0x0

    .line 192
    .local v18, "bigInd":I
    const-wide/16 v19, 0x0

    .line 194
    .local v19, "alphaMin":D
    const/16 v21, 0x0

    move/from16 v34, v21

    move/from16 v21, v5

    move/from16 v5, v34

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_2

    .line 195
    aget-object v22, v4, v5

    move/from16 v23, v6

    invoke-static/range {v22 .. v22}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v6

    .line 197
    .local v6, "d":[D
    move-wide v14, v9

    .line 199
    move-object/from16 v22, v2

    .end local v2    # "guess":[D
    .local v22, "guess":[D
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    invoke-virtual {v2, v8, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v2

    .line 200
    .local v2, "optimum":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v9

    .line 201
    move-object/from16 v24, v4

    move/from16 v25, v5

    .end local v4    # "direc":[[D
    .end local v5    # "i":I
    .local v24, "direc":[[D
    .local v25, "i":I
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v4

    .line 202
    .end local v19    # "alphaMin":D
    .local v4, "alphaMin":D
    invoke-direct {v0, v8, v6, v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v19

    .line 203
    .local v19, "result":[[D
    aget-object v8, v19, v23

    .line 205
    sub-double v26, v14, v9

    cmpl-double v20, v26, v16

    if-lez v20, :cond_1

    .line 206
    sub-double v16, v14, v9

    .line 207
    move/from16 v18, v25

    .line 194
    .end local v2    # "optimum":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .end local v6    # "d":[D
    .end local v19    # "result":[[D
    :cond_1
    add-int/lit8 v2, v25, 0x1

    move-wide/from16 v19, v4

    move/from16 v6, v23

    move-object/from16 v4, v24

    move v5, v2

    move-object/from16 v2, v22

    .end local v25    # "i":I
    .local v2, "i":I
    goto :goto_2

    .end local v22    # "guess":[D
    .end local v24    # "direc":[[D
    .local v2, "guess":[D
    .local v4, "direc":[[D
    .restart local v5    # "i":I
    .local v19, "alphaMin":D
    :cond_2
    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move/from16 v25, v5

    move/from16 v23, v6

    .line 212
    .end local v2    # "guess":[D
    .end local v4    # "direc":[[D
    .end local v5    # "i":I
    .restart local v22    # "guess":[D
    .restart local v24    # "direc":[[D
    sub-double v4, v12, v9

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v25

    move-wide/from16 v27, v4

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->relativeThreshold:D

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v29

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v31

    add-double v29, v29, v31

    mul-double v4, v4, v29

    move-wide/from16 v29, v4

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->absoluteThreshold:D

    add-double v4, v29, v4

    cmpg-double v2, v27, v4

    if-gtz v2, :cond_3

    move/from16 v2, v21

    goto :goto_3

    :cond_3
    move/from16 v2, v23

    .line 216
    .local v2, "stop":Z
    :goto_3
    new-instance v4, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v4, v11, v12, v13}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 217
    .local v4, "previous":Lorg/apache/commons/math3/optim/PointValuePair;
    new-instance v5, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v5, v8, v9, v10}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 218
    .local v5, "current":Lorg/apache/commons/math3/optim/PointValuePair;
    if-nez v2, :cond_4

    if-eqz v7, :cond_4

    .line 219
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getIterations()I

    move-result v6

    invoke-interface {v7, v6, v4, v5}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 221
    :cond_4
    if-eqz v2, :cond_8

    .line 222
    sget-object v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v1, v6, :cond_6

    .line 223
    cmpg-double v6, v9, v12

    if-gez v6, :cond_5

    move-object v6, v5

    goto :goto_4

    :cond_5
    move-object v6, v4

    :goto_4
    return-object v6

    .line 225
    :cond_6
    cmpl-double v6, v9, v12

    if-lez v6, :cond_7

    move-object v6, v5

    goto :goto_5

    :cond_7
    move-object v6, v4

    :goto_5
    return-object v6

    .line 229
    :cond_8
    new-array v6, v3, [D

    .line 230
    .restart local v6    # "d":[D
    move-object/from16 v27, v1

    .end local v1    # "goal":Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .local v27, "goal":Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    new-array v1, v3, [D

    .line 231
    .local v1, "x2":[D
    const/16 v28, 0x0

    move/from16 v29, v2

    move/from16 v2, v28

    .local v2, "i":I
    .local v29, "stop":Z
    :goto_6
    if-ge v2, v3, :cond_9

    .line 232
    aget-wide v30, v8, v2

    aget-wide v32, v11, v2

    sub-double v30, v30, v32

    aput-wide v30, v6, v2

    .line 233
    aget-wide v30, v8, v2

    mul-double v30, v30, v25

    aget-wide v32, v11, v2

    sub-double v30, v30, v32

    aput-wide v30, v1, v2

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 236
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {v8}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [D

    .line 237
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v14

    .line 239
    cmpl-double v2, v12, v14

    if-lez v2, :cond_b

    .line 240
    add-double v30, v12, v14

    mul-double v32, v9, v25

    sub-double v30, v30, v32

    mul-double v30, v30, v25

    .line 241
    .local v30, "t":D
    sub-double v25, v12, v9

    sub-double v25, v25, v16

    .line 242
    .local v25, "temp":D
    mul-double v32, v25, v25

    mul-double v30, v30, v32

    .line 243
    sub-double v25, v12, v14

    .line 244
    mul-double v32, v16, v25

    mul-double v32, v32, v25

    sub-double v30, v30, v32

    .line 246
    const-wide/16 v32, 0x0

    cmpg-double v2, v30, v32

    if-gez v2, :cond_a

    .line 247
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    invoke-virtual {v2, v8, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v2

    .line 248
    .local v2, "optimum":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v9

    .line 249
    move-object/from16 v28, v1

    move-object/from16 v32, v2

    .end local v1    # "x2":[D
    .end local v2    # "optimum":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .local v28, "x2":[D
    .local v32, "optimum":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    invoke-virtual/range {v32 .. v32}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v1

    .line 250
    .end local v19    # "alphaMin":D
    .local v1, "alphaMin":D
    invoke-direct {v0, v8, v6, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v19

    .line 251
    .local v19, "result":[[D
    aget-object v8, v19, v23

    .line 253
    add-int/lit8 v20, v3, -0x1

    .line 254
    .local v20, "lastInd":I
    aget-object v33, v24, v20

    aput-object v33, v24, v18

    .line 255
    aget-object v33, v19, v21

    aput-object v33, v24, v20

    goto :goto_7

    .line 246
    .end local v20    # "lastInd":I
    .end local v28    # "x2":[D
    .end local v32    # "optimum":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .local v1, "x2":[D
    .local v19, "alphaMin":D
    :cond_a
    move-object/from16 v28, v1

    .end local v1    # "x2":[D
    .restart local v28    # "x2":[D
    goto :goto_7

    .line 239
    .end local v25    # "temp":D
    .end local v28    # "x2":[D
    .end local v30    # "t":D
    .restart local v1    # "x2":[D
    :cond_b
    move-object/from16 v28, v1

    .line 258
    .end local v1    # "x2":[D
    .end local v4    # "previous":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v5    # "current":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v6    # "d":[D
    .end local v12    # "fX":D
    .end local v14    # "fX2":D
    .end local v16    # "delta":D
    .end local v18    # "bigInd":I
    .end local v19    # "alphaMin":D
    .end local v29    # "stop":Z
    :goto_7
    move/from16 v5, v21

    move-object/from16 v2, v22

    move/from16 v6, v23

    move-object/from16 v4, v24

    move-object/from16 v1, v27

    goto/16 :goto_1
.end method
