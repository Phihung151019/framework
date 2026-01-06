.class Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;
.super Ljava/lang/Object;
.source "PropertiesComputer.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        ">;"
    }
.end annotation


# instance fields
.field private final convexCellsInsidePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation
.end field

.field private summedArea:D

.field private summedBarycenter:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final tolerance:D


# direct methods
.method constructor <init>(D)V
    .locals 2
    .param p1, "tolerance"    # D

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->tolerance:D

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->summedArea:D

    .line 52
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->summedBarycenter:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->convexCellsInsidePoints:Ljava/util/List;

    .line 54
    return-void
.end method

.method private convexCellArea(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;)D
    .locals 11
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "n":I
    const-wide/16 v1, 0x0

    .line 106
    .local v1, "sum":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v3

    .local v3, "e":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v4

    if-eq v4, p1, :cond_0

    goto :goto_1

    .line 125
    .end local v3    # "e":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :cond_0
    add-int/lit8 v3, v0, -0x2

    int-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    sub-double v3, v1, v3

    return-wide v3

    .line 109
    .restart local v3    # "e":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    .line 110
    .local v4, "previousPole":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    .line 111
    .local v5, "nextPole":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 112
    .local v6, "point":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-static {v6, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v7

    invoke-static {v5, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v9

    neg-double v9, v9

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v7

    .line 114
    .local v7, "alpha":D
    const-wide/16 v9, 0x0

    cmpg-double v9, v7, v9

    if-gez v9, :cond_2

    .line 115
    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v7, v9

    .line 117
    :cond_2
    add-double/2addr v1, v7

    .line 118
    nop

    .end local v4    # "previousPole":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v5    # "nextPole":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v6    # "point":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v7    # "alpha":D
    add-int/lit8 v0, v0, 0x1

    .line 106
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v3

    goto :goto_0
.end method

.method private convexCellBarycenter(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 9
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "n":I
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 139
    .local v1, "sumB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v2

    move-object v4, v1

    move-object v8, v2

    .end local v1    # "sumB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v4, "sumB":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v8, "e":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 144
    .end local v8    # "e":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :cond_0
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    return-object v1

    .line 140
    .restart local v8    # "e":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :cond_1
    :goto_1
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getLength()D

    move-result-wide v5

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    move-object v4, v1

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 139
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public getArea()D
    .locals 2

    .line 152
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->summedArea:D

    return-wide v0
.end method

.method public getBarycenter()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 4

    .line 159
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->summedBarycenter:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNormSq()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->summedBarycenter:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public getConvexCellsInsidePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->convexCellsInsidePoints:Ljava/util/List;

    return-object v0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->pruneAroundConvexCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->tolerance:D

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 78
    .local v0, "convex":Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getBoundaryLoops()Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "boundary":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 85
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->convexCellArea(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;)D

    move-result-wide v8

    .line 86
    .local v8, "area":D
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->convexCellBarycenter(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v10

    .line 87
    .local v10, "barycenter":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->convexCellsInsidePoints:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->summedArea:D

    add-double/2addr v2, v8

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->summedArea:D

    .line 91
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->summedBarycenter:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->summedBarycenter:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    goto :goto_0

    .line 81
    .end local v8    # "area":D
    .end local v10    # "barycenter":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v2

    .line 94
    .end local v0    # "convex":Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
    .end local v1    # "boundary":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .line 58
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
