.class Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;
.super Ljava/lang/Object;
.source "TricubicInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/TrivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[[D


# direct methods
.method constructor <init>([D)V
    .locals 7
    .param p1, "aV"    # [D

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;->a:[[[D

    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 457
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 458
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    if-ge v3, v2, :cond_0

    .line 459
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;->a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    mul-int/lit8 v5, v3, 0x4

    add-int/2addr v5, v1

    mul-int/2addr v5, v2

    add-int/2addr v5, v0

    aget-wide v5, p1, v5

    aput-wide v5, v4, v3

    .line 458
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 457
    .end local v3    # "k":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public value(DDD)D
    .locals 27
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 475
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const/4 v3, 0x0

    .line 476
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 475
    const/4 v5, 0x1

    .line 476
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 475
    if-ltz v2, :cond_5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v7

    if-gtz v2, :cond_5

    .line 478
    cmpg-double v2, p3, v0

    if-ltz v2, :cond_4

    cmpl-double v2, p3, v7

    if-gtz v2, :cond_4

    .line 481
    cmpg-double v0, p5, v0

    if-ltz v0, :cond_3

    cmpl-double v0, p5, v7

    if-gtz v0, :cond_3

    .line 485
    mul-double v0, p1, p1

    .line 486
    .local v0, "x2":D
    mul-double v9, v0, p1

    .line 487
    .local v9, "x3":D
    const/4 v2, 0x4

    new-array v4, v2, [D

    aput-wide v7, v4, v3

    aput-wide p1, v4, v5

    const/4 v6, 0x2

    aput-wide v0, v4, v6

    const/4 v11, 0x3

    aput-wide v9, v4, v11

    .line 489
    .local v4, "pX":[D
    mul-double v12, p3, p3

    .line 490
    .local v12, "y2":D
    mul-double v14, v12, p3

    .line 491
    .local v14, "y3":D
    move/from16 v16, v3

    new-array v3, v2, [D

    aput-wide v7, v3, v16

    aput-wide p3, v3, v5

    aput-wide v12, v3, v6

    aput-wide v14, v3, v11

    .line 493
    .local v3, "pY":[D
    mul-double v17, p5, p5

    .line 494
    .local v17, "z2":D
    mul-double v19, v17, p5

    .line 495
    .local v19, "z3":D
    move/from16 v21, v5

    new-array v5, v2, [D

    aput-wide v7, v5, v16

    aput-wide p5, v5, v21

    aput-wide v17, v5, v6

    aput-wide v19, v5, v11

    .line 497
    .local v5, "pZ":[D
    const-wide/16 v6, 0x0

    .line 498
    .local v6, "result":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_2

    .line 499
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v2, :cond_1

    .line 500
    const/16 v16, 0x0

    move-wide/from16 v21, v0

    move/from16 v0, v16

    .local v0, "k":I
    .local v21, "x2":D
    :goto_2
    if-ge v0, v2, :cond_0

    .line 501
    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;->a:[[[D

    aget-object v2, v2, v8

    aget-object v2, v2, v11

    aget-wide v23, v2, v0

    aget-wide v25, v4, v8

    mul-double v23, v23, v25

    aget-wide v25, v3, v11

    mul-double v23, v23, v25

    aget-wide v25, v5, v0

    mul-double v23, v23, v25

    add-double v6, v6, v23

    .line 500
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x4

    goto :goto_2

    :cond_0
    move-object/from16 v1, p0

    .line 499
    .end local v0    # "k":I
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v0, v21

    const/4 v2, 0x4

    goto :goto_1

    .end local v21    # "x2":D
    .local v0, "x2":D
    :cond_1
    move-wide/from16 v21, v0

    move-object/from16 v1, p0

    .line 498
    .end local v0    # "x2":D
    .end local v11    # "j":I
    .restart local v21    # "x2":D
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v0, v21

    const/4 v2, 0x4

    goto :goto_0

    .line 506
    .end local v8    # "i":I
    .end local v21    # "x2":D
    .restart local v0    # "x2":D
    :cond_2
    return-wide v6

    .line 481
    .end local v0    # "x2":D
    .end local v3    # "pY":[D
    .end local v4    # "pX":[D
    .end local v5    # "pZ":[D
    .end local v6    # "result":D
    .end local v9    # "x3":D
    .end local v12    # "y2":D
    .end local v14    # "y3":D
    .end local v17    # "z2":D
    .end local v19    # "z3":D
    :cond_3
    move-object/from16 v1, p0

    .line 482
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2, v4, v6}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 478
    :cond_4
    move-object/from16 v1, p0

    .line 479
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2, v4, v6}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 475
    :cond_5
    move-object/from16 v1, p0

    .line 476
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2, v4, v6}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method
