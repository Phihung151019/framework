.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;
.super Ljava/lang/Object;
.source "SphereGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 8
    .param p1, "c1"    # [Lorg/apache/commons/math3/fraction/BigFraction;
    .param p2, "c2"    # [Lorg/apache/commons/math3/fraction/BigFraction;
    .param p3, "c3"    # [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 138
    const/4 v0, 0x0

    aget-object v1, p2, v0

    const/4 v2, 0x1

    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v4, p1, v3

    const/4 v5, 0x3

    aget-object v6, p1, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v0

    aget-object v6, p3, v3

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v5

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v0

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v2

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v2

    aget-object v6, p3, v0

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v5

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v2

    aget-object v6, p3, v3

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v0

    aget-object v7, p1, v5

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v2

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v3

    aget-object v7, p1, v0

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v3

    aget-object v6, p3, v0

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v2

    aget-object v7, p1, v5

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v3

    aget-object v6, p3, v2

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v5

    aget-object v7, p1, v0

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v3

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v0

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v5

    aget-object v6, p3, v0

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v3

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v5

    aget-object v6, p3, v2

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v0

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v5

    aget-object v3, p3, v3

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    aget-object v2, p1, v2

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation

    .line 38
    .local p1, "support":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    .line 39
    new-instance v2, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    new-array v3, v3, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v2, v4, v5, v6, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v2

    .line 41
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 42
    .local v6, "vA":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x2

    if-ge v2, v12, :cond_1

    .line 43
    new-instance v2, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-array v4, v4, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aput-object v6, v4, v3

    const-wide/16 v7, 0x0

    invoke-direct {v2, v6, v7, v8, v4}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v2

    .line 45
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 46
    .local v7, "vB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x3

    if-ge v2, v11, :cond_2

    .line 47
    new-instance v2, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v8, v6

    move-object v11, v7

    .end local v6    # "vA":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v7    # "vB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v8, "vA":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v11, "vB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    move-object v7, v11

    .end local v11    # "vB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .restart local v7    # "vB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v13

    mul-double/2addr v13, v9

    new-array v6, v12, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aput-object v8, v6, v3

    aput-object v7, v6, v4

    invoke-direct {v2, v5, v13, v14, v6}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v2

    .line 51
    .end local v8    # "vA":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .restart local v6    # "vA":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_2
    move-object v8, v6

    .end local v6    # "vA":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .restart local v8    # "vA":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 52
    .local v2, "vC":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    .line 55
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v9

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v13

    add-double/2addr v9, v13

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v13

    add-double/2addr v9, v13

    const-wide v13, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    mul-double/2addr v9, v13

    move-object v6, v8

    move-object v8, v2

    .end local v2    # "vC":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .restart local v6    # "vA":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v8, "vC":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    move-object v8, v6

    .line 57
    .end local v6    # "vA":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .restart local v2    # "vC":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v5, "p":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .local v8, "vA":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;

    invoke-direct {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;-><init>()V

    new-array v9, v11, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v6

    .line 63
    .local v6, "disk":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    new-instance v9, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/geometry/Vector;

    invoke-virtual {v5, v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v10

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v13

    new-array v11, v11, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aput-object v8, v11, v3

    aput-object v7, v11, v4

    aput-object v2, v11, v12

    invoke-direct {v9, v10, v13, v14, v11}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v9

    .line 67
    .end local v5    # "p":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v6    # "disk":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    :cond_3
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 91
    .local v5, "vD":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-array v9, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v10, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v13

    invoke-direct {v10, v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v10, v9, v3

    new-instance v10, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v13

    invoke-direct {v10, v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v10, v9, v4

    new-instance v10, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v13

    invoke-direct {v10, v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v10, v9, v12

    new-instance v10, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v13

    invoke-direct {v10, v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v10, v9, v11

    .line 95
    .local v9, "c2":[Lorg/apache/commons/math3/fraction/BigFraction;
    new-array v10, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v13, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v13, v10, v3

    new-instance v13, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v13, v10, v4

    new-instance v13, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v13, v10, v12

    new-instance v13, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v13, v10, v11

    .line 99
    .local v10, "c3":[Lorg/apache/commons/math3/fraction/BigFraction;
    new-array v13, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v14, Lorg/apache/commons/math3/fraction/BigFraction;

    move/from16 v16, v3

    move v15, v4

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-direct {v14, v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v14, v13, v16

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    move v14, v11

    move v4, v12

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v11

    invoke-direct {v3, v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v3, v13, v15

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v11

    invoke-direct {v3, v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v3, v13, v4

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v11

    invoke-direct {v3, v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v3, v13, v14

    .line 103
    .local v13, "c4":[Lorg/apache/commons/math3/fraction/BigFraction;
    new-array v3, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    aget-object v11, v9, v16

    aget-object v12, v9, v16

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    aget-object v12, v10, v16

    move/from16 v17, v4

    aget-object v4, v10, v16

    invoke-virtual {v12, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v11, v13, v16

    aget-object v12, v13, v16

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aput-object v4, v3, v16

    aget-object v4, v9, v15

    aget-object v11, v9, v15

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v11, v10, v15

    aget-object v12, v10, v15

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v11, v13, v15

    aget-object v12, v13, v15

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aput-object v4, v3, v15

    aget-object v4, v9, v17

    aget-object v11, v9, v17

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v11, v10, v17

    aget-object v12, v10, v17

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v11, v13, v17

    aget-object v12, v13, v17

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aput-object v4, v3, v17

    aget-object v4, v9, v14

    aget-object v11, v9, v14

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v11, v10, v14

    aget-object v12, v10, v14

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v11, v13, v14

    aget-object v12, v13, v14

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aput-object v4, v3, v14

    .line 109
    .local v3, "c1":[Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-direct {v0, v9, v10, v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    move/from16 v11, v17

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v12

    .line 110
    .local v12, "twoM11":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-direct {v0, v3, v10, v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    .line 111
    .local v11, "m12":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-direct {v0, v3, v9, v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    .line 112
    .local v4, "m13":Lorg/apache/commons/math3/fraction/BigFraction;
    move/from16 v18, v14

    invoke-direct {v0, v3, v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v14

    .line 113
    .local v14, "m14":Lorg/apache/commons/math3/fraction/BigFraction;
    move/from16 v19, v15

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v15

    .line 114
    .local v15, "centerX":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    .line 115
    .local v6, "centerY":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual {v14, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    .line 116
    .local v0, "centerZ":Lorg/apache/commons/math3/fraction/BigFraction;
    aget-object v1, v9, v16

    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    .line 117
    .local v1, "dx":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v20, v2

    .end local v2    # "vC":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v20, "vC":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    aget-object v2, v10, v16

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    .line 118
    .local v2, "dy":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v21, v3

    .end local v3    # "c1":[Lorg/apache/commons/math3/fraction/BigFraction;
    .local v21, "c1":[Lorg/apache/commons/math3/fraction/BigFraction;
    aget-object v3, v13, v16

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    .line 119
    .local v3, "dz":Lorg/apache/commons/math3/fraction/BigFraction;
    move-object/from16 v22, v0

    .end local v0    # "centerZ":Lorg/apache/commons/math3/fraction/BigFraction;
    .local v22, "centerZ":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual {v1, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    move-object/from16 v23, v1

    .end local v1    # "dx":Lorg/apache/commons/math3/fraction/BigFraction;
    .local v23, "dx":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual {v2, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v3, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    .line 120
    .local v0, "r2":Lorg/apache/commons/math3/fraction/BigFraction;
    new-instance v1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v24, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v15}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v25

    invoke-virtual {v6}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v27

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v29

    invoke-direct/range {v24 .. v30}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    .end local v0    # "r2":Lorg/apache/commons/math3/fraction/BigFraction;
    .local v25, "r2":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v26

    move-object/from16 v24, v2

    move-object/from16 v28, v3

    .end local v2    # "dy":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v3    # "dz":Lorg/apache/commons/math3/fraction/BigFraction;
    .local v24, "dy":Lorg/apache/commons/math3/fraction/BigFraction;
    .local v28, "dz":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    move-object/from16 v26, v4

    const/4 v4, 0x4

    .end local v4    # "m13":Lorg/apache/commons/math3/fraction/BigFraction;
    .local v26, "m13":Lorg/apache/commons/math3/fraction/BigFraction;
    new-array v4, v4, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aput-object v8, v4, v16

    aput-object v7, v4, v19

    const/16 v17, 0x2

    aput-object v20, v4, v17

    aput-object v5, v4, v18

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v1
.end method
