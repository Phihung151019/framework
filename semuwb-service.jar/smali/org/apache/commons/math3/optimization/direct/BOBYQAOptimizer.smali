.class public Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;
.source "BOBYQAOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer$PathIsExploredException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_RADIUS:D = 10.0

.field public static final DEFAULT_STOPPING_RADIUS:D = 1.0E-8

.field private static final HALF:D = 0.5

.field public static final MINIMUM_PROBLEM_DIMENSION:I = 0x2

.field private static final MINUS_ONE:D = -1.0

.field private static final ONE:D = 1.0

.field private static final ONE_OVER_A_THOUSAND:D = 0.001

.field private static final ONE_OVER_EIGHT:D = 0.125

.field private static final ONE_OVER_FOUR:D = 0.25

.field private static final ONE_OVER_TEN:D = 0.1

.field private static final SIXTEEN:D = 16.0

.field private static final TEN:D = 10.0

.field private static final TWO:D = 2.0

.field private static final TWO_HUNDRED_FIFTY:D = 250.0

.field private static final ZERO:D


# instance fields
.field private alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private boundDifference:[D

.field private currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private initialTrustRegionRadius:D

.field private interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private isMinimize:Z

.field private lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final numberOfInterpolationPoints:I

.field private originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final stoppingTrustRegionRadius:D

.field private trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private trustRegionCenterInterpolationPointIndex:I

.field private trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfInterpolationPoints"    # I

    .line 223
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v0, p0

    move v1, p1

    .end local p1    # "numberOfInterpolationPoints":I
    .local v1, "numberOfInterpolationPoints":I
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;-><init>(IDD)V

    .line 226
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 1
    .param p1, "numberOfInterpolationPoints"    # I
    .param p2, "initialTrustRegionRadius"    # D
    .param p4, "stoppingTrustRegionRadius"    # D

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 240
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 241
    iput-wide p2, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 242
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    .line 243
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 53
    invoke-static {p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->caller(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private altmov(ID)[D
    .locals 64
    .param p1, "knew"    # I
    .param p2, "adelt"    # D

    .line 1275
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 1277
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v2

    .line 1278
    .local v2, "n":I
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 1280
    .local v3, "npt":I
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1281
    .local v4, "glag":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1283
    .local v5, "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1284
    .local v6, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1286
    .local v7, "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_0
    const-wide/16 v9, 0x0

    if-ge v8, v3, :cond_0

    .line 1287
    invoke-virtual {v5, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1286
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1289
    .end local v8    # "k":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "j":I
    sub-int v11, v3, v2

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .local v11, "max":I
    :goto_1
    if-ge v8, v11, :cond_2

    .line 1290
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v1, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    .line 1291
    .local v13, "tmp":D
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_2
    if-ge v15, v3, :cond_1

    .line 1292
    invoke-virtual {v5, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    move/from16 v18, v12

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v15, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v19

    mul-double v19, v19, v13

    move-wide/from16 v21, v9

    add-double v9, v16, v19

    invoke-virtual {v5, v15, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1291
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v18

    move-wide/from16 v9, v21

    goto :goto_2

    :cond_1
    move-wide/from16 v21, v9

    move/from16 v18, v12

    .line 1289
    .end local v13    # "tmp":D
    .end local v15    # "k":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-wide/from16 v21, v9

    move/from16 v18, v12

    .line 1295
    .end local v8    # "j":I
    .end local v11    # "max":I
    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    .line 1296
    .local v8, "alpha":D
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v12, v8, v10

    .line 1300
    .local v12, "ha":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v2, :cond_3

    .line 1301
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v16, v10

    invoke-virtual {v15, v1, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    invoke-virtual {v4, v14, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1300
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v10, v16

    goto :goto_3

    :cond_3
    move-wide/from16 v16, v10

    .line 1303
    .end local v14    # "i":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_4
    if-ge v10, v3, :cond_6

    .line 1304
    const-wide/16 v14, 0x0

    .line 1305
    .local v14, "tmp":D
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_5
    if-ge v11, v2, :cond_4

    .line 1306
    move-wide/from16 v19, v8

    .end local v8    # "alpha":D
    .local v19, "alpha":D
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v8

    move-wide/from16 v23, v8

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    mul-double v8, v8, v23

    add-double/2addr v14, v8

    .line 1305
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v8, v19

    goto :goto_5

    .end local v19    # "alpha":D
    .restart local v8    # "alpha":D
    :cond_4
    move-wide/from16 v19, v8

    .line 1308
    .end local v8    # "alpha":D
    .end local v11    # "j":I
    .restart local v19    # "alpha":D
    invoke-virtual {v5, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    mul-double/2addr v14, v8

    .line 1309
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v2, :cond_5

    .line 1310
    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v10, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v25

    mul-double v25, v25, v14

    move v11, v10

    .end local v10    # "k":I
    .local v11, "k":I
    add-double v9, v23, v25

    invoke-virtual {v4, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1309
    add-int/lit8 v8, v8, 0x1

    move v10, v11

    goto :goto_6

    .end local v11    # "k":I
    .restart local v10    # "k":I
    :cond_5
    move v11, v10

    .line 1303
    .end local v8    # "i":I
    .end local v10    # "k":I
    .end local v14    # "tmp":D
    .restart local v11    # "k":I
    add-int/lit8 v10, v11, 0x1

    move-wide/from16 v8, v19

    .end local v11    # "k":I
    .restart local v10    # "k":I
    goto :goto_4

    .end local v19    # "alpha":D
    .local v8, "alpha":D
    :cond_6
    move-wide/from16 v19, v8

    move v11, v10

    .line 1320
    .end local v8    # "alpha":D
    .end local v10    # "k":I
    .restart local v19    # "alpha":D
    const-wide/16 v8, 0x0

    .line 1321
    .local v8, "presav":D
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 1322
    .local v10, "step":D
    const/4 v14, 0x0

    .line 1323
    .local v14, "ksav":I
    const/4 v15, 0x0

    .line 1324
    .local v15, "ibdsav":I
    const-wide/16 v23, 0x0

    .line 1325
    .local v23, "stpsav":D
    const/16 v25, 0x0

    move-wide/from16 v62, v8

    move/from16 v8, v25

    move-wide/from16 v25, v62

    .local v8, "k":I
    .local v25, "presav":D
    :goto_7
    move-wide/from16 v27, v10

    .end local v10    # "step":D
    .local v27, "step":D
    if-ge v8, v3, :cond_16

    .line 1326
    iget v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v8, v11, :cond_7

    .line 1327
    move-object/from16 v40, v5

    move-object/from16 v41, v6

    move-wide/from16 v35, v12

    move-wide/from16 v10, v27

    goto/16 :goto_c

    .line 1329
    :cond_7
    const-wide/16 v29, 0x0

    .line 1330
    .local v29, "dderiv":D
    const-wide/16 v31, 0x0

    .line 1331
    .local v31, "distsq":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8
    if-ge v11, v2, :cond_8

    .line 1332
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v8, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v9

    move-wide/from16 v35, v9

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    sub-double v9, v35, v9

    .line 1333
    .local v9, "tmp":D
    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v35

    mul-double v35, v35, v9

    add-double v29, v29, v35

    .line 1334
    mul-double v35, v9, v9

    add-double v31, v31, v35

    .line 1331
    .end local v9    # "tmp":D
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1336
    .end local v11    # "i":I
    :cond_8
    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    div-double v9, p2, v9

    .line 1337
    .local v9, "subd":D
    move-wide/from16 v35, v12

    .end local v12    # "ha":D
    .local v35, "ha":D
    neg-double v11, v9

    .line 1338
    .local v11, "slbd":D
    const/4 v13, 0x0

    .line 1339
    .local v13, "ilbd":I
    const/16 v37, 0x0

    .line 1340
    .local v37, "iubd":I
    move-object/from16 v40, v5

    move-object/from16 v41, v6

    move-wide/from16 v38, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .end local v5    # "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v6    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v11    # "slbd":D
    .local v38, "slbd":D
    .local v40, "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v41, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-static {v11, v12, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    .line 1344
    .local v5, "sumin":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_9
    if-ge v11, v2, :cond_f

    .line 1345
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v8, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v42

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    sub-double v42, v42, v44

    .line 1346
    .local v42, "tmp":D
    cmpl-double v12, v42, v21

    if-lez v12, :cond_b

    .line 1347
    mul-double v44, v38, v42

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    sub-double v46, v46, v48

    cmpg-double v12, v44, v46

    if-gez v12, :cond_9

    .line 1348
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    div-double v38, v44, v42

    .line 1349
    neg-int v12, v11

    add-int/lit8 v13, v12, -0x1

    .line 1351
    :cond_9
    mul-double v44, v9, v42

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    sub-double v46, v46, v48

    cmpl-double v12, v44, v46

    if-lez v12, :cond_a

    .line 1353
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    move-wide/from16 v46, v9

    .end local v9    # "subd":D
    .local v46, "subd":D
    div-double v9, v44, v42

    invoke-static {v5, v6, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    .line 1355
    .end local v46    # "subd":D
    .restart local v9    # "subd":D
    add-int/lit8 v12, v11, 0x1

    move/from16 v37, v12

    .end local v37    # "iubd":I
    .local v12, "iubd":I
    goto :goto_a

    .line 1351
    .end local v12    # "iubd":I
    .restart local v37    # "iubd":I
    :cond_a
    move-wide/from16 v46, v9

    .end local v9    # "subd":D
    .restart local v46    # "subd":D
    goto :goto_a

    .line 1357
    .end local v46    # "subd":D
    .restart local v9    # "subd":D
    :cond_b
    move-wide/from16 v46, v9

    .end local v9    # "subd":D
    .restart local v46    # "subd":D
    cmpg-double v9, v42, v21

    if-gez v9, :cond_e

    .line 1358
    mul-double v9, v38, v42

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    sub-double v44, v44, v48

    cmpl-double v9, v9, v44

    if-lez v9, :cond_c

    .line 1359
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    sub-double v9, v9, v44

    div-double v38, v9, v42

    .line 1360
    add-int/lit8 v13, v11, 0x1

    .line 1362
    :cond_c
    mul-double v9, v46, v42

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    sub-double v44, v44, v48

    cmpg-double v9, v9, v44

    if-gez v9, :cond_d

    .line 1364
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    sub-double v9, v9, v44

    div-double v9, v9, v42

    invoke-static {v5, v6, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    .line 1366
    .end local v46    # "subd":D
    .restart local v9    # "subd":D
    neg-int v12, v11

    add-int/lit8 v12, v12, -0x1

    move/from16 v37, v12

    .end local v37    # "iubd":I
    .restart local v12    # "iubd":I
    goto :goto_a

    .line 1362
    .end local v9    # "subd":D
    .end local v12    # "iubd":I
    .restart local v37    # "iubd":I
    .restart local v46    # "subd":D
    :cond_d
    move-wide/from16 v9, v46

    goto :goto_a

    .line 1357
    :cond_e
    move-wide/from16 v9, v46

    .line 1344
    .end local v42    # "tmp":D
    .end local v46    # "subd":D
    .restart local v9    # "subd":D
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    :cond_f
    move-wide/from16 v46, v9

    .line 1374
    .end local v9    # "subd":D
    .end local v11    # "i":I
    .restart local v46    # "subd":D
    move-wide/from16 v9, v38

    .line 1375
    .end local v27    # "step":D
    .local v9, "step":D
    move v11, v13

    .line 1376
    .local v11, "isbd":I
    const-wide/high16 v27, 0x7ff8000000000000L    # Double.NaN

    .line 1377
    .local v27, "vlag":D
    if-ne v8, v1, :cond_12

    .line 1378
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    sub-double v42, v29, v33

    .line 1379
    .local v42, "diff":D
    mul-double v44, v38, v42

    sub-double v44, v29, v44

    mul-double v44, v44, v38

    .line 1380
    .end local v27    # "vlag":D
    .local v44, "vlag":D
    mul-double v27, v46, v42

    sub-double v27, v29, v27

    mul-double v27, v27, v46

    .line 1381
    .local v27, "d1":D
    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v48

    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    cmpl-double v12, v48, v50

    if-lez v12, :cond_10

    .line 1382
    move-wide/from16 v9, v46

    .line 1383
    move-wide/from16 v44, v27

    .line 1384
    move/from16 v11, v37

    .line 1386
    :cond_10
    mul-double v48, v29, v16

    .line 1387
    .local v48, "d2":D
    mul-double v50, v42, v38

    sub-double v50, v48, v50

    .line 1388
    .local v50, "d3":D
    mul-double v52, v42, v46

    sub-double v52, v48, v52

    .line 1389
    .local v52, "d4":D
    mul-double v54, v50, v52

    cmpg-double v12, v54, v21

    if-gez v12, :cond_11

    .line 1390
    mul-double v54, v48, v48

    div-double v54, v54, v42

    .line 1391
    .local v54, "d5":D
    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v56

    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v58

    cmpl-double v12, v56, v58

    if-lez v12, :cond_11

    .line 1392
    div-double v9, v48, v42

    .line 1393
    move-wide/from16 v44, v54

    .line 1394
    const/4 v11, 0x0

    .line 1400
    .end local v27    # "d1":D
    .end local v42    # "diff":D
    .end local v48    # "d2":D
    .end local v50    # "d3":D
    .end local v52    # "d4":D
    .end local v54    # "d5":D
    :cond_11
    goto :goto_b

    .line 1401
    .end local v44    # "vlag":D
    .local v27, "vlag":D
    :cond_12
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    sub-double v42, v33, v38

    mul-double v42, v42, v38

    .line 1402
    .end local v27    # "vlag":D
    .local v42, "vlag":D
    sub-double v27, v33, v46

    mul-double v27, v27, v46

    .line 1403
    .local v27, "tmp":D
    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v44

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v48

    cmpl-double v12, v44, v48

    if-lez v12, :cond_13

    .line 1404
    move-wide/from16 v9, v46

    .line 1405
    move-wide/from16 v42, v27

    .line 1406
    move/from16 v11, v37

    .line 1408
    :cond_13
    cmpl-double v12, v46, v16

    if-lez v12, :cond_14

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v44

    const-wide/high16 v48, 0x3fd0000000000000L    # 0.25

    cmpg-double v12, v44, v48

    if-gez v12, :cond_14

    .line 1409
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 1410
    const-wide/high16 v42, 0x3fd0000000000000L    # 0.25

    .line 1411
    const/4 v11, 0x0

    .line 1413
    :cond_14
    mul-double v44, v42, v29

    .line 1418
    .end local v27    # "tmp":D
    .end local v42    # "vlag":D
    .restart local v44    # "vlag":D
    :goto_b
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    sub-double v27, v33, v9

    mul-double v27, v27, v9

    mul-double v27, v27, v31

    .line 1419
    .restart local v27    # "tmp":D
    mul-double v33, v44, v44

    mul-double v42, v44, v44

    mul-double v48, v35, v27

    mul-double v48, v48, v27

    add-double v42, v42, v48

    mul-double v33, v33, v42

    .line 1420
    .local v33, "predsq":D
    cmpl-double v12, v33, v25

    if-lez v12, :cond_15

    .line 1421
    move-wide/from16 v25, v33

    .line 1422
    move v12, v8

    .line 1423
    .end local v14    # "ksav":I
    .local v12, "ksav":I
    move-wide/from16 v23, v9

    .line 1424
    move v14, v11

    move-wide v10, v9

    move v15, v14

    move v14, v12

    .end local v15    # "ibdsav":I
    .local v14, "ibdsav":I
    goto :goto_c

    .line 1420
    .end local v12    # "ksav":I
    .local v14, "ksav":I
    .restart local v15    # "ibdsav":I
    :cond_15
    move-wide v10, v9

    .line 1325
    .end local v5    # "sumin":D
    .end local v9    # "step":D
    .end local v11    # "isbd":I
    .end local v13    # "ilbd":I
    .end local v27    # "tmp":D
    .end local v29    # "dderiv":D
    .end local v31    # "distsq":D
    .end local v33    # "predsq":D
    .end local v37    # "iubd":I
    .end local v38    # "slbd":D
    .end local v44    # "vlag":D
    .end local v46    # "subd":D
    .restart local v10    # "step":D
    :goto_c
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v12, v35

    move-object/from16 v5, v40

    move-object/from16 v6, v41

    goto/16 :goto_7

    .end local v10    # "step":D
    .end local v35    # "ha":D
    .end local v40    # "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v41    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v5, "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v6    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v12, "ha":D
    .local v27, "step":D
    :cond_16
    move-object/from16 v40, v5

    move-object/from16 v41, v6

    move-wide/from16 v35, v12

    .line 1430
    .end local v5    # "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v6    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v8    # "k":I
    .end local v12    # "ha":D
    .restart local v35    # "ha":D
    .restart local v40    # "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v41    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    if-ge v5, v2, :cond_17

    .line 1431
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v14, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double v10, v10, v23

    add-double/2addr v8, v10

    .line 1432
    .local v8, "tmp":D
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    invoke-static {v12, v13, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    invoke-virtual {v6, v5, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1430
    .end local v8    # "tmp":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1435
    .end local v5    # "i":I
    :cond_17
    if-gez v15, :cond_18

    .line 1436
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-int v6, v15

    add-int/lit8 v6, v6, -0x1

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-int v9, v15

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1438
    :cond_18
    if-lez v15, :cond_19

    .line 1439
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int/lit8 v6, v15, -0x1

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int/lit8 v9, v15, -0x1

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1446
    :cond_19
    add-double v5, p2, p2

    .line 1447
    .local v5, "bigstp":D
    const/4 v8, 0x0

    .line 1448
    .local v8, "iflag":I
    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    .line 1449
    .local v9, "cauchy":D
    const-wide/16 v11, 0x0

    .line 1451
    .local v11, "csave":D
    :goto_e
    const-wide/16 v29, 0x0

    .line 1452
    .local v29, "wfixsq":D
    const-wide/16 v31, 0x0

    .line 1453
    .local v31, "ggfree":D
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_f
    if-ge v13, v2, :cond_1c

    .line 1454
    move-wide/from16 v37, v9

    .end local v9    # "cauchy":D
    .local v37, "cauchy":D
    invoke-virtual {v4, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    .line 1455
    .local v9, "glagValue":D
    move-object/from16 v1, v41

    move-wide/from16 v41, v11

    move-wide/from16 v11, v21

    .end local v11    # "csave":D
    .local v1, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v41, "csave":D
    invoke-virtual {v1, v13, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1456
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    move-wide/from16 v43, v11

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    sub-double v11, v43, v11

    invoke-static {v11, v12, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v11

    cmpl-double v11, v11, v21

    if-gtz v11, :cond_1a

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    move-wide/from16 v43, v11

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    sub-double v11, v43, v11

    invoke-static {v11, v12, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    cmpg-double v11, v11, v21

    if-gez v11, :cond_1b

    .line 1458
    :cond_1a
    invoke-virtual {v1, v13, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1460
    mul-double v11, v9, v9

    add-double v31, v31, v11

    .line 1453
    .end local v9    # "glagValue":D
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v9, v37

    move-wide/from16 v11, v41

    const-wide/16 v21, 0x0

    move-object/from16 v41, v1

    move/from16 v1, p1

    goto :goto_f

    .end local v1    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v37    # "cauchy":D
    .local v9, "cauchy":D
    .restart local v11    # "csave":D
    .local v41, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    :cond_1c
    move-wide/from16 v37, v9

    move-object/from16 v1, v41

    move-wide/from16 v41, v11

    .line 1463
    .end local v9    # "cauchy":D
    .end local v11    # "csave":D
    .end local v13    # "i":I
    .restart local v1    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v37    # "cauchy":D
    .local v41, "csave":D
    const-wide/16 v21, 0x0

    cmpl-double v9, v31, v21

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-nez v9, :cond_1d

    .line 1464
    new-array v9, v11, [D

    aput-wide v19, v9, v10

    aput-wide v21, v9, v18

    return-object v9

    .line 1468
    :cond_1d
    mul-double v12, p2, p2

    sub-double v12, v12, v29

    .line 1469
    .local v12, "tmp1":D
    cmpl-double v9, v12, v21

    if-lez v9, :cond_22

    .line 1470
    div-double v43, v12, v31

    invoke-static/range {v43 .. v44}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v27

    .line 1471
    const-wide/16 v31, 0x0

    .line 1472
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_10
    if-ge v9, v2, :cond_21

    .line 1473
    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    cmpl-double v39, v43, v5

    if-nez v39, :cond_20

    .line 1474
    move/from16 v39, v10

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    mul-double v45, v45, v27

    sub-double v43, v43, v45

    .line 1475
    .local v43, "tmp2":D
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    cmpg-double v10, v43, v45

    if-gtz v10, :cond_1e

    .line 1476
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    move-wide/from16 v49, v12

    .end local v12    # "tmp1":D
    .local v49, "tmp1":D
    sub-double v11, v45, v47

    invoke-virtual {v1, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1478
    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    .line 1479
    .local v11, "d1":D
    mul-double v45, v11, v11

    add-double v29, v29, v45

    .line 1480
    .end local v11    # "d1":D
    goto :goto_11

    .end local v49    # "tmp1":D
    .restart local v12    # "tmp1":D
    :cond_1e
    move-wide/from16 v49, v12

    .end local v12    # "tmp1":D
    .restart local v49    # "tmp1":D
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpl-double v11, v43, v11

    if-ltz v11, :cond_1f

    .line 1481
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    sub-double v11, v11, v45

    invoke-virtual {v1, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1483
    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    .line 1484
    .restart local v11    # "d1":D
    mul-double v45, v11, v11

    add-double v29, v29, v45

    .line 1485
    .end local v11    # "d1":D
    goto :goto_11

    .line 1487
    :cond_1f
    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    .line 1488
    .restart local v11    # "d1":D
    mul-double v45, v11, v11

    add-double v31, v31, v45

    goto :goto_11

    .line 1473
    .end local v11    # "d1":D
    .end local v43    # "tmp2":D
    .end local v49    # "tmp1":D
    .restart local v12    # "tmp1":D
    :cond_20
    move/from16 v39, v10

    move-wide/from16 v49, v12

    .line 1472
    .end local v12    # "tmp1":D
    .restart local v49    # "tmp1":D
    :goto_11
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v39

    move-wide/from16 v12, v49

    const/4 v11, 0x2

    goto :goto_10

    .end local v49    # "tmp1":D
    .restart local v12    # "tmp1":D
    :cond_21
    move/from16 v39, v10

    move-wide/from16 v49, v12

    .end local v12    # "tmp1":D
    .restart local v49    # "tmp1":D
    move-wide/from16 v11, v27

    goto :goto_12

    .line 1469
    .end local v9    # "i":I
    .end local v49    # "tmp1":D
    .restart local v12    # "tmp1":D
    :cond_22
    move/from16 v39, v10

    move-wide/from16 v49, v12

    .end local v12    # "tmp1":D
    .restart local v49    # "tmp1":D
    move-wide/from16 v11, v27

    .line 1497
    .end local v27    # "step":D
    .local v11, "step":D
    :goto_12
    const-wide/16 v27, 0x0

    .line 1498
    .local v27, "gw":D
    const/4 v9, 0x0

    move-wide/from16 v60, v27

    .end local v27    # "gw":D
    .restart local v9    # "i":I
    .local v60, "gw":D
    :goto_13
    if-ge v9, v2, :cond_26

    .line 1499
    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v27

    .line 1500
    .local v27, "glagValue":D
    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    cmpl-double v13, v43, v5

    if-nez v13, :cond_23

    .line 1501
    move-wide/from16 v43, v5

    .end local v5    # "bigstp":D
    .local v43, "bigstp":D
    neg-double v5, v11

    mul-double v5, v5, v27

    invoke-virtual {v1, v9, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1502
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    move-wide/from16 v51, v11

    .end local v11    # "step":D
    .local v51, "step":D
    add-double v10, v45, v47

    invoke-static {v5, v6, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    .line 1504
    .local v5, "min":D
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-static {v11, v12, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    invoke-virtual {v10, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1505
    .end local v5    # "min":D
    const-wide/16 v21, 0x0

    goto :goto_14

    .end local v43    # "bigstp":D
    .end local v51    # "step":D
    .local v5, "bigstp":D
    .restart local v11    # "step":D
    :cond_23
    move-wide/from16 v43, v5

    move-wide/from16 v51, v11

    .end local v5    # "bigstp":D
    .end local v11    # "step":D
    .restart local v43    # "bigstp":D
    .restart local v51    # "step":D
    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    const-wide/16 v21, 0x0

    cmpl-double v5, v5, v21

    if-nez v5, :cond_24

    .line 1506
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_14

    .line 1507
    :cond_24
    cmpl-double v5, v27, v21

    if-lez v5, :cond_25

    .line 1508
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_14

    .line 1510
    :cond_25
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1512
    :goto_14
    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v5, v5, v27

    move-wide/from16 v10, v60

    .end local v60    # "gw":D
    .local v10, "gw":D
    add-double v60, v10, v5

    .line 1498
    .end local v10    # "gw":D
    .end local v27    # "glagValue":D
    .restart local v60    # "gw":D
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v5, v43

    move-wide/from16 v11, v51

    goto/16 :goto_13

    .end local v43    # "bigstp":D
    .end local v51    # "step":D
    .restart local v5    # "bigstp":D
    .restart local v11    # "step":D
    :cond_26
    move-wide/from16 v43, v5

    move-wide/from16 v51, v11

    move-wide/from16 v10, v60

    const-wide/16 v21, 0x0

    .line 1520
    .end local v5    # "bigstp":D
    .end local v9    # "i":I
    .end local v11    # "step":D
    .end local v60    # "gw":D
    .restart local v10    # "gw":D
    .restart local v43    # "bigstp":D
    .restart local v51    # "step":D
    const-wide/16 v5, 0x0

    .line 1521
    .local v5, "curv":D
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_15
    if-ge v9, v3, :cond_28

    .line 1522
    const-wide/16 v27, 0x0

    .line 1523
    .local v27, "tmp":D
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_16
    if-ge v12, v2, :cond_27

    .line 1524
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v9, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v46

    invoke-virtual {v1, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    mul-double v46, v46, v53

    add-double v27, v27, v46

    .line 1523
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    .line 1526
    .end local v12    # "j":I
    :cond_27
    move-object/from16 v12, v40

    .end local v40    # "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v12, "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {v12, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    mul-double v46, v46, v27

    mul-double v46, v46, v27

    add-double v5, v5, v46

    .line 1521
    .end local v27    # "tmp":D
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .end local v12    # "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v40    # "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    :cond_28
    move-object/from16 v12, v40

    .line 1528
    .end local v9    # "k":I
    .end local v40    # "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v12    # "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    move/from16 v9, v18

    if-ne v8, v9, :cond_29

    .line 1529
    neg-double v5, v5

    .line 1531
    :cond_29
    move-wide/from16 v27, v5

    .end local v5    # "curv":D
    .local v27, "curv":D
    neg-double v5, v10

    cmpl-double v5, v27, v5

    if-lez v5, :cond_2c

    neg-double v5, v10

    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v46

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    add-double v46, v46, v33

    mul-double v5, v5, v46

    cmpg-double v5, v27, v5

    if-gez v5, :cond_2b

    .line 1533
    neg-double v5, v10

    div-double v5, v5, v27

    .line 1534
    .local v5, "scale":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_17
    if-ge v9, v2, :cond_2a

    .line 1535
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    mul-double v53, v53, v5

    move-wide/from16 v55, v5

    .end local v5    # "scale":D
    .local v55, "scale":D
    add-double v5, v46, v53

    .line 1536
    .local v5, "tmp":D
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v40, v1

    .end local v1    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v40, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v46, v10

    .end local v10    # "gw":D
    .local v46, "gw":D
    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v48, v14

    move/from16 v53, v15

    .end local v14    # "ksav":I
    .end local v15    # "ibdsav":I
    .local v48, "ksav":I
    .local v53, "ibdsav":I
    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    invoke-static {v14, v15, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v14

    invoke-static {v10, v11, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    invoke-virtual {v13, v9, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1534
    .end local v5    # "tmp":D
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v40

    move-wide/from16 v10, v46

    move/from16 v14, v48

    move/from16 v15, v53

    move-wide/from16 v5, v55

    goto :goto_17

    .end local v40    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v46    # "gw":D
    .end local v48    # "ksav":I
    .end local v53    # "ibdsav":I
    .end local v55    # "scale":D
    .restart local v1    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v5, "scale":D
    .restart local v10    # "gw":D
    .restart local v14    # "ksav":I
    .restart local v15    # "ibdsav":I
    :cond_2a
    move-object/from16 v40, v1

    move-wide/from16 v55, v5

    move-wide/from16 v46, v10

    move/from16 v48, v14

    move/from16 v53, v15

    .line 1540
    .end local v1    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v5    # "scale":D
    .end local v9    # "i":I
    .end local v10    # "gw":D
    .end local v14    # "ksav":I
    .end local v15    # "ibdsav":I
    .restart local v40    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v46    # "gw":D
    .restart local v48    # "ksav":I
    .restart local v53    # "ibdsav":I
    .restart local v55    # "scale":D
    mul-double v60, v46, v16

    mul-double v60, v60, v55

    .line 1541
    .local v60, "d1":D
    mul-double v60, v60, v60

    .line 1542
    .end local v37    # "cauchy":D
    .end local v55    # "scale":D
    .local v60, "cauchy":D
    move-wide/from16 v9, v60

    goto :goto_19

    .line 1531
    .end local v40    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v46    # "gw":D
    .end local v48    # "ksav":I
    .end local v53    # "ibdsav":I
    .end local v60    # "cauchy":D
    .restart local v1    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v10    # "gw":D
    .restart local v14    # "ksav":I
    .restart local v15    # "ibdsav":I
    .restart local v37    # "cauchy":D
    :cond_2b
    move-object/from16 v40, v1

    move-wide/from16 v46, v10

    move/from16 v48, v14

    move/from16 v53, v15

    goto :goto_18

    :cond_2c
    move-object/from16 v40, v1

    move-wide/from16 v46, v10

    move/from16 v48, v14

    move/from16 v53, v15

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    .line 1544
    .end local v1    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v10    # "gw":D
    .end local v14    # "ksav":I
    .end local v15    # "ibdsav":I
    .restart local v40    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v46    # "gw":D
    .restart local v48    # "ksav":I
    .restart local v53    # "ibdsav":I
    :goto_18
    mul-double v5, v27, v16

    add-double v60, v46, v5

    .line 1545
    .local v60, "d1":D
    mul-double v5, v60, v60

    move-wide v9, v5

    .line 1552
    .end local v37    # "cauchy":D
    .end local v60    # "d1":D
    .local v9, "cauchy":D
    :goto_19
    if-nez v8, :cond_2e

    .line 1553
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v2, :cond_2d

    .line 1554
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v4, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1555
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v7, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1553
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1557
    .end local v1    # "i":I
    :cond_2d
    move-wide v5, v9

    .line 1558
    .end local v41    # "csave":D
    .local v5, "csave":D
    const/4 v8, 0x1

    .line 1562
    .end local v27    # "curv":D
    .end local v29    # "wfixsq":D
    .end local v31    # "ggfree":D
    .end local v46    # "gw":D
    .end local v49    # "tmp1":D
    move/from16 v1, p1

    move-object/from16 v41, v40

    move/from16 v14, v48

    move-wide/from16 v27, v51

    move/from16 v15, v53

    const/16 v18, 0x1

    move-object/from16 v40, v12

    move-wide v11, v5

    move-wide/from16 v5, v43

    goto/16 :goto_e

    .line 1563
    .end local v5    # "csave":D
    .restart local v41    # "csave":D
    :cond_2e
    cmpl-double v1, v41, v9

    if-lez v1, :cond_30

    .line 1564
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1b
    if-ge v1, v2, :cond_2f

    .line 1565
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    invoke-virtual {v5, v1, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1564
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1567
    .end local v1    # "i":I
    :cond_2f
    move-wide/from16 v9, v41

    .line 1570
    :cond_30
    const/4 v13, 0x2

    new-array v1, v13, [D

    aput-wide v19, v1, v39

    const/16 v18, 0x1

    aput-wide v9, v1, v18

    return-object v1
.end method

.method private bobyqa([D[D)D
    .locals 11
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .line 300
    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 302
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    .line 311
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 312
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v2, v2, v1

    .line 313
    .local v2, "boundDiff":D
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p1, v1

    iget-object v7, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v4, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 314
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p2, v1

    iget-object v7, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v4, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 315
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v6, v6

    cmpl-double v4, v4, v6

    const-wide/16 v5, 0x0

    if-ltz v4, :cond_1

    .line 316
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    cmpl-double v4, v7, v5

    if-ltz v4, :cond_0

    .line 317
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v7, p1, v1

    invoke-virtual {v4, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 318
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 319
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 321
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p1, v1

    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    add-double/2addr v5, v7

    invoke-virtual {v4, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 322
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v5, v5

    invoke-virtual {v4, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 324
    aget-wide v4, p2, v1

    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 325
    .local v4, "deltaOne":D
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-static {v4, v5, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    invoke-virtual {v6, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 326
    .end local v4    # "deltaOne":D
    goto :goto_1

    .line 327
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-wide v9, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    cmpg-double v4, v7, v9

    if-gtz v4, :cond_3

    .line 328
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    cmpg-double v4, v7, v5

    if-gtz v4, :cond_2

    .line 329
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v7, p2, v1

    invoke-virtual {v4, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 330
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-double v7, v2

    invoke-virtual {v4, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 331
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 333
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p2, v1

    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    sub-double/2addr v5, v7

    invoke-virtual {v4, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 335
    aget-wide v4, p1, v1

    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 336
    .restart local v4    # "deltaOne":D
    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v6, v6

    .line 337
    .local v6, "deltaTwo":D
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v9

    invoke-virtual {v8, v1, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 338
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v9, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-virtual {v8, v1, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 311
    .end local v2    # "boundDiff":D
    .end local v4    # "deltaOne":D
    .end local v6    # "deltaTwo":D
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 345
    .end local v1    # "j":I
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bobyqb([D[D)D

    move-result-wide v1

    return-wide v1
.end method

.method private bobyqb([D[D)D
    .locals 105
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .line 389
    move-object/from16 v0, p0

    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 391
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v8

    .line 392
    .local v8, "n":I
    iget v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 393
    .local v9, "npt":I
    add-int/lit8 v10, v8, 0x1

    .line 394
    .local v10, "np":I
    sub-int v11, v9, v10

    .line 395
    .local v11, "nptm":I
    mul-int v1, v8, v10

    div-int/lit8 v12, v1, 0x2

    .line 397
    .local v12, "nh":I
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object v13, v1

    .line 398
    .local v13, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object v14, v1

    .line 399
    .local v14, "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object v15, v1

    .line 401
    .local v15, "work3":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 402
    .local v1, "cauchy":D
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 403
    .local v3, "alpha":D
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    .line 404
    .local v5, "dsq":D
    const-wide/high16 v16, 0x7ff8000000000000L    # Double.NaN

    .line 418
    .local v16, "crvmin":D
    const/4 v7, 0x0

    iput v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 420
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->prelim([D[D)V

    .line 421
    const-wide/16 v18, 0x0

    .line 422
    .local v18, "xoptsq":D
    const/16 v20, 0x0

    move/from16 v7, v20

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 423
    move-wide/from16 v21, v1

    .end local v1    # "cauchy":D
    .local v21, "cauchy":D
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v23, v3

    .end local v3    # "alpha":D
    .local v23, "alpha":D
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v2, v3, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    invoke-virtual {v1, v7, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 425
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    .line 426
    .local v1, "deltaOne":D
    mul-double v3, v1, v1

    add-double v18, v18, v3

    .line 422
    .end local v1    # "deltaOne":D
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v1, v21

    move-wide/from16 v3, v23

    goto :goto_0

    .end local v21    # "cauchy":D
    .end local v23    # "alpha":D
    .local v1, "cauchy":D
    .restart local v3    # "alpha":D
    :cond_0
    move-wide/from16 v21, v1

    move-wide/from16 v23, v3

    .line 428
    .end local v1    # "cauchy":D
    .end local v3    # "alpha":D
    .end local v7    # "i":I
    .restart local v21    # "cauchy":D
    .restart local v23    # "alpha":D
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    .line 429
    .local v3, "fsave":D
    const/16 v25, 0x0

    .line 433
    .local v25, "kbase":I
    const/4 v1, 0x0

    .line 434
    .local v1, "ntrits":I
    const/4 v2, 0x0

    .line 435
    .local v2, "itest":I
    const/4 v7, 0x0

    .line 436
    .local v7, "knew":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v26

    .line 437
    .local v26, "nfsav":I
    move/from16 v27, v1

    move/from16 v28, v2

    .end local v1    # "ntrits":I
    .end local v2    # "itest":I
    .local v27, "ntrits":I
    .local v28, "itest":I
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 438
    .local v1, "rho":D
    move-wide/from16 v29, v1

    .line 439
    .local v29, "delta":D
    const-wide/16 v31, 0x0

    .line 440
    .local v31, "diffa":D
    const-wide/16 v33, 0x0

    .line 441
    .local v33, "diffb":D
    const-wide/16 v35, 0x0

    .line 442
    .local v35, "diffc":D
    const-wide/16 v37, 0x0

    .line 443
    .local v37, "f":D
    const-wide/16 v39, 0x0

    .line 444
    .local v39, "beta":D
    const-wide/16 v41, 0x0

    .line 445
    .local v41, "adelt":D
    const-wide/16 v43, 0x0

    .line 446
    .local v43, "denom":D
    const-wide/16 v45, 0x0

    .line 447
    .local v45, "ratio":D
    const-wide/16 v47, 0x0

    .line 448
    .local v47, "dnorm":D
    const-wide/16 v49, 0x0

    .line 449
    .local v49, "scaden":D
    const-wide/16 v51, 0x0

    .line 450
    .local v51, "biglsq":D
    const-wide/16 v53, 0x0

    .line 455
    .local v53, "distsq":D
    const/16 v55, 0x14

    move-wide/from16 v56, v35

    move/from16 v36, v12

    move-wide/from16 v34, v33

    move-wide/from16 v32, v31

    move/from16 v31, v26

    move-wide/from16 v103, v1

    move v2, v7

    move/from16 v1, v27

    move-wide/from16 v26, v16

    move-wide/from16 v16, v3

    move-wide/from16 v3, v29

    move-wide/from16 v29, v18

    move-wide/from16 v18, v5

    move-wide/from16 v6, v41

    move-wide/from16 v41, v103

    move-wide/from16 v103, v47

    move-object/from16 v47, v13

    move-wide/from16 v12, v103

    .line 457
    .end local v5    # "dsq":D
    .end local v7    # "knew":I
    .end local v13    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v27    # "ntrits":I
    .end local v33    # "diffb":D
    .end local v35    # "diffc":D
    .local v1, "ntrits":I
    .local v2, "knew":I
    .local v3, "delta":D
    .local v6, "adelt":D
    .local v12, "dnorm":D
    .local v16, "fsave":D
    .local v18, "dsq":D
    .local v26, "crvmin":D
    .local v29, "xoptsq":D
    .local v31, "nfsav":I
    .local v32, "diffa":D
    .local v34, "diffb":D
    .local v36, "nh":I
    .local v41, "rho":D
    .local v47, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v55, "state":I
    .local v56, "diffc":D
    :goto_1
    const-wide/high16 v58, 0x3ff8000000000000L    # 1.5

    move-wide/from16 v60, v3

    .end local v3    # "delta":D
    .local v60, "delta":D
    const-wide/high16 v62, 0x4024000000000000L    # 10.0

    const-wide v64, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v68, 0x3fe0000000000000L    # 0.5

    const/16 v48, 0x1

    sparse-switch v55, :sswitch_data_0

    .line 1232
    move/from16 v70, v10

    move-wide/from16 v96, v12

    move v12, v1

    move v10, v2

    .end local v1    # "ntrits":I
    .end local v2    # "knew":I
    .local v10, "knew":I
    .local v12, "ntrits":I
    .local v70, "np":I
    .local v96, "dnorm":D
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const-string v3, "bobyqb"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 457
    .end local v70    # "np":I
    .end local v96    # "dnorm":D
    .restart local v1    # "ntrits":I
    .restart local v2    # "knew":I
    .local v10, "np":I
    .local v12, "dnorm":D
    :sswitch_0
    move-wide/from16 v78, v6

    move/from16 v70, v10

    move/from16 v76, v11

    move-wide v5, v12

    move/from16 v11, v36

    move-object/from16 v13, v47

    move-wide/from16 v3, v60

    move v12, v1

    goto/16 :goto_40

    :sswitch_1
    move-wide/from16 v78, v6

    move/from16 v70, v10

    move/from16 v76, v11

    move-wide v5, v12

    move/from16 v11, v36

    move-object/from16 v13, v47

    move-wide/from16 v3, v60

    const/16 v20, 0x0

    move v12, v1

    move v7, v2

    move-wide/from16 v1, v41

    goto/16 :goto_3e

    :sswitch_2
    move-wide/from16 v78, v6

    move/from16 v70, v10

    move/from16 v76, v11

    move-wide/from16 v96, v12

    move/from16 v11, v36

    move-object/from16 v13, v47

    move-wide/from16 v3, v60

    const/16 v20, 0x0

    move v12, v1

    goto/16 :goto_3a

    :sswitch_3
    move-wide/from16 v78, v6

    move/from16 v70, v10

    move-wide/from16 v76, v12

    const/16 v20, 0x0

    const-wide/16 v71, 0x0

    goto/16 :goto_11

    :sswitch_4
    move-wide/from16 v78, v6

    const/16 v20, 0x0

    const-wide/16 v71, 0x0

    goto :goto_3

    .line 674
    :sswitch_5
    const/16 v70, 0xd2

    invoke-static/range {v70 .. v70}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 686
    invoke-direct {v0, v2, v6, v7}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->altmov(ID)[D

    move-result-object v70

    .line 687
    .local v70, "alphaCauchy":[D
    const/16 v20, 0x0

    aget-wide v23, v70, v20

    .line 688
    aget-wide v21, v70, v48

    .line 690
    const/16 v48, 0x0

    move/from16 v3, v48

    const-wide/16 v71, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v8, :cond_1

    .line 691
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v74

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    move-wide/from16 v78, v6

    .end local v6    # "adelt":D
    .local v78, "adelt":D
    sub-double v5, v74, v76

    invoke-virtual {v4, v3, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 690
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v78

    goto :goto_2

    .end local v78    # "adelt":D
    .restart local v6    # "adelt":D
    :cond_1
    move-wide/from16 v78, v6

    .line 700
    .end local v3    # "i":I
    .end local v6    # "adelt":D
    .end local v70    # "alphaCauchy":[D
    .restart local v78    # "adelt":D
    :goto_3
    const/16 v3, 0xe6

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 701
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_4
    if-ge v3, v9, :cond_3

    .line 702
    const-wide/16 v4, 0x0

    .line 703
    .local v4, "suma":D
    const-wide/16 v6, 0x0

    .line 704
    .local v6, "sumb":D
    const-wide/16 v74, 0x0

    .line 705
    .local v74, "sum":D
    const/16 v48, 0x0

    move-wide/from16 v76, v12

    move-wide/from16 v12, v74

    move-wide/from16 v74, v6

    move/from16 v6, v48

    .local v6, "j":I
    .local v12, "sum":D
    .local v74, "sumb":D
    .local v76, "dnorm":D
    :goto_5
    if-ge v6, v8, :cond_2

    .line 706
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v3, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v80

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v80, v80, v82

    add-double v4, v4, v80

    .line 707
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v3, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v80

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v80, v80, v82

    add-double v74, v74, v80

    .line 708
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v3, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v80

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v80, v80, v82

    add-double v12, v12, v80

    .line 705
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 710
    .end local v6    # "j":I
    :cond_2
    mul-double v6, v4, v68

    add-double v6, v6, v74

    mul-double/2addr v6, v4

    invoke-virtual {v15, v3, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 711
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 712
    invoke-virtual {v14, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 701
    .end local v4    # "suma":D
    .end local v12    # "sum":D
    .end local v74    # "sumb":D
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v12, v76

    goto :goto_4

    .end local v76    # "dnorm":D
    .local v12, "dnorm":D
    :cond_3
    move-wide/from16 v76, v12

    .line 714
    .end local v3    # "k":I
    .end local v12    # "dnorm":D
    .restart local v76    # "dnorm":D
    const-wide/16 v3, 0x0

    .line 715
    .end local v39    # "beta":D
    .local v3, "beta":D
    const/4 v5, 0x0

    .local v5, "m":I
    :goto_6
    if-ge v5, v11, :cond_6

    .line 716
    const-wide/16 v6, 0x0

    .line 717
    .local v6, "sum":D
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_7
    if-ge v12, v9, :cond_4

    .line 718
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v12, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v39

    invoke-virtual {v15, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v74

    mul-double v39, v39, v74

    add-double v6, v6, v39

    .line 717
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 720
    .end local v12    # "k":I
    :cond_4
    mul-double v12, v6, v6

    sub-double/2addr v3, v12

    .line 721
    const/4 v12, 0x0

    .restart local v12    # "k":I
    :goto_8
    if-ge v12, v9, :cond_5

    .line 722
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v39, v3

    .end local v3    # "beta":D
    .restart local v39    # "beta":D
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    move-wide/from16 v74, v3

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v12, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v3

    mul-double/2addr v3, v6

    add-double v3, v74, v3

    invoke-virtual {v13, v12, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 721
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v39

    goto :goto_8

    .end local v39    # "beta":D
    .restart local v3    # "beta":D
    :cond_5
    move-wide/from16 v39, v3

    .line 715
    .end local v3    # "beta":D
    .end local v6    # "sum":D
    .end local v12    # "k":I
    .restart local v39    # "beta":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 725
    .end local v5    # "m":I
    .end local v39    # "beta":D
    .restart local v3    # "beta":D
    :cond_6
    const-wide/16 v5, 0x0

    .line 726
    .end local v18    # "dsq":D
    .local v5, "dsq":D
    const-wide/16 v12, 0x0

    .line 727
    .local v12, "bsum":D
    const-wide/16 v18, 0x0

    .line 728
    .local v18, "dx":D
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_9
    if-ge v7, v8, :cond_9

    .line 730
    move-wide/from16 v39, v3

    .end local v3    # "beta":D
    .restart local v39    # "beta":D
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    .line 731
    .local v3, "d1":D
    mul-double v74, v3, v3

    add-double v5, v5, v74

    .line 732
    const-wide/16 v74, 0x0

    .line 733
    .local v74, "sum":D
    const/16 v48, 0x0

    move-wide/from16 v80, v3

    move/from16 v3, v48

    .local v3, "k":I
    .local v80, "d1":D
    :goto_a
    if-ge v3, v9, :cond_7

    .line 734
    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v3, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v84

    mul-double v82, v82, v84

    add-double v74, v74, v82

    .line 733
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 736
    .end local v3    # "k":I
    :cond_7
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v3, v3, v74

    add-double/2addr v12, v3

    .line 737
    add-int v3, v9, v7

    .line 738
    .local v3, "jp":I
    const/4 v4, 0x0

    move-wide/from16 v103, v74

    move-wide/from16 v74, v5

    move-wide/from16 v5, v103

    .local v4, "i":I
    .local v5, "sum":D
    .local v74, "dsq":D
    :goto_b
    if-ge v4, v8, :cond_8

    .line 739
    move/from16 v70, v10

    .end local v10    # "np":I
    .local v70, "np":I
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v82

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v82, v82, v84

    add-double v5, v5, v82

    .line 738
    add-int/lit8 v4, v4, 0x1

    move/from16 v10, v70

    goto :goto_b

    .end local v70    # "np":I
    .restart local v10    # "np":I
    :cond_8
    move/from16 v70, v10

    .line 741
    .end local v4    # "i":I
    .end local v10    # "np":I
    .restart local v70    # "np":I
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 742
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v82, v82, v5

    add-double v12, v12, v82

    .line 743
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v82, v82, v84

    add-double v18, v18, v82

    .line 728
    .end local v3    # "jp":I
    .end local v5    # "sum":D
    .end local v80    # "d1":D
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v3, v39

    move-wide/from16 v5, v74

    goto :goto_9

    .end local v39    # "beta":D
    .end local v70    # "np":I
    .end local v74    # "dsq":D
    .local v3, "beta":D
    .local v5, "dsq":D
    .restart local v10    # "np":I
    :cond_9
    move-wide/from16 v39, v3

    move/from16 v70, v10

    .line 746
    .end local v3    # "beta":D
    .end local v7    # "j":I
    .end local v10    # "np":I
    .restart local v39    # "beta":D
    .restart local v70    # "np":I
    mul-double v3, v18, v18

    add-double v74, v29, v18

    add-double v74, v74, v18

    mul-double v80, v5, v68

    add-double v74, v74, v80

    mul-double v74, v74, v5

    add-double v3, v3, v74

    add-double v3, v3, v39

    sub-double v39, v3, v12

    .line 750
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v74

    move-wide/from16 v80, v5

    .end local v5    # "dsq":D
    .local v80, "dsq":D
    add-double v5, v74, v66

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 757
    if-nez v1, :cond_c

    .line 759
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    .line 760
    .local v3, "d1":D
    mul-double v5, v3, v3

    mul-double v74, v23, v39

    add-double v43, v5, v74

    .line 761
    cmpg-double v5, v43, v21

    if-gez v5, :cond_b

    cmpl-double v5, v21, v71

    if-lez v5, :cond_b

    .line 762
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c
    if-ge v5, v8, :cond_a

    .line 763
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move v10, v2

    move-wide/from16 v74, v3

    .end local v2    # "knew":I
    .end local v3    # "d1":D
    .local v10, "knew":I
    .local v74, "d1":D
    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {v6, v5, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 764
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v3, v6

    invoke-virtual {v2, v5, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 762
    add-int/lit8 v5, v5, 0x1

    move v2, v10

    move-wide/from16 v3, v74

    goto :goto_c

    .end local v10    # "knew":I
    .end local v74    # "d1":D
    .restart local v2    # "knew":I
    .restart local v3    # "d1":D
    :cond_a
    move v10, v2

    move-wide/from16 v74, v3

    .line 766
    .end local v2    # "knew":I
    .end local v3    # "d1":D
    .end local v5    # "i":I
    .restart local v10    # "knew":I
    .restart local v74    # "d1":D
    const-wide/16 v21, 0x0

    .line 767
    const/16 v55, 0xe6

    move-wide/from16 v3, v60

    move/from16 v10, v70

    move-wide/from16 v12, v76

    move-wide/from16 v6, v78

    move-wide/from16 v18, v80

    goto/16 :goto_1

    .line 761
    .end local v10    # "knew":I
    .end local v74    # "d1":D
    .restart local v2    # "knew":I
    .restart local v3    # "d1":D
    :cond_b
    move v10, v2

    move-wide/from16 v74, v3

    .line 775
    .end local v2    # "knew":I
    .end local v3    # "d1":D
    .restart local v10    # "knew":I
    move v2, v10

    move-wide/from16 v18, v80

    goto/16 :goto_11

    .line 776
    .end local v10    # "knew":I
    .restart local v2    # "knew":I
    :cond_c
    move v10, v2

    .end local v2    # "knew":I
    .restart local v10    # "knew":I
    mul-double v3, v60, v60

    .line 777
    .local v3, "delsq":D
    const-wide/16 v5, 0x0

    .line 778
    .end local v49    # "scaden":D
    .local v5, "scaden":D
    const-wide/16 v48, 0x0

    .line 779
    .end local v51    # "biglsq":D
    .local v48, "biglsq":D
    const/4 v2, 0x0

    .line 780
    .end local v10    # "knew":I
    .restart local v2    # "knew":I
    const/4 v7, 0x0

    move-wide/from16 v74, v3

    move v4, v2

    move-wide/from16 v2, v48

    .end local v3    # "delsq":D
    .end local v48    # "biglsq":D
    .local v2, "biglsq":D
    .local v4, "knew":I
    .local v7, "k":I
    .local v74, "delsq":D
    :goto_d
    if-ge v7, v9, :cond_11

    .line 781
    iget v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v7, v10, :cond_d

    .line 782
    move-wide/from16 v88, v12

    goto/16 :goto_10

    .line 784
    :cond_d
    const-wide/16 v48, 0x0

    .line 785
    .local v48, "hdiag":D
    const/4 v10, 0x0

    .local v10, "m":I
    :goto_e
    if-ge v10, v11, :cond_e

    .line 787
    move/from16 v50, v4

    .end local v4    # "knew":I
    .local v50, "knew":I
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v7, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v51

    .line 788
    .local v51, "d1":D
    mul-double v82, v51, v51

    add-double v48, v48, v82

    .line 785
    .end local v51    # "d1":D
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v50

    goto :goto_e

    .end local v50    # "knew":I
    .restart local v4    # "knew":I
    :cond_e
    move/from16 v50, v4

    .line 791
    .end local v4    # "knew":I
    .end local v10    # "m":I
    .restart local v50    # "knew":I
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    .line 792
    .local v51, "d2":D
    mul-double v82, v39, v48

    mul-double v84, v51, v51

    add-double v82, v82, v84

    .line 793
    .local v82, "den":D
    const-wide/16 v53, 0x0

    .line 794
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_f
    if-ge v4, v8, :cond_f

    .line 796
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v7, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v84

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    sub-double v84, v84, v86

    .line 797
    .local v84, "d3":D
    mul-double v86, v84, v84

    add-double v53, v53, v86

    .line 794
    .end local v84    # "d3":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 801
    .end local v4    # "j":I
    :cond_f
    div-double v84, v53, v74

    .line 802
    .local v84, "d4":D
    move-wide/from16 v86, v5

    .end local v5    # "scaden":D
    .local v86, "scaden":D
    mul-double v4, v84, v84

    move-wide/from16 v88, v12

    move-wide/from16 v12, v66

    .end local v12    # "bsum":D
    .local v88, "bsum":D
    invoke-static {v12, v13, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    .line 803
    .local v4, "temp":D
    mul-double v12, v4, v82

    cmpl-double v6, v12, v86

    if-lez v6, :cond_10

    .line 804
    mul-double v12, v4, v82

    .line 805
    .end local v86    # "scaden":D
    .local v12, "scaden":D
    move v6, v7

    .line 806
    .end local v50    # "knew":I
    .local v6, "knew":I
    move-wide/from16 v43, v82

    move/from16 v50, v6

    move-wide/from16 v86, v12

    .line 810
    .end local v6    # "knew":I
    .end local v12    # "scaden":D
    .restart local v50    # "knew":I
    .restart local v86    # "scaden":D
    :cond_10
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    .line 811
    .local v12, "d5":D
    mul-double v90, v12, v12

    move-wide/from16 v92, v4

    .end local v4    # "temp":D
    .local v92, "temp":D
    mul-double v4, v92, v90

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    move/from16 v4, v50

    move-wide/from16 v5, v86

    .line 780
    .end local v12    # "d5":D
    .end local v48    # "hdiag":D
    .end local v50    # "knew":I
    .end local v51    # "d2":D
    .end local v82    # "den":D
    .end local v84    # "d4":D
    .end local v86    # "scaden":D
    .end local v92    # "temp":D
    .local v4, "knew":I
    .restart local v5    # "scaden":D
    :goto_10
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v12, v88

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    goto :goto_d

    .end local v88    # "bsum":D
    .local v12, "bsum":D
    :cond_11
    move/from16 v50, v4

    move-wide/from16 v86, v5

    move-wide/from16 v88, v12

    .end local v4    # "knew":I
    .end local v5    # "scaden":D
    .end local v12    # "bsum":D
    .restart local v50    # "knew":I
    .restart local v86    # "scaden":D
    .restart local v88    # "bsum":D
    move-wide/from16 v51, v2

    move/from16 v2, v50

    move-wide/from16 v18, v80

    move-wide/from16 v49, v86

    .line 823
    .end local v7    # "k":I
    .end local v50    # "knew":I
    .end local v74    # "delsq":D
    .end local v80    # "dsq":D
    .end local v86    # "scaden":D
    .end local v88    # "bsum":D
    .local v2, "knew":I
    .local v18, "dsq":D
    .restart local v49    # "scaden":D
    .local v51, "biglsq":D
    :goto_11
    const/16 v3, 0x168

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 824
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v8, :cond_14

    .line 827
    aget-wide v4, p1, v3

    .line 828
    .local v4, "d3":D
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    add-double/2addr v6, v12

    .line 829
    .local v6, "d4":D
    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    .line 830
    .local v12, "d1":D
    move-wide/from16 v74, v4

    .end local v4    # "d3":D
    .local v74, "d3":D
    aget-wide v4, p2, v3

    .line 831
    .local v4, "d2":D
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v80, v6

    .end local v6    # "d4":D
    .local v80, "d4":D
    invoke-static {v12, v13, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    invoke-virtual {v10, v3, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 832
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    cmpl-double v6, v6, v82

    if-nez v6, :cond_12

    .line 833
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v82, v4

    .end local v4    # "d2":D
    .local v82, "d2":D
    aget-wide v4, p1, v3

    invoke-virtual {v6, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_13

    .line 832
    .end local v82    # "d2":D
    .restart local v4    # "d2":D
    :cond_12
    move-wide/from16 v82, v4

    .line 835
    .end local v4    # "d2":D
    .restart local v82    # "d2":D
    :goto_13
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_13

    .line 836
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p2, v3

    invoke-virtual {v4, v3, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 824
    .end local v12    # "d1":D
    .end local v74    # "d3":D
    .end local v80    # "d4":D
    .end local v82    # "d2":D
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 840
    .end local v3    # "i":I
    :cond_14
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->computeObjectiveValue([D)D

    move-result-wide v3

    .line 842
    .end local v37    # "f":D
    .local v3, "f":D
    iget-boolean v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->isMinimize:Z

    if-nez v5, :cond_15

    .line 843
    neg-double v3, v3

    move-wide v6, v3

    goto :goto_14

    .line 842
    :cond_15
    move-wide v6, v3

    .line 845
    .end local v3    # "f":D
    .local v6, "f":D
    :goto_14
    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    .line 846
    move-wide/from16 v16, v6

    .line 847
    const/16 v55, 0x2d0

    move-wide/from16 v37, v6

    move-wide/from16 v3, v60

    move/from16 v10, v70

    move-wide/from16 v12, v76

    move-wide/from16 v6, v78

    goto/16 :goto_1

    .line 853
    :cond_16
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    .line 854
    .local v12, "fopt":D
    const-wide/16 v4, 0x0

    .line 855
    .local v4, "vquad":D
    const/4 v10, 0x0

    .line 856
    .local v10, "ih":I
    const/16 v37, 0x0

    move/from16 v3, v37

    .local v3, "j":I
    :goto_15
    if-ge v3, v8, :cond_19

    .line 857
    move/from16 v74, v1

    .end local v1    # "ntrits":I
    .local v74, "ntrits":I
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v37

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v80

    mul-double v37, v37, v80

    add-double v4, v4, v37

    .line 858
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-gt v1, v3, :cond_18

    .line 859
    move/from16 v48, v2

    .end local v2    # "knew":I
    .local v48, "knew":I
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v37

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v80

    mul-double v37, v37, v80

    .line 860
    .local v37, "temp":D
    if-ne v1, v3, :cond_17

    .line 861
    mul-double v37, v37, v68

    .line 863
    :cond_17
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v80

    mul-double v80, v80, v37

    add-double v4, v4, v80

    .line 864
    nop

    .end local v37    # "temp":D
    add-int/lit8 v10, v10, 0x1

    .line 858
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v48

    goto :goto_16

    .end local v48    # "knew":I
    .restart local v2    # "knew":I
    :cond_18
    move/from16 v48, v2

    .line 856
    .end local v1    # "i":I
    .end local v2    # "knew":I
    .restart local v48    # "knew":I
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v74

    goto :goto_15

    .end local v48    # "knew":I
    .end local v74    # "ntrits":I
    .local v1, "ntrits":I
    .restart local v2    # "knew":I
    :cond_19
    move/from16 v74, v1

    move/from16 v48, v2

    .line 867
    .end local v1    # "ntrits":I
    .end local v2    # "knew":I
    .end local v3    # "j":I
    .restart local v48    # "knew":I
    .restart local v74    # "ntrits":I
    const/4 v1, 0x0

    move-wide/from16 v37, v4

    .end local v4    # "vquad":D
    .local v1, "k":I
    .local v37, "vquad":D
    :goto_17
    if-ge v1, v9, :cond_1a

    .line 869
    invoke-virtual {v14, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    .line 870
    .local v2, "d1":D
    mul-double v4, v2, v2

    .line 871
    .local v4, "d2":D
    move-wide/from16 v80, v2

    .end local v2    # "d1":D
    .local v80, "d1":D
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    mul-double v2, v2, v68

    mul-double/2addr v2, v4

    add-double v37, v37, v2

    .line 867
    .end local v4    # "d2":D
    .end local v80    # "d1":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 873
    .end local v1    # "k":I
    :cond_1a
    sub-double v1, v6, v12

    sub-double v80, v1, v37

    .line 874
    .local v80, "diff":D
    move-wide/from16 v56, v34

    .line 875
    move-wide/from16 v34, v32

    .line 876
    invoke-static/range {v80 .. v81}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    .line 877
    cmpl-double v1, v76, v41

    if-lez v1, :cond_1b

    .line 878
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v1

    move/from16 v31, v1

    .line 883
    :cond_1b
    const-wide/high16 v82, 0x4000000000000000L    # 2.0

    if-lez v74, :cond_26

    .line 884
    cmpl-double v1, v37, v71

    if-gez v1, :cond_25

    .line 887
    sub-double v1, v6, v12

    div-double v1, v1, v37

    .line 888
    .end local v45    # "ratio":D
    .local v1, "ratio":D
    mul-double v3, v60, v68

    .line 889
    .local v3, "hDelta":D
    cmpg-double v5, v1, v64

    if-gtz v5, :cond_1c

    .line 891
    move-wide/from16 v84, v12

    move-wide/from16 v12, v76

    .end local v76    # "dnorm":D
    .local v12, "dnorm":D
    .local v84, "fopt":D
    invoke-static {v3, v4, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v45

    move-wide/from16 v103, v45

    move-wide/from16 v45, v1

    move-wide/from16 v1, v103

    .end local v60    # "delta":D
    .local v45, "delta":D
    goto :goto_18

    .line 892
    .end local v45    # "delta":D
    .end local v84    # "fopt":D
    .local v12, "fopt":D
    .restart local v60    # "delta":D
    .restart local v76    # "dnorm":D
    :cond_1c
    move-wide/from16 v84, v12

    move-wide/from16 v12, v76

    .end local v76    # "dnorm":D
    .local v12, "dnorm":D
    .restart local v84    # "fopt":D
    const-wide v45, 0x3fe6666666666666L    # 0.7

    cmpg-double v5, v1, v45

    if-gtz v5, :cond_1d

    .line 894
    invoke-static {v3, v4, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v45

    move-wide/from16 v103, v45

    move-wide/from16 v45, v1

    move-wide/from16 v1, v103

    .end local v60    # "delta":D
    .restart local v45    # "delta":D
    goto :goto_18

    .line 897
    .end local v45    # "delta":D
    .restart local v60    # "delta":D
    :cond_1d
    move-wide/from16 v45, v1

    .end local v1    # "ratio":D
    .local v45, "ratio":D
    mul-double v1, v12, v82

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 899
    .end local v60    # "delta":D
    .local v1, "delta":D
    :goto_18
    mul-double v60, v41, v58

    cmpg-double v5, v1, v60

    if-gtz v5, :cond_1e

    .line 900
    move-wide/from16 v1, v41

    .line 905
    :cond_1e
    cmpg-double v5, v6, v84

    if-gez v5, :cond_24

    .line 906
    move/from16 v5, v48

    .line 907
    .local v5, "ksav":I
    move-wide/from16 v60, v43

    .line 908
    .local v60, "densav":D
    mul-double v75, v1, v1

    .line 909
    .local v75, "delsq":D
    const-wide/16 v49, 0x0

    .line 910
    const-wide/16 v51, 0x0

    .line 911
    const/16 v48, 0x0

    .line 912
    const/16 v77, 0x0

    move-wide/from16 v86, v1

    move-wide/from16 v88, v3

    move-wide/from16 v1, v51

    move/from16 v3, v77

    .end local v51    # "biglsq":D
    .local v1, "biglsq":D
    .local v3, "k":I
    .local v86, "delta":D
    .local v88, "hDelta":D
    :goto_19
    if-ge v3, v9, :cond_22

    .line 913
    const-wide/16 v51, 0x0

    .line 914
    .local v51, "hdiag":D
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_1a
    if-ge v4, v11, :cond_1f

    .line 916
    move/from16 v77, v5

    .end local v5    # "ksav":I
    .local v77, "ksav":I
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v90

    .line 917
    .local v90, "d1":D
    mul-double v92, v90, v90

    add-double v51, v51, v92

    .line 914
    .end local v90    # "d1":D
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v77

    goto :goto_1a

    .end local v77    # "ksav":I
    .restart local v5    # "ksav":I
    :cond_1f
    move/from16 v77, v5

    .line 920
    .end local v4    # "m":I
    .end local v5    # "ksav":I
    .restart local v77    # "ksav":I
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    .line 921
    .local v4, "d1":D
    mul-double v90, v39, v51

    mul-double v92, v4, v4

    add-double v90, v90, v92

    .line 922
    .local v90, "den":D
    const-wide/16 v53, 0x0

    .line 923
    const/16 v92, 0x0

    move-wide/from16 v103, v4

    move/from16 v4, v92

    move-wide/from16 v92, v103

    .local v4, "j":I
    .local v92, "d1":D
    :goto_1b
    if-ge v4, v8, :cond_20

    .line 925
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v94

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v94, v94, v96

    .line 926
    .local v94, "d2":D
    mul-double v96, v94, v94

    add-double v53, v53, v96

    .line 923
    .end local v94    # "d2":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 930
    .end local v4    # "j":I
    :cond_20
    div-double v4, v53, v75

    .line 931
    .local v4, "d3":D
    move-wide/from16 v94, v4

    .end local v4    # "d3":D
    .local v94, "d3":D
    mul-double v4, v94, v94

    move-wide/from16 v96, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .end local v12    # "dnorm":D
    .restart local v96    # "dnorm":D
    invoke-static {v12, v13, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    .line 932
    .local v4, "temp":D
    mul-double v66, v4, v90

    cmpl-double v66, v66, v49

    if-lez v66, :cond_21

    .line 933
    mul-double v49, v4, v90

    .line 934
    move/from16 v48, v3

    .line 935
    move-wide/from16 v43, v90

    .line 939
    :cond_21
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    .line 940
    .local v12, "d4":D
    mul-double v98, v12, v12

    move/from16 v100, v3

    move-wide/from16 v101, v4

    .end local v3    # "k":I
    .end local v4    # "temp":D
    .local v100, "k":I
    .local v101, "temp":D
    mul-double v3, v101, v98

    .line 941
    .local v3, "d5":D
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 912
    .end local v3    # "d5":D
    .end local v12    # "d4":D
    .end local v51    # "hdiag":D
    .end local v90    # "den":D
    .end local v92    # "d1":D
    .end local v94    # "d3":D
    .end local v101    # "temp":D
    add-int/lit8 v3, v100, 0x1

    move/from16 v5, v77

    move-wide/from16 v12, v96

    .end local v100    # "k":I
    .local v3, "k":I
    goto :goto_19

    .end local v77    # "ksav":I
    .end local v96    # "dnorm":D
    .restart local v5    # "ksav":I
    .local v12, "dnorm":D
    :cond_22
    move/from16 v100, v3

    move/from16 v77, v5

    move-wide/from16 v96, v12

    .line 943
    .end local v3    # "k":I
    .end local v5    # "ksav":I
    .end local v12    # "dnorm":D
    .restart local v77    # "ksav":I
    .restart local v96    # "dnorm":D
    mul-double v3, v1, v68

    cmpg-double v3, v49, v3

    if-gtz v3, :cond_23

    .line 944
    move/from16 v3, v77

    .line 945
    .end local v48    # "knew":I
    .local v3, "knew":I
    move-wide/from16 v43, v60

    move-wide/from16 v51, v1

    move v5, v3

    move-wide/from16 v3, v43

    goto :goto_1c

    .line 943
    .end local v3    # "knew":I
    .restart local v48    # "knew":I
    :cond_23
    move-wide/from16 v51, v1

    move-wide/from16 v3, v43

    move/from16 v5, v48

    goto :goto_1c

    .line 905
    .end local v60    # "densav":D
    .end local v75    # "delsq":D
    .end local v77    # "ksav":I
    .end local v86    # "delta":D
    .end local v88    # "hDelta":D
    .end local v96    # "dnorm":D
    .local v1, "delta":D
    .local v3, "hDelta":D
    .restart local v12    # "dnorm":D
    .local v51, "biglsq":D
    :cond_24
    move-wide/from16 v86, v1

    move-wide/from16 v88, v3

    move-wide/from16 v96, v12

    .end local v1    # "delta":D
    .end local v3    # "hDelta":D
    .end local v12    # "dnorm":D
    .restart local v86    # "delta":D
    .restart local v88    # "hDelta":D
    .restart local v96    # "dnorm":D
    move-wide/from16 v3, v43

    move/from16 v5, v48

    goto :goto_1c

    .line 885
    .end local v84    # "fopt":D
    .end local v86    # "delta":D
    .end local v88    # "hDelta":D
    .end local v96    # "dnorm":D
    .local v12, "fopt":D
    .local v60, "delta":D
    .restart local v76    # "dnorm":D
    :cond_25
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TRUST_REGION_STEP_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {v37 .. v38}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 883
    :cond_26
    move-wide/from16 v84, v12

    move-wide/from16 v96, v76

    .end local v12    # "fopt":D
    .end local v76    # "dnorm":D
    .restart local v84    # "fopt":D
    .restart local v96    # "dnorm":D
    move-wide/from16 v3, v43

    move/from16 v5, v48

    move-wide/from16 v86, v60

    .line 953
    .end local v43    # "denom":D
    .end local v48    # "knew":I
    .end local v60    # "delta":D
    .local v3, "denom":D
    .local v5, "knew":I
    .restart local v86    # "delta":D
    :goto_1c
    move-object/from16 v66, v14

    move-wide/from16 v1, v39

    move-wide/from16 v13, v71

    move/from16 v12, v74

    .end local v14    # "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v39    # "beta":D
    .end local v74    # "ntrits":I
    .local v1, "beta":D
    .local v12, "ntrits":I
    .local v66, "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->update(DDI)V

    .line 955
    const/4 v10, 0x0

    .line 956
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    .line 957
    .local v13, "pqold":D
    nop

    .end local v1    # "beta":D
    .restart local v39    # "beta":D
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v43, v3

    const-wide/16 v2, 0x0

    .end local v3    # "denom":D
    .restart local v43    # "denom":D
    invoke-virtual {v1, v5, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 958
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    if-ge v1, v8, :cond_28

    .line 959
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v5, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    mul-double/2addr v2, v13

    .line 960
    .local v2, "temp":D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1e
    if-gt v4, v1, :cond_27

    .line 961
    move/from16 v48, v1

    .end local v1    # "i":I
    .local v48, "i":I
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v60, v2

    .end local v2    # "temp":D
    .local v60, "temp":D
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    move-wide/from16 v74, v2

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v5, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    mul-double v2, v2, v60

    add-double v2, v74, v2

    invoke-virtual {v1, v10, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 962
    add-int/lit8 v10, v10, 0x1

    .line 960
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v48

    move-wide/from16 v2, v60

    goto :goto_1e

    .end local v48    # "i":I
    .end local v60    # "temp":D
    .restart local v1    # "i":I
    .restart local v2    # "temp":D
    :cond_27
    move/from16 v48, v1

    move-wide/from16 v60, v2

    .line 958
    .end local v1    # "i":I
    .end local v2    # "temp":D
    .end local v4    # "j":I
    .restart local v48    # "i":I
    add-int/lit8 v1, v48, 0x1

    .end local v48    # "i":I
    .restart local v1    # "i":I
    goto :goto_1d

    :cond_28
    move/from16 v48, v1

    .line 965
    .end local v1    # "i":I
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_1f
    if-ge v1, v11, :cond_2a

    .line 966
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v5, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    mul-double v2, v2, v80

    .line 967
    .restart local v2    # "temp":D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_20
    if-ge v4, v9, :cond_29

    .line 968
    move-wide/from16 v60, v2

    .end local v2    # "temp":D
    .restart local v60    # "temp":D
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v74

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v76

    mul-double v76, v76, v60

    move-wide/from16 v88, v13

    .end local v13    # "pqold":D
    .local v88, "pqold":D
    add-double v13, v74, v76

    invoke-virtual {v2, v4, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 967
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v2, v60

    move-wide/from16 v13, v88

    goto :goto_20

    .end local v60    # "temp":D
    .end local v88    # "pqold":D
    .restart local v2    # "temp":D
    .restart local v13    # "pqold":D
    :cond_29
    move-wide/from16 v60, v2

    move-wide/from16 v88, v13

    .line 965
    .end local v2    # "temp":D
    .end local v4    # "k":I
    .end local v13    # "pqold":D
    .restart local v88    # "pqold":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .end local v88    # "pqold":D
    .restart local v13    # "pqold":D
    :cond_2a
    move-wide/from16 v88, v13

    .line 975
    .end local v1    # "m":I
    .end local v13    # "pqold":D
    .restart local v88    # "pqold":D
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v5, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 976
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v8, :cond_2b

    .line 977
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v2, v5, v1, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 978
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v5, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    move-object/from16 v13, v47

    .end local v47    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v13, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {v13, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 976
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .end local v13    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v47    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    :cond_2b
    move-object/from16 v13, v47

    .line 980
    .end local v1    # "i":I
    .end local v47    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v13    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_22
    if-ge v1, v9, :cond_2f

    .line 981
    const-wide/16 v2, 0x0

    .line 982
    .local v2, "suma":D
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_23
    if-ge v4, v11, :cond_2c

    .line 983
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v5, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v47

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v60

    mul-double v47, v47, v60

    add-double v2, v2, v47

    .line 982
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 985
    .end local v4    # "m":I
    :cond_2c
    const-wide/16 v47, 0x0

    .line 986
    .local v47, "sumb":D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_24
    if-ge v4, v8, :cond_2d

    .line 987
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v60

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v74

    mul-double v60, v60, v74

    add-double v47, v47, v60

    .line 986
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 989
    .end local v4    # "j":I
    :cond_2d
    mul-double v60, v2, v47

    .line 990
    .restart local v60    # "temp":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-ge v4, v8, :cond_2e

    .line 991
    invoke-virtual {v13, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v74

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v76

    mul-double v76, v76, v60

    move v14, v1

    move-wide/from16 v90, v2

    .end local v1    # "k":I
    .end local v2    # "suma":D
    .local v14, "k":I
    .local v90, "suma":D
    add-double v1, v74, v76

    invoke-virtual {v13, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 990
    add-int/lit8 v4, v4, 0x1

    move v1, v14

    move-wide/from16 v2, v90

    goto :goto_25

    .end local v14    # "k":I
    .end local v90    # "suma":D
    .restart local v1    # "k":I
    .restart local v2    # "suma":D
    :cond_2e
    move v14, v1

    move-wide/from16 v90, v2

    .line 980
    .end local v1    # "k":I
    .end local v2    # "suma":D
    .end local v4    # "i":I
    .end local v47    # "sumb":D
    .end local v60    # "temp":D
    .restart local v14    # "k":I
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "k":I
    .restart local v1    # "k":I
    goto :goto_22

    :cond_2f
    move v14, v1

    .line 994
    .end local v1    # "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    if-ge v1, v8, :cond_30

    .line 995
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    mul-double v47, v47, v80

    add-double v3, v3, v47

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1000
    .end local v1    # "i":I
    :cond_30
    cmpg-double v1, v6, v84

    if-gez v1, :cond_37

    .line 1001
    iput v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 1002
    const-wide/16 v1, 0x0

    .line 1003
    .end local v29    # "xoptsq":D
    .local v1, "xoptsq":D
    const/4 v3, 0x0

    .line 1004
    .end local v10    # "ih":I
    .local v3, "ih":I
    const/4 v4, 0x0

    move v10, v3

    .end local v3    # "ih":I
    .local v4, "j":I
    .restart local v10    # "ih":I
    :goto_27
    if-ge v4, v8, :cond_33

    .line 1005
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v29, v1

    .end local v1    # "xoptsq":D
    .restart local v29    # "xoptsq":D
    invoke-virtual {v14, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    invoke-virtual {v3, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1007
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    .line 1008
    .local v1, "d1":D
    mul-double v47, v1, v1

    add-double v29, v29, v47

    .line 1009
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-gt v3, v4, :cond_32

    .line 1010
    if-ge v3, v4, :cond_31

    .line 1011
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v47, v1

    .end local v1    # "d1":D
    .local v47, "d1":D
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    move-wide/from16 v60, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    move-wide/from16 v74, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    mul-double v1, v1, v74

    add-double v1, v60, v1

    invoke-virtual {v14, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_29

    .line 1010
    .end local v47    # "d1":D
    .restart local v1    # "d1":D
    :cond_31
    move-wide/from16 v47, v1

    .line 1013
    .end local v1    # "d1":D
    .restart local v47    # "d1":D
    :goto_29
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v60

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v74

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    mul-double v74, v74, v76

    move v14, v4

    move v2, v5

    .end local v4    # "j":I
    .end local v5    # "knew":I
    .local v2, "knew":I
    .local v14, "j":I
    add-double v4, v60, v74

    invoke-virtual {v1, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1014
    add-int/lit8 v10, v10, 0x1

    .line 1009
    add-int/lit8 v3, v3, 0x1

    move v5, v2

    move v4, v14

    move-wide/from16 v1, v47

    goto :goto_28

    .end local v2    # "knew":I
    .end local v14    # "j":I
    .end local v47    # "d1":D
    .restart local v1    # "d1":D
    .restart local v4    # "j":I
    .restart local v5    # "knew":I
    :cond_32
    move-wide/from16 v47, v1

    move v14, v4

    move v2, v5

    .line 1004
    .end local v1    # "d1":D
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "knew":I
    .restart local v2    # "knew":I
    .restart local v14    # "j":I
    add-int/lit8 v4, v14, 0x1

    move-wide/from16 v1, v29

    .end local v14    # "j":I
    .restart local v4    # "j":I
    goto :goto_27

    .end local v2    # "knew":I
    .end local v29    # "xoptsq":D
    .local v1, "xoptsq":D
    .restart local v5    # "knew":I
    :cond_33
    move-wide/from16 v29, v1

    move v14, v4

    move v2, v5

    .line 1017
    .end local v1    # "xoptsq":D
    .end local v4    # "j":I
    .end local v5    # "knew":I
    .restart local v2    # "knew":I
    .restart local v29    # "xoptsq":D
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2a
    if-ge v1, v9, :cond_36

    .line 1018
    const-wide/16 v3, 0x0

    .line 1019
    .local v3, "temp":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2b
    if-ge v5, v8, :cond_34

    .line 1020
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v47

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v60

    mul-double v47, v47, v60

    add-double v3, v3, v47

    .line 1019
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 1022
    .end local v5    # "j":I
    :cond_34
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    mul-double v3, v3, v47

    .line 1023
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2c
    if-ge v5, v8, :cond_35

    .line 1024
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v47, v2

    .end local v2    # "knew":I
    .local v47, "knew":I
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v60

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v74

    mul-double v74, v74, v3

    move/from16 v48, v1

    .end local v1    # "k":I
    .local v48, "k":I
    add-double v1, v60, v74

    invoke-virtual {v14, v5, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1023
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v47

    move/from16 v1, v48

    goto :goto_2c

    .end local v47    # "knew":I
    .end local v48    # "k":I
    .restart local v1    # "k":I
    .restart local v2    # "knew":I
    :cond_35
    move/from16 v48, v1

    move/from16 v47, v2

    .line 1017
    .end local v1    # "k":I
    .end local v2    # "knew":I
    .end local v3    # "temp":D
    .end local v5    # "i":I
    .restart local v47    # "knew":I
    .restart local v48    # "k":I
    add-int/lit8 v1, v48, 0x1

    .end local v48    # "k":I
    .restart local v1    # "k":I
    goto :goto_2a

    .end local v47    # "knew":I
    .restart local v2    # "knew":I
    :cond_36
    move/from16 v48, v1

    move/from16 v47, v2

    .end local v1    # "k":I
    .end local v2    # "knew":I
    .restart local v47    # "knew":I
    .restart local v48    # "k":I
    goto :goto_2d

    .line 1000
    .end local v47    # "knew":I
    .end local v48    # "k":I
    .local v5, "knew":I
    :cond_37
    move/from16 v47, v5

    .line 1033
    .end local v5    # "knew":I
    .restart local v47    # "knew":I
    :goto_2d
    if-lez v12, :cond_48

    .line 1034
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_2e
    if-ge v1, v9, :cond_38

    .line 1035
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v60

    sub-double v3, v3, v60

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1036
    const-wide/16 v2, 0x0

    invoke-virtual {v15, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1034
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1038
    .end local v1    # "k":I
    :cond_38
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2f
    if-ge v1, v11, :cond_3b

    .line 1039
    const-wide/16 v2, 0x0

    .line 1040
    .local v2, "sum":D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_30
    if-ge v4, v9, :cond_39

    .line 1041
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v60

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v74

    mul-double v60, v60, v74

    add-double v2, v2, v60

    .line 1040
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 1043
    .end local v4    # "k":I
    :cond_39
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_31
    if-ge v4, v9, :cond_3a

    .line 1044
    invoke-virtual {v15, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v60

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v74

    mul-double v74, v74, v2

    move v5, v1

    move-wide/from16 v76, v2

    .end local v1    # "j":I
    .end local v2    # "sum":D
    .local v5, "j":I
    .local v76, "sum":D
    add-double v1, v60, v74

    invoke-virtual {v15, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1043
    add-int/lit8 v4, v4, 0x1

    move v1, v5

    move-wide/from16 v2, v76

    goto :goto_31

    .end local v5    # "j":I
    .end local v76    # "sum":D
    .restart local v1    # "j":I
    .restart local v2    # "sum":D
    :cond_3a
    move v5, v1

    move-wide/from16 v76, v2

    .line 1038
    .end local v1    # "j":I
    .end local v2    # "sum":D
    .end local v4    # "k":I
    .restart local v5    # "j":I
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "j":I
    .restart local v1    # "j":I
    goto :goto_2f

    :cond_3b
    move v5, v1

    .line 1047
    .end local v1    # "j":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_32
    if-ge v1, v9, :cond_3d

    .line 1048
    const-wide/16 v2, 0x0

    .line 1049
    .restart local v2    # "sum":D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_33
    if-ge v4, v8, :cond_3c

    .line 1050
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v60

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v74

    mul-double v60, v60, v74

    add-double v2, v2, v60

    .line 1049
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 1052
    .end local v4    # "j":I
    :cond_3c
    invoke-virtual {v15, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    move-object/from16 v14, v66

    .end local v66    # "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v14, "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {v14, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1053
    invoke-virtual {v15, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-virtual {v15, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1047
    .end local v2    # "sum":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .end local v14    # "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v66    # "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    :cond_3d
    move-object/from16 v14, v66

    .line 1055
    .end local v1    # "k":I
    .end local v66    # "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v14    # "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const-wide/16 v1, 0x0

    .line 1056
    .local v1, "gqsq":D
    const-wide/16 v3, 0x0

    .line 1057
    .local v3, "gisq":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    if-ge v5, v8, :cond_41

    .line 1058
    const-wide/16 v60, 0x0

    .line 1059
    .local v60, "sum":D
    const/16 v48, 0x0

    move-wide/from16 v66, v1

    move/from16 v1, v48

    move-wide/from16 v103, v60

    move-wide/from16 v60, v3

    move-wide/from16 v2, v103

    .end local v3    # "gisq":D
    .local v1, "k":I
    .restart local v2    # "sum":D
    .local v60, "gisq":D
    .local v66, "gqsq":D
    :goto_35
    if-ge v1, v9, :cond_3e

    .line 1060
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v74

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    mul-double v74, v74, v76

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v76

    invoke-virtual {v15, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v90

    mul-double v76, v76, v90

    add-double v74, v74, v76

    add-double v2, v2, v74

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 1063
    .end local v1    # "k":I
    :cond_3e
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v74

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    cmpl-double v1, v74, v76

    if-nez v1, :cond_3f

    .line 1066
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v74, v6

    .end local v6    # "f":D
    .local v74, "f":D
    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    move v1, v10

    move/from16 v76, v11

    const-wide/16 v10, 0x0

    .end local v10    # "ih":I
    .end local v11    # "nptm":I
    .local v1, "ih":I
    .local v76, "nptm":I
    invoke-static {v10, v11, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    .line 1067
    .local v6, "d1":D
    mul-double v71, v6, v6

    add-double v66, v66, v71

    .line 1069
    invoke-static {v10, v11, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v90

    .line 1070
    .local v90, "d2":D
    mul-double v10, v90, v90

    add-double v6, v60, v10

    .line 1071
    .end local v60    # "gisq":D
    .end local v90    # "d2":D
    .local v6, "gisq":D
    goto :goto_36

    .end local v1    # "ih":I
    .end local v74    # "f":D
    .end local v76    # "nptm":I
    .local v6, "f":D
    .restart local v10    # "ih":I
    .restart local v11    # "nptm":I
    .restart local v60    # "gisq":D
    :cond_3f
    move-wide/from16 v74, v6

    move v1, v10

    move/from16 v76, v11

    .end local v6    # "f":D
    .end local v10    # "ih":I
    .end local v11    # "nptm":I
    .restart local v1    # "ih":I
    .restart local v74    # "f":D
    .restart local v76    # "nptm":I
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    cmpl-double v4, v6, v10

    if-nez v4, :cond_40

    .line 1074
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 1075
    .local v6, "d1":D
    mul-double v71, v6, v6

    add-double v66, v66, v71

    .line 1077
    invoke-static {v10, v11, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v90

    .line 1078
    .restart local v90    # "d2":D
    mul-double v10, v90, v90

    add-double v6, v60, v10

    .line 1079
    .end local v60    # "gisq":D
    .end local v90    # "d2":D
    .local v6, "gisq":D
    goto :goto_36

    .line 1081
    .end local v6    # "gisq":D
    .restart local v60    # "gisq":D
    :cond_40
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    .line 1082
    .local v6, "d1":D
    mul-double v10, v6, v6

    add-double v10, v66, v10

    .line 1083
    .end local v66    # "gqsq":D
    .local v10, "gqsq":D
    mul-double v66, v2, v2

    add-double v60, v60, v66

    move-wide/from16 v66, v10

    move-wide/from16 v6, v60

    .line 1085
    .end local v10    # "gqsq":D
    .end local v60    # "gisq":D
    .local v6, "gisq":D
    .restart local v66    # "gqsq":D
    :goto_36
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v10, v9, v5

    invoke-virtual {v4, v10, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1057
    .end local v2    # "sum":D
    add-int/lit8 v5, v5, 0x1

    move v10, v1

    move-wide v3, v6

    move-wide/from16 v1, v66

    move-wide/from16 v6, v74

    move/from16 v11, v76

    goto/16 :goto_34

    .end local v66    # "gqsq":D
    .end local v74    # "f":D
    .end local v76    # "nptm":I
    .local v1, "gqsq":D
    .restart local v3    # "gisq":D
    .local v6, "f":D
    .local v10, "ih":I
    .restart local v11    # "nptm":I
    :cond_41
    move-wide/from16 v66, v1

    move-wide/from16 v60, v3

    move-wide/from16 v74, v6

    move v1, v10

    move/from16 v76, v11

    .line 1091
    .end local v3    # "gisq":D
    .end local v5    # "i":I
    .end local v6    # "f":D
    .end local v10    # "ih":I
    .end local v11    # "nptm":I
    .local v1, "ih":I
    .restart local v60    # "gisq":D
    .restart local v66    # "gqsq":D
    .restart local v74    # "f":D
    .restart local v76    # "nptm":I
    add-int/lit8 v28, v28, 0x1

    .line 1092
    mul-double v3, v60, v62

    cmpg-double v2, v66, v3

    if-gez v2, :cond_42

    .line 1093
    const/16 v28, 0x0

    move/from16 v2, v28

    goto :goto_37

    .line 1092
    :cond_42
    move/from16 v2, v28

    .line 1095
    .end local v28    # "itest":I
    .local v2, "itest":I
    :goto_37
    const/4 v3, 0x3

    if-lt v2, v3, :cond_47

    .line 1096
    const/4 v3, 0x0

    move/from16 v11, v36

    .end local v36    # "nh":I
    .local v3, "i":I
    .local v11, "nh":I
    invoke-static {v9, v11}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    .local v4, "max":I
    :goto_38
    if-ge v3, v4, :cond_46

    .line 1097
    if-ge v3, v8, :cond_43

    .line 1098
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v7, v9, v3

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1100
    :cond_43
    if-ge v3, v9, :cond_44

    .line 1101
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1103
    :cond_44
    if-ge v3, v11, :cond_45

    .line 1104
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1106
    :cond_45
    const/4 v2, 0x0

    .line 1096
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_46
    move/from16 v28, v2

    goto :goto_39

    .line 1095
    .end local v3    # "i":I
    .end local v4    # "max":I
    .end local v11    # "nh":I
    .restart local v36    # "nh":I
    :cond_47
    move/from16 v11, v36

    .end local v36    # "nh":I
    .restart local v11    # "nh":I
    move/from16 v28, v2

    goto :goto_39

    .line 1033
    .end local v1    # "ih":I
    .end local v2    # "itest":I
    .end local v14    # "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v60    # "gisq":D
    .end local v74    # "f":D
    .end local v76    # "nptm":I
    .restart local v6    # "f":D
    .restart local v10    # "ih":I
    .local v11, "nptm":I
    .restart local v28    # "itest":I
    .restart local v36    # "nh":I
    .local v66, "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    :cond_48
    move-wide/from16 v74, v6

    move v1, v10

    move/from16 v76, v11

    move/from16 v11, v36

    move-object/from16 v14, v66

    .line 1115
    .end local v6    # "f":D
    .end local v10    # "ih":I
    .end local v36    # "nh":I
    .end local v66    # "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v1    # "ih":I
    .local v11, "nh":I
    .restart local v14    # "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v74    # "f":D
    .restart local v76    # "nptm":I
    :goto_39
    if-nez v12, :cond_49

    .line 1116
    const/16 v55, 0x3c

    move/from16 v36, v11

    move v1, v12

    move/from16 v2, v47

    move/from16 v10, v70

    move-wide/from16 v37, v74

    move/from16 v11, v76

    move-wide/from16 v6, v78

    move-wide/from16 v3, v86

    move-object/from16 v47, v13

    move-wide/from16 v12, v96

    goto/16 :goto_1

    .line 1118
    :cond_49
    mul-double v2, v37, v64

    add-double v2, v84, v2

    cmpg-double v2, v74, v2

    if-gtz v2, :cond_4a

    .line 1119
    const/16 v55, 0x3c

    move/from16 v36, v11

    move v1, v12

    move/from16 v2, v47

    move/from16 v10, v70

    move-wide/from16 v37, v74

    move/from16 v11, v76

    move-wide/from16 v6, v78

    move-wide/from16 v3, v86

    move-object/from16 v47, v13

    move-wide/from16 v12, v96

    goto/16 :goto_1

    .line 1127
    :cond_4a
    mul-double v82, v82, v86

    .line 1129
    .local v82, "d1":D
    mul-double v62, v62, v41

    .line 1130
    .local v62, "d2":D
    mul-double v2, v82, v82

    mul-double v4, v62, v62

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v53

    move/from16 v2, v47

    move-wide/from16 v37, v74

    move-wide/from16 v3, v86

    .line 1133
    .end local v1    # "ih":I
    .end local v47    # "knew":I
    .end local v62    # "d2":D
    .end local v74    # "f":D
    .end local v80    # "diff":D
    .end local v82    # "d1":D
    .end local v84    # "fopt":D
    .end local v86    # "delta":D
    .end local v88    # "pqold":D
    .local v2, "knew":I
    .local v3, "delta":D
    .local v37, "f":D
    :goto_3a
    const/16 v1, 0x28a

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1134
    const/4 v1, -0x1

    .line 1135
    .end local v2    # "knew":I
    .local v1, "knew":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3b
    if-ge v2, v9, :cond_4d

    .line 1136
    const-wide/16 v5, 0x0

    .line 1137
    .local v5, "sum":D
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3c
    if-ge v7, v8, :cond_4b

    .line 1139
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v2, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v47

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v60

    sub-double v47, v47, v60

    .line 1140
    .local v47, "d1":D
    mul-double v60, v47, v47

    add-double v5, v5, v60

    .line 1137
    .end local v47    # "d1":D
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 1142
    .end local v7    # "j":I
    :cond_4b
    cmpl-double v7, v5, v53

    if-lez v7, :cond_4c

    .line 1143
    move v1, v2

    .line 1144
    move-wide/from16 v53, v5

    .line 1135
    .end local v5    # "sum":D
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1154
    .end local v2    # "k":I
    :cond_4d
    if-ltz v1, :cond_50

    .line 1155
    invoke-static/range {v53 .. v54}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    .line 1156
    .local v5, "dist":D
    const/4 v2, -0x1

    if-ne v12, v2, :cond_4f

    .line 1158
    move v7, v1

    .end local v1    # "knew":I
    .local v7, "knew":I
    mul-double v1, v3, v64

    move-wide/from16 v47, v5

    .end local v5    # "dist":D
    .local v47, "dist":D
    mul-double v5, v47, v68

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    .line 1159
    .end local v3    # "delta":D
    .local v1, "delta":D
    mul-double v58, v58, v41

    cmpg-double v3, v1, v58

    if-gtz v3, :cond_4e

    .line 1160
    move-wide/from16 v1, v41

    move-wide v3, v1

    goto :goto_3d

    .line 1159
    :cond_4e
    move-wide v3, v1

    goto :goto_3d

    .line 1156
    .end local v7    # "knew":I
    .end local v47    # "dist":D
    .local v1, "knew":I
    .restart local v3    # "delta":D
    .restart local v5    # "dist":D
    :cond_4f
    move v7, v1

    move-wide/from16 v47, v5

    .line 1163
    .end local v1    # "knew":I
    .end local v5    # "dist":D
    .restart local v7    # "knew":I
    .restart local v47    # "dist":D
    :goto_3d
    const/4 v1, 0x0

    .line 1166
    .end local v12    # "ntrits":I
    .local v1, "ntrits":I
    mul-double v5, v47, v64

    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    .line 1167
    .local v5, "d1":D
    move v10, v1

    move-wide/from16 v1, v41

    .end local v41    # "rho":D
    .local v1, "rho":D
    .local v10, "ntrits":I
    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v41

    .line 1168
    .end local v78    # "adelt":D
    .local v41, "adelt":D
    mul-double v18, v41, v41

    .line 1169
    const/16 v55, 0x5a

    move-wide/from16 v103, v1

    move v2, v7

    move-wide/from16 v6, v41

    move-wide/from16 v41, v103

    move v1, v10

    move/from16 v36, v11

    move-object/from16 v47, v13

    move/from16 v10, v70

    move/from16 v11, v76

    move-wide/from16 v12, v96

    goto/16 :goto_1

    .line 1171
    .end local v5    # "d1":D
    .end local v7    # "knew":I
    .end local v10    # "ntrits":I
    .end local v47    # "dist":D
    .local v1, "knew":I
    .restart local v12    # "ntrits":I
    .local v41, "rho":D
    .restart local v78    # "adelt":D
    :cond_50
    move v7, v1

    move-wide/from16 v1, v41

    .end local v41    # "rho":D
    .local v1, "rho":D
    .restart local v7    # "knew":I
    const/4 v5, -0x1

    if-ne v12, v5, :cond_51

    .line 1172
    const/16 v55, 0x2a8

    move-wide/from16 v41, v1

    move v2, v7

    move/from16 v36, v11

    move v1, v12

    move-object/from16 v47, v13

    move/from16 v10, v70

    move/from16 v11, v76

    move-wide/from16 v6, v78

    move-wide/from16 v12, v96

    goto/16 :goto_1

    .line 1174
    :cond_51
    const-wide/16 v71, 0x0

    cmpl-double v5, v45, v71

    if-lez v5, :cond_52

    .line 1175
    const/16 v55, 0x3c

    move-wide/from16 v41, v1

    move v2, v7

    move/from16 v36, v11

    move v1, v12

    move-object/from16 v47, v13

    move/from16 v10, v70

    move/from16 v11, v76

    move-wide/from16 v6, v78

    move-wide/from16 v12, v96

    goto/16 :goto_1

    .line 1177
    :cond_52
    move-wide/from16 v5, v96

    .end local v96    # "dnorm":D
    .local v5, "dnorm":D
    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v41

    cmpl-double v10, v41, v1

    if-lez v10, :cond_53

    .line 1178
    const/16 v55, 0x3c

    move-wide/from16 v41, v1

    move v2, v7

    move/from16 v36, v11

    move v1, v12

    move-object/from16 v47, v13

    move/from16 v10, v70

    move/from16 v11, v76

    move-wide v12, v5

    move-wide/from16 v6, v78

    goto/16 :goto_1

    .line 1185
    :cond_53
    :goto_3e
    const/16 v10, 0x2a8

    invoke-static {v10}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1186
    move-wide/from16 v41, v1

    .end local v1    # "rho":D
    .restart local v41    # "rho":D
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    cmpl-double v1, v41, v1

    if-lez v1, :cond_56

    .line 1187
    mul-double v1, v41, v68

    .line 1188
    .end local v3    # "delta":D
    .local v1, "delta":D
    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    div-double v45, v41, v3

    .line 1189
    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    cmpg-double v3, v45, v3

    if-gtz v3, :cond_54

    .line 1190
    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    .end local v41    # "rho":D
    .local v3, "rho":D
    goto :goto_3f

    .line 1191
    .end local v3    # "rho":D
    .restart local v41    # "rho":D
    :cond_54
    const-wide v3, 0x406f400000000000L    # 250.0

    cmpg-double v3, v45, v3

    if-gtz v3, :cond_55

    .line 1192
    invoke-static/range {v45 .. v46}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    move-wide/from16 v47, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    mul-double v3, v3, v47

    .end local v41    # "rho":D
    .restart local v3    # "rho":D
    goto :goto_3f

    .line 1194
    .end local v3    # "rho":D
    .restart local v41    # "rho":D
    :cond_55
    mul-double v41, v41, v64

    move-wide/from16 v3, v41

    .line 1196
    .end local v41    # "rho":D
    .restart local v3    # "rho":D
    :goto_3f
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 1197
    const/4 v10, 0x0

    .line 1198
    .end local v12    # "ntrits":I
    .restart local v10    # "ntrits":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v31

    .line 1199
    const/16 v55, 0x3c

    move-wide/from16 v41, v3

    move/from16 v36, v11

    move-object/from16 v47, v13

    move/from16 v11, v76

    move-wide v3, v1

    move-wide v12, v5

    move v2, v7

    move v1, v10

    move/from16 v10, v70

    move-wide/from16 v6, v78

    goto/16 :goto_1

    .line 1205
    .end local v1    # "delta":D
    .end local v10    # "ntrits":I
    .local v3, "delta":D
    .restart local v12    # "ntrits":I
    .restart local v41    # "rho":D
    :cond_56
    const/4 v2, -0x1

    if-ne v12, v2, :cond_57

    .line 1206
    const/16 v55, 0x168

    move v2, v7

    move/from16 v36, v11

    move v1, v12

    move-object/from16 v47, v13

    move/from16 v10, v70

    move/from16 v11, v76

    move-wide v12, v5

    move-wide/from16 v6, v78

    goto/16 :goto_1

    .line 1205
    :cond_57
    move v2, v7

    .line 1210
    .end local v7    # "knew":I
    .local v2, "knew":I
    :goto_40
    const/16 v1, 0x2d0

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1211
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    cmpg-double v1, v47, v16

    if-gtz v1, :cond_5b

    .line 1212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, v8, :cond_5a

    .line 1215
    move v7, v2

    move-wide/from16 v47, v3

    .end local v2    # "knew":I
    .end local v3    # "delta":D
    .restart local v7    # "knew":I
    .local v47, "delta":D
    aget-wide v2, p1, v1

    .line 1216
    .local v2, "d3":D
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v58

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v60

    move-wide/from16 v96, v5

    .end local v5    # "dnorm":D
    .restart local v96    # "dnorm":D
    add-double v4, v58, v60

    .line 1217
    .local v4, "d4":D
    move v10, v7

    .end local v7    # "knew":I
    .local v10, "knew":I
    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 1218
    .local v6, "d1":D
    move-wide/from16 v58, v2

    .end local v2    # "d3":D
    .local v58, "d3":D
    aget-wide v2, p2, v1

    .line 1219
    .local v2, "d2":D
    move-wide/from16 v60, v4

    .end local v4    # "d4":D
    .local v60, "d4":D
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move v5, v10

    move/from16 v36, v11

    .end local v10    # "knew":I
    .end local v11    # "nh":I
    .local v5, "knew":I
    .restart local v36    # "nh":I
    invoke-static {v6, v7, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v10

    invoke-virtual {v4, v1, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1220
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v62

    cmpl-double v4, v10, v62

    if-nez v4, :cond_58

    .line 1221
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p1, v1

    invoke-virtual {v4, v1, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1223
    :cond_58
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v62

    cmpl-double v4, v10, v62

    if-nez v4, :cond_59

    .line 1224
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p2, v1

    invoke-virtual {v4, v1, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1212
    .end local v2    # "d2":D
    .end local v6    # "d1":D
    .end local v58    # "d3":D
    .end local v60    # "d4":D
    :cond_59
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    move/from16 v11, v36

    move-wide/from16 v3, v47

    move-wide/from16 v5, v96

    goto :goto_41

    .end local v36    # "nh":I
    .end local v47    # "delta":D
    .end local v96    # "dnorm":D
    .local v2, "knew":I
    .restart local v3    # "delta":D
    .local v5, "dnorm":D
    .restart local v11    # "nh":I
    :cond_5a
    move-wide/from16 v47, v3

    move-wide/from16 v96, v5

    move/from16 v36, v11

    move v5, v2

    .line 1227
    .end local v1    # "i":I
    .end local v2    # "knew":I
    .end local v3    # "delta":D
    .end local v11    # "nh":I
    .local v5, "knew":I
    .restart local v36    # "nh":I
    .restart local v47    # "delta":D
    .restart local v96    # "dnorm":D
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v37

    goto :goto_42

    .line 1211
    .end local v36    # "nh":I
    .end local v47    # "delta":D
    .end local v96    # "dnorm":D
    .restart local v2    # "knew":I
    .restart local v3    # "delta":D
    .local v5, "dnorm":D
    .restart local v11    # "nh":I
    :cond_5b
    move-wide/from16 v47, v3

    move-wide/from16 v96, v5

    move/from16 v36, v11

    move v5, v2

    .line 1229
    .end local v2    # "knew":I
    .end local v3    # "delta":D
    .end local v11    # "nh":I
    .local v5, "knew":I
    .restart local v36    # "nh":I
    .restart local v47    # "delta":D
    .restart local v96    # "dnorm":D
    :goto_42
    return-wide v37

    .line 457
    .end local v5    # "knew":I
    .end local v13    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v70    # "np":I
    .end local v76    # "nptm":I
    .end local v78    # "adelt":D
    .end local v96    # "dnorm":D
    .local v1, "ntrits":I
    .restart local v2    # "knew":I
    .local v6, "adelt":D
    .local v10, "np":I
    .local v11, "nptm":I
    .local v12, "dnorm":D
    .local v47, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v60, "delta":D
    :sswitch_6
    move-wide/from16 v78, v6

    move/from16 v70, v10

    move/from16 v76, v11

    move-wide/from16 v96, v12

    move-object/from16 v13, v47

    const/16 v20, 0x0

    move v12, v1

    move v10, v2

    .end local v1    # "ntrits":I
    .end local v2    # "knew":I
    .end local v6    # "adelt":D
    .end local v11    # "nptm":I
    .end local v47    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v10, "knew":I
    .local v12, "ntrits":I
    .restart local v13    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v70    # "np":I
    .restart local v76    # "nptm":I
    .restart local v78    # "adelt":D
    .restart local v96    # "dnorm":D
    move-wide/from16 v80, v34

    move-wide/from16 v73, v56

    move-wide/from16 v47, v96

    goto/16 :goto_4d

    .end local v13    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v70    # "np":I
    .end local v76    # "nptm":I
    .end local v78    # "adelt":D
    .end local v96    # "dnorm":D
    .restart local v1    # "ntrits":I
    .restart local v2    # "knew":I
    .restart local v6    # "adelt":D
    .local v10, "np":I
    .restart local v11    # "nptm":I
    .local v12, "dnorm":D
    .restart local v47    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    :sswitch_7
    move-wide/from16 v78, v6

    move/from16 v70, v10

    move/from16 v76, v11

    move-wide/from16 v96, v12

    move-object/from16 v13, v47

    const/16 v20, 0x0

    move v12, v1

    move v10, v2

    .end local v1    # "ntrits":I
    .end local v2    # "knew":I
    .end local v6    # "adelt":D
    .end local v11    # "nptm":I
    .end local v47    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v10, "knew":I
    .local v12, "ntrits":I
    .restart local v13    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v70    # "np":I
    .restart local v76    # "nptm":I
    .restart local v78    # "adelt":D
    .restart local v96    # "dnorm":D
    goto/16 :goto_48

    .line 459
    .end local v13    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v70    # "np":I
    .end local v76    # "nptm":I
    .end local v78    # "adelt":D
    .end local v96    # "dnorm":D
    .restart local v1    # "ntrits":I
    .restart local v2    # "knew":I
    .restart local v6    # "adelt":D
    .local v10, "np":I
    .restart local v11    # "nptm":I
    .local v12, "dnorm":D
    .restart local v47    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    :sswitch_8
    move-wide/from16 v78, v6

    move/from16 v70, v10

    move/from16 v76, v11

    move-wide/from16 v96, v12

    move-object/from16 v13, v47

    const/16 v20, 0x0

    move v12, v1

    move v10, v2

    .end local v1    # "ntrits":I
    .end local v2    # "knew":I
    .end local v6    # "adelt":D
    .end local v11    # "nptm":I
    .end local v47    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v10, "knew":I
    .local v12, "ntrits":I
    .restart local v13    # "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v70    # "np":I
    .restart local v76    # "nptm":I
    .restart local v78    # "adelt":D
    .restart local v96    # "dnorm":D
    const/16 v1, 0x14

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 460
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-eqz v1, :cond_63

    .line 461
    const/4 v1, 0x0

    .line 462
    .local v1, "ih":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_43
    if-ge v2, v8, :cond_5e

    .line 463
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_44
    if-gt v3, v2, :cond_5d

    .line 464
    if-ge v3, v2, :cond_5c

    .line 465
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v58

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    mul-double v58, v58, v64

    add-double v5, v5, v58

    invoke-virtual {v4, v2, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 467
    :cond_5c
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v58

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    mul-double v58, v58, v64

    add-double v5, v5, v58

    invoke-virtual {v4, v3, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 468
    add-int/lit8 v1, v1, 0x1

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 462
    .end local v3    # "i":I
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 471
    .end local v2    # "j":I
    :cond_5e
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v2

    if-le v2, v9, :cond_62

    .line 472
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_45
    if-ge v2, v9, :cond_61

    .line 473
    const-wide/16 v3, 0x0

    .line 474
    .local v3, "temp":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_46
    if-ge v5, v8, :cond_5f

    .line 475
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v2, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v58

    mul-double v6, v6, v58

    add-double/2addr v3, v6

    .line 474
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 477
    .end local v5    # "j":I
    :cond_5f
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double/2addr v3, v5

    .line 478
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_47
    if-ge v5, v8, :cond_60

    .line 479
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v58

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v2, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v64

    mul-double v64, v64, v3

    move v7, v1

    .end local v1    # "ih":I
    .local v7, "ih":I
    add-double v0, v58, v64

    invoke-virtual {v6, v5, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 478
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move v1, v7

    goto :goto_47

    .end local v7    # "ih":I
    .restart local v1    # "ih":I
    :cond_60
    move v7, v1

    .line 472
    .end local v1    # "ih":I
    .end local v3    # "temp":D
    .end local v5    # "i":I
    .restart local v7    # "ih":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_45

    .end local v7    # "ih":I
    .restart local v1    # "ih":I
    :cond_61
    move v7, v1

    .end local v1    # "ih":I
    .restart local v7    # "ih":I
    goto :goto_48

    .line 471
    .end local v2    # "k":I
    .end local v7    # "ih":I
    .restart local v1    # "ih":I
    :cond_62
    move v7, v1

    .line 495
    .end local v1    # "ih":I
    :cond_63
    :goto_48
    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 496
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 497
    .local v3, "gnew":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 498
    .local v4, "xbdi":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 499
    .local v5, "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 500
    .local v6, "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 502
    .local v7, "hred":Lorg/apache/commons/math3/linear/ArrayRealVector;
    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    .end local v60    # "delta":D
    .local v1, "delta":D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D

    move-result-object v11

    .line 504
    .local v11, "dsqCrvmin":[D
    aget-wide v18, v11, v20

    .line 505
    aget-wide v26, v11, v48

    .line 508
    move-wide/from16 v47, v1

    .line 509
    .local v47, "deltaOne":D
    nop

    .end local v1    # "delta":D
    .restart local v60    # "delta":D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 510
    .local v1, "deltaTwo":D
    move-object/from16 v58, v3

    move-object/from16 v59, v4

    move-wide/from16 v3, v47

    .end local v4    # "xbdi":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v47    # "deltaOne":D
    .local v3, "deltaOne":D
    .local v58, "gnew":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v59, "xbdi":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v47

    .line 511
    .end local v96    # "dnorm":D
    .local v47, "dnorm":D
    mul-double v64, v41, v68

    cmpg-double v64, v47, v64

    if-gez v64, :cond_6c

    .line 512
    const/4 v12, -0x1

    .line 514
    mul-double v3, v41, v62

    .line 515
    mul-double v53, v3, v3

    .line 516
    move-wide/from16 v62, v1

    .end local v1    # "deltaTwo":D
    .local v62, "deltaTwo":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v1

    add-int/lit8 v2, v31, 0x2

    if-gt v1, v2, :cond_64

    .line 517
    const/16 v55, 0x28a

    move v2, v10

    move v1, v12

    move-wide/from16 v3, v60

    move/from16 v10, v70

    move/from16 v11, v76

    move-wide/from16 v6, v78

    move-wide/from16 v103, v47

    move-object/from16 v47, v13

    move-wide/from16 v12, v103

    goto/16 :goto_1

    .line 527
    :cond_64
    move-wide/from16 v1, v32

    move-wide/from16 v32, v3

    move-wide/from16 v3, v34

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    .end local v5    # "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v6    # "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v1, "diffa":D
    .local v3, "diffb":D
    .local v32, "deltaOne":D
    .local v34, "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v35, "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    .line 528
    .end local v32    # "deltaOne":D
    .local v5, "deltaOne":D
    move-wide/from16 v32, v1

    move-wide/from16 v1, v56

    .end local v56    # "diffc":D
    .local v1, "diffc":D
    .local v32, "diffa":D
    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v56

    .line 529
    .local v56, "errbig":D
    const-wide/high16 v64, 0x3fc0000000000000L    # 0.125

    mul-double v64, v64, v41

    mul-double v64, v64, v41

    .line 530
    .local v64, "frhosq":D
    const-wide/16 v71, 0x0

    cmpl-double v66, v26, v71

    if-lez v66, :cond_65

    mul-double v66, v64, v26

    cmpl-double v66, v56, v66

    if-lez v66, :cond_65

    .line 532
    const/16 v55, 0x28a

    move-wide/from16 v56, v1

    move-wide/from16 v34, v3

    move v2, v10

    move v1, v12

    move-wide/from16 v3, v60

    move/from16 v10, v70

    move/from16 v11, v76

    move-wide/from16 v6, v78

    move-wide/from16 v103, v47

    move-object/from16 v47, v13

    move-wide/from16 v12, v103

    goto/16 :goto_1

    .line 534
    :cond_65
    div-double v66, v56, v41

    .line 535
    .local v66, "bdtol":D
    const/16 v71, 0x0

    move-wide/from16 v73, v1

    move/from16 v1, v71

    .local v1, "j":I
    .local v73, "diffc":D
    :goto_49
    if-ge v1, v8, :cond_6b

    .line 536
    move-wide/from16 v71, v66

    .line 537
    .local v71, "bdtest":D
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v80

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    cmpl-double v2, v80, v82

    if-nez v2, :cond_66

    .line 538
    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v71

    .line 540
    :cond_66
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v80

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    cmpl-double v2, v80, v82

    if-nez v2, :cond_67

    .line 541
    move-wide/from16 v80, v3

    .end local v3    # "diffb":D
    .local v80, "diffb":D
    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    neg-double v2, v2

    move-wide/from16 v71, v2

    .end local v71    # "bdtest":D
    .local v2, "bdtest":D
    goto :goto_4a

    .line 540
    .end local v2    # "bdtest":D
    .end local v80    # "diffb":D
    .restart local v3    # "diffb":D
    .restart local v71    # "bdtest":D
    :cond_67
    move-wide/from16 v80, v3

    .line 543
    .end local v3    # "diffb":D
    .restart local v80    # "diffb":D
    :goto_4a
    cmpg-double v2, v71, v66

    if-gez v2, :cond_69

    .line 544
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    mul-int v3, v1, v1

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    .line 545
    .local v2, "curv":D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4b
    if-ge v4, v9, :cond_68

    .line 547
    move-wide/from16 v82, v2

    .end local v2    # "curv":D
    .local v82, "curv":D
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    .line 548
    .local v2, "d1":D
    move/from16 v75, v1

    .end local v1    # "j":I
    .local v75, "j":I
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v86, v2, v2

    mul-double v84, v84, v86

    add-double v2, v82, v84

    .line 545
    .end local v82    # "curv":D
    .local v2, "curv":D
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v75

    goto :goto_4b

    .end local v75    # "j":I
    .restart local v1    # "j":I
    :cond_68
    move/from16 v75, v1

    move-wide/from16 v82, v2

    .line 550
    .end local v1    # "j":I
    .end local v2    # "curv":D
    .end local v4    # "k":I
    .restart local v75    # "j":I
    .restart local v82    # "curv":D
    mul-double v2, v82, v68

    mul-double v2, v2, v41

    add-double v71, v71, v2

    .line 551
    cmpg-double v1, v71, v66

    if-gez v1, :cond_6a

    .line 552
    const/16 v55, 0x28a

    goto :goto_4c

    .line 543
    .end local v75    # "j":I
    .end local v82    # "curv":D
    .restart local v1    # "j":I
    :cond_69
    move/from16 v75, v1

    .line 535
    .end local v1    # "j":I
    .end local v71    # "bdtest":D
    .restart local v75    # "j":I
    :cond_6a
    add-int/lit8 v1, v75, 0x1

    move-wide/from16 v3, v80

    .end local v75    # "j":I
    .restart local v1    # "j":I
    goto :goto_49

    .end local v80    # "diffb":D
    .restart local v3    # "diffb":D
    :cond_6b
    move/from16 v75, v1

    move-wide/from16 v80, v3

    .line 557
    .end local v1    # "j":I
    .end local v3    # "diffb":D
    .restart local v80    # "diffb":D
    :goto_4c
    const/16 v55, 0x2a8

    move v2, v10

    move v1, v12

    move-wide/from16 v3, v60

    move/from16 v10, v70

    move-wide/from16 v56, v73

    move/from16 v11, v76

    move-wide/from16 v6, v78

    move-wide/from16 v34, v80

    move-wide/from16 v103, v47

    move-object/from16 v47, v13

    move-wide/from16 v12, v103

    goto/16 :goto_1

    .line 559
    .end local v35    # "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v62    # "deltaTwo":D
    .end local v64    # "frhosq":D
    .end local v66    # "bdtol":D
    .end local v73    # "diffc":D
    .end local v80    # "diffb":D
    .local v1, "deltaTwo":D
    .local v3, "deltaOne":D
    .local v5, "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v6    # "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .local v34, "diffb":D
    .local v56, "diffc":D
    :cond_6c
    move-wide/from16 v62, v1

    move-wide/from16 v80, v34

    move-wide/from16 v73, v56

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    .end local v1    # "deltaTwo":D
    .end local v5    # "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v6    # "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v56    # "diffc":D
    .local v34, "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v35    # "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .restart local v62    # "deltaTwo":D
    .restart local v73    # "diffc":D
    .restart local v80    # "diffb":D
    add-int/lit8 v1, v12, 0x1

    .line 569
    .end local v3    # "deltaOne":D
    .end local v7    # "hred":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v11    # "dsqCrvmin":[D
    .end local v12    # "ntrits":I
    .end local v34    # "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v35    # "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v58    # "gnew":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v59    # "xbdi":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v62    # "deltaTwo":D
    .local v1, "ntrits":I
    :goto_4d
    const/16 v2, 0x5a

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 570
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v2, v29

    cmpg-double v2, v18, v2

    if-gtz v2, :cond_7c

    .line 571
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double v2, v2, v29

    .line 572
    .local v2, "fracsq":D
    const-wide/16 v4, 0x0

    .line 575
    .local v4, "sumpq":D
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_4e
    const-wide/high16 v11, -0x4020000000000000L    # -0.5

    if-ge v6, v9, :cond_70

    .line 576
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    add-double v4, v4, v34

    .line 577
    mul-double v11, v11, v29

    .line 578
    .local v11, "sum":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4f
    if-ge v7, v8, :cond_6d

    .line 579
    move/from16 v34, v1

    .end local v1    # "ntrits":I
    .local v34, "ntrits":I
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v56

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v58

    mul-double v56, v56, v58

    add-double v11, v11, v56

    .line 578
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v34

    goto :goto_4f

    .end local v34    # "ntrits":I
    .restart local v1    # "ntrits":I
    :cond_6d
    move/from16 v34, v1

    .line 582
    .end local v1    # "ntrits":I
    .end local v7    # "i":I
    .restart local v34    # "ntrits":I
    invoke-virtual {v14, v6, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 583
    mul-double v56, v11, v68

    sub-double v56, v2, v56

    .line 584
    .local v56, "temp":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_50
    if-ge v1, v8, :cond_6f

    .line 585
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v58, v2

    .end local v2    # "fracsq":D
    .local v58, "fracsq":D
    invoke-virtual {v7, v6, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    invoke-virtual {v13, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 586
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v6, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v62

    mul-double v62, v62, v11

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    mul-double v64, v64, v56

    move-wide/from16 v66, v4

    .end local v4    # "sumpq":D
    .local v66, "sumpq":D
    add-double v3, v62, v64

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 587
    add-int v2, v9, v1

    .line 588
    .local v2, "ip":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_51
    if-gt v3, v1, :cond_6e

    .line 589
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v62

    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v64, v64, v82

    add-double v62, v62, v64

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    invoke-virtual {v13, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v64, v64, v82

    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    add-double v5, v62, v64

    invoke-virtual {v4, v2, v3, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 588
    add-int/lit8 v3, v3, 0x1

    move v6, v7

    goto :goto_51

    .end local v7    # "k":I
    .restart local v6    # "k":I
    :cond_6e
    move v7, v6

    .line 584
    .end local v2    # "ip":I
    .end local v3    # "j":I
    .end local v6    # "k":I
    .restart local v7    # "k":I
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v2, v58

    move-wide/from16 v4, v66

    goto :goto_50

    .end local v7    # "k":I
    .end local v58    # "fracsq":D
    .end local v66    # "sumpq":D
    .local v2, "fracsq":D
    .restart local v4    # "sumpq":D
    .restart local v6    # "k":I
    :cond_6f
    move-wide/from16 v58, v2

    move-wide/from16 v66, v4

    move v7, v6

    .line 575
    .end local v1    # "i":I
    .end local v2    # "fracsq":D
    .end local v4    # "sumpq":D
    .end local v6    # "k":I
    .end local v11    # "sum":D
    .end local v56    # "temp":D
    .restart local v7    # "k":I
    .restart local v58    # "fracsq":D
    .restart local v66    # "sumpq":D
    add-int/lit8 v6, v7, 0x1

    move/from16 v1, v34

    .end local v7    # "k":I
    .restart local v6    # "k":I
    goto/16 :goto_4e

    .end local v34    # "ntrits":I
    .end local v58    # "fracsq":D
    .end local v66    # "sumpq":D
    .local v1, "ntrits":I
    .restart local v2    # "fracsq":D
    .restart local v4    # "sumpq":D
    :cond_70
    move/from16 v34, v1

    move-wide/from16 v58, v2

    move v7, v6

    .line 599
    .end local v1    # "ntrits":I
    .end local v2    # "fracsq":D
    .end local v6    # "k":I
    .restart local v34    # "ntrits":I
    .restart local v58    # "fracsq":D
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_52
    move/from16 v2, v76

    .end local v76    # "nptm":I
    .local v2, "nptm":I
    if-ge v1, v2, :cond_77

    .line 600
    const-wide/16 v6, 0x0

    .line 601
    .local v6, "sumz":D
    const-wide/16 v56, 0x0

    .line 602
    .local v56, "sumw":D
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_53
    if-ge v3, v9, :cond_71

    .line 603
    move-wide/from16 v62, v11

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v3, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    add-double/2addr v6, v11

    .line 604
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v3, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v66

    move-wide/from16 v75, v4

    .end local v4    # "sumpq":D
    .local v75, "sumpq":D
    mul-double v4, v64, v66

    invoke-virtual {v11, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 605
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    add-double v56, v56, v4

    .line 602
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v11, v62

    move-wide/from16 v4, v75

    goto :goto_53

    .end local v75    # "sumpq":D
    .restart local v4    # "sumpq":D
    :cond_71
    move-wide/from16 v75, v4

    move-wide/from16 v62, v11

    .line 607
    .end local v3    # "k":I
    .end local v4    # "sumpq":D
    .restart local v75    # "sumpq":D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_54
    if-ge v3, v8, :cond_74

    .line 608
    mul-double v4, v58, v6

    mul-double v11, v56, v68

    sub-double/2addr v4, v11

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double/2addr v4, v11

    .line 609
    .local v4, "sum":D
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_55
    if-ge v11, v9, :cond_72

    .line 610
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v11, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v66

    mul-double v64, v64, v66

    add-double v4, v4, v64

    .line 609
    add-int/lit8 v11, v11, 0x1

    goto :goto_55

    .line 612
    .end local v11    # "k":I
    :cond_72
    invoke-virtual {v13, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 613
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_56
    if-ge v11, v9, :cond_73

    .line 614
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v35, v2

    .end local v2    # "nptm":I
    .local v35, "nptm":I
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v11, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v64

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v11, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v66

    mul-double v66, v66, v4

    move/from16 v77, v1

    .end local v1    # "m":I
    .local v77, "m":I
    add-double v1, v64, v66

    invoke-virtual {v12, v11, v3, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 613
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v35

    move/from16 v1, v77

    goto :goto_56

    .end local v35    # "nptm":I
    .end local v77    # "m":I
    .restart local v1    # "m":I
    .restart local v2    # "nptm":I
    :cond_73
    move/from16 v77, v1

    move/from16 v35, v2

    .line 607
    .end local v1    # "m":I
    .end local v2    # "nptm":I
    .end local v4    # "sum":D
    .end local v11    # "k":I
    .restart local v35    # "nptm":I
    .restart local v77    # "m":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .end local v35    # "nptm":I
    .end local v77    # "m":I
    .restart local v1    # "m":I
    .restart local v2    # "nptm":I
    :cond_74
    move/from16 v77, v1

    move/from16 v35, v2

    .line 619
    .end local v1    # "m":I
    .end local v2    # "nptm":I
    .end local v3    # "j":I
    .restart local v35    # "nptm":I
    .restart local v77    # "m":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_57
    if-ge v1, v8, :cond_76

    .line 620
    add-int v2, v1, v9

    .line 621
    .local v2, "ip":I
    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    .line 622
    .local v3, "temp":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_58
    if-gt v5, v1, :cond_75

    .line 623
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v2, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v64

    invoke-virtual {v13, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v66

    mul-double v66, v66, v3

    move-wide/from16 v82, v3

    .end local v3    # "temp":D
    .local v82, "temp":D
    add-double v3, v64, v66

    invoke-virtual {v11, v2, v5, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 622
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v3, v82

    goto :goto_58

    .end local v82    # "temp":D
    .restart local v3    # "temp":D
    :cond_75
    move-wide/from16 v82, v3

    .line 619
    .end local v2    # "ip":I
    .end local v3    # "temp":D
    .end local v5    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 599
    .end local v1    # "i":I
    .end local v6    # "sumz":D
    .end local v56    # "sumw":D
    :cond_76
    add-int/lit8 v1, v77, 0x1

    move-wide/from16 v11, v62

    move-wide/from16 v4, v75

    move/from16 v76, v35

    .end local v77    # "m":I
    .local v1, "m":I
    goto/16 :goto_52

    .end local v35    # "nptm":I
    .end local v75    # "sumpq":D
    .local v2, "nptm":I
    .local v4, "sumpq":D
    :cond_77
    move/from16 v77, v1

    move/from16 v35, v2

    move-wide/from16 v75, v4

    move-wide/from16 v62, v11

    .line 633
    .end local v1    # "m":I
    .end local v2    # "nptm":I
    .end local v4    # "sumpq":D
    .restart local v35    # "nptm":I
    .restart local v75    # "sumpq":D
    const/4 v1, 0x0

    .line 634
    .local v1, "ih":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_59
    if-ge v2, v8, :cond_7a

    .line 635
    mul-double v4, v75, v62

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v13, v2, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 636
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_5a
    if-ge v3, v9, :cond_78

    .line 637
    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v3, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    mul-double/2addr v6, v11

    add-double/2addr v4, v6

    invoke-virtual {v13, v2, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 638
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v3, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    sub-double/2addr v5, v11

    invoke-virtual {v4, v3, v2, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 636
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 640
    .end local v3    # "k":I
    :cond_78
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5b
    if-gt v3, v2, :cond_79

    .line 641
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v13, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v56

    mul-double v11, v11, v56

    add-double/2addr v5, v11

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v56

    mul-double v11, v11, v56

    add-double/2addr v5, v11

    invoke-virtual {v4, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 645
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v5, v9, v3

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v7, v9, v2

    invoke-virtual {v6, v7, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    invoke-virtual {v4, v5, v2, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 646
    add-int/lit8 v1, v1, 0x1

    .line 640
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 634
    .end local v3    # "i":I
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 649
    .end local v2    # "j":I
    :cond_7a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5c
    if-ge v2, v8, :cond_7b

    .line 650
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 651
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 652
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 653
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 654
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v2, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 649
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 656
    .end local v2    # "i":I
    :cond_7b
    const-wide/16 v2, 0x0

    move-wide/from16 v29, v2

    .end local v29    # "xoptsq":D
    .local v2, "xoptsq":D
    goto :goto_5d

    .line 570
    .end local v2    # "xoptsq":D
    .end local v34    # "ntrits":I
    .end local v35    # "nptm":I
    .end local v58    # "fracsq":D
    .end local v75    # "sumpq":D
    .local v1, "ntrits":I
    .restart local v29    # "xoptsq":D
    .restart local v76    # "nptm":I
    :cond_7c
    move/from16 v34, v1

    move/from16 v35, v76

    .line 658
    .end local v1    # "ntrits":I
    .end local v76    # "nptm":I
    .restart local v34    # "ntrits":I
    .restart local v35    # "nptm":I
    :goto_5d
    if-nez v34, :cond_7d

    .line 659
    const/16 v55, 0xd2

    move-wide/from16 v1, v47

    move-object/from16 v47, v13

    move-wide v12, v1

    move v2, v10

    move/from16 v1, v34

    move/from16 v11, v35

    move-wide/from16 v3, v60

    move/from16 v10, v70

    move-wide/from16 v56, v73

    move-wide/from16 v6, v78

    move-wide/from16 v34, v80

    goto/16 :goto_1

    .line 661
    :cond_7d
    const/16 v55, 0xe6

    move-wide/from16 v1, v47

    move-object/from16 v47, v13

    move-wide v12, v1

    move v2, v10

    move/from16 v1, v34

    move/from16 v11, v35

    move-wide/from16 v3, v60

    move/from16 v10, v70

    move-wide/from16 v56, v73

    move-wide/from16 v6, v78

    move-wide/from16 v34, v80

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_8
        0x3c -> :sswitch_7
        0x5a -> :sswitch_6
        0xd2 -> :sswitch_5
        0xe6 -> :sswitch_4
        0x168 -> :sswitch_3
        0x28a -> :sswitch_2
        0x2a8 -> :sswitch_1
        0x2d0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static caller(I)Ljava/lang/String;
    .locals 5
    .param p0, "n"    # I

    .line 2449
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 2450
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 2451
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    aget-object v2, v1, p0

    .line 2452
    .local v2, "e":Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private prelim([D[D)V
    .locals 48
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .line 1597
    move-object/from16 v0, p0

    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 1599
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v1

    .line 1600
    .local v1, "n":I
    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 1601
    .local v2, "npt":I
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v3

    .line 1603
    .local v3, "ndim":I
    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    iget-wide v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double/2addr v4, v6

    .line 1604
    .local v4, "rhosq":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v8, v6, v4

    .line 1605
    .local v8, "recip":D
    add-int/lit8 v10, v1, 0x1

    .line 1610
    .local v10, "np":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    const-wide/16 v12, 0x0

    if-ge v11, v1, :cond_2

    .line 1611
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v16, v6

    invoke-virtual {v15, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-virtual {v14, v11, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1612
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    if-ge v6, v2, :cond_0

    .line 1613
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v11, v12, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1612
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1615
    .end local v6    # "k":I
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_1

    .line 1616
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v11, v12, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1615
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1610
    .end local v6    # "i":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v6, v16

    goto :goto_0

    :cond_2
    move-wide/from16 v16, v6

    .line 1619
    .end local v11    # "j":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    mul-int v7, v1, v10

    const/4 v11, 0x2

    div-int/2addr v7, v11

    .local v7, "max":I
    :goto_3
    if-ge v6, v7, :cond_3

    .line 1620
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v6, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1619
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1622
    .end local v6    # "i":I
    .end local v7    # "max":I
    :cond_3
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_4
    if-ge v6, v2, :cond_5

    .line 1623
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v6, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1624
    const/4 v7, 0x0

    .local v7, "j":I
    sub-int v14, v2, v10

    .local v14, "max":I
    :goto_5
    if-ge v7, v14, :cond_4

    .line 1625
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v6, v7, v12, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1624
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1622
    .end local v7    # "j":I
    .end local v14    # "max":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1633
    .end local v6    # "k":I
    :cond_5
    const/4 v6, 0x0

    .line 1634
    .local v6, "ipt":I
    const/4 v7, 0x0

    .line 1635
    .local v7, "jpt":I
    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    .line 1637
    .local v14, "fbeg":D
    :goto_6
    move-wide/from16 v18, v12

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v12

    .line 1638
    .local v12, "nfm":I
    sub-int v13, v12, v1

    .line 1639
    .local v13, "nfx":I
    add-int/lit8 v11, v12, -0x1

    .line 1640
    .local v11, "nfmm":I
    move/from16 v21, v3

    .end local v3    # "ndim":I
    .local v21, "ndim":I
    add-int/lit8 v3, v13, -0x1

    .line 1641
    .local v3, "nfxm":I
    const-wide/16 v22, 0x0

    .line 1642
    .local v22, "stepa":D
    const-wide/16 v24, 0x0

    .line 1643
    .local v24, "stepb":D
    move-wide/from16 v26, v4

    .end local v4    # "rhosq":D
    .local v26, "rhosq":D
    mul-int/lit8 v4, v1, 0x2

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    const/4 v5, 0x1

    if-gt v12, v4, :cond_b

    .line 1644
    if-lt v12, v5, :cond_7

    if-gt v12, v1, :cond_7

    .line 1646
    move v4, v6

    .end local v6    # "ipt":I
    .local v4, "ipt":I
    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 1647
    .end local v22    # "stepa":D
    .local v5, "stepa":D
    move/from16 v31, v4

    .end local v4    # "ipt":I
    .local v31, "ipt":I
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v22

    cmpl-double v4, v22, v18

    if-nez v4, :cond_6

    .line 1648
    neg-double v4, v5

    .end local v5    # "stepa":D
    .local v4, "stepa":D
    goto :goto_7

    .line 1647
    .end local v4    # "stepa":D
    .restart local v5    # "stepa":D
    :cond_6
    move-wide v4, v5

    .line 1651
    .end local v5    # "stepa":D
    .restart local v4    # "stepa":D
    :goto_7
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v12, v11, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move/from16 v32, v10

    move/from16 v33, v13

    move-wide/from16 v34, v14

    move-wide/from16 v13, v24

    move/from16 v6, v31

    goto/16 :goto_a

    .line 1644
    .end local v4    # "stepa":D
    .end local v31    # "ipt":I
    .restart local v6    # "ipt":I
    .restart local v22    # "stepa":D
    :cond_7
    move/from16 v31, v6

    .line 1652
    .end local v6    # "ipt":I
    .restart local v31    # "ipt":I
    if-le v12, v1, :cond_a

    .line 1653
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v13, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v22

    .line 1654
    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v4, v4

    .line 1655
    .end local v24    # "stepb":D
    .local v4, "stepb":D
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    cmpl-double v6, v24, v18

    if-nez v6, :cond_8

    .line 1656
    move-wide/from16 v24, v4

    .end local v4    # "stepb":D
    .restart local v24    # "stepb":D
    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v4, v4, v28

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v32, v7

    .end local v7    # "jpt":I
    .local v32, "jpt":I
    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    .end local v24    # "stepb":D
    .restart local v4    # "stepb":D
    goto :goto_8

    .line 1655
    .end local v32    # "jpt":I
    .restart local v7    # "jpt":I
    :cond_8
    move-wide/from16 v24, v4

    move/from16 v32, v7

    .line 1659
    .end local v7    # "jpt":I
    .restart local v32    # "jpt":I
    :goto_8
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    cmpl-double v6, v6, v18

    if-nez v6, :cond_9

    .line 1660
    const-wide/high16 v24, -0x4000000000000000L    # -2.0

    iget-wide v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v6, v6, v24

    move-wide/from16 v24, v4

    .end local v4    # "stepb":D
    .restart local v24    # "stepb":D
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    .end local v24    # "stepb":D
    .restart local v4    # "stepb":D
    goto :goto_9

    .line 1659
    :cond_9
    move-wide/from16 v24, v4

    .line 1663
    :goto_9
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v12, v3, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move/from16 v33, v13

    move-wide/from16 v34, v14

    move/from16 v6, v31

    move/from16 v7, v32

    move-wide v13, v4

    move/from16 v32, v10

    move-wide/from16 v4, v22

    goto :goto_a

    .line 1652
    .end local v4    # "stepb":D
    .end local v32    # "jpt":I
    .restart local v7    # "jpt":I
    .restart local v24    # "stepb":D
    :cond_a
    move/from16 v32, v7

    .end local v7    # "jpt":I
    .restart local v32    # "jpt":I
    move/from16 v33, v13

    move-wide/from16 v34, v14

    move-wide/from16 v4, v22

    move-wide/from16 v13, v24

    move/from16 v6, v31

    move/from16 v32, v10

    goto :goto_a

    .line 1666
    .end local v31    # "ipt":I
    .end local v32    # "jpt":I
    .restart local v6    # "ipt":I
    .restart local v7    # "jpt":I
    :cond_b
    move/from16 v31, v6

    move/from16 v32, v7

    .end local v6    # "ipt":I
    .end local v7    # "jpt":I
    .restart local v31    # "ipt":I
    .restart local v32    # "jpt":I
    sub-int v4, v12, v10

    div-int/2addr v4, v1

    .line 1667
    .local v4, "tmp1":I
    mul-int v5, v4, v1

    sub-int v5, v12, v5

    sub-int/2addr v5, v1

    .line 1668
    .end local v32    # "jpt":I
    .local v5, "jpt":I
    add-int v6, v5, v4

    .line 1669
    .end local v31    # "ipt":I
    .restart local v6    # "ipt":I
    if-le v6, v1, :cond_c

    .line 1670
    move v7, v5

    .line 1671
    .local v7, "tmp2":I
    sub-int v5, v6, v1

    .line 1672
    move v6, v7

    .line 1675
    .end local v7    # "tmp2":I
    :cond_c
    add-int/lit8 v7, v6, -0x1

    .line 1676
    .local v7, "iptMinus1":I
    move/from16 v31, v4

    .end local v4    # "tmp1":I
    .local v31, "tmp1":I
    add-int/lit8 v4, v5, -0x1

    .line 1677
    .local v4, "jptMinus1":I
    move/from16 v32, v10

    .end local v10    # "np":I
    .local v32, "np":I
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v33, v13

    .end local v13    # "nfx":I
    .local v33, "nfx":I
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v34, v14

    .end local v14    # "fbeg":D
    .local v34, "fbeg":D
    invoke-virtual {v13, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    invoke-virtual {v10, v12, v7, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1678
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v5, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    invoke-virtual {v10, v12, v4, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move v7, v5

    move-wide/from16 v4, v22

    move-wide/from16 v13, v24

    .line 1684
    .end local v5    # "jpt":I
    .end local v22    # "stepa":D
    .end local v24    # "stepb":D
    .end local v31    # "tmp1":I
    .local v4, "stepa":D
    .local v7, "jpt":I
    .local v13, "stepb":D
    :goto_a
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_b
    if-ge v10, v1, :cond_f

    .line 1685
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v22, v6

    move/from16 v23, v7

    .end local v6    # "ipt":I
    .end local v7    # "jpt":I
    .local v22, "ipt":I
    .local v23, "jpt":I
    aget-wide v6, p1, v10

    move/from16 v24, v1

    .end local v1    # "n":I
    .local v24, "n":I
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    move-wide/from16 v40, v8

    .end local v8    # "recip":D
    .local v40, "recip":D
    add-double v8, v36, v38

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    aget-wide v8, p2, v10

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    invoke-virtual {v15, v10, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1688
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    cmpl-double v1, v6, v8

    if-nez v1, :cond_d

    .line 1689
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v6, p1, v10

    invoke-virtual {v1, v10, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1691
    :cond_d
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    cmpl-double v1, v6, v8

    if-nez v1, :cond_e

    .line 1692
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v6, p2, v10

    invoke-virtual {v1, v10, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1684
    :cond_e
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v1, v24

    move-wide/from16 v8, v40

    goto :goto_b

    .end local v22    # "ipt":I
    .end local v23    # "jpt":I
    .end local v24    # "n":I
    .end local v40    # "recip":D
    .restart local v1    # "n":I
    .restart local v6    # "ipt":I
    .restart local v7    # "jpt":I
    .restart local v8    # "recip":D
    :cond_f
    move/from16 v24, v1

    move/from16 v22, v6

    move/from16 v23, v7

    move-wide/from16 v40, v8

    .line 1696
    .end local v1    # "n":I
    .end local v6    # "ipt":I
    .end local v7    # "jpt":I
    .end local v8    # "recip":D
    .end local v10    # "j":I
    .restart local v22    # "ipt":I
    .restart local v23    # "jpt":I
    .restart local v24    # "n":I
    .restart local v40    # "recip":D
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->computeObjectiveValue([D)D

    move-result-wide v6

    .line 1697
    .local v6, "objectiveValue":D
    iget-boolean v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v1, :cond_10

    move-wide v8, v6

    goto :goto_c

    :cond_10
    neg-double v8, v6

    .line 1698
    .local v8, "f":D
    :goto_c
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v1

    .line 1699
    .local v1, "numEval":I
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v12, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1701
    const/4 v10, 0x0

    const/4 v15, 0x1

    if-ne v1, v15, :cond_11

    .line 1702
    move-wide/from16 v34, v8

    .line 1703
    iput v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    goto :goto_d

    .line 1704
    :cond_11
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v15, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    cmpg-double v10, v8, v36

    if-gez v10, :cond_12

    .line 1705
    iput v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 1714
    :cond_12
    :goto_d
    mul-int/lit8 v10, v24, 0x2

    const/16 v30, 0x1

    add-int/lit8 v10, v10, 0x1

    if-gt v1, v10, :cond_18

    .line 1715
    const-wide/high16 v36, -0x4020000000000000L    # -0.5

    const/4 v10, 0x2

    if-lt v1, v10, :cond_14

    add-int/lit8 v10, v24, 0x1

    if-gt v1, v10, :cond_14

    .line 1717
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    sub-double v28, v8, v34

    move-wide/from16 v38, v6

    .end local v6    # "objectiveValue":D
    .local v38, "objectiveValue":D
    div-double v6, v28, v4

    invoke-virtual {v10, v11, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1718
    add-int v6, v1, v24

    if-ge v2, v6, :cond_13

    .line 1719
    div-double v6, v16, v4

    .line 1720
    .local v6, "oneOverStepA":D
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v42, v4

    .end local v4    # "stepa":D
    .local v42, "stepa":D
    neg-double v4, v6

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v11, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1721
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v12, v11, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1722
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v5, v2, v11

    move-wide/from16 v28, v6

    .end local v6    # "oneOverStepA":D
    .local v28, "oneOverStepA":D
    mul-double v6, v26, v36

    invoke-virtual {v4, v5, v11, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1724
    .end local v28    # "oneOverStepA":D
    move/from16 v7, v22

    move/from16 v10, v23

    const/16 v20, 0x2

    goto/16 :goto_f

    .line 1718
    .end local v42    # "stepa":D
    .restart local v4    # "stepa":D
    :cond_13
    move-wide/from16 v42, v4

    .end local v4    # "stepa":D
    .restart local v42    # "stepa":D
    move/from16 v7, v22

    move/from16 v10, v23

    const/16 v20, 0x2

    goto/16 :goto_f

    .line 1715
    .end local v38    # "objectiveValue":D
    .end local v42    # "stepa":D
    .restart local v4    # "stepa":D
    .local v6, "objectiveValue":D
    :cond_14
    move-wide/from16 v42, v4

    move-wide/from16 v38, v6

    .line 1725
    .end local v4    # "stepa":D
    .end local v6    # "objectiveValue":D
    .restart local v38    # "objectiveValue":D
    .restart local v42    # "stepa":D
    add-int/lit8 v4, v24, 0x2

    if-lt v1, v4, :cond_17

    .line 1726
    add-int/lit8 v4, v33, 0x1

    mul-int v4, v4, v33

    const/16 v20, 0x2

    div-int/lit8 v4, v4, 0x2

    const/16 v30, 0x1

    add-int/lit8 v4, v4, -0x1

    .line 1727
    .local v4, "ih":I
    sub-double v5, v8, v34

    div-double/2addr v5, v13

    .line 1728
    .local v5, "tmp":D
    sub-double v30, v13, v42

    .line 1729
    .local v30, "diff":D
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    sub-double v44, v5, v44

    mul-double v44, v44, v28

    move-wide/from16 v46, v5

    .end local v5    # "tmp":D
    .local v46, "tmp":D
    div-double v5, v44, v30

    invoke-virtual {v7, v4, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1730
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    mul-double/2addr v6, v13

    mul-double v44, v46, v42

    sub-double v6, v6, v44

    div-double v6, v6, v30

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1731
    mul-double v5, v42, v13

    cmpg-double v5, v5, v18

    if-gez v5, :cond_16

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    sub-int v6, v12, v24

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    cmpg-double v5, v8, v5

    if-gez v5, :cond_16

    .line 1732
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    sub-int v7, v12, v24

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-virtual {v5, v12, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1733
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    sub-int v6, v12, v24

    invoke-virtual {v5, v6, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1734
    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v5, v12, :cond_15

    .line 1735
    sub-int v5, v12, v24

    iput v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 1737
    :cond_15
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    sub-int v6, v12, v24

    invoke-virtual {v5, v6, v3, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1738
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v6, v42

    .end local v42    # "stepa":D
    .local v6, "stepa":D
    invoke-virtual {v5, v12, v3, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto :goto_e

    .line 1731
    .end local v6    # "stepa":D
    .restart local v42    # "stepa":D
    :cond_16
    move-wide/from16 v6, v42

    .line 1740
    .end local v42    # "stepa":D
    .restart local v6    # "stepa":D
    :goto_e
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v42, v6

    .end local v6    # "stepa":D
    .restart local v42    # "stepa":D
    add-double v6, v42, v13

    neg-double v6, v6

    mul-double v44, v42, v13

    div-double v6, v6, v44

    const/4 v15, 0x0

    invoke-virtual {v5, v15, v3, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1741
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    sub-int v7, v12, v24

    invoke-virtual {v6, v7, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    div-double v6, v36, v6

    invoke-virtual {v5, v12, v3, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1742
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    sub-int v6, v12, v24

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v36, v8

    const/4 v15, 0x0

    .end local v8    # "f":D
    .local v36, "f":D
    invoke-virtual {v7, v15, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    neg-double v7, v7

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v12, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-virtual {v5, v6, v3, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1744
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double v8, v42, v13

    div-double/2addr v6, v8

    invoke-virtual {v5, v15, v3, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1745
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    div-double v6, v6, v26

    invoke-virtual {v5, v12, v3, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1747
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    sub-int v6, v12, v24

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v15, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    neg-double v7, v7

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v12, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-virtual {v5, v6, v3, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1749
    .end local v4    # "ih":I
    .end local v30    # "diff":D
    .end local v46    # "tmp":D
    move/from16 v7, v22

    move/from16 v10, v23

    const/16 v20, 0x2

    goto :goto_f

    .line 1725
    .end local v36    # "f":D
    .restart local v8    # "f":D
    :cond_17
    move-wide/from16 v36, v8

    .end local v8    # "f":D
    .restart local v36    # "f":D
    move/from16 v7, v22

    move/from16 v10, v23

    const/16 v20, 0x2

    goto :goto_f

    .line 1755
    .end local v36    # "f":D
    .end local v38    # "objectiveValue":D
    .end local v42    # "stepa":D
    .local v4, "stepa":D
    .local v6, "objectiveValue":D
    .restart local v8    # "f":D
    :cond_18
    move-wide/from16 v42, v4

    move-wide/from16 v38, v6

    move-wide/from16 v36, v8

    .end local v4    # "stepa":D
    .end local v6    # "objectiveValue":D
    .end local v8    # "f":D
    .restart local v36    # "f":D
    .restart local v38    # "objectiveValue":D
    .restart local v42    # "stepa":D
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v6, v40

    const/4 v15, 0x0

    .end local v40    # "recip":D
    .local v6, "recip":D
    invoke-virtual {v4, v15, v3, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1756
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v12, v3, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1757
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    neg-double v8, v6

    move/from16 v5, v22

    .end local v22    # "ipt":I
    .local v5, "ipt":I
    invoke-virtual {v4, v5, v3, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1758
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    neg-double v8, v6

    move/from16 v10, v23

    .end local v23    # "jpt":I
    .local v10, "jpt":I
    invoke-virtual {v4, v10, v3, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1760
    add-int/lit8 v4, v5, -0x1

    mul-int/2addr v4, v5

    const/16 v20, 0x2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v10

    const/16 v30, 0x1

    add-int/lit8 v4, v4, -0x1

    .line 1761
    .local v4, "ih":I
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v12, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v8

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v22, v1

    .end local v1    # "numEval":I
    .local v22, "numEval":I
    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v15, v12, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v28

    mul-double v8, v8, v28

    .line 1762
    .local v8, "tmp":D
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v28

    sub-double v28, v34, v28

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v30

    sub-double v28, v28, v30

    add-double v28, v28, v36

    move v7, v5

    .end local v5    # "ipt":I
    .end local v6    # "recip":D
    .local v7, "ipt":I
    .restart local v40    # "recip":D
    div-double v5, v28, v8

    invoke-virtual {v1, v4, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1765
    .end local v3    # "nfxm":I
    .end local v4    # "ih":I
    .end local v8    # "tmp":D
    .end local v11    # "nfmm":I
    .end local v12    # "nfm":I
    .end local v13    # "stepb":D
    .end local v22    # "numEval":I
    .end local v33    # "nfx":I
    .end local v36    # "f":D
    .end local v38    # "objectiveValue":D
    .end local v42    # "stepa":D
    :goto_f
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v1

    if-lt v1, v2, :cond_19

    .line 1766
    return-void

    .line 1765
    :cond_19
    move v6, v7

    move v7, v10

    move-wide/from16 v12, v18

    move/from16 v11, v20

    move/from16 v3, v21

    move/from16 v1, v24

    move-wide/from16 v4, v26

    move/from16 v10, v32

    move-wide/from16 v14, v34

    move-wide/from16 v8, v40

    goto/16 :goto_6
.end method

.method private static printMethod()V
    .locals 0

    .line 2461
    return-void
.end method

.method private static printState(I)V
    .locals 0
    .param p0, "s"    # I

    .line 2457
    return-void
.end method

.method private setup([D[D)V
    .locals 16
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .line 2394
    move-object/from16 v0, p0

    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 2396
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getStartPoint()[D

    move-result-object v1

    .line 2397
    .local v1, "init":[D
    array-length v2, v1

    .line 2400
    .local v2, "dimension":I
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-lt v2, v4, :cond_3

    .line 2404
    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v7, v2, 0x1

    mul-int/2addr v6, v7

    div-int/2addr v6, v4

    filled-new-array {v5, v6}, [I

    move-result-object v5

    .line 2405
    .local v5, "nPointsInterval":[I
    iget v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v7, 0x0

    aget v8, v5, v7

    if-lt v6, v8, :cond_2

    iget v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    aget v8, v5, v3

    if-gt v6, v8, :cond_2

    .line 2414
    new-array v6, v2, [D

    iput-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->boundDifference:[D

    .line 2416
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double/2addr v8, v6

    .line 2417
    .local v8, "requiredMinDiff":D
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2418
    .local v6, "minDiff":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v2, :cond_0

    .line 2419
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v12, p2, v10

    aget-wide v14, p1, v10

    sub-double/2addr v12, v14

    aput-wide v12, v11, v10

    .line 2420
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v11, v11, v10

    invoke-static {v6, v7, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    .line 2418
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2422
    .end local v10    # "i":I
    :cond_0
    cmpg-double v10, v6, v8

    if-gez v10, :cond_1

    .line 2423
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double v10, v6, v10

    iput-wide v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 2427
    :cond_1
    new-instance v10, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v11, v2

    invoke-direct {v10, v11, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2429
    new-instance v10, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    iget v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    sub-int/2addr v12, v2

    sub-int/2addr v12, v3

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2431
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v3, v10, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2433
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2434
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v3, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2435
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2436
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2437
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2438
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2439
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v3, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2440
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2441
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2442
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2443
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v10, v2

    invoke-direct {v3, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2444
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int/lit8 v10, v2, 0x1

    mul-int/2addr v10, v2

    div-int/2addr v10, v4

    invoke-direct {v3, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2445
    return-void

    .line 2407
    .end local v6    # "minDiff":D
    .end local v8    # "requiredMinDiff":D
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_INTERPOLATION_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v6, v8, v7, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 2401
    .end local v5    # "nPointsInterval":[I
    :cond_3
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v6, v4, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5
.end method

.method private trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D
    .locals 96
    .param p1, "delta"    # D
    .param p3, "gnew"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p4, "xbdi"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p5, "s"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p6, "hs"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p7, "hred"    # Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 1823
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 1825
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v6

    .line 1826
    .local v6, "n":I
    iget v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 1828
    .local v7, "npt":I
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    .line 1829
    .local v8, "dsq":D
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 1834
    .local v10, "crvmin":D
    const-wide/16 v12, 0x0

    .line 1835
    .local v12, "beta":D
    const/4 v14, -0x1

    .line 1836
    .local v14, "iact":I
    const/4 v15, 0x0

    .line 1837
    .local v15, "nact":I
    const-wide/16 v16, 0x0

    .line 1839
    .local v16, "angt":D
    const-wide/16 v18, 0x0

    .local v18, "temp":D
    const-wide/16 v20, 0x0

    .local v20, "xsav":D
    const-wide/16 v22, 0x0

    .local v22, "xsum":D
    const-wide/16 v24, 0x0

    .local v24, "angbd":D
    const-wide/16 v26, 0x0

    .local v26, "dredg":D
    const-wide/16 v28, 0x0

    .line 1841
    .local v28, "sredg":D
    const-wide/16 v30, 0x0

    .local v30, "resid":D
    const-wide/16 v32, 0x0

    .local v32, "delsq":D
    const-wide/16 v34, 0x0

    .local v34, "ggsav":D
    const-wide/16 v36, 0x0

    .local v36, "tempa":D
    const-wide/16 v38, 0x0

    .line 1842
    .local v38, "tempb":D
    const-wide/16 v40, 0x0

    .local v40, "redmax":D
    const-wide/16 v42, 0x0

    .local v42, "dredsq":D
    const-wide/16 v44, 0x0

    .local v44, "redsav":D
    const-wide/16 v46, 0x0

    .local v46, "gredsq":D
    const-wide/16 v48, 0x0

    .line 1843
    .local v48, "rednew":D
    const/16 v50, 0x0

    .line 1844
    .local v50, "itcsav":I
    const-wide/16 v51, 0x0

    .local v51, "rdprev":D
    const-wide/16 v53, 0x0

    .local v53, "rdnext":D
    const-wide/16 v55, 0x0

    .local v55, "stplen":D
    const-wide/16 v57, 0x0

    .line 1845
    .local v57, "stepsq":D
    const/16 v59, 0x0

    .line 1858
    .local v59, "itermax":I
    const/16 v60, 0x0

    .line 1859
    .local v60, "iterc":I
    const/4 v15, 0x0

    .line 1860
    const/16 v61, 0x0

    move-wide/from16 v94, v8

    move/from16 v8, v61

    move-wide/from16 v61, v94

    .local v8, "i":I
    .local v61, "dsq":D
    :goto_0
    move-wide/from16 v63, v10

    .end local v10    # "crvmin":D
    .local v63, "crvmin":D
    const-wide/16 v9, 0x0

    if-ge v8, v6, :cond_4

    .line 1861
    invoke-virtual {v2, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1862
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v71

    cmpg-double v11, v69, v71

    if-gtz v11, :cond_1

    .line 1863
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    cmpl-double v11, v67, v9

    if-ltz v11, :cond_0

    .line 1864
    move-wide/from16 v69, v9

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 1863
    :cond_0
    move-wide/from16 v69, v9

    goto :goto_1

    .line 1866
    :cond_1
    move-wide/from16 v69, v9

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    cmpl-double v9, v9, v65

    if-ltz v9, :cond_2

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    cmpg-double v9, v9, v69

    if-gtz v9, :cond_2

    .line 1868
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1870
    :cond_2
    :goto_1
    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    cmpl-double v9, v9, v69

    if-eqz v9, :cond_3

    .line 1871
    add-int/lit8 v15, v15, 0x1

    .line 1873
    :cond_3
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v10, v69

    invoke-virtual {v9, v8, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1874
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    invoke-virtual {v1, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1860
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v10, v63

    goto :goto_0

    .line 1876
    .end local v8    # "i":I
    :cond_4
    mul-double v8, p1, p1

    .line 1877
    .end local v32    # "delsq":D
    .local v8, "delsq":D
    const-wide/16 v10, 0x0

    .line 1878
    .local v10, "qred":D
    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    .line 1886
    .end local v63    # "crvmin":D
    .local v32, "crvmin":D
    const/16 v63, 0x14

    move-wide/from16 v94, v20

    move-wide/from16 v20, v8

    move-wide/from16 v8, v94

    move-wide/from16 v94, v32

    move-wide/from16 v32, v10

    move-wide/from16 v10, v94

    move/from16 v94, v60

    move/from16 v60, v15

    move/from16 v15, v94

    move-wide/from16 v94, v12

    move/from16 v12, v50

    move/from16 v13, v59

    move-wide/from16 v58, v57

    move-wide/from16 v56, v55

    move-wide/from16 v54, v53

    move-wide/from16 v52, v51

    move-wide/from16 v50, v94

    .line 1888
    .end local v51    # "rdprev":D
    .end local v53    # "rdnext":D
    .end local v55    # "stplen":D
    .end local v57    # "stepsq":D
    .end local v59    # "itermax":I
    .local v8, "xsav":D
    .local v10, "crvmin":D
    .local v12, "itcsav":I
    .local v13, "itermax":I
    .local v15, "iterc":I
    .local v20, "delsq":D
    .local v32, "qred":D
    .local v50, "beta":D
    .local v52, "rdprev":D
    .local v54, "rdnext":D
    .local v56, "stplen":D
    .local v58, "stepsq":D
    .local v60, "nact":I
    .local v63, "state":I
    :goto_2
    const-wide v71, 0x3f847ae147ae147bL    # 0.01

    const-wide v73, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const-wide/high16 v75, 0x3fe0000000000000L    # 0.5

    sparse-switch v63, :sswitch_data_0

    .line 2285
    move/from16 v64, v7

    .end local v7    # "npt":I
    .local v64, "npt":I
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const-string v7, "trsbox"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 2253
    .end local v64    # "npt":I
    .restart local v7    # "npt":I
    :sswitch_0
    const/16 v64, 0xd2

    invoke-static/range {v64 .. v64}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2254
    const/16 v64, 0x0

    .line 2255
    .local v64, "ih":I
    const/16 v71, 0x0

    move/from16 v77, v13

    move/from16 v13, v71

    .local v13, "j":I
    .local v77, "itermax":I
    :goto_3
    if-ge v13, v6, :cond_7

    .line 2256
    move-wide/from16 v78, v10

    const-wide/16 v10, 0x0

    .end local v10    # "crvmin":D
    .local v78, "crvmin":D
    invoke-virtual {v4, v13, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2257
    const/4 v10, 0x0

    move/from16 v11, v64

    .end local v64    # "ih":I
    .local v10, "i":I
    .local v11, "ih":I
    :goto_4
    if-gt v10, v13, :cond_6

    .line 2258
    if-ge v10, v13, :cond_5

    .line 2259
    invoke-virtual {v4, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v71

    move-wide/from16 v80, v8

    .end local v8    # "xsav":D
    .local v80, "xsav":D
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v3, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v73

    mul-double v8, v8, v73

    add-double v8, v71, v8

    invoke-virtual {v4, v13, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_5

    .line 2258
    .end local v80    # "xsav":D
    .restart local v8    # "xsav":D
    :cond_5
    move-wide/from16 v80, v8

    .line 2261
    .end local v8    # "xsav":D
    .restart local v80    # "xsav":D
    :goto_5
    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    move-wide/from16 v71, v8

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v3, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v73

    mul-double v8, v8, v73

    add-double v8, v71, v8

    invoke-virtual {v4, v10, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2262
    add-int/lit8 v11, v11, 0x1

    .line 2257
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v8, v80

    goto :goto_4

    .end local v80    # "xsav":D
    .restart local v8    # "xsav":D
    :cond_6
    move-wide/from16 v80, v8

    .line 2255
    .end local v8    # "xsav":D
    .end local v10    # "i":I
    .restart local v80    # "xsav":D
    add-int/lit8 v13, v13, 0x1

    move/from16 v64, v11

    move-wide/from16 v10, v78

    goto :goto_3

    .end local v11    # "ih":I
    .end local v78    # "crvmin":D
    .end local v80    # "xsav":D
    .restart local v8    # "xsav":D
    .local v10, "crvmin":D
    .restart local v64    # "ih":I
    :cond_7
    move-wide/from16 v80, v8

    move-wide/from16 v78, v10

    .line 2265
    .end local v8    # "xsav":D
    .end local v10    # "crvmin":D
    .end local v13    # "j":I
    .restart local v78    # "crvmin":D
    .restart local v80    # "xsav":D
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    .line 2266
    .local v8, "tmp":Lorg/apache/commons/math3/linear/RealVector;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_6
    if-ge v9, v7, :cond_a

    .line 2267
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    const-wide/16 v69, 0x0

    cmpl-double v10, v10, v69

    if-eqz v10, :cond_9

    .line 2268
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7
    if-ge v10, v6, :cond_8

    .line 2269
    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v71

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v73

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v9, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v75

    mul-double v73, v73, v75

    move v11, v7

    move-object v13, v8

    .end local v7    # "npt":I
    .end local v8    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    .local v11, "npt":I
    .local v13, "tmp":Lorg/apache/commons/math3/linear/RealVector;
    add-double v7, v71, v73

    invoke-virtual {v4, v10, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2268
    add-int/lit8 v10, v10, 0x1

    move v7, v11

    move-object v8, v13

    goto :goto_7

    .end local v11    # "npt":I
    .end local v13    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    .restart local v7    # "npt":I
    .restart local v8    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    :cond_8
    move v11, v7

    move-object v13, v8

    .end local v7    # "npt":I
    .end local v8    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    .restart local v11    # "npt":I
    .restart local v13    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    goto :goto_8

    .line 2267
    .end local v10    # "i":I
    .end local v11    # "npt":I
    .end local v13    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    .restart local v7    # "npt":I
    .restart local v8    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    :cond_9
    move v11, v7

    move-object v13, v8

    .line 2266
    .end local v7    # "npt":I
    .end local v8    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    .restart local v11    # "npt":I
    .restart local v13    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move v7, v11

    move-object v8, v13

    goto :goto_6

    .end local v11    # "npt":I
    .end local v13    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    .restart local v7    # "npt":I
    .restart local v8    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    :cond_a
    move v11, v7

    move-object v13, v8

    .line 2273
    .end local v7    # "npt":I
    .end local v8    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    .end local v9    # "k":I
    .restart local v11    # "npt":I
    .restart local v13    # "tmp":Lorg/apache/commons/math3/linear/RealVector;
    const-wide/16 v69, 0x0

    cmpl-double v7, v78, v69

    if-eqz v7, :cond_b

    .line 2274
    const/16 v63, 0x32

    move v7, v11

    move/from16 v13, v77

    move-wide/from16 v10, v78

    move-wide/from16 v8, v80

    goto/16 :goto_2

    .line 2276
    :cond_b
    if-le v15, v12, :cond_c

    .line 2277
    const/16 v63, 0x96

    move v7, v11

    move/from16 v13, v77

    move-wide/from16 v10, v78

    move-wide/from16 v8, v80

    goto/16 :goto_2

    .line 2279
    :cond_c
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    if-ge v7, v6, :cond_d

    .line 2280
    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2279
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 2282
    .end local v7    # "i":I
    :cond_d
    const/16 v63, 0x78

    move v7, v11

    move/from16 v13, v77

    move-wide/from16 v10, v78

    move-wide/from16 v8, v80

    goto/16 :goto_2

    .line 1888
    .end local v11    # "npt":I
    .end local v64    # "ih":I
    .end local v77    # "itermax":I
    .end local v78    # "crvmin":D
    .end local v80    # "xsav":D
    .local v7, "npt":I
    .local v8, "xsav":D
    .local v10, "crvmin":D
    .local v13, "itermax":I
    :sswitch_1
    move-wide/from16 v80, v8

    move-wide/from16 v78, v10

    move/from16 v77, v13

    move v11, v7

    .end local v7    # "npt":I
    .end local v8    # "xsav":D
    .end local v10    # "crvmin":D
    .end local v13    # "itermax":I
    .restart local v11    # "npt":I
    .restart local v77    # "itermax":I
    .restart local v78    # "crvmin":D
    .restart local v80    # "xsav":D
    move/from16 v64, v11

    move-wide/from16 v10, v32

    goto/16 :goto_f

    .line 2142
    .end local v11    # "npt":I
    .end local v77    # "itermax":I
    .end local v78    # "crvmin":D
    .end local v80    # "xsav":D
    .restart local v7    # "npt":I
    .restart local v8    # "xsav":D
    .restart local v10    # "crvmin":D
    .restart local v13    # "itermax":I
    :sswitch_2
    move-wide/from16 v80, v8

    move-wide/from16 v78, v10

    move/from16 v77, v13

    move v11, v7

    .end local v7    # "npt":I
    .end local v8    # "xsav":D
    .end local v10    # "crvmin":D
    .end local v13    # "itermax":I
    .restart local v11    # "npt":I
    .restart local v77    # "itermax":I
    .restart local v78    # "crvmin":D
    .restart local v80    # "xsav":D
    const/16 v7, 0x96

    invoke-static {v7}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2143
    const-wide/16 v7, 0x0

    .line 2144
    .local v7, "shs":D
    const-wide/16 v9, 0x0

    .line 2145
    .local v9, "dhs":D
    const-wide/16 v73, 0x0

    .line 2146
    .local v73, "dhd":D
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a
    if-ge v13, v6, :cond_f

    .line 2147
    invoke-virtual {v2, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    const-wide/16 v69, 0x0

    cmpl-double v64, v82, v69

    if-nez v64, :cond_e

    .line 2148
    invoke-virtual {v3, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    invoke-virtual {v4, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v82, v82, v84

    add-double v7, v7, v82

    .line 2149
    move-wide/from16 v82, v7

    .end local v7    # "shs":D
    .local v82, "shs":D
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-virtual {v4, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v7, v7, v84

    add-double/2addr v9, v7

    .line 2150
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v7, v7, v84

    add-double v73, v73, v7

    move-wide/from16 v7, v82

    .line 2146
    .end local v82    # "shs":D
    .restart local v7    # "shs":D
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 2158
    .end local v13    # "i":I
    :cond_f
    const-wide/16 v40, 0x0

    .line 2159
    const/4 v13, -0x1

    .line 2160
    .local v13, "isav":I
    const-wide/16 v44, 0x0

    .line 2161
    const-wide/high16 v82, 0x4031000000000000L    # 17.0

    mul-double v82, v82, v24

    const-wide v84, 0x4008cccccccccccdL    # 3.1

    move-wide/from16 v86, v7

    .end local v7    # "shs":D
    .local v86, "shs":D
    add-double v7, v82, v84

    double-to-int v7, v7

    .line 2162
    .local v7, "iu":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_b
    if-ge v8, v7, :cond_12

    .line 2163
    move-wide/from16 v82, v9

    .end local v9    # "dhs":D
    .local v82, "dhs":D
    int-to-double v9, v8

    mul-double v9, v9, v24

    move-wide/from16 v84, v9

    int-to-double v9, v7

    div-double v16, v84, v9

    .line 2164
    add-double v9, v16, v16

    mul-double v84, v16, v16

    const-wide/high16 v67, 0x3ff0000000000000L    # 1.0

    add-double v84, v84, v67

    div-double v9, v9, v84

    .line 2165
    .local v9, "sth":D
    mul-double v84, v16, v73

    sub-double v84, v84, v82

    sub-double v84, v84, v82

    mul-double v84, v84, v16

    add-double v18, v86, v84

    .line 2166
    mul-double v84, v16, v26

    sub-double v84, v84, v28

    mul-double v88, v9, v75

    mul-double v88, v88, v18

    sub-double v84, v84, v88

    mul-double v48, v9, v84

    .line 2167
    cmpl-double v64, v48, v40

    if-lez v64, :cond_10

    .line 2168
    move-wide/from16 v40, v48

    .line 2169
    move v13, v8

    .line 2170
    move-wide/from16 v52, v44

    move-wide/from16 v84, v9

    goto :goto_c

    .line 2171
    :cond_10
    move-wide/from16 v84, v9

    .end local v9    # "sth":D
    .local v84, "sth":D
    add-int/lit8 v9, v13, 0x1

    if-ne v8, v9, :cond_11

    .line 2172
    move-wide/from16 v54, v48

    .line 2174
    :cond_11
    :goto_c
    move-wide/from16 v44, v48

    .line 2162
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v9, v82

    goto :goto_b

    .end local v82    # "dhs":D
    .end local v84    # "sth":D
    .local v9, "dhs":D
    :cond_12
    move-wide/from16 v82, v9

    .line 2180
    .end local v8    # "i":I
    .end local v9    # "dhs":D
    .restart local v82    # "dhs":D
    if-gez v13, :cond_13

    .line 2181
    const/16 v63, 0xbe

    move v7, v11

    move/from16 v13, v77

    move-wide/from16 v10, v78

    move-wide/from16 v8, v80

    goto/16 :goto_2

    .line 2183
    :cond_13
    if-ge v13, v7, :cond_14

    .line 2184
    sub-double v8, v54, v52

    add-double v84, v40, v40

    sub-double v84, v84, v52

    sub-double v84, v84, v54

    div-double v18, v8, v84

    .line 2185
    int-to-double v8, v13

    mul-double v84, v18, v75

    add-double v8, v8, v84

    mul-double v8, v8, v24

    move-wide/from16 v84, v8

    int-to-double v8, v7

    div-double v8, v84, v8

    move-wide/from16 v16, v8

    .line 2187
    :cond_14
    mul-double v8, v16, v16

    const-wide/high16 v67, 0x3ff0000000000000L    # 1.0

    sub-double v9, v67, v8

    mul-double v84, v16, v16

    add-double v84, v84, v67

    div-double v9, v9, v84

    .line 2188
    .local v9, "cth":D
    add-double v84, v16, v16

    mul-double v88, v16, v16

    add-double v88, v88, v67

    div-double v84, v84, v88

    .line 2189
    .restart local v84    # "sth":D
    mul-double v88, v16, v73

    sub-double v88, v88, v82

    sub-double v88, v88, v82

    mul-double v88, v88, v16

    add-double v18, v86, v88

    .line 2190
    mul-double v88, v16, v26

    sub-double v88, v88, v28

    mul-double v75, v75, v84

    mul-double v75, v75, v18

    sub-double v88, v88, v75

    mul-double v88, v88, v84

    .line 2191
    .local v88, "sdec":D
    const-wide/16 v69, 0x0

    cmpg-double v8, v88, v69

    if-gtz v8, :cond_15

    .line 2192
    const/16 v63, 0xbe

    move v7, v11

    move/from16 v13, v77

    move-wide/from16 v10, v78

    move-wide/from16 v8, v80

    goto/16 :goto_2

    .line 2199
    :cond_15
    const-wide/16 v26, 0x0

    .line 2200
    const-wide/16 v46, 0x0

    .line 2201
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_d
    if-ge v8, v6, :cond_17

    .line 2202
    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v75

    const-wide/high16 v67, 0x3ff0000000000000L    # 1.0

    sub-double v90, v9, v67

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v92

    mul-double v90, v90, v92

    add-double v75, v75, v90

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v90

    mul-double v90, v90, v84

    move-wide/from16 v92, v9

    .end local v9    # "cth":D
    .local v92, "cth":D
    add-double v9, v75, v90

    invoke-virtual {v1, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2203
    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    const-wide/16 v69, 0x0

    cmpl-double v9, v9, v69

    if-nez v9, :cond_16

    .line 2204
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v75

    mul-double v75, v75, v92

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v90

    mul-double v90, v90, v84

    move/from16 v64, v11

    .end local v11    # "npt":I
    .local v64, "npt":I
    add-double v10, v75, v90

    invoke-virtual {v9, v8, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2205
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v75

    mul-double v9, v9, v75

    add-double v26, v26, v9

    .line 2207
    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    .line 2208
    .local v9, "d1":D
    mul-double v75, v9, v9

    add-double v46, v46, v75

    goto :goto_e

    .line 2203
    .end local v9    # "d1":D
    .end local v64    # "npt":I
    .restart local v11    # "npt":I
    :cond_16
    move/from16 v64, v11

    .line 2210
    .end local v11    # "npt":I
    .restart local v64    # "npt":I
    :goto_e
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    mul-double v9, v9, v92

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v75

    mul-double v75, v75, v84

    add-double v9, v9, v75

    invoke-virtual {v5, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2201
    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v64

    move-wide/from16 v9, v92

    goto :goto_d

    .end local v64    # "npt":I
    .end local v92    # "cth":D
    .local v9, "cth":D
    .restart local v11    # "npt":I
    :cond_17
    move-wide/from16 v92, v9

    move/from16 v64, v11

    .line 2212
    .end local v8    # "i":I
    .end local v9    # "cth":D
    .end local v11    # "npt":I
    .restart local v64    # "npt":I
    .restart local v92    # "cth":D
    add-double v32, v32, v88

    .line 2213
    if-ltz v14, :cond_18

    if-ne v13, v7, :cond_18

    .line 2214
    add-int/lit8 v60, v60, 0x1

    .line 2215
    move-wide/from16 v8, v80

    .end local v80    # "xsav":D
    .local v8, "xsav":D
    invoke-virtual {v2, v14, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2216
    const/16 v63, 0x64

    move/from16 v7, v64

    move/from16 v13, v77

    move-wide/from16 v10, v78

    goto/16 :goto_2

    .line 2213
    .end local v8    # "xsav":D
    .restart local v80    # "xsav":D
    :cond_18
    move-wide/from16 v8, v80

    .line 2222
    .end local v80    # "xsav":D
    .restart local v8    # "xsav":D
    mul-double v71, v71, v32

    cmpl-double v10, v88, v71

    if-lez v10, :cond_19

    .line 2223
    const/16 v63, 0x78

    move/from16 v7, v64

    move/from16 v13, v77

    move-wide/from16 v10, v78

    goto/16 :goto_2

    .line 2222
    :cond_19
    move-wide/from16 v10, v32

    .line 2227
    .end local v7    # "iu":I
    .end local v13    # "isav":I
    .end local v32    # "qred":D
    .end local v73    # "dhd":D
    .end local v82    # "dhs":D
    .end local v84    # "sth":D
    .end local v86    # "shs":D
    .end local v88    # "sdec":D
    .end local v92    # "cth":D
    .local v10, "qred":D
    :goto_f
    const/16 v7, 0xbe

    invoke-static {v7}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2228
    const-wide/16 v32, 0x0

    .line 2229
    .end local v61    # "dsq":D
    .local v32, "dsq":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_10
    if-ge v7, v6, :cond_1c

    .line 2232
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v61

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    move-wide/from16 v80, v8

    .end local v8    # "xsav":D
    .restart local v80    # "xsav":D
    add-double v8, v61, v69

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v69, v10

    .end local v10    # "qred":D
    .local v69, "qred":D
    invoke-virtual {v13, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    .line 2234
    .local v8, "min":D
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move v13, v12

    .end local v12    # "itcsav":I
    .local v13, "itcsav":I
    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    invoke-virtual {v10, v7, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2235
    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    const-wide/high16 v65, -0x4010000000000000L    # -1.0

    cmpl-double v10, v10, v65

    if-nez v10, :cond_1a

    .line 2236
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-virtual {v10, v7, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2238
    :cond_1a
    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    const-wide/high16 v67, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v67

    if-nez v10, :cond_1b

    .line 2239
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-virtual {v10, v7, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2241
    :cond_1b
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v61

    sub-double v11, v11, v61

    invoke-virtual {v10, v7, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2243
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    .line 2244
    .local v10, "d1":D
    mul-double v61, v10, v10

    add-double v32, v32, v61

    .line 2229
    .end local v8    # "min":D
    .end local v10    # "d1":D
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, p7

    move v12, v13

    move-wide/from16 v10, v69

    move-wide/from16 v8, v80

    goto :goto_10

    .line 2246
    .end local v7    # "i":I
    .end local v13    # "itcsav":I
    .end local v69    # "qred":D
    .end local v80    # "xsav":D
    .local v8, "xsav":D
    .local v10, "qred":D
    .restart local v12    # "itcsav":I
    :cond_1c
    const/4 v5, 0x2

    new-array v5, v5, [D

    const/4 v7, 0x0

    aput-wide v32, v5, v7

    const/4 v7, 0x1

    aput-wide v78, v5, v7

    return-object v5

    .line 2071
    .end local v64    # "npt":I
    .end local v77    # "itermax":I
    .end local v78    # "crvmin":D
    .local v7, "npt":I
    .local v10, "crvmin":D
    .local v13, "itermax":I
    .local v32, "qred":D
    .restart local v61    # "dsq":D
    :sswitch_3
    move/from16 v64, v7

    move-wide/from16 v80, v8

    move-wide/from16 v78, v10

    move/from16 v77, v13

    move v13, v12

    .end local v7    # "npt":I
    .end local v8    # "xsav":D
    .end local v10    # "crvmin":D
    .end local v12    # "itcsav":I
    .local v13, "itcsav":I
    .restart local v64    # "npt":I
    .restart local v77    # "itermax":I
    .restart local v78    # "crvmin":D
    .restart local v80    # "xsav":D
    const/16 v5, 0x78

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2072
    add-int/lit8 v15, v15, 0x1

    .line 2073
    mul-double v7, v46, v42

    mul-double v9, v26, v26

    sub-double v18, v7, v9

    .line 2074
    mul-double v73, v73, v32

    mul-double v73, v73, v32

    cmpg-double v5, v18, v73

    if-gtz v5, :cond_1d

    .line 2075
    const/16 v63, 0xbe

    move-object/from16 v5, p7

    move v12, v13

    move/from16 v7, v64

    move/from16 v13, v77

    move-wide/from16 v10, v78

    move-wide/from16 v8, v80

    goto/16 :goto_2

    .line 2077
    :cond_1d
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 2078
    .end local v18    # "temp":D
    .local v7, "temp":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    if-ge v5, v6, :cond_1f

    .line 2079
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    const-wide/16 v69, 0x0

    cmpl-double v9, v9, v69

    if-nez v9, :cond_1e

    .line 2080
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    mul-double v9, v9, v26

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double v11, v11, v42

    sub-double/2addr v9, v11

    div-double/2addr v9, v7

    invoke-virtual {v3, v5, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_12

    .line 2082
    :cond_1e
    const-wide/16 v10, 0x0

    invoke-virtual {v3, v5, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2078
    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 2085
    .end local v5    # "i":I
    :cond_1f
    neg-double v9, v7

    .line 2092
    .end local v28    # "sredg":D
    .local v9, "sredg":D
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 2093
    .end local v24    # "angbd":D
    .local v11, "angbd":D
    const/4 v5, -0x1

    .line 2094
    .end local v14    # "iact":I
    .local v5, "iact":I
    const/4 v14, 0x0

    move-wide/from16 v18, v7

    move-wide/from16 v24, v11

    .end local v7    # "temp":D
    .end local v11    # "angbd":D
    .local v14, "i":I
    .restart local v18    # "temp":D
    .restart local v24    # "angbd":D
    :goto_13
    if-ge v14, v6, :cond_27

    .line 2095
    invoke-virtual {v2, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    const-wide/16 v69, 0x0

    cmpl-double v7, v7, v69

    if-nez v7, :cond_26

    .line 2096
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    add-double/2addr v7, v11

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    sub-double/2addr v7, v11

    .line 2097
    .end local v36    # "tempa":D
    .local v7, "tempa":D
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    move/from16 v28, v5

    .end local v5    # "iact":I
    .local v28, "iact":I
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    sub-double v11, v11, v36

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    sub-double v11, v11, v36

    .line 2098
    .end local v38    # "tempb":D
    .local v11, "tempb":D
    const-wide/16 v69, 0x0

    cmpg-double v5, v7, v69

    if-gtz v5, :cond_20

    .line 2099
    add-int/lit8 v60, v60, 0x1

    .line 2100
    move-wide/from16 v36, v7

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .end local v7    # "tempa":D
    .restart local v36    # "tempa":D
    invoke-virtual {v2, v14, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2101
    const/16 v63, 0x64

    move-wide/from16 v38, v11

    goto/16 :goto_16

    .line 2102
    .end local v36    # "tempa":D
    .restart local v7    # "tempa":D
    :cond_20
    move-wide/from16 v36, v7

    .end local v7    # "tempa":D
    .restart local v36    # "tempa":D
    cmpg-double v5, v11, v69

    if-gtz v5, :cond_21

    .line 2103
    add-int/lit8 v60, v60, 0x1

    .line 2104
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v14, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2105
    const/16 v63, 0x64

    move-wide/from16 v38, v11

    goto/16 :goto_16

    .line 2108
    :cond_21
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    .line 2110
    .local v7, "d1":D
    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 2111
    .local v38, "d2":D
    mul-double v71, v7, v7

    mul-double v73, v38, v38

    add-double v71, v71, v73

    .line 2113
    .local v71, "ssq":D
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v73

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v75

    sub-double v73, v73, v75

    .line 2114
    .end local v7    # "d1":D
    .local v73, "d1":D
    mul-double v7, v73, v73

    sub-double v7, v71, v7

    .line 2115
    .end local v18    # "temp":D
    .local v7, "temp":D
    const-wide/16 v69, 0x0

    cmpl-double v5, v7, v69

    if-lez v5, :cond_23

    .line 2116
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v18

    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v75

    sub-double v7, v18, v75

    .line 2117
    mul-double v18, v24, v7

    cmpl-double v5, v18, v36

    if-lez v5, :cond_22

    .line 2118
    div-double v24, v36, v7

    .line 2119
    move v5, v14

    .line 2120
    .end local v28    # "iact":I
    .restart local v5    # "iact":I
    const-wide/high16 v80, -0x4010000000000000L    # -1.0

    goto :goto_14

    .line 2117
    .end local v5    # "iact":I
    .restart local v28    # "iact":I
    :cond_22
    move/from16 v5, v28

    goto :goto_14

    .line 2115
    :cond_23
    move/from16 v5, v28

    .line 2124
    .end local v28    # "iact":I
    .restart local v5    # "iact":I
    :goto_14
    move/from16 v18, v5

    .end local v5    # "iact":I
    .local v18, "iact":I
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v28

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v75

    sub-double v28, v28, v75

    .line 2125
    .end local v73    # "d1":D
    .local v28, "d1":D
    mul-double v73, v28, v28

    sub-double v7, v71, v73

    .line 2126
    const-wide/16 v69, 0x0

    cmpl-double v5, v7, v69

    if-lez v5, :cond_25

    .line 2127
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v73

    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v75

    add-double v7, v73, v75

    .line 2128
    mul-double v73, v24, v7

    cmpl-double v5, v73, v11

    if-lez v5, :cond_24

    .line 2129
    div-double v24, v11, v7

    .line 2130
    move v5, v14

    .line 2131
    .end local v18    # "iact":I
    .restart local v5    # "iact":I
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v7

    move-wide/from16 v38, v11

    goto :goto_15

    .line 2128
    .end local v5    # "iact":I
    .restart local v18    # "iact":I
    :cond_24
    move-wide/from16 v38, v11

    move/from16 v5, v18

    move-wide/from16 v18, v7

    goto :goto_15

    .line 2126
    :cond_25
    move-wide/from16 v38, v11

    move/from16 v5, v18

    move-wide/from16 v18, v7

    goto :goto_15

    .line 2095
    .end local v7    # "temp":D
    .end local v11    # "tempb":D
    .end local v28    # "d1":D
    .end local v71    # "ssq":D
    .restart local v5    # "iact":I
    .local v18, "temp":D
    .local v38, "tempb":D
    :cond_26
    move/from16 v28, v5

    .line 2094
    :goto_15
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    :cond_27
    move/from16 v28, v5

    .line 2139
    .end local v5    # "iact":I
    .end local v14    # "i":I
    .local v28, "iact":I
    :goto_16
    const/16 v63, 0xd2

    move-object/from16 v5, p7

    move v12, v13

    move/from16 v14, v28

    move/from16 v7, v64

    move/from16 v13, v77

    move-wide/from16 v28, v9

    move-wide/from16 v10, v78

    move-wide/from16 v8, v80

    goto/16 :goto_2

    .line 1888
    .end local v9    # "sredg":D
    .end local v64    # "npt":I
    .end local v77    # "itermax":I
    .end local v78    # "crvmin":D
    .end local v80    # "xsav":D
    .local v7, "npt":I
    .restart local v8    # "xsav":D
    .restart local v10    # "crvmin":D
    .restart local v12    # "itcsav":I
    .local v13, "itermax":I
    .local v14, "iact":I
    .local v28, "sredg":D
    :sswitch_4
    move/from16 v64, v7

    move-wide/from16 v80, v8

    move-wide/from16 v78, v10

    move/from16 v77, v13

    move v13, v12

    .end local v7    # "npt":I
    .end local v8    # "xsav":D
    .end local v10    # "crvmin":D
    .end local v12    # "itcsav":I
    .local v13, "itcsav":I
    .restart local v64    # "npt":I
    .restart local v77    # "itermax":I
    .restart local v78    # "crvmin":D
    .restart local v80    # "xsav":D
    move/from16 v5, v77

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    goto/16 :goto_22

    .end local v64    # "npt":I
    .end local v77    # "itermax":I
    .end local v78    # "crvmin":D
    .end local v80    # "xsav":D
    .restart local v7    # "npt":I
    .restart local v8    # "xsav":D
    .restart local v10    # "crvmin":D
    .restart local v12    # "itcsav":I
    .local v13, "itermax":I
    :sswitch_5
    move/from16 v64, v7

    move-wide/from16 v80, v8

    move-wide/from16 v78, v10

    move/from16 v77, v13

    move v13, v12

    .end local v7    # "npt":I
    .end local v8    # "xsav":D
    .end local v10    # "crvmin":D
    .end local v12    # "itcsav":I
    .local v13, "itcsav":I
    .restart local v64    # "npt":I
    .restart local v77    # "itermax":I
    .restart local v78    # "crvmin":D
    .restart local v80    # "xsav":D
    move/from16 v5, v77

    move-wide/from16 v88, v78

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    goto/16 :goto_21

    .line 1927
    .end local v64    # "npt":I
    .end local v77    # "itermax":I
    .end local v78    # "crvmin":D
    .end local v80    # "xsav":D
    .restart local v7    # "npt":I
    .restart local v8    # "xsav":D
    .restart local v10    # "crvmin":D
    .restart local v12    # "itcsav":I
    .local v13, "itermax":I
    :sswitch_6
    move/from16 v64, v7

    move-wide/from16 v80, v8

    move-wide/from16 v78, v10

    move/from16 v77, v13

    move v13, v12

    .end local v7    # "npt":I
    .end local v8    # "xsav":D
    .end local v10    # "crvmin":D
    .end local v12    # "itcsav":I
    .local v13, "itcsav":I
    .restart local v64    # "npt":I
    .restart local v77    # "itermax":I
    .restart local v78    # "crvmin":D
    .restart local v80    # "xsav":D
    const/16 v5, 0x32

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1928
    move-wide/from16 v7, v20

    .line 1929
    .end local v30    # "resid":D
    .local v7, "resid":D
    const-wide/16 v9, 0x0

    .line 1930
    .local v9, "ds":D
    const-wide/16 v11, 0x0

    .line 1931
    .local v11, "shs":D
    const/4 v5, 0x0

    move-wide/from16 v30, v7

    .end local v7    # "resid":D
    .local v5, "i":I
    .restart local v30    # "resid":D
    :goto_17
    if-ge v5, v6, :cond_29

    .line 1932
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    const-wide/16 v69, 0x0

    cmpl-double v7, v7, v69

    if-nez v7, :cond_28

    .line 1934
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    .line 1935
    .local v7, "d1":D
    mul-double v73, v7, v7

    sub-double v30, v30, v73

    .line 1936
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v73

    move-wide/from16 v82, v7

    .end local v7    # "d1":D
    .local v82, "d1":D
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double v73, v73, v7

    add-double v9, v9, v73

    .line 1937
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v73

    mul-double v7, v7, v73

    add-double/2addr v11, v7

    .line 1931
    .end local v82    # "d1":D
    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 1940
    .end local v5    # "i":I
    :cond_29
    const-wide/16 v69, 0x0

    cmpg-double v5, v30, v69

    if-gtz v5, :cond_2a

    .line 1941
    const/16 v63, 0x5a

    move-object/from16 v5, p7

    move v12, v13

    move/from16 v7, v64

    move/from16 v13, v77

    move-wide/from16 v10, v78

    move-wide/from16 v8, v80

    goto/16 :goto_2

    .line 1943
    :cond_2a
    mul-double v7, v58, v30

    mul-double v73, v9, v9

    add-double v7, v7, v73

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 1944
    .end local v18    # "temp":D
    .local v7, "temp":D
    cmpg-double v5, v9, v69

    if-gez v5, :cond_2b

    .line 1945
    sub-double v18, v7, v9

    div-double v18, v18, v58

    move-wide/from16 v73, v18

    .local v18, "blen":D
    goto :goto_18

    .line 1947
    .end local v18    # "blen":D
    :cond_2b
    add-double v18, v7, v9

    div-double v18, v30, v18

    move-wide/from16 v73, v18

    .line 1949
    .local v73, "blen":D
    :goto_18
    move-wide/from16 v18, v73

    .line 1950
    .end local v56    # "stplen":D
    .local v18, "stplen":D
    const-wide/16 v69, 0x0

    cmpl-double v5, v11, v69

    if-lez v5, :cond_2c

    .line 1952
    move-wide/from16 v82, v7

    .end local v7    # "temp":D
    .local v82, "temp":D
    div-double v7, v46, v11

    move-wide/from16 v84, v9

    move-wide/from16 v9, v73

    .end local v73    # "blen":D
    .local v9, "blen":D
    .local v84, "ds":D
    invoke-static {v9, v10, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v18

    goto :goto_19

    .line 1950
    .end local v82    # "temp":D
    .end local v84    # "ds":D
    .restart local v7    # "temp":D
    .local v9, "ds":D
    .restart local v73    # "blen":D
    :cond_2c
    move-wide/from16 v82, v7

    move-wide/from16 v84, v9

    move-wide/from16 v9, v73

    .line 1958
    .end local v7    # "temp":D
    .end local v73    # "blen":D
    .local v9, "blen":D
    .restart local v82    # "temp":D
    .restart local v84    # "ds":D
    :goto_19
    const/4 v5, -0x1

    .line 1959
    .end local v14    # "iact":I
    .local v5, "iact":I
    const/4 v7, 0x0

    move v14, v5

    move-wide/from16 v56, v18

    .end local v5    # "iact":I
    .end local v18    # "stplen":D
    .local v7, "i":I
    .restart local v14    # "iact":I
    .restart local v56    # "stplen":D
    :goto_1a
    if-ge v7, v6, :cond_30

    .line 1960
    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v18

    const-wide/16 v69, 0x0

    cmpl-double v5, v18, v69

    if-eqz v5, :cond_2f

    .line 1961
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v18

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v73

    add-double v22, v18, v73

    .line 1962
    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v18

    cmpl-double v5, v18, v69

    if-lez v5, :cond_2d

    .line 1963
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v18

    sub-double v18, v18, v22

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v73

    div-double v18, v18, v73

    .end local v82    # "temp":D
    .local v18, "temp":D
    goto :goto_1b

    .line 1965
    .end local v18    # "temp":D
    .restart local v82    # "temp":D
    :cond_2d
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v18

    sub-double v18, v18, v22

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v73

    div-double v18, v18, v73

    .line 1967
    .end local v82    # "temp":D
    .restart local v18    # "temp":D
    :goto_1b
    cmpg-double v5, v18, v56

    if-gez v5, :cond_2e

    .line 1968
    move-wide/from16 v56, v18

    .line 1969
    move v14, v7

    move-wide/from16 v82, v18

    goto :goto_1c

    .line 1967
    :cond_2e
    move-wide/from16 v82, v18

    .line 1959
    .end local v18    # "temp":D
    .restart local v82    # "temp":D
    :cond_2f
    :goto_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 1976
    .end local v7    # "i":I
    :cond_30
    const-wide/16 v7, 0x0

    .line 1977
    .local v7, "sdec":D
    const-wide/16 v69, 0x0

    cmpl-double v5, v56, v69

    if-lez v5, :cond_35

    .line 1978
    add-int/lit8 v15, v15, 0x1

    .line 1979
    move-wide/from16 v18, v7

    .end local v7    # "sdec":D
    .local v18, "sdec":D
    div-double v7, v11, v58

    .line 1980
    .end local v82    # "temp":D
    .local v7, "temp":D
    const/4 v5, -0x1

    if-ne v14, v5, :cond_31

    cmpl-double v5, v7, v69

    if-lez v5, :cond_31

    .line 1981
    move-wide/from16 v73, v9

    move-wide/from16 v9, v78

    .end local v78    # "crvmin":D
    .local v9, "crvmin":D
    .restart local v73    # "blen":D
    invoke-static {v9, v10, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v9

    .line 1982
    const-wide/high16 v65, -0x4010000000000000L    # -1.0

    cmpl-double v5, v9, v65

    if-nez v5, :cond_32

    .line 1983
    move-wide v9, v7

    goto :goto_1d

    .line 1980
    .end local v73    # "blen":D
    .local v9, "blen":D
    .restart local v78    # "crvmin":D
    :cond_31
    move-wide/from16 v73, v9

    move-wide/from16 v9, v78

    .line 1986
    .end local v78    # "crvmin":D
    .local v9, "crvmin":D
    .restart local v73    # "blen":D
    :cond_32
    :goto_1d
    move-wide/from16 v34, v46

    .line 1987
    const-wide/16 v46, 0x0

    .line 1988
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    if-ge v5, v6, :cond_34

    .line 1989
    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v78

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v82, v82, v56

    move-wide/from16 v86, v7

    .end local v7    # "temp":D
    .local v86, "temp":D
    add-double v7, v78, v82

    invoke-virtual {v1, v5, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1990
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    const-wide/16 v69, 0x0

    cmpl-double v7, v7, v69

    if-nez v7, :cond_33

    .line 1992
    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    .line 1993
    .local v7, "d1":D
    mul-double v78, v7, v7

    add-double v46, v46, v78

    .line 1995
    .end local v7    # "d1":D
    :cond_33
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v78

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v82, v82, v56

    move-wide/from16 v88, v9

    .end local v9    # "crvmin":D
    .local v88, "crvmin":D
    add-double v8, v78, v82

    invoke-virtual {v7, v5, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1988
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v7, v86

    move-wide/from16 v9, v88

    goto :goto_1e

    .end local v86    # "temp":D
    .end local v88    # "crvmin":D
    .local v7, "temp":D
    .restart local v9    # "crvmin":D
    :cond_34
    move-wide/from16 v86, v7

    move-wide/from16 v88, v9

    .line 1998
    .end local v5    # "i":I
    .end local v7    # "temp":D
    .end local v9    # "crvmin":D
    .restart local v86    # "temp":D
    .restart local v88    # "crvmin":D
    mul-double v75, v75, v56

    mul-double v75, v75, v11

    sub-double v7, v34, v75

    mul-double v7, v7, v56

    .line 1999
    .local v7, "d1":D
    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v18

    .line 2000
    add-double v32, v32, v18

    move-wide/from16 v7, v18

    move-wide/from16 v18, v86

    goto :goto_1f

    .line 1977
    .end local v18    # "sdec":D
    .end local v73    # "blen":D
    .end local v86    # "temp":D
    .end local v88    # "crvmin":D
    .local v7, "sdec":D
    .local v9, "blen":D
    .restart local v78    # "crvmin":D
    .restart local v82    # "temp":D
    :cond_35
    move-wide/from16 v18, v7

    move-wide/from16 v73, v9

    move-wide/from16 v9, v78

    .end local v7    # "sdec":D
    .end local v78    # "crvmin":D
    .local v9, "crvmin":D
    .restart local v18    # "sdec":D
    .restart local v73    # "blen":D
    move-wide/from16 v88, v9

    move-wide/from16 v18, v82

    .line 2005
    .end local v9    # "crvmin":D
    .end local v82    # "temp":D
    .restart local v7    # "sdec":D
    .local v18, "temp":D
    .restart local v88    # "crvmin":D
    :goto_1f
    if-ltz v14, :cond_38

    .line 2006
    add-int/lit8 v60, v60, 0x1

    .line 2007
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v14, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2008
    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    const-wide/16 v69, 0x0

    cmpg-double v5, v67, v69

    if-gez v5, :cond_36

    .line 2009
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v14, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_20

    .line 2008
    :cond_36
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 2012
    :goto_20
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    .line 2013
    .local v65, "d1":D
    mul-double v71, v65, v65

    sub-double v20, v20, v71

    .line 2014
    const-wide/16 v69, 0x0

    cmpg-double v5, v20, v69

    if-gtz v5, :cond_37

    .line 2015
    const/16 v63, 0xbe

    move-object/from16 v5, p7

    move v12, v13

    move/from16 v7, v64

    move/from16 v13, v77

    move-wide/from16 v8, v80

    move-wide/from16 v10, v88

    goto/16 :goto_2

    .line 2017
    :cond_37
    const/16 v63, 0x14

    move-object/from16 v5, p7

    move v12, v13

    move/from16 v7, v64

    move/from16 v13, v77

    move-wide/from16 v8, v80

    move-wide/from16 v10, v88

    goto/16 :goto_2

    .line 2023
    .end local v65    # "d1":D
    :cond_38
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    cmpg-double v5, v56, v73

    if-gez v5, :cond_3b

    .line 2024
    move/from16 v5, v77

    .end local v77    # "itermax":I
    .local v5, "itermax":I
    if-ne v15, v5, :cond_39

    .line 2025
    const/16 v63, 0xbe

    move v12, v13

    move/from16 v7, v64

    move-wide/from16 v8, v80

    move-wide/from16 v10, v88

    move v13, v5

    move-object/from16 v5, p7

    goto/16 :goto_2

    .line 2027
    :cond_39
    mul-double v71, v71, v32

    cmpg-double v65, v7, v71

    if-gtz v65, :cond_3a

    .line 2028
    const/16 v63, 0xbe

    move v12, v13

    move/from16 v7, v64

    move-wide/from16 v8, v80

    move-wide/from16 v10, v88

    move v13, v5

    move-object/from16 v5, p7

    goto/16 :goto_2

    .line 2030
    :cond_3a
    div-double v50, v46, v34

    .line 2031
    const/16 v63, 0x1e

    move v12, v13

    move/from16 v7, v64

    move-wide/from16 v8, v80

    move-wide/from16 v10, v88

    move v13, v5

    move-object/from16 v5, p7

    goto/16 :goto_2

    .line 2023
    .end local v5    # "itermax":I
    .restart local v77    # "itermax":I
    :cond_3b
    move/from16 v5, v77

    .line 2035
    .end local v7    # "sdec":D
    .end local v11    # "shs":D
    .end local v73    # "blen":D
    .end local v77    # "itermax":I
    .end local v84    # "ds":D
    .restart local v5    # "itermax":I
    :goto_21
    const/16 v7, 0x5a

    invoke-static {v7}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2036
    const-wide/16 v7, 0x0

    move-wide/from16 v78, v7

    .line 2044
    .end local v88    # "crvmin":D
    .restart local v78    # "crvmin":D
    :goto_22
    const/16 v7, 0x64

    invoke-static {v7}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2045
    add-int/lit8 v7, v6, -0x1

    move/from16 v8, v60

    .end local v60    # "nact":I
    .local v8, "nact":I
    if-lt v8, v7, :cond_3c

    .line 2046
    const/16 v63, 0xbe

    move/from16 v60, v8

    move v12, v13

    move/from16 v7, v64

    move-wide/from16 v10, v78

    move-wide/from16 v8, v80

    move v13, v5

    move-object/from16 v5, p7

    goto/16 :goto_2

    .line 2048
    :cond_3c
    const-wide/16 v11, 0x0

    .line 2049
    .end local v42    # "dredsq":D
    .local v11, "dredsq":D
    const-wide/16 v26, 0x0

    .line 2050
    const-wide/16 v42, 0x0

    .line 2051
    .end local v46    # "gredsq":D
    .local v42, "gredsq":D
    const/4 v7, 0x0

    move-wide/from16 v46, v42

    move-wide/from16 v42, v11

    .end local v11    # "dredsq":D
    .local v7, "i":I
    .local v42, "dredsq":D
    .restart local v46    # "gredsq":D
    :goto_23
    if-ge v7, v6, :cond_3e

    .line 2052
    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    const-wide/16 v69, 0x0

    cmpl-double v11, v11, v69

    if-nez v11, :cond_3d

    .line 2054
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    .line 2055
    .local v11, "d1":D
    mul-double v65, v11, v11

    add-double v42, v42, v65

    .line 2056
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v71

    mul-double v9, v9, v71

    add-double v26, v26, v9

    .line 2058
    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    .line 2059
    .end local v11    # "d1":D
    .local v9, "d1":D
    mul-double v11, v9, v9

    add-double v46, v46, v11

    .line 2060
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-virtual {v3, v7, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2061
    .end local v9    # "d1":D
    goto :goto_24

    .line 2062
    :cond_3d
    const-wide/16 v10, 0x0

    invoke-virtual {v3, v7, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2051
    :goto_24
    add-int/lit8 v7, v7, 0x1

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    goto :goto_23

    .line 2065
    .end local v7    # "i":I
    :cond_3e
    move v12, v15

    .line 2066
    .end local v13    # "itcsav":I
    .restart local v12    # "itcsav":I
    const/16 v63, 0xd2

    move v13, v5

    move/from16 v60, v8

    move/from16 v7, v64

    move-wide/from16 v10, v78

    move-wide/from16 v8, v80

    move-object/from16 v5, p7

    goto/16 :goto_2

    .line 1888
    .end local v5    # "itermax":I
    .end local v64    # "npt":I
    .end local v78    # "crvmin":D
    .end local v80    # "xsav":D
    .local v7, "npt":I
    .local v8, "xsav":D
    .restart local v10    # "crvmin":D
    .local v13, "itermax":I
    .restart local v60    # "nact":I
    :sswitch_7
    move/from16 v64, v7

    move-wide/from16 v80, v8

    move-wide v9, v10

    move v5, v13

    move/from16 v8, v60

    const-wide/high16 v67, 0x3ff0000000000000L    # 1.0

    move v13, v12

    .end local v7    # "npt":I
    .end local v10    # "crvmin":D
    .end local v12    # "itcsav":I
    .end local v60    # "nact":I
    .restart local v5    # "itermax":I
    .local v8, "nact":I
    .local v9, "crvmin":D
    .local v13, "itcsav":I
    .restart local v64    # "npt":I
    .restart local v80    # "xsav":D
    goto :goto_25

    .line 1890
    .end local v5    # "itermax":I
    .end local v9    # "crvmin":D
    .end local v64    # "npt":I
    .end local v80    # "xsav":D
    .restart local v7    # "npt":I
    .local v8, "xsav":D
    .restart local v10    # "crvmin":D
    .restart local v12    # "itcsav":I
    .local v13, "itermax":I
    .restart local v60    # "nact":I
    :sswitch_8
    move/from16 v64, v7

    move-wide/from16 v80, v8

    move-wide v9, v10

    move v5, v13

    move/from16 v8, v60

    const-wide/high16 v67, 0x3ff0000000000000L    # 1.0

    move v13, v12

    .end local v7    # "npt":I
    .end local v10    # "crvmin":D
    .end local v12    # "itcsav":I
    .end local v60    # "nact":I
    .restart local v5    # "itermax":I
    .local v8, "nact":I
    .restart local v9    # "crvmin":D
    .local v13, "itcsav":I
    .restart local v64    # "npt":I
    .restart local v80    # "xsav":D
    const/16 v7, 0x14

    invoke-static {v7}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1891
    const-wide/16 v11, 0x0

    move-wide/from16 v50, v11

    .line 1894
    :goto_25
    const/16 v7, 0x1e

    invoke-static {v7}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1895
    const-wide/16 v11, 0x0

    .line 1896
    .end local v58    # "stepsq":D
    .local v11, "stepsq":D
    const/4 v7, 0x0

    move-wide/from16 v58, v11

    .end local v11    # "stepsq":D
    .local v7, "i":I
    .restart local v58    # "stepsq":D
    :goto_26
    if-ge v7, v6, :cond_41

    .line 1897
    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    move/from16 v77, v5

    const-wide/16 v4, 0x0

    .end local v5    # "itermax":I
    .restart local v77    # "itermax":I
    cmpl-double v11, v11, v4

    if-eqz v11, :cond_3f

    .line 1898
    invoke-virtual {v3, v7, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_27

    .line 1899
    :cond_3f
    cmpl-double v11, v50, v4

    if-nez v11, :cond_40

    .line 1900
    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v3, v7, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_27

    .line 1902
    :cond_40
    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    mul-double v4, v4, v50

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    sub-double/2addr v4, v11

    invoke-virtual {v3, v7, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1905
    :goto_27
    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    .line 1906
    .local v4, "d1":D
    mul-double v11, v4, v4

    add-double v58, v58, v11

    .line 1896
    .end local v4    # "d1":D
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, p6

    move/from16 v5, v77

    goto :goto_26

    .end local v77    # "itermax":I
    .restart local v5    # "itermax":I
    :cond_41
    move/from16 v77, v5

    .line 1908
    .end local v5    # "itermax":I
    .end local v7    # "i":I
    .restart local v77    # "itermax":I
    const-wide/16 v69, 0x0

    cmpl-double v4, v58, v69

    if-nez v4, :cond_42

    .line 1909
    const/16 v63, 0xbe

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v60, v8

    move-wide v10, v9

    move v12, v13

    move/from16 v7, v64

    move/from16 v13, v77

    move-wide/from16 v8, v80

    goto/16 :goto_2

    .line 1911
    :cond_42
    cmpl-double v4, v50, v69

    if-nez v4, :cond_43

    .line 1912
    move-wide/from16 v4, v58

    .line 1913
    .end local v46    # "gredsq":D
    .local v4, "gredsq":D
    add-int v7, v15, v6

    sub-int/2addr v7, v8

    move-wide/from16 v46, v4

    move/from16 v77, v7

    .line 1915
    .end local v4    # "gredsq":D
    .restart local v46    # "gredsq":D
    :cond_43
    mul-double v4, v46, v20

    mul-double v73, v73, v32

    mul-double v73, v73, v32

    cmpg-double v4, v4, v73

    if-gtz v4, :cond_44

    .line 1916
    const/16 v63, 0xbe

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v60, v8

    move-wide v10, v9

    move v12, v13

    move/from16 v7, v64

    move/from16 v13, v77

    move-wide/from16 v8, v80

    goto/16 :goto_2

    .line 1924
    :cond_44
    const/16 v63, 0xd2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v60, v8

    move-wide v10, v9

    move v12, v13

    move/from16 v7, v64

    move/from16 v13, v77

    move-wide/from16 v8, v80

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_8
        0x1e -> :sswitch_7
        0x32 -> :sswitch_6
        0x5a -> :sswitch_5
        0x64 -> :sswitch_4
        0x78 -> :sswitch_3
        0x96 -> :sswitch_2
        0xbe -> :sswitch_1
        0xd2 -> :sswitch_0
    .end sparse-switch
.end method

.method private update(DDI)V
    .locals 34
    .param p1, "beta"    # D
    .param p3, "denom"    # D
    .param p5, "knew"    # I

    .line 2310
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 2312
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v2

    .line 2313
    .local v2, "n":I
    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 2314
    .local v3, "npt":I
    sub-int v4, v3, v2

    add-int/lit8 v4, v4, -0x1

    .line 2317
    .local v4, "nptm":I
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v6, v3, v2

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 2319
    .local v5, "work":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const-wide/16 v6, 0x0

    .line 2320
    .local v6, "ztest":D
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_0
    if-ge v8, v3, :cond_1

    .line 2321
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v4, :cond_0

    .line 2323
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 2321
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2320
    .end local v9    # "j":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2326
    .end local v8    # "k":I
    :cond_1
    const-wide v8, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double/2addr v6, v8

    .line 2330
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_2
    const/4 v9, 0x0

    if-ge v8, v4, :cond_4

    .line 2331
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    .line 2332
    .local v10, "d1":D
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    cmpl-double v12, v12, v6

    if-lez v12, :cond_3

    .line 2334
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v12

    .line 2336
    .local v12, "d2":D
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    .line 2337
    .local v14, "d3":D
    mul-double v16, v12, v12

    mul-double v18, v14, v14

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    .line 2338
    .local v16, "d4":D
    move/from16 v18, v4

    .end local v4    # "nptm":I
    .local v18, "nptm":I
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v19

    div-double v19, v19, v16

    .line 2339
    .local v19, "d5":D
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v1, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v21

    div-double v21, v21, v16

    .line 2340
    .local v21, "d6":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_2

    .line 2341
    move-wide/from16 v23, v6

    .end local v6    # "ztest":D
    .local v23, "ztest":D
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v4, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    mul-double v6, v6, v19

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v4, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v26

    mul-double v26, v26, v21

    add-double v6, v6, v26

    .line 2342
    .local v6, "d7":D
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v26, v10

    .end local v10    # "d1":D
    .local v26, "d1":D
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v4, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    mul-double v10, v10, v19

    move-wide/from16 v28, v10

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v30

    mul-double v30, v30, v21

    move-wide/from16 v32, v12

    .end local v12    # "d2":D
    .local v32, "d2":D
    sub-double v11, v28, v30

    invoke-virtual {v9, v4, v8, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2343
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v11, 0x0

    invoke-virtual {v9, v4, v11, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2340
    .end local v6    # "d7":D
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v6, v23

    move-wide/from16 v10, v26

    move-wide/from16 v12, v32

    const/4 v9, 0x0

    goto :goto_3

    .end local v23    # "ztest":D
    .end local v26    # "d1":D
    .end local v32    # "d2":D
    .local v6, "ztest":D
    .restart local v10    # "d1":D
    .restart local v12    # "d2":D
    :cond_2
    move-wide/from16 v23, v6

    move-wide/from16 v26, v10

    move-wide/from16 v32, v12

    .end local v6    # "ztest":D
    .end local v10    # "d1":D
    .end local v12    # "d2":D
    .restart local v23    # "ztest":D
    .restart local v26    # "d1":D
    .restart local v32    # "d2":D
    goto :goto_4

    .line 2332
    .end local v14    # "d3":D
    .end local v16    # "d4":D
    .end local v18    # "nptm":I
    .end local v19    # "d5":D
    .end local v21    # "d6":D
    .end local v23    # "ztest":D
    .end local v26    # "d1":D
    .end local v32    # "d2":D
    .local v4, "nptm":I
    .restart local v6    # "ztest":D
    .restart local v10    # "d1":D
    :cond_3
    move/from16 v18, v4

    move-wide/from16 v23, v6

    move-wide/from16 v26, v10

    .line 2346
    .end local v4    # "nptm":I
    .end local v6    # "ztest":D
    .end local v10    # "d1":D
    .restart local v18    # "nptm":I
    .restart local v23    # "ztest":D
    .restart local v26    # "d1":D
    :goto_4
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v1, v8, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2330
    .end local v26    # "d1":D
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v18

    move-wide/from16 v6, v23

    goto/16 :goto_2

    .end local v18    # "nptm":I
    .end local v23    # "ztest":D
    .restart local v4    # "nptm":I
    .restart local v6    # "ztest":D
    :cond_4
    move/from16 v18, v4

    move-wide/from16 v23, v6

    .line 2352
    .end local v4    # "nptm":I
    .end local v6    # "ztest":D
    .end local v8    # "j":I
    .restart local v18    # "nptm":I
    .restart local v23    # "ztest":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v3, :cond_5

    .line 2353
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v11, 0x0

    invoke-virtual {v6, v1, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v4, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v5, v4, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2352
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2355
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    .line 2356
    .local v6, "alpha":D
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    .line 2357
    .local v8, "tau":D
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    invoke-virtual {v4, v1, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2361
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    .line 2362
    .local v10, "sqrtDenom":D
    div-double v12, v8, v10

    .line 2363
    .local v12, "d1":D
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v14, 0x0

    invoke-virtual {v4, v1, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v15

    div-double/2addr v15, v10

    .line 2364
    .local v15, "d2":D
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    if-ge v4, v3, :cond_6

    .line 2365
    move-wide/from16 v19, v6

    .end local v6    # "alpha":D
    .local v19, "alpha":D
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v4, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v21

    mul-double v21, v21, v12

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v25

    mul-double v25, v25, v15

    move-wide/from16 v27, v8

    .end local v8    # "tau":D
    .local v27, "tau":D
    sub-double v7, v21, v25

    invoke-virtual {v6, v4, v14, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2364
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v6, v19

    move-wide/from16 v8, v27

    goto :goto_6

    .end local v19    # "alpha":D
    .end local v27    # "tau":D
    .restart local v6    # "alpha":D
    .restart local v8    # "tau":D
    :cond_6
    move-wide/from16 v19, v6

    move-wide/from16 v27, v8

    .line 2371
    .end local v4    # "i":I
    .end local v6    # "alpha":D
    .end local v8    # "tau":D
    .restart local v19    # "alpha":D
    .restart local v27    # "tau":D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_7
    if-ge v4, v2, :cond_9

    .line 2372
    add-int v6, v3, v4

    .line 2373
    .local v6, "jp":I
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2374
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double v7, v7, v19

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v21

    mul-double v21, v21, v27

    sub-double v7, v7, v21

    div-double v7, v7, p3

    .line 2375
    .local v7, "d3":D
    move v9, v2

    move-wide/from16 v21, v7

    move-wide/from16 v1, p1

    .end local v2    # "n":I
    .end local v7    # "d3":D
    .local v9, "n":I
    .local v21, "d3":D
    neg-double v7, v1

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v25

    mul-double v7, v7, v25

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v25

    mul-double v25, v25, v27

    sub-double v7, v7, v25

    div-double v7, v7, p3

    .line 2376
    .local v7, "d4":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_8
    if-gt v14, v6, :cond_8

    .line 2377
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v14, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v25

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v29

    mul-double v29, v29, v21

    add-double v25, v25, v29

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v29

    mul-double v29, v29, v7

    move-wide/from16 v31, v7

    .end local v7    # "d4":D
    .local v31, "d4":D
    add-double v7, v25, v29

    invoke-virtual {v1, v14, v4, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2379
    if-lt v14, v3, :cond_7

    .line 2380
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    sub-int v2, v14, v3

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v14, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    invoke-virtual {v1, v6, v2, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2376
    :cond_7
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v1, p1

    move-wide/from16 v7, v31

    goto :goto_8

    .end local v31    # "d4":D
    .restart local v7    # "d4":D
    :cond_8
    move-wide/from16 v31, v7

    .line 2371
    .end local v6    # "jp":I
    .end local v7    # "d4":D
    .end local v14    # "i":I
    .end local v21    # "d3":D
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p5

    move v2, v9

    goto :goto_7

    .line 2384
    .end local v4    # "j":I
    .end local v9    # "n":I
    .restart local v2    # "n":I
    :cond_9
    return-void
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 8

    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 249
    .local v0, "lowerBound":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 252
    .local v1, "upperBound":[D
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->setup([D[D)V

    .line 254
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->isMinimize:Z

    .line 255
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getStartPoint()[D

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 257
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bobyqa([D[D)D

    move-result-wide v2

    .line 259
    .local v2, "value":D
    new-instance v4, Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v5

    iget-boolean v6, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v6, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    neg-double v6, v2

    :goto_1
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    return-object v4
.end method
