.class public Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.source "SubLine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;)V
    .locals 5
    .param p1, "segment"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 77
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTolerance()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 2
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 2
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p3, "tolerance"    # D

    .line 60
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 51
    return-void
.end method

.method private static buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .locals 8
    .param p0, "start"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p1, "end"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "tolerance"    # D

    .line 158
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 159
    .local v0, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v2

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v4

    move-wide v6, p2

    .end local p2    # "tolerance":D
    .local v6, "tolerance":D
    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(DDD)V

    return-object v1
.end method


# virtual methods
.method protected buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 168
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    .local p2, "remainingRegion":Lorg/apache/commons/math3/geometry/partitioning/Region;, "Lorg/apache/commons/math3/geometry/partitioning/Region<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 98
    .local v0, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->asList()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v2, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;

    .line 102
    .local v4, "interval":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getInf()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v5

    .line 103
    .local v5, "start":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSup()D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v6

    .line 104
    .local v6, "end":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-direct {v7, v5, v6, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v4    # "interval":Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
    .end local v5    # "start":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local v6    # "end":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    goto :goto_0

    .line 107
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 7
    .param p1, "subLine"    # Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;
    .param p2, "includeEndPoints"    # Z

    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 129
    .local v0, "line1":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 132
    .local v1, "line2":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    .line 133
    .local v2, "v2D":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 134
    return-object v3

    .line 138
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v4

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v4

    .line 141
    .local v4, "loc1":Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v5

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v5

    .line 143
    .local v5, "loc2":Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    if-eqz p2, :cond_2

    .line 144
    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-eq v4, v6, :cond_1

    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-eq v5, v6, :cond_1

    move-object v3, v2

    :cond_1
    return-object v3

    .line 146
    :cond_2
    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v4, v6, :cond_3

    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v5, v6, :cond_3

    move-object v3, v2

    :cond_3
    return-object v3
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 175
    .local p1, "hyperplane":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 176
    .local v1, "thisLine":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    move-object/from16 v2, p1

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 177
    .local v2, "otherLine":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    .line 178
    .local v3, "crossing":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTolerance()D

    move-result-wide v4

    .line 180
    .local v4, "tolerance":D
    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 182
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v7

    .line 183
    .local v7, "global":D
    neg-double v9, v4

    cmpg-double v9, v7, v9

    if-gez v9, :cond_0

    .line 184
    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v9, v6, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v9

    .line 185
    :cond_0
    cmpl-double v9, v7, v4

    if-lez v9, :cond_1

    .line 186
    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v9, v0, v6}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v9

    .line 188
    :cond_1
    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v9, v6, v6}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v9

    .line 193
    .end local v7    # "global":D
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gez v7, :cond_3

    move v7, v8

    goto :goto_0

    :cond_3
    move v7, v9

    .line 194
    .local v7, "direct":Z
    :goto_0
    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v10

    .line 195
    .local v10, "x":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move v8, v9

    :goto_1
    invoke-direct {v11, v10, v8, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v8

    .line 197
    .local v8, "subPlus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-direct {v11, v10, v7, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v11

    .line 200
    .local v11, "subMinus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v12

    invoke-interface {v12, v9}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v9

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v9

    .line 201
    .local v9, "splitTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v12

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v12, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v12, v13}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-instance v12, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v13, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v13, v14}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v14

    invoke-direct {v12, v8, v13, v14, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .line 205
    .local v12, "plusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :goto_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v13

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v13}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance v13, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v14, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v14, v15}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v15

    invoke-direct {v13, v11, v14, v15, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    move-object v6, v13

    .line 209
    .local v6, "minusTree":Lorg/apache/commons/math3/geometry/partitioning/BSPTree;, "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    :goto_3
    new-instance v13, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v15

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-direct {v0, v12, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    invoke-direct {v14, v15, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "thisLine":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .local v16, "thisLine":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-direct {v1, v6, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    invoke-direct {v0, v15, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-direct {v13, v14, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v13
.end method
