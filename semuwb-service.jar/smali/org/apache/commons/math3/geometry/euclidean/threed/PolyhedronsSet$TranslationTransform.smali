.class Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;
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
    name = "TranslationTransform"
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

.field private translation:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 0
    .param p1, "translation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->translation:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 702
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 686
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;"
        }
    .end annotation

    .line 711
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->translation:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->translate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 706
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v3, p1

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->translation:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 0

    .line 686
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 18
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

    .line 718
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p2, "original":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .local p3, "transformed":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    if-eq v1, v2, :cond_0

    .line 721
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 722
    .local v2, "oPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    move-object/from16 v3, p3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 723
    .local v3, "tPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    .line 725
    .local v4, "shift":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object v5, v1

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iput-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 726
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v14

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v16

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v6 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTransform(DDDDDD)Lorg/apache/commons/math3/geometry/partitioning/Transform;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;

    .line 733
    .end local v2    # "oPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v3    # "tPlane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v4    # "shift":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_0
    move-object/from16 v2, p1

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;->cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v2

    return-object v2
.end method
