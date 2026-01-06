.class public Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;
.super Ljava/lang/Object;
.source "OutlineExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;
    }
.end annotation


# instance fields
.field private u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 1
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 55
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 56
    invoke-static {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    .line 38
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    .line 38
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    .line 38
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method private pointIsBetween([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;II)Z
    .locals 22
    .param p1, "loop"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "n"    # I
    .param p3, "i"    # I

    .line 108
    add-int v0, p3, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int v0, v0, p2

    aget-object v0, p1, v0

    .line 109
    .local v0, "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    aget-object v2, p1, p3

    .line 110
    .local v2, "current":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    add-int/lit8 v3, p3, 0x1

    rem-int v3, v3, p2

    aget-object v3, p1, v3

    .line 111
    .local v3, "next":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 112
    .local v4, "dx1":D
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 113
    .local v6, "dy1":D
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v8

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    sub-double/2addr v8, v10

    .line 114
    .local v8, "dx2":D
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v12

    sub-double/2addr v10, v12

    .line 115
    .local v10, "dy2":D
    mul-double v12, v4, v10

    mul-double v14, v8, v6

    sub-double/2addr v12, v14

    .line 116
    .local v12, "cross":D
    mul-double v14, v4, v8

    mul-double v16, v6, v10

    add-double v14, v14, v16

    .line 117
    .local v14, "dot":D
    mul-double v16, v4, v4

    mul-double v18, v6, v6

    add-double v16, v16, v18

    mul-double v18, v8, v8

    mul-double v20, v10, v10

    add-double v18, v18, v20

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    .line 118
    .local v16, "d1d2":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    const-wide v20, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v20, v20, v16

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_0

    const-wide/16 v18, 0x0

    cmpl-double v18, v14, v18

    if-ltz v18, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getOutline(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;)[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 9
    .param p1, "polyhedronsSet"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    .line 66
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;D)V

    .line 67
    .local v0, "projector":Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 68
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->getProjected()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object v1

    .line 71
    .local v1, "projected":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    .line 72
    .local v2, "outline":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 73
    aget-object v4, v2, v3

    .line 74
    .local v4, "rawLoop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v5, v4

    .line 75
    .local v5, "end":I
    const/4 v6, 0x0

    .line 76
    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 77
    invoke-direct {p0, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->pointIsBetween([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 79
    move v7, v6

    .local v7, "k":I
    :goto_2
    add-int/lit8 v8, v5, -0x1

    if-ge v7, v8, :cond_0

    .line 80
    add-int/lit8 v8, v7, 0x1

    aget-object v8, v4, v8

    aput-object v8, v4, v7

    .line 79
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 82
    .end local v7    # "k":I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 85
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 88
    :cond_2
    array-length v7, v4

    if-eq v5, v7, :cond_3

    .line 90
    new-array v7, v5, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v7, v2, v3

    .line 91
    aget-object v7, v2, v3

    const/4 v8, 0x0

    invoke-static {v4, v8, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .end local v4    # "rawLoop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v5    # "end":I
    .end local v6    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "i":I
    :cond_4
    return-object v2
.end method
