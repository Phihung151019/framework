.class public Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.source "SubCircle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
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
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 46
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation

    .line 53
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 54
    .local v0, "thisCircle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 55
    .local v1, "otherCircle":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v2

    .line 57
    .local v2, "angle":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v4

    cmpg-double v4, v2, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_3

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v8

    sub-double/2addr v6, v8

    cmpl-double v4, v2, v6

    if-lez v4, :cond_0

    goto :goto_2

    .line 62
    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    move-result-object v4

    .line 63
    .local v4, "arc":Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->split(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;

    move-result-object v6

    .line 64
    .local v6, "split":Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->getPlus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v7

    .line 65
    .local v7, "plus":Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->getMinus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v8

    .line 66
    .local v8, "minus":Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    if-nez v7, :cond_1

    move-object v10, v5

    goto :goto_0

    :cond_1
    new-instance v10, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v11

    invoke-direct {v10, v11, v7}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    :goto_0
    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v11

    invoke-direct {v5, v11, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    :goto_1
    invoke-direct {v9, v10, v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v9

    .line 59
    .end local v4    # "arc":Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    .end local v6    # "split":Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;
    .end local v7    # "plus":Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .end local v8    # "minus":Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    :cond_3
    :goto_2
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v4, v5, v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v4
.end method
