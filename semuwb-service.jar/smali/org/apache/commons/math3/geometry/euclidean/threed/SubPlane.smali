.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.source "SubPlane.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 49
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .line 61
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 62
    .local v1, "otherPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 63
    .local v2, "thisPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    move-result-object v3

    .line 64
    .local v3, "inter":Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getTolerance()D

    move-result-wide v4

    .line 66
    .local v4, "tolerance":D
    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 68
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)D

    move-result-wide v7

    .line 69
    .local v7, "global":D
    neg-double v9, v4

    cmpg-double v9, v7, v9

    if-gez v9, :cond_0

    .line 70
    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v9, v6, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v9

    .line 71
    :cond_0
    cmpl-double v9, v7, v4

    if-lez v9, :cond_1

    .line 72
    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v9, v0, v6}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v9

    .line 74
    :cond_1
    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v9, v6, v6}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v9

    .line 79
    .end local v7    # "global":D
    :cond_2
    sget-object v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    .line 80
    .local v7, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    sget-object v8, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ONE:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v8

    .line 81
    .local v8, "q":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getDirection()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    .line 82
    .local v9, "crossP":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    .line 83
    move-object v10, v7

    .line 84
    .local v10, "tmp":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object v7, v8

    .line 85
    move-object v8, v10

    .line 87
    .end local v10    # "tmp":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_3
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v10, v7, v8, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    move-result-object v10

    .line 89
    .local v10, "l2DMinus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v11, v8, v7, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    move-result-object v11

    .line 92
    .local v11, "l2DPlus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v12

    invoke-virtual {v12, v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v12

    .line 93
    .local v12, "splitTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v13

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v13, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v13, v14}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v13, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v14, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v14, v15}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v15

    invoke-direct {v13, v11, v14, v15, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .line 98
    .local v13, "plusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v14

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v14

    if-eqz v14, :cond_5

    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v14}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    new-instance v14, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v15, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v15, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    const/4 v0, 0x0

    invoke-direct {v14, v10, v15, v6, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    move-object v6, v14

    .line 103
    .local v6, "minusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    :goto_1
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "otherPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .local v16, "otherPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-direct {v1, v13, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    invoke-direct {v14, v15, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v15

    move-object/from16 v17, v2

    .end local v2    # "thisPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .local v17, "thisPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-direct {v2, v6, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-direct {v0, v14, v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v0
.end method
