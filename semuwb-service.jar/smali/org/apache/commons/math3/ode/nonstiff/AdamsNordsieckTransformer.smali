.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
.super Ljava/lang/Object;
.source "AdamsNordsieckTransformer.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c1:[D

.field private final update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 11
    .param p1, "n"    # I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    add-int/lit8 v0, p1, -0x1

    .line 156
    .local v0, "rows":I
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 157
    .local v1, "bigP":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    new-instance v2, Lorg/apache/commons/math3/linear/FieldLUDecomposition;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;-><init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;

    move-result-object v2

    .line 160
    .local v2, "pSolver":Lorg/apache/commons/math3/linear/FieldDecompositionSolver;, "Lorg/apache/commons/math3/linear/FieldDecompositionSolver<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    new-array v3, v0, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 161
    .local v3, "u":[Lorg/apache/commons/math3/fraction/BigFraction;
    sget-object v4, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 167
    .local v4, "bigC1":[Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    check-cast v6, [[Lorg/apache/commons/math3/fraction/BigFraction;

    .line 168
    .local v6, "shiftedP":[[Lorg/apache/commons/math3/fraction/BigFraction;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_0
    if-lez v7, :cond_0

    .line 170
    add-int/lit8 v8, v7, -0x1

    aget-object v8, v6, v8

    aput-object v8, v6, v7

    .line 168
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 172
    .end local v7    # "i":I
    :cond_0
    new-array v7, v0, [Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v7, v6, v5

    .line 173
    aget-object v7, v6, v5

    sget-object v8, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    new-instance v7, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v7, v6, v5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v5

    .line 178
    .local v5, "bigMSupdate":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    invoke-static {v5}, Lorg/apache/commons/math3/linear/MatrixUtils;->bigFractionMatrixToRealMatrix(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 179
    new-array v7, v0, [D

    iput-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    .line 180
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    if-ge v7, v0, :cond_1

    .line 181
    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    aget-object v9, v4, v7

    invoke-virtual {v9}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v9

    aput-wide v9, v8, v7

    .line 180
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 184
    .end local v7    # "i":I
    :cond_1
    return-void
.end method

.method private buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 10
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    const-class v2, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/fraction/BigFraction;

    .line 231
    .local v0, "pData":[[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-gt v2, v3, :cond_1

    .line 233
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    .line 234
    .local v3, "pI":[Lorg/apache/commons/math3/fraction/BigFraction;
    neg-int v4, v2

    .line 235
    .local v4, "factor":I
    move v5, v4

    .line 236
    .local v5, "aj":I
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_1
    array-length v7, v3

    if-gt v6, v7, :cond_0

    .line 237
    add-int/lit8 v7, v6, -0x1

    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int/lit8 v9, v6, 0x1

    mul-int/2addr v9, v5

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    aput-object v8, v3, v7

    .line 238
    mul-int/2addr v5, v4

    .line 236
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 231
    .end local v3    # "pI":[Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v4    # "factor":I
    .end local v5    # "aj":I
    .end local v6    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public static getInstance(I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    .locals 4
    .param p0, "nSteps"    # I

    .line 192
    sget-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    monitor-enter v0

    .line 193
    :try_start_0
    sget-object v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    .line 194
    .local v1, "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    if-nez v1, :cond_0

    .line 195
    new-instance v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-direct {v2, p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;-><init>(I)V

    move-object v1, v2

    .line 196
    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    monitor-exit v0

    return-object v1

    .line 199
    .end local v1    # "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getNSteps()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    array-length v0, v0

    return v0
.end method

.method public initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 26
    .param p1, "h"    # D
    .param p3, "t"    # [D
    .param p4, "y"    # [[D
    .param p5, "yDot"    # [[D

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    array-length v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    array-length v4, v4

    add-int/2addr v4, v3

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v4, v6, v3

    const/4 v4, 0x0

    aput v2, v6, v4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 269
    .local v2, "a":[[D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    array-length v6, v6

    add-int/2addr v6, v3

    aget-object v7, v1, v4

    array-length v7, v7

    new-array v8, v5, [I

    aput v7, v8, v3

    aput v6, v8, v4

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 270
    .local v6, "b":[[D
    aget-object v7, v1, v4

    .line 271
    .local v7, "y0":[D
    aget-object v8, p5, v4

    .line 272
    .local v8, "yDot0":[D
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    array-length v10, v1

    if-ge v9, v10, :cond_6

    .line 274
    aget-wide v10, p3, v9

    aget-wide v12, p3, v4

    sub-double/2addr v10, v12

    .line 275
    .local v10, "di":D
    div-double v12, v10, p1

    .line 276
    .local v12, "ratio":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v14, v14, p1

    .line 280
    .local v14, "dikM1Ohk":D
    mul-int/lit8 v16, v9, 0x2

    add-int/lit8 v16, v16, -0x2

    move/from16 v17, v3

    aget-object v3, v2, v16

    .line 281
    .local v3, "aI":[D
    mul-int/lit8 v16, v9, 0x2

    move/from16 v18, v5

    add-int/lit8 v5, v16, -0x1

    array-length v4, v2

    const/16 v19, 0x0

    if-ge v5, v4, :cond_0

    mul-int/lit8 v4, v9, 0x2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    goto :goto_1

    :cond_0
    move-object/from16 v4, v19

    .line 282
    .local v4, "aDotI":[D
    :goto_1
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v0, v3

    if-ge v5, v0, :cond_2

    .line 283
    mul-double/2addr v14, v12

    .line 284
    mul-double v20, v10, v14

    aput-wide v20, v3, v5

    .line 285
    if-eqz v4, :cond_1

    .line 286
    add-int/lit8 v0, v5, 0x2

    int-to-double v0, v0

    mul-double/2addr v0, v14

    aput-wide v0, v4, v5

    .line 282
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    goto :goto_2

    .line 291
    .end local v5    # "j":I
    :cond_2
    aget-object v0, p4, v9

    .line 292
    .local v0, "yI":[D
    aget-object v1, p5, v9

    .line 293
    .local v1, "yDotI":[D
    mul-int/lit8 v5, v9, 0x2

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v6, v5

    .line 294
    .local v5, "bI":[D
    mul-int/lit8 v20, v9, 0x2

    move-object/from16 v21, v1

    .end local v1    # "yDotI":[D
    .local v21, "yDotI":[D
    add-int/lit8 v1, v20, -0x1

    move-object/from16 v20, v3

    .end local v3    # "aI":[D
    .local v20, "aI":[D
    array-length v3, v6

    if-ge v1, v3, :cond_3

    mul-int/lit8 v1, v9, 0x2

    add-int/lit8 v1, v1, -0x1

    aget-object v19, v6, v1

    .line 295
    .local v19, "bDotI":[D
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_5

    .line 296
    aget-wide v22, v0, v1

    aget-wide v24, v7, v1

    sub-double v22, v22, v24

    aget-wide v24, v8, v1

    mul-double v24, v24, v10

    sub-double v22, v22, v24

    aput-wide v22, v5, v1

    .line 297
    if-eqz v19, :cond_4

    .line 298
    aget-wide v22, v21, v1

    aget-wide v24, v8, v1

    sub-double v22, v22, v24

    aput-wide v22, v19, v1

    .line 295
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 272
    .end local v0    # "yI":[D
    .end local v1    # "j":I
    .end local v4    # "aDotI":[D
    .end local v5    # "bI":[D
    .end local v10    # "di":D
    .end local v12    # "ratio":D
    .end local v14    # "dikM1Ohk":D
    .end local v19    # "bDotI":[D
    .end local v20    # "aI":[D
    .end local v21    # "yDotI":[D
    :cond_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v3, v17

    move/from16 v5, v18

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    move/from16 v17, v3

    .line 306
    .end local v9    # "i":I
    new-instance v0, Lorg/apache/commons/math3/linear/QRDecomposition;

    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 307
    .local v0, "decomposition":Lorg/apache/commons/math3/linear/QRDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v1

    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v6, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 310
    .local v1, "x":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 311
    .local v3, "truncatedX":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 312
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v9

    if-ge v5, v9, :cond_7

    .line 313
    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    invoke-virtual {v3, v4, v5, v9, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 312
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 311
    .end local v5    # "j":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 316
    .end local v4    # "i":I
    :cond_8
    return-object v3
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 1
    .param p1, "highOrder"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 332
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->multiply(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V
    .locals 12
    .param p1, "start"    # [D
    .param p2, "end"    # [D
    .param p3, "highOrder"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 351
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v0

    .line 352
    .local v0, "data":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 353
    aget-object v2, v0, v1

    .line 354
    .local v2, "dataI":[D
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    aget-wide v3, v3, v1

    .line 355
    .local v3, "c1I":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 356
    aget-wide v6, v2, v5

    aget-wide v8, p1, v5

    aget-wide v10, p2, v5

    sub-double/2addr v8, v10

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    aput-wide v6, v2, v5

    .line 355
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 352
    .end local v2    # "dataI":[D
    .end local v3    # "c1I":D
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
