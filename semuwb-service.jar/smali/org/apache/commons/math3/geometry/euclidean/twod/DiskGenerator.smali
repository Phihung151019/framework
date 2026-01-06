.class public Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;
.super Ljava/lang/Object;
.source "DiskGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 7
    .param p1, "c1"    # [Lorg/apache/commons/math3/fraction/BigFraction;
    .param p2, "c2"    # [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 103
    const/4 v0, 0x0

    aget-object v1, p2, v0

    const/4 v2, 0x2

    aget-object v3, p1, v2

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v3, p2, v4

    aget-object v5, p1, v0

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v2, p2, v2

    aget-object v3, p1, v4

    aget-object v0, p1, v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    .line 34
    .local p1, "support":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    .line 35
    new-instance v2, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    new-array v3, v3, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v2, v4, v5, v6, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v2

    .line 37
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 38
    .local v8, "vA":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x2

    if-ge v2, v12, :cond_1

    .line 39
    new-instance v2, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-array v4, v4, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v8, v4, v3

    const-wide/16 v5, 0x0

    invoke-direct {v2, v8, v5, v6, v4}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v2

    .line 41
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 42
    .local v11, "vB":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x3

    if-ge v2, v5, :cond_2

    .line 43
    new-instance v2, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    invoke-virtual {v8, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v9

    mul-double/2addr v9, v6

    new-array v6, v12, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v8, v6, v3

    aput-object v11, v6, v4

    invoke-direct {v2, v5, v9, v10, v6}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v2

    .line 47
    :cond_2
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 69
    .local v2, "vC":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-array v6, v5, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v9

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v7, v6, v3

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v9

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v7, v6, v4

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v9

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v7, v6, v12

    .line 72
    .local v6, "c2":[Lorg/apache/commons/math3/fraction/BigFraction;
    new-array v7, v5, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v9, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v13

    invoke-direct {v9, v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v9, v7, v3

    new-instance v9, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v13

    invoke-direct {v9, v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v9, v7, v4

    new-instance v9, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v13

    invoke-direct {v9, v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v9, v7, v12

    .line 75
    .local v7, "c3":[Lorg/apache/commons/math3/fraction/BigFraction;
    new-array v9, v5, [Lorg/apache/commons/math3/fraction/BigFraction;

    aget-object v10, v6, v3

    aget-object v13, v6, v3

    invoke-virtual {v10, v13}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v10

    aget-object v13, v7, v3

    aget-object v14, v7, v3

    invoke-virtual {v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v10

    aput-object v10, v9, v3

    aget-object v10, v6, v4

    aget-object v13, v6, v4

    invoke-virtual {v10, v13}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v10

    aget-object v13, v7, v4

    aget-object v14, v7, v4

    invoke-virtual {v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v10

    aput-object v10, v9, v4

    aget-object v10, v6, v12

    aget-object v13, v6, v12

    invoke-virtual {v10, v13}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v10

    aget-object v13, v7, v12

    aget-object v14, v7, v12

    invoke-virtual {v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v10

    aput-object v10, v9, v12

    .line 80
    .local v9, "c1":[Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v10

    invoke-virtual {v10, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v10

    .line 81
    .local v10, "twoM11":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-direct {v0, v9, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v13

    .line 82
    .local v13, "m12":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-direct {v0, v9, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v14

    .line 83
    .local v14, "m13":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual {v13, v10}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v15

    .line 84
    .local v15, "centerX":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual {v14, v10}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v16

    move/from16 v17, v3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    .line 85
    .local v3, "centerY":Lorg/apache/commons/math3/fraction/BigFraction;
    move/from16 v16, v4

    aget-object v4, v6, v17

    invoke-virtual {v4, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    .line 86
    .local v4, "dx":Lorg/apache/commons/math3/fraction/BigFraction;
    move/from16 v18, v12

    aget-object v12, v7, v17

    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v12

    .line 87
    .local v12, "dy":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual {v4, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v12, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    .line 88
    .local v0, "r2":Lorg/apache/commons/math3/fraction/BigFraction;
    new-instance v5, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-object/from16 v19, v0

    .end local v0    # "r2":Lorg/apache/commons/math3/fraction/BigFraction;
    .local v19, "r2":Lorg/apache/commons/math3/fraction/BigFraction;
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-object/from16 v20, v2

    .end local v2    # "vC":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v20, "vC":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v15}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v1

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .end local v3    # "centerY":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v4    # "dx":Lorg/apache/commons/math3/fraction/BigFraction;
    .local v21, "centerY":Lorg/apache/commons/math3/fraction/BigFraction;
    .local v22, "dx":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v8, v3, v17

    aput-object v11, v3, v16

    aput-object v20, v3, v18

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v5
.end method
