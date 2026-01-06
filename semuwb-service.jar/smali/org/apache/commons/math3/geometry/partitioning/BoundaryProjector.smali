.class Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;
.super Ljava/lang/Object;
.source "BoundaryProjector.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "T::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private leaf:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field

.field private offset:D

.field private final original:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation
.end field

.field private projected:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "original":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/Point;

    .line 52
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->leaf:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 53
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    .line 54
    return-void
.end method

.method private addRegion(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "sub":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TS;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;>;"
    if-eqz p1, :cond_0

    .line 158
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    .line 159
    .local v0, "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v0    # "region":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    :cond_0
    return-void
.end method

.method private belongsToPart(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;)Z"
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    .local p2, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p3, "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/Embedding;

    .line 177
    .local v0, "embedding":Lorg/apache/commons/math3/geometry/partitioning/Embedding;, "Lorg/apache/commons/math3/geometry/partitioning/Embedding<TS;TT;>;"
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Embedding;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private boundaryRegions(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .local v0, "regions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 144
    .local v1, "ba":Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute<TS;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->addRegion(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    .line 145
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->addRegion(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    .line 147
    return-object v0
.end method

.method private singularProjection(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/Point;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    .local p2, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    .local p3, "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/Embedding;

    .line 193
    .local v0, "embedding":Lorg/apache/commons/math3/geometry/partitioning/Embedding;, "Lorg/apache/commons/math3/geometry/partitioning/Embedding<TS;TT;>;"
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Embedding;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    move-result-object v1

    .line 196
    .local v1, "bp":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getProjected()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getProjected()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/Embedding;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v2

    :goto_0
    return-object v2
.end method


# virtual methods
.method public getProjection()Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<",
            "TS;>;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->leaf:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    .line 130
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/Point;

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 72
    .local v0, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<TS;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v1

    .line 73
    .local v1, "signedOffset":D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 76
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v3

    .line 79
    .local v3, "regular":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->boundaryRegions(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Ljava/util/List;

    move-result-object v4

    .line 82
    .local v4, "boundaryParts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;>;"
    const/4 v5, 0x0

    .line 83
    .local v5, "regularFound":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 84
    .local v7, "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    if-nez v5, :cond_0

    invoke-direct {p0, v3, v0, v7}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->belongsToPart(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 86
    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/Point;

    .line 87
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    .line 88
    const/4 v5, 0x1

    .line 90
    .end local v7    # "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    :cond_0
    goto :goto_0

    .line 92
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    if-nez v5, :cond_3

    .line 96
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 97
    .restart local v7    # "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    invoke-direct {p0, v3, v0, v7}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->singularProjection(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v8

    .line 98
    .local v8, "spI":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    if-eqz v8, :cond_2

    .line 99
    iget-object v9, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v9, v8}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v9

    .line 100
    .local v9, "distance":D
    iget-wide v11, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    cmpg-double v11, v9, v11

    if-gez v11, :cond_2

    .line 101
    iput-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->projected:Lorg/apache/commons/math3/geometry/Point;

    .line 102
    iput-wide v9, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->offset:D

    .line 105
    .end local v7    # "part":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;"
    .end local v8    # "spI":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    .end local v9    # "distance":D
    :cond_2
    goto :goto_1

    .line 111
    .end local v3    # "regular":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<TS;>;"
    .end local v4    # "boundaryParts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/partitioning/Region<TT;>;>;"
    .end local v5    # "regularFound":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->leaf:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-nez v0, :cond_0

    .line 118
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->leaf:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 120
    :cond_0
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;, "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector<TS;TT;>;"
    .local p1, "node":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<TS;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->original:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 61
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0

    .line 63
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
