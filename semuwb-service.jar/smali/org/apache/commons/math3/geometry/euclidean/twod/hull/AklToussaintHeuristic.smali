.class public final Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AklToussaintHeuristic;
.super Ljava/lang/Object;
.source "AklToussaintHeuristic.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static varargs buildQuadrilateral([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Ljava/util/List;
    .locals 6
    .param p0, "points"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "quadrilateral":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    move-object v1, p0

    .local v1, "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 108
    .local v4, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 109
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v4    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    return-object v0
.end method

.method private static insideQuadrilateral(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)Z
    .locals 12
    .param p0, "point"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)Z"
        }
    .end annotation

    .line 124
    .local p1, "quadrilateralPoints":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 125
    .local v1, "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 127
    .local v3, "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    .line 132
    :cond_0
    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D

    move-result-wide v4

    .line 133
    .local v4, "last":D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 135
    .local v6, "size":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 136
    move-object v1, v3

    .line 137
    add-int/lit8 v8, v7, 0x1

    if-ne v8, v6, :cond_1

    move v8, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v7, 0x1

    :goto_1
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 139
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 146
    :cond_2
    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D

    move-result-wide v8

    mul-double/2addr v8, v4

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 147
    return v0

    .line 135
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 140
    :cond_4
    :goto_2
    return v2

    .line 150
    .end local v7    # "i":I
    :cond_5
    return v2

    .line 128
    .end local v4    # "last":D
    .end local v6    # "size":I
    :cond_6
    :goto_3
    return v2
.end method

.method public static reducePoints(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 11
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

    .line 56
    .local p0, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    const/4 v0, 0x0

    .line 57
    .local v0, "size":I
    const/4 v1, 0x0

    .line 58
    .local v1, "minX":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v2, 0x0

    .line 59
    .local v2, "maxX":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v3, 0x0

    .line 60
    .local v3, "minY":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v4, 0x0

    .line 61
    .local v4, "maxY":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 62
    .local v6, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    if-eqz v1, :cond_0

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    .line 63
    :cond_0
    move-object v1, v6

    .line 65
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_3

    .line 66
    :cond_2
    move-object v2, v6

    .line 68
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_5

    .line 69
    :cond_4
    move-object v3, v6

    .line 71
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v7

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_7

    .line 72
    :cond_6
    move-object v4, v6

    .line 74
    :cond_7
    nop

    .end local v6    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    add-int/lit8 v0, v0, 0x1

    .line 75
    goto :goto_0

    .line 77
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_8
    const/4 v5, 0x4

    if-ge v0, v5, :cond_9

    .line 78
    return-object p0

    .line 81
    :cond_9
    new-array v5, v5, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-static {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AklToussaintHeuristic;->buildQuadrilateral([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Ljava/util/List;

    move-result-object v5

    .line 83
    .local v5, "quadrilateral":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v6, :cond_a

    .line 84
    return-object p0

    .line 87
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .local v6, "reducedPoints":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 91
    .local v8, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-static {v8, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AklToussaintHeuristic;->insideQuadrilateral(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 92
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v8    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_b
    goto :goto_1

    .line 96
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_c
    return-object v6
.end method
