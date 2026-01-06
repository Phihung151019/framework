.class public Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;
.super Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;
.source "MonotoneChain.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;-><init>(Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "includeCollinearPoints"    # Z

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;-><init>(Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(ZD)V
    .locals 0
    .param p1, "includeCollinearPoints"    # Z
    .param p2, "tolerance"    # D

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;-><init>(ZD)V

    .line 74
    return-void
.end method

.method private updateHull(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)V
    .locals 12
    .param p1, "point"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p2, "hull":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->getTolerance()D

    move-result-wide v0

    .line 138
    .local v0, "tolerance":D
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 140
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 141
    .local v2, "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v3

    cmpg-double v3, v3, v0

    if-gez v3, :cond_0

    .line 142
    return-void

    .line 146
    .end local v2    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7

    .line 147
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 148
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 149
    .local v3, "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 151
    .local v4, "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v5, v3, v4, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-virtual {v5, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v5

    .line 152
    .local v5, "offset":D
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v0

    if-gez v7, :cond_6

    .line 155
    invoke-virtual {v3, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v7

    .line 156
    .local v7, "distanceToCurrent":D
    cmpg-double v9, v7, v0

    if-ltz v9, :cond_5

    invoke-virtual {v4, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v9

    cmpg-double v9, v9, v0

    if-gez v9, :cond_1

    goto :goto_3

    .line 161
    :cond_1
    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v9

    .line 162
    .local v9, "distanceToLast":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->isIncludeCollinearPoints()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 163
    cmpg-double v11, v7, v9

    if-gez v11, :cond_2

    add-int/lit8 v11, v2, -0x1

    goto :goto_1

    :cond_2
    move v11, v2

    .line 164
    .local v11, "index":I
    :goto_1
    invoke-interface {p2, v11, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    .end local v11    # "index":I
    goto :goto_2

    .line 166
    :cond_3
    cmpl-double v11, v7, v9

    if-lez v11, :cond_4

    .line 167
    add-int/lit8 v11, v2, -0x1

    invoke-interface {p2, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_4
    :goto_2
    return-void

    .line 158
    .end local v9    # "distanceToLast":D
    :cond_5
    :goto_3
    return-void

    .line 172
    .end local v7    # "distanceToCurrent":D
    :cond_6
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_7

    .line 173
    add-int/lit8 v7, v2, -0x1

    invoke-interface {p2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 177
    .end local v2    # "size":I
    .end local v3    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v4    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v5    # "offset":D
    goto :goto_0

    .line 178
    :cond_7
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method


# virtual methods
.method public findHullVertices(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    .line 80
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .local v0, "pointsSortedByXAxis":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "lowerHull":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 101
    .local v3, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-direct {p0, v3, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->updateHull(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)V

    .line 102
    .end local v3    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    goto :goto_0

    .line 105
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "upperHull":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "idx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 107
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 108
    .local v4, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-direct {p0, v4, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->updateHull(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)V

    .line 106
    .end local v4    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 113
    .end local v3    # "idx":I
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v3, "hullVertices":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    .line 115
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 117
    .end local v4    # "idx":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "idx":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    .line 118
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 122
    .end local v4    # "idx":I
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 123
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_4
    return-object v3
.end method

.method public bridge synthetic generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTolerance()D
    .locals 2

    .line 50
    invoke-super {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->getTolerance()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic isIncludeCollinearPoints()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->isIncludeCollinearPoints()Z

    move-result v0

    return v0
.end method
