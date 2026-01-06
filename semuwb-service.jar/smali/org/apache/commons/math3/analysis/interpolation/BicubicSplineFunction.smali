.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[D

.field private final partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;


# direct methods
.method constructor <init>([D)V
    .locals 1
    .param p1, "coeff"    # [D

    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;-><init>([DZ)V

    .line 462
    return-void
.end method

.method constructor <init>([DZ)V
    .locals 16
    .param p1, "coeff"    # [D
    .param p2, "initializeDerivatives"    # Z

    .line 472
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 473
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x4

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    .line 474
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 475
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 476
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    aget-object v7, v7, v2

    mul-int/lit8 v8, v2, 0x4

    add-int/2addr v8, v6

    aget-wide v8, p1, v8

    aput-wide v8, v7, v6

    .line 475
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 474
    .end local v6    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v2    # "i":I
    :cond_1
    if-eqz p2, :cond_4

    .line 482
    new-array v2, v1, [I

    aput v4, v2, v3

    aput v4, v2, v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 483
    .local v2, "aX":[[D
    new-array v6, v1, [I

    aput v4, v6, v3

    aput v4, v6, v5

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 484
    .local v6, "aY":[[D
    new-array v7, v1, [I

    aput v4, v7, v3

    aput v4, v7, v5

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 485
    .local v7, "aXX":[[D
    new-array v8, v1, [I

    aput v4, v8, v3

    aput v4, v8, v5

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 486
    .local v8, "aYY":[[D
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v4, v1, v5

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 488
    .local v1, "aXY":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 489
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v4, :cond_2

    .line 490
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    aget-object v9, v9, v3

    aget-wide v9, v9, v5

    .line 491
    .local v9, "c":D
    aget-object v11, v2, v3

    int-to-double v12, v3

    mul-double/2addr v12, v9

    aput-wide v12, v11, v5

    .line 492
    aget-object v11, v6, v3

    int-to-double v12, v5

    mul-double/2addr v12, v9

    aput-wide v12, v11, v5

    .line 493
    aget-object v11, v7, v3

    add-int/lit8 v12, v3, -0x1

    int-to-double v12, v12

    aget-object v14, v2, v3

    aget-wide v14, v14, v5

    mul-double/2addr v12, v14

    aput-wide v12, v11, v5

    .line 494
    aget-object v11, v8, v3

    add-int/lit8 v12, v5, -0x1

    int-to-double v12, v12

    aget-object v14, v6, v3

    aget-wide v14, v14, v5

    mul-double/2addr v12, v14

    aput-wide v12, v11, v5

    .line 495
    aget-object v11, v1, v3

    int-to-double v12, v5

    aget-object v14, v2, v3

    aget-wide v14, v14, v5

    mul-double/2addr v12, v14

    aput-wide v12, v11, v5

    .line 489
    .end local v9    # "c":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 488
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 499
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;

    invoke-direct {v3, v0, v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 512
    new-instance v3, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$2;

    invoke-direct {v3, v0, v6}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$2;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 525
    new-instance v3, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;

    invoke-direct {v3, v0, v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 537
    new-instance v3, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;

    invoke-direct {v3, v0, v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 549
    new-instance v3, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;

    invoke-direct {v3, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 561
    .end local v1    # "aXY":[[D
    .end local v2    # "aX":[[D
    .end local v6    # "aY":[[D
    .end local v7    # "aXX":[[D
    .end local v8    # "aYY":[[D
    goto :goto_4

    .line 562
    :cond_4
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 563
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 564
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 565
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 566
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 568
    :goto_4
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;
    .param p1, "x1"    # [D
    .param p2, "x2"    # [D
    .param p3, "x3"    # [[D

    .line 439
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D

    move-result-wide v0

    return-wide v0
.end method

.method private apply([D[D[[D)D
    .locals 9
    .param p1, "pX"    # [D
    .param p2, "pY"    # [D
    .param p3, "coeff"    # [[D

    .line 601
    const-wide/16 v0, 0x0

    .line 602
    .local v0, "result":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 603
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 604
    aget-object v5, p3, v2

    aget-wide v5, v5, v4

    aget-wide v7, p1, v2

    mul-double/2addr v5, v7

    aget-wide v7, p2, v4

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    .line 603
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 602
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method


# virtual methods
.method public partialDerivativeX()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 615
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeXX()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeXY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 639
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 621
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeYY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 633
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public value(DD)D
    .locals 17
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 574
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    const/4 v4, 0x1

    .line 575
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 574
    const/4 v6, 0x0

    .line 575
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 574
    if-ltz v3, :cond_1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p1, v8

    if-gtz v3, :cond_1

    .line 577
    cmpg-double v1, p3, v1

    if-ltz v1, :cond_0

    cmpl-double v1, p3, v8

    if-gtz v1, :cond_0

    .line 581
    mul-double v1, p1, p1

    .line 582
    .local v1, "x2":D
    mul-double v10, v1, p1

    .line 583
    .local v10, "x3":D
    const/4 v3, 0x4

    new-array v5, v3, [D

    aput-wide v8, v5, v6

    aput-wide p1, v5, v4

    const/4 v7, 0x2

    aput-wide v1, v5, v7

    const/4 v12, 0x3

    aput-wide v10, v5, v12

    .line 585
    .local v5, "pX":[D
    mul-double v13, p3, p3

    .line 586
    .local v13, "y2":D
    mul-double v15, v13, p3

    .line 587
    .local v15, "y3":D
    new-array v3, v3, [D

    aput-wide v8, v3, v6

    aput-wide p3, v3, v4

    aput-wide v13, v3, v7

    aput-wide v15, v3, v12

    .line 589
    .local v3, "pY":[D
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    invoke-direct {v0, v5, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D

    move-result-wide v6

    return-wide v6

    .line 578
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

    .line 575
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2, v7, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method
