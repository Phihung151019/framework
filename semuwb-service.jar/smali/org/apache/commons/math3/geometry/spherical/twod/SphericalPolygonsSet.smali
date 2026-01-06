.class public Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "SphericalPolygonsSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# instance fields
.field private loops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(D)V
    .locals 0
    .param p1, "tolerance"    # D

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    .line 55
    return-void
.end method

.method public varargs constructor <init>(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V
    .locals 1
    .param p1, "hyperplaneThickness"    # D
    .param p3, "vertices"    # [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 152
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->verticesToTree(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;D)V
    .locals 0
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;>;D)V"
        }
    .end annotation

    .line 118
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 5
    .param p1, "pole"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "tolerance"    # D

    .line 62
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DID)V
    .locals 1
    .param p1, "center"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "meridian"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "outsideRadius"    # D
    .param p5, "n"    # I
    .param p6, "tolerance"    # D

    .line 79
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->createRegularPolygonVertices(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DI)[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v0

    invoke-direct {p0, p6, p7, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;-><init>(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;D)V"
        }
    .end annotation

    .line 93
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 94
    return-void
.end method

.method private static createRegularPolygonVertices(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DI)[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 7
    .param p0, "center"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "meridian"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "outsideRadius"    # D
    .param p4, "n"    # I

    .line 164
    new-array v0, p4, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 165
    .local v0, "array":[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-direct {v1, v2, p2, p3, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 167
    .local v1, "r0":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 169
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v5, p4

    div-double/2addr v3, v5

    sget-object v5, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-direct {v2, p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 170
    .local v2, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 171
    new-instance v4, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    aput-object v4, v0, v3

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    .end local v3    # "i":I
    :cond_0
    return-object v0
.end method

.method private getInsidePoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation

    .line 549
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;-><init>(D)V

    .line 550
    .local v0, "pc":Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 551
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->getConvexCellsInsidePoints()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getOutsidePoints()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation

    .line 558
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    .line 560
    .local v0, "complement":Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;-><init>(D)V

    .line 561
    .local v1, "pc":Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 562
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->getConvexCellsInsidePoints()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V
    .locals 7
    .param p0, "hyperplaneThickness"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p2, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .local p3, "edges":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    const/4 v0, 0x0

    .line 265
    .local v0, "index":I
    const/4 v1, 0x0

    .line 266
    .local v1, "inserted":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :goto_0
    if-nez v1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 267
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 268
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const/4 v1, 0x0

    move v0, v2

    goto :goto_0

    .line 268
    :cond_0
    move v0, v2

    goto :goto_0

    .line 273
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_1
    if-nez v1, :cond_4

    .line 276
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    .line 277
    .local v2, "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    if-ne p2, v3, :cond_2

    goto :goto_1

    .line 280
    :cond_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_2

    .line 278
    :cond_3
    :goto_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 282
    :goto_2
    return-void

    .line 287
    .end local v2    # "parent":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v2, "outsideList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v3, "insideList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 290
    .local v5, "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    if-eq v5, v1, :cond_5

    .line 291
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->split(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;Ljava/util/List;Ljava/util/List;)V

    .line 293
    .end local v5    # "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    :cond_5
    goto :goto_3

    .line 296
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 297
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-static {p0, p1, v4, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto :goto_4

    .line 299
    :cond_7
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 301
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 302
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-static {p0, p1, v4, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto :goto_5

    .line 304
    :cond_8
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 307
    :goto_5
    return-void
.end method

.method private static varargs verticesToTree(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 13
    .param p0, "hyperplaneThickness"    # D
    .param p2, "vertices"    # [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D[",
            "Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation

    .line 198
    array-length v0, p2

    .line 199
    .local v0, "n":I
    if-nez v0, :cond_0

    .line 201
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 205
    :cond_0
    new-array v1, v0, [Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 206
    .local v1, "vArray":[Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 207
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    aget-object v4, p2, v2

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    aput-object v3, v1, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v2, "edges":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    add-int/lit8 v3, v0, -0x1

    aget-object v3, v1, v3

    .line 213
    .local v3, "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 216
    move-object v6, v3

    .line 217
    .local v6, "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    aget-object v7, v1, v4

    .line 222
    .end local v3    # "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .local v7, "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->sharedCircleWith(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;)Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v3

    .line 223
    .local v3, "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    if-nez v3, :cond_2

    .line 224
    new-instance v5, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v9

    invoke-direct {v5, v8, v9, p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;D)V

    move-object v3, v5

    move-object v10, v3

    goto :goto_2

    .line 223
    :cond_2
    move-object v10, v3

    .line 228
    .end local v3    # "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .local v10, "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    :goto_2
    new-instance v5, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    invoke-static {v3, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v8

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    move-object v3, v1

    .local v3, "arr$":[Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v5, :cond_4

    aget-object v9, v3, v8

    .line 235
    .local v9, "vertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    if-eq v9, v6, :cond_3

    if-eq v9, v7, :cond_3

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpg-double v11, v11, p0

    if-gtz v11, :cond_3

    .line 237
    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 234
    .end local v9    # "vertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 213
    .end local v3    # "arr$":[Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v5    # "len$":I
    .end local v6    # "start":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v8    # "i$":I
    .end local v10    # "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-object v3, v7

    goto :goto_1

    .line 244
    .end local v4    # "i":I
    .end local v7    # "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .local v3, "end":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :cond_5
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    .line 245
    .local v4, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-static {p0, p1, v4, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    .line 247
    return-object v4
.end method


# virtual methods
.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    move-result-object p1

    return-object p1
.end method

.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;"
        }
    .end annotation

    .line 312
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method protected computeGeometricalProperties()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 324
    .local v0, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v1, :cond_1

    .line 328
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const-wide v4, 0x402921fb54442d18L    # 12.566370614359172

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setSize(D)V

    .line 331
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DD)V

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setSize(D)V

    .line 334
    sget-object v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 340
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;-><init>(D)V

    .line 341
    .local v1, "pc":Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 342
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->getArea()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setSize(D)V

    .line 343
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;->getBarycenter()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 347
    .end local v1    # "pc":Lorg/apache/commons/math3/geometry/spherical/twod/PropertiesComputer;
    :goto_0
    return-void
.end method

.method public getBoundaryLoops()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->loops:Ljava/util/List;

    if-nez v0, :cond_4

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v1, :cond_0

    .line 376
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->loops:Ljava/util/List;

    goto :goto_1

    .line 380
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    .line 381
    .local v1, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v3

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 382
    .local v2, "visitor":Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 383
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->getEdges()Ljava/util/List;

    move-result-object v3

    .line 387
    .local v3, "edges":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->loops:Ljava/util/List;

    .line 388
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 391
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 392
    .local v4, "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v5

    .line 393
    .local v5, "startVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->loops:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 400
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_2

    .line 401
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 402
    nop

    .line 407
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    :cond_3
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v4

    .line 409
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v6

    if-ne v6, v5, :cond_1

    .line 411
    .end local v4    # "edge":Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .end local v5    # "startVertex":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    goto :goto_0

    .line 416
    .end local v1    # "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .end local v2    # "visitor":Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;
    .end local v3    # "edges":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Edge;>;"
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->loops:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingCap()Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;",
            ">;"
        }
    .end annotation

    .line 470
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 471
    new-instance v1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v3, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    new-array v2, v2, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v1

    .line 473
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isFull()Z

    move-result v1

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v1, :cond_1

    .line 474
    new-instance v1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v5, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    new-array v2, v2, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v1, v5, v3, v4, v2}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v1

    .line 478
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    .line 479
    .local v1, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v5

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 481
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 482
    .local v3, "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    new-instance v4, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v5, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->negate()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v5

    new-array v2, v2, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v4, v5, v6, v7, v2}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v4

    .line 485
    .end local v3    # "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 487
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 488
    .restart local v3    # "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    new-instance v4, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v5, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    new-array v2, v2, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v4, v5, v6, v7, v2}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v4

    .line 493
    .end local v3    # "circle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    :cond_3
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getInsidePoints()Ljava/util/List;

    move-result-object v5

    .line 496
    .local v5, "points":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getBoundaryLoops()Ljava/util/List;

    move-result-object v6

    .line 497
    .local v6, "boundary":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 498
    .local v8, "loopStart":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    const/4 v9, 0x0

    .line 499
    .local v9, "count":I
    move-object v10, v8

    .local v10, "v":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :goto_1
    if-eqz v9, :cond_5

    if-eq v10, v8, :cond_4

    goto :goto_2

    .line 503
    .end local v8    # "loopStart":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v9    # "count":I
    .end local v10    # "v":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :cond_4
    goto :goto_0

    .line 500
    .restart local v8    # "loopStart":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .restart local v9    # "count":I
    .restart local v10    # "v":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 501
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v10

    goto :goto_1

    .line 506
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "loopStart":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .end local v9    # "count":I
    .end local v10    # "v":Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    :cond_6
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;

    invoke-direct {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;-><init>()V

    .line 507
    .local v7, "generator":Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;
    new-instance v8, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v9

    invoke-direct {v8, v9, v10, v7}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;-><init>(DLorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;)V

    .line 509
    .local v8, "encloser":Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;, "Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    invoke-virtual {v8, v5}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->enclose(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v9

    .line 510
    .local v9, "enclosing3D":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getSupport()[Lorg/apache/commons/math3/geometry/Point;

    move-result-object v10

    check-cast v10, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 513
    .local v10, "support3D":[Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v11

    .line 514
    .local v11, "r":D
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v13

    .line 515
    .local v13, "h":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getTolerance()D

    move-result-wide v15

    cmpg-double v15, v13, v15

    if-gez v15, :cond_9

    .line 518
    new-instance v15, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-object/from16 v16, v1

    .end local v1    # "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .local v16, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    sget-object v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-object/from16 v17, v5

    .end local v5    # "points":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    new-array v5, v2, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v15, v1, v3, v4, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    .line 520
    .local v15, "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getOutsidePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 521
    .local v3, "outsidePoint":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v4, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v4, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 522
    .local v4, "outsideS2":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    move-result-object v5

    .line 523
    .local v5, "projection":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getOffset()D

    move-result-wide v18

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    sub-double v18, v20, v18

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v22

    cmpg-double v18, v18, v22

    if-gez v18, :cond_7

    .line 524
    move/from16 v18, v2

    new-instance v2, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->negate()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v0

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getOffset()D

    move-result-wide v22

    move-object/from16 v19, v3

    move-object/from16 v24, v4

    .end local v3    # "outsidePoint":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v4    # "outsideS2":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .local v19, "outsidePoint":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v24, "outsideS2":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    sub-double v3, v20, v22

    move-object/from16 v20, v1

    .end local v1    # "i$":Ljava/util/Iterator;
    .local v20, "i$":Ljava/util/Iterator;
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getProjected()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v21

    check-cast v21, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    aput-object v21, v1, v18

    invoke-direct {v2, v0, v3, v4, v1}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    move-object v15, v2

    .end local v15    # "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    .local v2, "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    goto :goto_4

    .line 523
    .end local v2    # "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    .end local v19    # "outsidePoint":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v24    # "outsideS2":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "outsidePoint":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .restart local v4    # "outsideS2":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .restart local v15    # "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    :cond_7
    move-object/from16 v20, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v24, v4

    .line 528
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "outsidePoint":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v4    # "outsideS2":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .end local v5    # "projection":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .restart local v20    # "i$":Ljava/util/Iterator;
    :goto_4
    move-object/from16 v0, p0

    move/from16 v2, v18

    move-object/from16 v1, v20

    goto :goto_3

    .line 529
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_8
    return-object v15

    .line 531
    .end local v15    # "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    .end local v16    # "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .end local v17    # "points":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    .local v1, "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .local v5, "points":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    :cond_9
    move-object/from16 v16, v1

    move-object/from16 v17, v5

    .end local v1    # "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .end local v5    # "points":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    .restart local v16    # "root":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .restart local v17    # "points":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    array-length v0, v10

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 532
    .local v0, "support":[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v10

    if-ge v1, v2, :cond_a

    .line 533
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    aget-object v3, v10, v1

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    aput-object v2, v0, v1

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 536
    .end local v1    # "i":I
    :cond_a
    new-instance v1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v18, v13, v13

    add-double v18, v18, v3

    mul-double v3, v11, v11

    sub-double v18, v18, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v13

    div-double v18, v18, v3

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    .line 541
    .local v1, "enclosingS2":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;>;"
    return-object v1
.end method
