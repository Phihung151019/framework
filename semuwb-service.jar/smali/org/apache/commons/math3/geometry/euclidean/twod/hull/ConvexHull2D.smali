.class public Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;
.super Ljava/lang/Object;
.source "ConvexHull2D.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/hull/ConvexHull;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/hull/ConvexHull<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1335061L


# instance fields
.field private transient lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

.field private final tolerance:D

.field private final vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public constructor <init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 3
    .param p1, "vertices"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->isConvex([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 73
    return-void

    .line 69
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_CONVEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private isConvex([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z
    .locals 24
    .param p1, "hullVertices"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 81
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 82
    return v3

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 86
    .local v1, "sign":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_5

    .line 87
    if-nez v2, :cond_1

    array-length v4, v0

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v2, -0x1

    :goto_1
    aget-object v4, v0, v4

    .line 88
    .local v4, "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    aget-object v5, v0, v2

    .line 89
    .local v5, "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v6, v0

    sub-int/2addr v6, v3

    const/4 v7, 0x0

    if-ne v2, v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v2, 0x1

    :goto_2
    aget-object v6, v0, v6

    .line 91
    .local v6, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v8

    .line 92
    .local v8, "d1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    .line 94
    .local v9, "d2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v12

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v14

    neg-double v14, v14

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v16

    invoke-static/range {v10 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v18

    .line 95
    .local v18, "crossProduct":D
    const-wide/16 v20, 0x0

    move-object/from16 v10, p0

    iget-wide v11, v10, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    move-wide/from16 v22, v11

    invoke-static/range {v18 .. v23}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v11

    .line 97
    .local v11, "cmp":I
    int-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_4

    .line 98
    int-to-double v12, v1

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_3

    if-eq v11, v1, :cond_3

    .line 99
    return v7

    .line 101
    :cond_3
    move v1, v11

    .line 86
    .end local v4    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v5    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v6    # "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v8    # "d1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v9    # "d2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v11    # "cmp":I
    .end local v18    # "crossProduct":D
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v10, p0

    .line 105
    .end local v2    # "i":I
    return v3
.end method

.method private retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .locals 14

    .line 127
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    if-nez v0, :cond_4

    .line 129
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v0, v0

    .line 130
    .local v0, "size":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 131
    new-array v1, v1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    goto :goto_2

    .line 132
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 133
    new-array v3, v2, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 134
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aget-object v3, v3, v1

    .line 135
    .local v3, "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aget-object v2, v4, v2

    .line 136
    .local v2, "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    invoke-direct {v6, v3, v2, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {v5, v3, v2, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v5, v4, v1

    .line 137
    .end local v2    # "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v3    # "p1":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    goto :goto_2

    .line 138
    :cond_1
    new-array v1, v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "firstPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v2, 0x0

    .line 141
    .local v2, "lastPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v3, 0x0

    .line 142
    .local v3, "index":I
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .local v4, "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 143
    .local v7, "point":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    if-nez v2, :cond_2

    .line 144
    move-object v1, v7

    .line 145
    move-object v2, v7

    goto :goto_1

    .line 147
    :cond_2
    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "index":I
    .local v9, "index":I
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v12, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    invoke-direct {v11, v2, v7, v12, v13}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {v10, v2, v7, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v10, v8, v3

    .line 149
    move-object v2, v7

    move v3, v9

    .line 142
    .end local v7    # "point":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v9    # "index":I
    .restart local v3    # "index":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 152
    .end local v4    # "arr$":[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    invoke-direct {v6, v2, v1, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {v5, v2, v1, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v5, v4, v3

    .line 156
    .end local v0    # "size":I
    .end local v1    # "firstPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v2    # "lastPoint":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v3    # "index":I
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    return-object v0
.end method


# virtual methods
.method public createRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 164
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    .line 165
    .local v0, "factory":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    move-result-object v1

    .line 166
    .local v1, "segments":[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 167
    .local v2, "lineArray":[Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 168
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v4

    aput-object v4, v2, v3

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->buildConvex([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v3

    return-object v3

    .line 162
    .end local v0    # "factory":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .end local v1    # "segments":[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .end local v2    # "lineArray":[Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>()V

    throw v0
.end method

.method public getLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .locals 1

    .line 118
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    move-result-object v0

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    return-object v0
.end method

.method public bridge synthetic getVertices()[Lorg/apache/commons/math3/geometry/Point;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->getVertices()[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public getVertices()[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method
