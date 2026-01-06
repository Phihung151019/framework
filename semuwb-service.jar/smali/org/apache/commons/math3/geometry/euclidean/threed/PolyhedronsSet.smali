.class public Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "PolyhedronsSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;,
        Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;,
        Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(D)V

    .line 157
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "tolerance"    # D

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    .line 58
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 15
    .param p1, "xMin"    # D
    .param p3, "xMax"    # D
    .param p5, "yMin"    # D
    .param p7, "yMax"    # D
    .param p9, "zMin"    # D
    .param p11, "zMax"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    const-wide v13, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(DDDDDDD)V

    .line 214
    return-void
.end method

.method public constructor <init>(DDDDDDD)V
    .locals 1
    .param p1, "xMin"    # D
    .param p3, "xMax"    # D
    .param p5, "yMin"    # D
    .param p7, "yMax"    # D
    .param p9, "zMin"    # D
    .param p11, "zMax"    # D
    .param p13, "tolerance"    # D

    .line 148
    invoke-static/range {p1 .. p14}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildBoundary(DDDDDDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p13, p14}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(Ljava/util/Collection;D)V

    .line 197
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
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;>;D)V"
        }
    .end annotation

    .line 108
    .local p1, "boundary":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;D)V
    .locals 1
    .param p3, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List<",
            "[I>;D)V"
        }
    .end annotation

    .line 131
    .local p1, "vertices":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    .local p2, "facets":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildBoundary(Ljava/util/List;Ljava/util/List;D)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;D)V"
        }
    .end annotation

    .line 82
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # D

    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/Point;

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # D

    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/Point;

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # D

    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .param p1, "x1"    # Lorg/apache/commons/math3/geometry/Point;

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void
.end method

.method private boundaryFacet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 4
    .param p1, "point"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .line 585
    .local p2, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    .line 587
    .local v0, "point2D":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 589
    .local v1, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v2, v3, :cond_0

    .line 591
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    return-object v2

    .line 593
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v2, v3, :cond_1

    .line 595
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    return-object v2

    .line 597
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static buildBoundary(Ljava/util/List;Ljava/util/List;D)Ljava/util/List;
    .locals 22
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List<",
            "[I>;D)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;>;"
        }
    .end annotation

    .line 260
    .local p0, "vertices":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    .local p1, "facets":Ljava/util/List;, "Ljava/util/List<[I>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    if-ge v1, v2, :cond_2

    .line 261
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 262
    .local v2, "vi":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 263
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v2, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v4

    cmpg-double v4, v4, p2

    if-lez v4, :cond_0

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CLOSE_VERTICES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 260
    .end local v2    # "vi":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "i":I
    :cond_2
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->findReferences(Ljava/util/List;Ljava/util/List;)[[I

    move-result-object v8

    .line 274
    .local v8, "references":[[I
    move-object/from16 v9, p1

    invoke-static {v0, v9, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->successors(Ljava/util/List;Ljava/util/List;[[I)[[I

    move-result-object v10

    .line 277
    .local v10, "successors":[[I
    const/4 v1, 0x0

    .local v1, "vA":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x0

    if-ge v1, v2, :cond_9

    .line 278
    aget-object v2, v10, v1

    .local v2, "arr$":[I
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v3, :cond_8

    aget v5, v2, v4

    .line 280
    .local v5, "vB":I
    if-ltz v5, :cond_7

    .line 283
    const/4 v6, 0x0

    .line 284
    .local v6, "found":Z
    aget-object v12, v10, v5

    .local v12, "arr$":[I
    array-length v13, v12

    .local v13, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_4
    if-ge v14, v13, :cond_5

    aget v15, v12, v14

    .line 285
    .local v15, "v":I
    if-nez v6, :cond_4

    if-ne v15, v1, :cond_3

    goto :goto_5

    :cond_3
    move/from16 v16, v11

    goto :goto_6

    :cond_4
    :goto_5
    move/from16 v16, v7

    :goto_6
    move/from16 v6, v16

    .line 284
    .end local v15    # "v":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 287
    .end local v12    # "arr$":[I
    .end local v13    # "len$":I
    .end local v14    # "i$":I
    :cond_5
    if-eqz v6, :cond_6

    goto :goto_7

    .line 288
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 289
    .local v7, "start":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 290
    .local v11, "end":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v12, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v13, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EDGE_CONNECTED_TO_ONE_FACET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v12

    .line 278
    .end local v5    # "vB":I
    .end local v6    # "found":Z
    .end local v7    # "start":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v11    # "end":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_7
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 277
    .end local v2    # "arr$":[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 298
    .end local v1    # "vA":I
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 300
    .local v12, "boundary":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [I

    .line 303
    .local v14, "facet":[I
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    aget v2, v14, v11

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aget v3, v14, v7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const/4 v4, 0x2

    aget v4, v14, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 307
    .local v1, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    array-length v2, v14

    new-array v2, v2, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 308
    .local v2, "two2Points":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    array-length v4, v14

    if-ge v3, v4, :cond_b

    .line 309
    aget v4, v14, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 310
    .local v4, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 314
    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v15

    aput-object v15, v2, v3

    .line 308
    .end local v4    # "v":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 311
    .restart local v4    # "v":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_a
    new-instance v7, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v11, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_PLANE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v16

    move/from16 v18, v3

    .end local v3    # "i":I
    .local v18, "i":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v15, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v7, v11, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v7

    .line 308
    .end local v4    # "v":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v18    # "i":I
    .restart local v3    # "i":I
    :cond_b
    move/from16 v18, v3

    .line 318
    .end local v3    # "i":I
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-direct {v3, v5, v6, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v1    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v2    # "two2Points":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v14    # "facet":[I
    move-object/from16 v0, p0

    goto/16 :goto_8

    .line 300
    :cond_c
    move-wide/from16 v5, p2

    .line 322
    .end local v13    # "i$":Ljava/util/Iterator;
    return-object v12
.end method

.method private static buildBoundary(DDDDDDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 15
    .param p0, "xMin"    # D
    .param p2, "xMax"    # D
    .param p4, "yMin"    # D
    .param p6, "yMax"    # D
    .param p8, "zMin"    # D
    .param p10, "zMax"    # D
    .param p12, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDDD)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .line 231
    move-wide/from16 v0, p12

    sub-double v2, p2, v0

    cmpl-double v2, p0, v2

    if-gez v2, :cond_1

    sub-double v2, p6, v0

    cmpl-double v2, p4, v2

    if-gez v2, :cond_1

    sub-double v2, p10, v0

    cmpl-double v2, p8, v2

    if-ltz v2, :cond_0

    goto/16 :goto_0

    .line 235
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 236
    .local v2, "pxMin":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-wide/from16 v5, p2

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v3, v4, v5, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 237
    .local v3, "pxMax":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v6, 0x0

    const-wide/16 v10, 0x0

    move-wide/from16 v8, p4

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v4, v5, v6, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 238
    .local v4, "pyMin":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-wide/from16 v9, p6

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v5, v6, v7, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 239
    .local v5, "pyMax":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-wide/from16 v12, p8

    invoke-direct/range {v7 .. v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v6, v7, v8, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 240
    .local v6, "pzMin":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-wide/from16 v13, p10

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v9, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v7, v8, v9, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 242
    .local v7, "pzMax":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v8}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    const/4 v9, 0x6

    new-array v9, v9, [Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v11, 0x1

    aput-object v3, v9, v11

    const/4 v11, 0x2

    aput-object v4, v9, v11

    const/4 v11, 0x3

    aput-object v5, v9, v11

    const/4 v11, 0x4

    aput-object v6, v9, v11

    const/4 v11, 0x5

    aput-object v7, v9, v11

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->buildConvex([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v8

    .line 244
    .local v8, "boundary":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-interface {v8, v10}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v9

    return-object v9

    .line 233
    .end local v2    # "pxMin":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v3    # "pxMax":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v4    # "pyMin":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v5    # "pyMax":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v6    # "pzMin":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v7    # "pzMax":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v8    # "boundary":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    :cond_1
    :goto_0
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method private static findReferences(Ljava/util/List;Ljava/util/List;)[[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List<",
            "[I>;)[[I"
        }
    .end annotation

    .line 336
    .local p0, "vertices":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    .local p1, "facets":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 337
    .local v0, "nbFacets":[I
    const/4 v1, 0x0

    .line 338
    .local v1, "maxFacets":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 339
    .local v3, "facet":[I
    array-length v5, v3

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    .line 343
    move-object v5, v3

    .local v5, "arr$":[I
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    .line 344
    .local v8, "index":I
    aget v9, v0, v8

    add-int/2addr v9, v4

    aput v9, v0, v8

    invoke-static {v1, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    .line 343
    .end local v8    # "index":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 346
    .end local v3    # "facet":[I
    .end local v5    # "arr$":[I
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_0
    goto :goto_0

    .line 340
    .restart local v3    # "facet":[I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WRONG_NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    array-length v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v7, v6, v8, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v5

    .line 349
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "facet":[I
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v4

    const/4 v4, 0x0

    aput v2, v3, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 350
    .local v2, "references":[[I
    move-object v3, v2

    .local v3, "arr$":[[I
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 351
    .local v6, "r":[I
    const/4 v7, -0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 350
    .end local v6    # "r":[I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 353
    .end local v3    # "arr$":[[I
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_3
    const/4 v3, 0x0

    .local v3, "f":I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 354
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .local v4, "arr$":[I
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_4
    if-ge v6, v5, :cond_5

    aget v7, v4, v6

    .line 356
    .local v7, "v":I
    const/4 v8, 0x0

    .line 357
    .local v8, "k":I
    :goto_5
    if-ge v8, v1, :cond_4

    aget-object v9, v2, v7

    aget v9, v9, v8

    if-ltz v9, :cond_4

    .line 358
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 360
    :cond_4
    aget-object v9, v2, v7

    aput v3, v9, v8

    .line 354
    .end local v7    # "v":I
    .end local v8    # "k":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 353
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 364
    .end local v3    # "f":I
    :cond_6
    return-object v2
.end method

.method private recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 19
    .param p2, "point"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Line;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .line 526
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    .line 527
    .local v4, "cut":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    if-nez v4, :cond_0

    .line 528
    const/4 v5, 0x0

    return-object v5

    .line 530
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    .line 531
    .local v5, "minus":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v6

    .line 532
    .local v6, "plus":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-interface {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 535
    .local v7, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v8

    .line 536
    .local v8, "offset":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTolerance()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 539
    .local v10, "in":Z
    :goto_0
    const-wide/16 v11, 0x0

    cmpg-double v11, v8, v11

    if-gez v11, :cond_2

    .line 540
    move-object v11, v5

    .line 541
    .local v11, "near":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v12, v6

    .local v12, "far":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    goto :goto_1

    .line 543
    .end local v11    # "near":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    .end local v12    # "far":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    :cond_2
    move-object v11, v6

    .line 544
    .restart local v11    # "near":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v12, v5

    .line 547
    .restart local v12    # "far":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    :goto_1
    if-eqz v10, :cond_3

    .line 549
    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->boundaryFacet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v13

    .line 550
    .local v13, "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    if-eqz v13, :cond_3

    .line 551
    return-object v13

    .line 556
    .end local v13    # "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    :cond_3
    invoke-direct {v0, v11, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v13

    .line 557
    .local v13, "crossed":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    if-eqz v13, :cond_4

    .line 558
    return-object v13

    .line 561
    :cond_4
    if-nez v10, :cond_5

    .line 563
    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v14

    .line 564
    .local v14, "hit3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    if-eqz v14, :cond_5

    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v15

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v17

    cmpl-double v15, v15, v17

    if-lez v15, :cond_5

    .line 565
    invoke-direct {v0, v14, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->boundaryFacet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v15

    .line 566
    .local v15, "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    if-eqz v15, :cond_5

    .line 567
    return-object v15

    .line 573
    .end local v14    # "hit3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v15    # "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    :cond_5
    invoke-direct {v0, v12, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v14

    return-object v14
.end method

.method private static successors(Ljava/util/List;Ljava/util/List;[[I)[[I
    .locals 20
    .param p2, "references"    # [[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List<",
            "[I>;[[I)[[I"
        }
    .end annotation

    .line 382
    .local p0, "vertices":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;>;"
    .local p1, "facets":Ljava/util/List;, "Ljava/util/List<[I>;"
    move-object/from16 v0, p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    aget-object v3, p2, v2

    array-length v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v1, v4, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 383
    .local v1, "successors":[[I
    move-object v2, v1

    .local v2, "arr$":[[I
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 384
    .local v5, "s":[I
    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 383
    .end local v5    # "s":[I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    .end local v2    # "arr$":[[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "v":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 388
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    aget-object v4, v1, v2

    array-length v4, v4

    if-ge v3, v4, :cond_4

    aget-object v4, p2, v2

    aget v4, v4, v3

    if-ltz v4, :cond_4

    .line 391
    aget-object v4, p2, v2

    aget v4, v4, v3

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 392
    .local v4, "facet":[I
    const/4 v6, 0x0

    .line 393
    .local v6, "i":I
    :goto_3
    array-length v7, v4

    if-ge v6, v7, :cond_1

    aget v7, v4, v6

    if-eq v7, v2, :cond_1

    .line 394
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 398
    :cond_1
    aget-object v7, v1, v2

    add-int/lit8 v8, v6, 0x1

    array-length v9, v4

    rem-int/2addr v8, v9

    aget v8, v4, v8

    aput v8, v7, v3

    .line 399
    const/4 v7, 0x0

    .local v7, "l":I
    :goto_4
    if-ge v7, v3, :cond_3

    .line 400
    aget-object v8, v1, v2

    aget v8, v8, v7

    aget-object v9, v1, v2

    aget v9, v9, v3

    if-eq v8, v9, :cond_2

    .line 399
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 401
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 402
    .local v8, "start":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    aget-object v9, v1, v2

    aget v9, v9, v3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 403
    .local v9, "end":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v10, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v11, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACET_ORIENTATION_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    filled-new-array/range {v14 .. v19}, [Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v10

    .line 388
    .end local v4    # "facet":[I
    .end local v6    # "i":I
    .end local v7    # "l":I
    .end local v8    # "start":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v9    # "end":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_4
    move-object/from16 v5, p1

    .line 387
    .end local v3    # "k":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v5, p1

    .line 412
    .end local v2    # "v":I
    return-object v1
.end method


# virtual methods
.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;"
        }
    .end annotation

    .line 419
    .local p1, "tree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    move-result-object p1

    return-object p1
.end method

.method protected computeGeometricalProperties()V
    .locals 5

    .line 427
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 429
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getSize()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 432
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    .line 433
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getSize()D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    .line 437
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getSize()D

    move-result-wide v3

    mul-double/2addr v3, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double/2addr v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getBarycenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 440
    :goto_0
    return-void
.end method

.method public firstIntersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .param p1, "point"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Line;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .line 511
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    return-object v0
.end method

.method public rotate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 1
    .param p1, "center"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "rotation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .line 607
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    return-object v0
.end method

.method public translate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 1
    .param p1, "translation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 682
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    return-object v0
.end method
