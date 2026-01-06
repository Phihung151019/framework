.class Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
.super Ljava/lang/Object;
.source "NestedLoops.java"


# instance fields
.field private loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private originalIsClockwise:Z

.field private polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field private surrounded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;",
            ">;"
        }
    .end annotation
.end field

.field private final tolerance:D


# direct methods
.method constructor <init>(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/List;

    .line 75
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    .line 76
    return-void
.end method

.method private constructor <init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 16
    .param p1, "loop"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v7, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v9, 0x0

    aget-object v2, v1, v9

    if-eqz v2, :cond_2

    .line 92
    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/List;

    .line 94
    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 98
    .local v10, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    array-length v2, v1

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    aget-object v2, v1, v2

    .line 99
    .local v2, "current":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v3, 0x0

    move v12, v3

    .local v12, "i":I
    :goto_0
    array-length v3, v1

    if-ge v12, v3, :cond_0

    .line 100
    move-object v13, v2

    .line 101
    .local v13, "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    aget-object v14, v1, v12

    .line 102
    .end local v2    # "current":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v14, "current":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v2, v13, v14, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    move-object v15, v2

    .line 103
    .local v15, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v15, v13}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v3

    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v5

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(DDD)V

    .line 107
    .local v2, "region":Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-direct {v3, v15, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v2    # "region":Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .end local v13    # "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v15    # "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    add-int/lit8 v12, v12, 0x1

    move-object v2, v14

    goto :goto_0

    .line 109
    .end local v12    # "i":I
    .end local v14    # "current":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v2, "current":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-direct {v3, v10, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    iput-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 112
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getSize()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v3}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 114
    iput-boolean v9, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    goto :goto_1

    .line 116
    :cond_1
    iput-boolean v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    .line 119
    :goto_1
    return-void

    .line 89
    .end local v2    # "current":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v10    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUTLINE_BOUNDARY_LOOP_OPEN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method private add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V
    .locals 6
    .param p1, "node"    # Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 139
    .local v1, "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-direct {v1, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V

    .line 141
    return-void

    .line 143
    .end local v1    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    :cond_0
    goto :goto_0

    .line 146
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 148
    .restart local v1    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v3, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 152
    .end local v1    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    :cond_2
    goto :goto_1

    .line 155
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;>;"
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    .line 156
    .local v0, "factory":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 157
    .local v2, "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v4, v2, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->intersection(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    .end local v2    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    goto :goto_2

    .line 158
    .restart local v2    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CROSSING_BOUNDARY_LOOPS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 162
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method private setClockWise(Z)V
    .locals 5
    .param p1, "clockwise"    # Z

    .line 183
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, -0x1

    .line 186
    .local v0, "min":I
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v1, v1

    .line 187
    .local v1, "max":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 188
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aget-object v2, v2, v0

    .line 189
    .local v2, "tmp":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 190
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v2, v3, v1

    .line 191
    .end local v2    # "tmp":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    goto :goto_0

    .line 195
    .end local v0    # "min":I
    .end local v1    # "max":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 196
    .local v1, "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    xor-int/lit8 v2, p1, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->setClockWise(Z)V

    .line 197
    .end local v1    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    goto :goto_1

    .line 199
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public add([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 3
    .param p1, "bLoop"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;-><init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V

    .line 128
    return-void
.end method

.method public correctOrientation()V
    .locals 3

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 173
    .local v1, "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->setClockWise(Z)V

    .line 174
    .end local v1    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    goto :goto_0

    .line 175
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
