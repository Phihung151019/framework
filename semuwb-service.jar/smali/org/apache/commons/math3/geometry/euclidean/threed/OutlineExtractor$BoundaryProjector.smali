.class Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;
.super Ljava/lang/Object;
.source "OutlineExtractor.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundaryProjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;"
    }
.end annotation


# instance fields
.field private projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

.field private final tolerance:D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;D)V
    .locals 2
    .param p2, "tolerance"    # D

    .line 133
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    .line 135
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    .line 136
    return-void
.end method

.method private addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V
    .locals 31
    .param p2, "reversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;Z)V"
        }
    .end annotation

    .line 168
    .local p1, "facet":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    .line 170
    .local v1, "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 172
    .local v2, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-static {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$000(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v3

    .line 173
    .local v3, "scal":D
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v5, v5, v7

    if-lez v5, :cond_e

    .line 174
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v5

    .line 177
    .local v5, "vertices":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const-wide/16 v6, 0x0

    cmpg-double v6, v3, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    xor-int v6, v6, p2

    if-eqz v6, :cond_5

    .line 180
    array-length v6, v5

    new-array v6, v6, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 181
    .local v6, "newVertices":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v10, v5

    if-ge v9, v10, :cond_4

    .line 182
    aget-object v10, v5, v9

    .line 183
    .local v10, "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v11, v10

    new-array v11, v11, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 184
    .local v11, "newLoop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    aget-object v12, v10, v7

    if-nez v12, :cond_2

    .line 185
    const/4 v12, 0x0

    aput-object v12, v11, v7

    .line 186
    const/4 v12, 0x1

    .local v12, "j":I
    :goto_2
    array-length v13, v10

    if-ge v12, v13, :cond_1

    .line 187
    array-length v13, v10

    sub-int/2addr v13, v12

    aget-object v13, v10, v13

    aput-object v13, v11, v12

    .line 186
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .end local v12    # "j":I
    :cond_1
    goto :goto_4

    .line 190
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_3
    array-length v13, v10

    if-ge v12, v13, :cond_3

    .line 191
    array-length v13, v10

    add-int/lit8 v14, v12, 0x1

    sub-int/2addr v13, v14

    aget-object v13, v10, v13

    aput-object v13, v11, v12

    .line 190
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 194
    .end local v12    # "j":I
    :cond_3
    :goto_4
    aput-object v11, v6, v9

    .line 181
    .end local v10    # "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v11    # "newLoop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 198
    .end local v9    # "i":I
    :cond_4
    move-object v5, v6

    .line 203
    .end local v6    # "newVertices":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v6, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    move-object v9, v5

    .local v9, "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v10, v9

    .local v10, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_5
    if-ge v11, v10, :cond_d

    aget-object v12, v9, v11

    .line 205
    .local v12, "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    aget-object v13, v12, v7

    if-eqz v13, :cond_6

    move v13, v8

    goto :goto_6

    :cond_6
    move v13, v7

    .line 206
    .local v13, "closed":Z
    :goto_6
    if-eqz v13, :cond_7

    array-length v14, v12

    sub-int/2addr v14, v8

    goto :goto_7

    :cond_7
    move v14, v8

    .line 207
    .local v14, "previous":I
    :goto_7
    aget-object v15, v12, v14

    invoke-virtual {v2, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v15

    .line 208
    .local v15, "previous3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    add-int/lit8 v16, v14, 0x1

    array-length v7, v12

    rem-int v16, v16, v7

    .line 209
    .local v16, "current":I
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-static {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    move-wide/from16 v18, v3

    .end local v3    # "scal":D
    .local v18, "scal":D
    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v3

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-static {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    move-object/from16 v20, v9

    .end local v9    # "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v20, "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v8

    invoke-direct {v7, v3, v4, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    move/from16 v3, v16

    .line 211
    .end local v16    # "current":I
    .local v3, "current":I
    .local v7, "pPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :goto_8
    array-length v4, v12

    if-ge v3, v4, :cond_c

    .line 213
    aget-object v4, v12, v3

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    .line 214
    .local v4, "current3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-static {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    move-object/from16 v16, v1

    move-object/from16 v27, v2

    .end local v1    # "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v2    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .local v16, "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local v27, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v1

    iget-object v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->this$0:Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;

    invoke-static {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    move/from16 v28, v10

    .end local v10    # "len$":I
    .local v28, "len$":I
    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v9

    invoke-direct {v8, v1, v2, v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 216
    .local v8, "cPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    invoke-direct {v1, v7, v8, v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 218
    .local v1, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    move-result-object v2

    .line 220
    .local v2, "edge":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    if-nez v13, :cond_8

    const/4 v9, 0x1

    const-wide v29, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eq v14, v9, :cond_9

    goto :goto_9

    :cond_8
    const-wide v29, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 223
    :goto_9
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v9

    add-double v23, v9, v29

    .line 224
    .local v23, "angle":D
    new-instance v21, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    move-object/from16 v22, v7

    move-wide/from16 v25, v9

    .end local v7    # "pPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v22, "pPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-direct/range {v21 .. v26}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    .end local v22    # "pPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v7    # "pPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move-object/from16 v9, v21

    .line 226
    .local v9, "l":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-interface {v2, v9}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    .line 229
    .end local v9    # "l":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .end local v23    # "angle":D
    :cond_9
    if-nez v13, :cond_b

    array-length v9, v12

    const/16 v17, 0x1

    add-int/lit8 v9, v9, -0x1

    if-eq v3, v9, :cond_a

    goto :goto_a

    :cond_a
    move-object/from16 v22, v8

    goto :goto_b

    :cond_b
    const/16 v17, 0x1

    .line 232
    :goto_a
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v9

    add-double v23, v9, v29

    .line 233
    .restart local v23    # "angle":D
    new-instance v21, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    move-object/from16 v22, v8

    move-wide/from16 v25, v9

    .end local v8    # "cPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v22, "cPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-direct/range {v21 .. v26}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    move-object/from16 v8, v21

    .line 235
    .local v8, "l":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-interface {v2, v8}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    .line 238
    .end local v8    # "l":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .end local v23    # "angle":D
    :goto_b
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "current":I
    .local v8, "current":I
    move v14, v3

    .line 241
    move-object v15, v4

    .line 242
    move-object/from16 v7, v22

    .line 244
    .end local v1    # "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .end local v2    # "edge":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v4    # "current3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v22    # "cPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    move v3, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v27

    move/from16 v10, v28

    goto/16 :goto_8

    .line 211
    .end local v8    # "current":I
    .end local v16    # "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v27    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v28    # "len$":I
    .local v1, "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local v2, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .restart local v3    # "current":I
    .restart local v10    # "len$":I
    :cond_c
    move-object/from16 v16, v1

    move-object/from16 v27, v2

    move/from16 v28, v10

    const/16 v17, 0x1

    .line 204
    .end local v1    # "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v2    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v3    # "current":I
    .end local v7    # "pPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v10    # "len$":I
    .end local v12    # "loop":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v13    # "closed":Z
    .end local v14    # "previous":I
    .end local v15    # "previous3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .restart local v16    # "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .restart local v27    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .restart local v28    # "len$":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v17

    move-wide/from16 v3, v18

    move-object/from16 v9, v20

    const/4 v7, 0x0

    goto/16 :goto_5

    .end local v16    # "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v18    # "scal":D
    .end local v20    # "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v27    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v28    # "len$":I
    .restart local v1    # "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .restart local v2    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .local v3, "scal":D
    .local v9, "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .restart local v10    # "len$":I
    :cond_d
    move-object/from16 v16, v1

    move-object/from16 v27, v2

    move-wide/from16 v18, v3

    move-object/from16 v20, v9

    move/from16 v28, v10

    .line 246
    .end local v1    # "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v2    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v3    # "scal":D
    .end local v9    # "arr$":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v10    # "len$":I
    .end local v11    # "i$":I
    .restart local v16    # "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .restart local v18    # "scal":D
    .restart local v27    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->tolerance:D

    invoke-direct {v1, v6, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    .line 249
    .local v1, "projectedFacet":Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->union(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    goto :goto_c

    .line 173
    .end local v5    # "vertices":[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v6    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    .end local v16    # "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v18    # "scal":D
    .end local v27    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .local v1, "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .restart local v2    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .restart local v3    # "scal":D
    :cond_e
    move-object/from16 v16, v1

    move-object/from16 v27, v2

    move-wide/from16 v18, v3

    .line 252
    .end local v1    # "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v2    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .end local v3    # "scal":D
    .restart local v16    # "absFacet":Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .restart local v18    # "scal":D
    .restart local v27    # "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    :goto_c
    return-void
.end method


# virtual methods
.method public getProjected()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    return-object v0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 148
    .local v0, "attribute":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V

    .line 151
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->addContribution(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Z)V

    .line 154
    :cond_1
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .line 140
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
