.class Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;
.super Ljava/lang/Object;
.source "BicubicInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[D


# direct methods
.method constructor <init>([D)V
    .locals 6
    .param p1, "coeff"    # [D

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->a:[[D

    .line 278
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 279
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->a:[[D

    aget-object v1, v1, v0

    .line 280
    .local v1, "aJ":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 281
    mul-int/lit8 v4, v3, 0x4

    add-int/2addr v4, v0

    aget-wide v4, p1, v4

    aput-wide v4, v1, v3

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    .end local v1    # "aJ":[D
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "j":I
    :cond_1
    return-void
.end method

.method private apply([D[D[[D)D
    .locals 7
    .param p1, "pX"    # [D
    .param p2, "pY"    # [D
    .param p3, "coeff"    # [[D

    .line 317
    const-wide/16 v0, 0x0

    .line 318
    .local v0, "result":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 319
    aget-object v3, p3, v2

    invoke-static {v3, p2}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v3

    .line 320
    .local v3, "r":D
    aget-wide v5, p1, v2

    mul-double/2addr v5, v3

    add-double/2addr v0, v5

    .line 318
    .end local v3    # "r":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public value(DD)D
    .locals 17
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 290
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    const/4 v4, 0x1

    .line 291
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 290
    const/4 v6, 0x0

    .line 291
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 290
    if-ltz v3, :cond_1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p1, v8

    if-gtz v3, :cond_1

    .line 293
    cmpg-double v1, p3, v1

    if-ltz v1, :cond_0

    cmpl-double v1, p3, v8

    if-gtz v1, :cond_0

    .line 297
    mul-double v1, p1, p1

    .line 298
    .local v1, "x2":D
    mul-double v10, v1, p1

    .line 299
    .local v10, "x3":D
    const/4 v3, 0x4

    new-array v5, v3, [D

    aput-wide v8, v5, v6

    aput-wide p1, v5, v4

    const/4 v7, 0x2

    aput-wide v1, v5, v7

    const/4 v12, 0x3

    aput-wide v10, v5, v12

    .line 301
    .local v5, "pX":[D
    mul-double v13, p3, p3

    .line 302
    .local v13, "y2":D
    mul-double v15, v13, p3

    .line 303
    .local v15, "y3":D
    new-array v3, v3, [D

    aput-wide v8, v3, v6

    aput-wide p3, v3, v4

    aput-wide v13, v3, v7

    aput-wide v15, v3, v12

    .line 305
    .local v3, "pY":[D
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->a:[[D

    invoke-direct {v0, v5, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->apply([D[D[[D)D

    move-result-wide v6

    return-wide v6

    .line 294
    .end local v1    # "x2":D
    .end local v3    # "pY":[D
    .end local v5    # "pX":[D
    .end local v10    # "x3":D
    .end local v13    # "y2":D
    .end local v15    # "y3":D
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2, v7, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 291
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2, v7, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method
