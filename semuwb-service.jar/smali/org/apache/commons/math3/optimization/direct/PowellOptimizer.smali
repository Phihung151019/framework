.class public Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "PowellOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 59
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .line 140
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "rel":D
    .end local p3    # "abs":D
    .local v1, "rel":D
    .local v3, "abs":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 141
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 10
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .param p5, "lineRel"    # D
    .param p7, "lineAbs"    # D

    .line 158
    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 159
    return-void
.end method

.method public constructor <init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 7
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .param p5, "lineRel"    # D
    .param p7, "lineAbs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p9, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    move-object/from16 v6, p9

    invoke-direct {p0, v6}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 113
    sget-wide v2, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double v0, p1, v2

    if-ltz v0, :cond_1

    .line 116
    const-wide/16 v2, 0x0

    cmpg-double v0, p3, v2

    if-lez v0, :cond_0

    .line 119
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->relativeThreshold:D

    .line 120
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->absoluteThreshold:D

    .line 123
    new-instance v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    move-object v1, p0

    move-wide v2, p5

    move-wide v4, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;-><init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;DD)V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    .line 125
    return-void

    .line 117
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 114
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sget-wide v3, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 10
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p5, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
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
    .end local p5    # "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    .local v1, "rel":D
    .local v3, "abs":D
    .local v9, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 91
    return-void
.end method

.method private newPointAndDirection([D[DD)[[D
    .locals 8
    .param p1, "p"    # [D
    .param p2, "d"    # [D
    .param p3, "optimum"    # D

    .line 269
    array-length v0, p1

    .line 270
    .local v0, "n":I
    new-array v1, v0, [D

    .line 271
    .local v1, "nP":[D
    new-array v2, v0, [D

    .line 272
    .local v2, "nD":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 273
    aget-wide v4, p2, v3

    mul-double/2addr v4, p3

    aput-wide v4, v2, v3

    .line 274
    aget-wide v4, p1, v3

    aget-wide v6, v2, v3

    add-double/2addr v4, v6

    aput-wide v4, v1, v3

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [[D

    .line 278
    .local v3, "result":[[D
    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 279
    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 281
    return-object v3
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 36

    .line 164
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v1

    .line 165
    .local v1, "goal":Lorg/apache/commons/math3/optimization/GoalType;
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getStartPoint()[D

    move-result-object v2

    .line 166
    .local v2, "guess":[D
    array-length v3, v2

    .line 168
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

    .line 169
    .local v4, "direc":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_0

    .line 170
    aget-object v8, v4, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v8, v7

    .line 169
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 173
    .end local v7    # "i":I
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v7

    .line 176
    .local v7, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    move-object v8, v2

    .line 177
    .local v8, "x":[D
    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v9

    .line 178
    .local v9, "fVal":D
    invoke-virtual {v8}, [D->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    .line 179
    .local v11, "x1":[D
    const/4 v12, 0x0

    .line 181
    .local v12, "iter":I
    :goto_1
    add-int/2addr v12, v5

    .line 183
    move-wide v13, v9

    .line 184
    .local v13, "fX":D
    const-wide/16 v15, 0x0

    .line 185
    .local v15, "fX2":D
    const-wide/16 v17, 0x0

    .line 186
    .local v17, "delta":D
    const/16 v19, 0x0

    .line 187
    .local v19, "bigInd":I
    const-wide/16 v20, 0x0

    .line 189
    .local v20, "alphaMin":D
    const/16 v22, 0x0

    move/from16 v35, v22

    move/from16 v22, v5

    move/from16 v5, v35

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_2

    .line 190
    aget-object v23, v4, v5

    move/from16 v24, v6

    invoke-static/range {v23 .. v23}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v6

    .line 192
    .local v6, "d":[D
    move-wide v15, v9

    .line 194
    move-object/from16 v23, v2

    .end local v2    # "guess":[D
    .local v23, "guess":[D
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    invoke-virtual {v2, v8, v6}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v2

    .line 195
    .local v2, "optimum":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v9

    .line 196
    move-object/from16 v25, v4

    move/from16 v26, v5

    .end local v4    # "direc":[[D
    .end local v5    # "i":I
    .local v25, "direc":[[D
    .local v26, "i":I
    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v4

    .line 197
    .end local v20    # "alphaMin":D
    .local v4, "alphaMin":D
    invoke-direct {v0, v8, v6, v4, v5}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v20

    .line 198
    .local v20, "result":[[D
    aget-object v8, v20, v24

    .line 200
    sub-double v27, v15, v9

    cmpl-double v21, v27, v17

    if-lez v21, :cond_1

    .line 201
    sub-double v17, v15, v9

    .line 202
    move/from16 v19, v26

    .line 189
    .end local v2    # "optimum":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .end local v6    # "d":[D
    .end local v20    # "result":[[D
    :cond_1
    add-int/lit8 v2, v26, 0x1

    move-wide/from16 v20, v4

    move/from16 v6, v24

    move-object/from16 v4, v25

    move v5, v2

    move-object/from16 v2, v23

    .end local v26    # "i":I
    .local v2, "i":I
    goto :goto_2

    .end local v23    # "guess":[D
    .end local v25    # "direc":[[D
    .local v2, "guess":[D
    .local v4, "direc":[[D
    .restart local v5    # "i":I
    .local v20, "alphaMin":D
    :cond_2
    move-object/from16 v23, v2

    move-object/from16 v25, v4

    move/from16 v26, v5

    move/from16 v24, v6

    .line 207
    .end local v2    # "guess":[D
    .end local v4    # "direc":[[D
    .end local v5    # "i":I
    .restart local v23    # "guess":[D
    .restart local v25    # "direc":[[D
    sub-double v4, v13, v9

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v26

    move-wide/from16 v28, v4

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->relativeThreshold:D

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    add-double v30, v30, v32

    mul-double v4, v4, v30

    move-wide/from16 v30, v4

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->absoluteThreshold:D

    add-double v4, v30, v4

    cmpg-double v2, v28, v4

    if-gtz v2, :cond_3

    move/from16 v2, v22

    goto :goto_3

    :cond_3
    move/from16 v2, v24

    .line 211
    .local v2, "stop":Z
    :goto_3
    new-instance v4, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-direct {v4, v11, v13, v14}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 212
    .local v4, "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    new-instance v5, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-direct {v5, v8, v9, v10}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 213
    .local v5, "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    if-nez v2, :cond_4

    if-eqz v7, :cond_4

    .line 214
    invoke-interface {v7, v12, v4, v5}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 216
    :cond_4
    if-eqz v2, :cond_8

    .line 217
    sget-object v6, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v1, v6, :cond_6

    .line 218
    cmpg-double v6, v9, v13

    if-gez v6, :cond_5

    move-object v6, v5

    goto :goto_4

    :cond_5
    move-object v6, v4

    :goto_4
    return-object v6

    .line 220
    :cond_6
    cmpl-double v6, v9, v13

    if-lez v6, :cond_7

    move-object v6, v5

    goto :goto_5

    :cond_7
    move-object v6, v4

    :goto_5
    return-object v6

    .line 224
    :cond_8
    new-array v6, v3, [D

    .line 225
    .restart local v6    # "d":[D
    move-object/from16 v28, v1

    .end local v1    # "goal":Lorg/apache/commons/math3/optimization/GoalType;
    .local v28, "goal":Lorg/apache/commons/math3/optimization/GoalType;
    new-array v1, v3, [D

    .line 226
    .local v1, "x2":[D
    const/16 v29, 0x0

    move/from16 v30, v2

    move/from16 v2, v29

    .local v2, "i":I
    .local v30, "stop":Z
    :goto_6
    if-ge v2, v3, :cond_9

    .line 227
    aget-wide v31, v8, v2

    aget-wide v33, v11, v2

    sub-double v31, v31, v33

    aput-wide v31, v6, v2

    .line 228
    aget-wide v31, v8, v2

    mul-double v31, v31, v26

    aget-wide v33, v11, v2

    sub-double v31, v31, v33

    aput-wide v31, v1, v2

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 231
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {v8}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [D

    .line 232
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v15

    .line 234
    cmpl-double v2, v13, v15

    if-lez v2, :cond_b

    .line 235
    add-double v31, v13, v15

    mul-double v33, v9, v26

    sub-double v31, v31, v33

    mul-double v31, v31, v26

    .line 236
    .local v31, "t":D
    sub-double v26, v13, v9

    sub-double v26, v26, v17

    .line 237
    .local v26, "temp":D
    mul-double v33, v26, v26

    mul-double v31, v31, v33

    .line 238
    sub-double v26, v13, v15

    .line 239
    mul-double v33, v17, v26

    mul-double v33, v33, v26

    sub-double v31, v31, v33

    .line 241
    const-wide/16 v33, 0x0

    cmpg-double v2, v31, v33

    if-gez v2, :cond_a

    .line 242
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    invoke-virtual {v2, v8, v6}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v2

    .line 243
    .local v2, "optimum":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v9

    .line 244
    move-object/from16 v29, v1

    move-object/from16 v33, v2

    .end local v1    # "x2":[D
    .end local v2    # "optimum":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .local v29, "x2":[D
    .local v33, "optimum":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    invoke-virtual/range {v33 .. v33}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v1

    .line 245
    .end local v20    # "alphaMin":D
    .local v1, "alphaMin":D
    invoke-direct {v0, v8, v6, v1, v2}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v20

    .line 246
    .local v20, "result":[[D
    aget-object v8, v20, v24

    .line 248
    add-int/lit8 v21, v3, -0x1

    .line 249
    .local v21, "lastInd":I
    aget-object v34, v25, v21

    aput-object v34, v25, v19

    .line 250
    aget-object v34, v20, v22

    aput-object v34, v25, v21

    goto :goto_7

    .line 241
    .end local v21    # "lastInd":I
    .end local v29    # "x2":[D
    .end local v33    # "optimum":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .local v1, "x2":[D
    .local v20, "alphaMin":D
    :cond_a
    move-object/from16 v29, v1

    .end local v1    # "x2":[D
    .restart local v29    # "x2":[D
    goto :goto_7

    .line 234
    .end local v26    # "temp":D
    .end local v29    # "x2":[D
    .end local v31    # "t":D
    .restart local v1    # "x2":[D
    :cond_b
    move-object/from16 v29, v1

    .line 253
    .end local v1    # "x2":[D
    .end local v4    # "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    .end local v5    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    .end local v6    # "d":[D
    .end local v13    # "fX":D
    .end local v15    # "fX2":D
    .end local v17    # "delta":D
    .end local v19    # "bigInd":I
    .end local v20    # "alphaMin":D
    .end local v30    # "stop":Z
    :goto_7
    move/from16 v5, v22

    move-object/from16 v2, v23

    move/from16 v6, v24

    move-object/from16 v4, v25

    move-object/from16 v1, v28

    goto/16 :goto_1
.end method
