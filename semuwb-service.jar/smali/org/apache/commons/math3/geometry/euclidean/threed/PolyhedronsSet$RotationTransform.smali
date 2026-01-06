.class Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;
.super Ljava/lang/Object;
.source "PolyhedronsSet.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotationTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# instance fields
.field private cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

.field private cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation
.end field

.field private center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)V
    .locals 0
    .param p1, "center"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "rotation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 631
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .line 632
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 611
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;"
        }
    .end annotation

    .line 642
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->rotate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 636
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 637
    .local v0, "delta":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v1
.end method

.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 0

    .line 611
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 649
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p2, "original":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .local p3, "transformed":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    if-eq v1, v2, :cond_0

    .line 652
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 653
    .local v2, "oPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    move-object/from16 v3, p3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 654
    .local v3, "tPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    .line 655
    .local v4, "p00":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    .line 656
    .local v5, "p10":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v10, v8, v9, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 657
    .local v6, "p01":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    .line 658
    .local v7, "tP00":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v8

    .line 659
    .local v8, "tP10":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    .line 661
    .local v9, "tP01":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object v10, v1

    check-cast v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iput-object v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 662
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v12

    sub-double v14, v10, v12

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v10

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v12

    sub-double v16, v10, v12

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v12

    sub-double v18, v10, v12

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v10

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v12

    sub-double v20, v10, v12

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v22

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v24

    invoke-static/range {v14 .. v25}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTransform(DDDDDD)Lorg/apache/commons/math3/geometry/partitioning/Transform;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;

    .line 671
    .end local v2    # "oPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v3    # "tPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v4    # "p00":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v5    # "p10":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v6    # "p01":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v7    # "tP00":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v8    # "tP10":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v9    # "tP01":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_0
    move-object/from16 v2, p1

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v2

    return-object v2
.end method
