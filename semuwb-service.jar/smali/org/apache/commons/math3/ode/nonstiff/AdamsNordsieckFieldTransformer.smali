.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
.super Ljava/lang/Object;
.source "AdamsNordsieckFieldTransformer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/Field<",
            "+",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "*>;>;",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<",
            "+",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "*>;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final c1:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final update:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/math3/Field;I)V
    .locals 8
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    .line 160
    add-int/lit8 v0, p2, -0x1

    .line 163
    .local v0, "rows":I
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 164
    .local v1, "bigP":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    new-instance v2, Lorg/apache/commons/math3/linear/FieldLUDecomposition;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;-><init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;

    move-result-object v2

    .line 167
    .local v2, "pSolver":Lorg/apache/commons/math3/linear/FieldDecompositionSolver;, "Lorg/apache/commons/math3/linear/FieldDecompositionSolver<TT;>;"
    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/RealFieldElement;

    .line 168
    .local v3, "u":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c1:[Lorg/apache/commons/math3/RealFieldElement;

    .line 174
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 175
    .local v4, "shiftedP":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_0
    if-lez v6, :cond_0

    .line 177
    add-int/lit8 v7, v6, -0x1

    aget-object v7, v4, v7

    aput-object v7, v4, v6

    .line 175
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 179
    .end local v6    # "i":I
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v4, v5

    .line 180
    aget-object v6, v4, v5

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    new-instance v7, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v7, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;)V

    iput-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    .line 183
    return-void
.end method

.method private buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v0, p1, p1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 232
    .local v0, "pData":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-gt v1, v2, :cond_1

    .line 234
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    .line 235
    .local v2, "pI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    neg-int v3, v1

    .line 236
    .local v3, "factor":I
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v5, v3

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 237
    .local v4, "aj":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_1
    array-length v6, v2

    if-gt v5, v6, :cond_0

    .line 238
    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v2, v6

    .line 239
    invoke-interface {v4, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 237
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 232
    .end local v2    # "pI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v3    # "factor":I
    .end local v4    # "aj":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public static getInstance(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
    .locals 4
    .param p1, "nSteps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<",
            "TT;>;"
        }
    .end annotation

    .line 195
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->CACHE:Ljava/util/Map;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->CACHE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 198
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/Field<+Lorg/apache/commons/math3/RealFieldElement<*>;>;Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<+Lorg/apache/commons/math3/RealFieldElement<*>;>;>;"
    if-nez v1, :cond_0

    .line 199
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 201
    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->CACHE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    .line 205
    .local v2, "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
    if-nez v2, :cond_1

    .line 206
    new-instance v3, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    invoke-direct {v3, p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;-><init>(Lorg/apache/commons/math3/Field;I)V

    move-object v2, v3

    .line 207
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_1
    monitor-exit v0

    return-object v2

    .line 211
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/math3/Field<+Lorg/apache/commons/math3/RealFieldElement<*>;>;Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<+Lorg/apache/commons/math3/RealFieldElement<*>;>;>;"
    .end local v2    # "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public initializeHighOrderDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[[TT;[[TT;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<TT;>;"
    .local p1, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "t":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "y":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "yDot":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c1:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c1:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 270
    .local v2, "a":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c1:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    aget-object v6, v1, v5

    array-length v6, v6

    invoke-static {v3, v4, v6}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 271
    .local v3, "b":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    aget-object v4, v1, v5

    .line 272
    .local v4, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    aget-object v6, p4, v5

    .line 273
    .local v6, "yDot0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_6

    .line 275
    aget-object v8, p2, v7

    aget-object v9, p2, v5

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 276
    .local v8, "di":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v9, p1

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 277
    .local v10, "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v9}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 281
    .local v11, "dikM1Ohk":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    mul-int/lit8 v12, v7, 0x2

    add-int/lit8 v12, v12, -0x2

    aget-object v12, v2, v12

    .line 282
    .local v12, "aI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    mul-int/lit8 v13, v7, 0x2

    add-int/lit8 v13, v13, -0x1

    array-length v14, v2

    if-ge v13, v14, :cond_0

    mul-int/lit8 v13, v7, 0x2

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v2, v13

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    .line 283
    .local v13, "aDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_1
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    array-length v15, v12

    if-ge v14, v15, :cond_2

    .line 284
    invoke-interface {v11, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v11, v15

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 285
    invoke-interface {v8, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v15, v12, v14

    .line 286
    if-eqz v13, :cond_1

    .line 287
    add-int/lit8 v15, v14, 0x2

    invoke-interface {v11, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v15, v13, v14

    .line 283
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 292
    .end local v14    # "j":I
    :cond_2
    aget-object v14, v1, v7

    .line 293
    .local v14, "yI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    aget-object v15, p4, v7

    .line 294
    .local v15, "yDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    mul-int/lit8 v17, v7, 0x2

    add-int/lit8 v17, v17, -0x2

    aget-object v17, v3, v17

    .line 295
    .local v17, "bI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    mul-int/lit8 v18, v7, 0x2

    add-int/lit8 v5, v18, -0x1

    array-length v1, v3

    if-ge v5, v1, :cond_3

    mul-int/lit8 v1, v7, 0x2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    move-object/from16 v16, v1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    .line 296
    .local v16, "bDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4
    array-length v5, v14

    if-ge v1, v5, :cond_5

    .line 297
    aget-object v5, v14, v1

    move/from16 v18, v1

    .end local v1    # "j":I
    .local v18, "j":I
    aget-object v1, v4, v18

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v6, v18

    invoke-interface {v8, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v17, v18

    .line 298
    if-eqz v16, :cond_4

    .line 299
    aget-object v1, v15, v18

    aget-object v5, v6, v18

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v16, v18

    .line 296
    :cond_4
    add-int/lit8 v1, v18, 0x1

    .end local v18    # "j":I
    .restart local v1    # "j":I
    goto :goto_4

    :cond_5
    move/from16 v18, v1

    .line 273
    .end local v1    # "j":I
    .end local v8    # "di":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v10    # "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "dikM1Ohk":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "aI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v13    # "aDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v14    # "yI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v15    # "yDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v16    # "bDotI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v17    # "bI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p3

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v9, p1

    .line 307
    .end local v7    # "i":I
    new-instance v1, Lorg/apache/commons/math3/linear/FieldLUDecomposition;

    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/4 v7, 0x0

    invoke-direct {v5, v2, v7}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-direct {v1, v5}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;-><init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 308
    .local v1, "decomposition":Lorg/apache/commons/math3/linear/FieldLUDecomposition;, "Lorg/apache/commons/math3/linear/FieldLUDecomposition<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;

    move-result-object v5

    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v8, v3, v7}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v5

    .line 311
    .local v5, "x":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    new-instance v7, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v11

    invoke-direct {v7, v8, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 313
    .local v7, "truncatedX":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v10

    if-ge v8, v10, :cond_8

    .line 314
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6
    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v11

    if-ge v10, v11, :cond_7

    .line 315
    invoke-interface {v5, v8, v10}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v11

    invoke-virtual {v7, v8, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 314
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 313
    .end local v10    # "j":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 318
    .end local v8    # "i":I
    :cond_8
    return-object v7
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<TT;>;"
    .local p1, "highOrder":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->multiply(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object v0

    return-object v0
.end method

.method public updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .line 353
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<TT;>;"
    .local p1, "start":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p2, "end":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "highOrder":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getDataRef()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 354
    .local v0, "data":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 355
    aget-object v2, v0, v1

    .line 356
    .local v2, "dataI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c1:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v3, v3, v1

    .line 357
    .local v3, "c1I":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 358
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    aget-object v7, p2, v4

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v2, v4

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 354
    .end local v2    # "dataI":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v3    # "c1I":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
