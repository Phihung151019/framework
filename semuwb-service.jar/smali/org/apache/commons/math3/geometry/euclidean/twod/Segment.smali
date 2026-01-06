.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field private final end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private final line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

.field private final start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 0
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p3, "line"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 43
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 44
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 45
    return-void
.end method


# virtual methods
.method public distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 13
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 85
    .local v0, "deltaX":D
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 87
    .local v2, "deltaY":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    div-double/2addr v4, v6

    .line 97
    .local v4, "r":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-ltz v6, :cond_1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    mul-double v8, v4, v0

    add-double/2addr v6, v8

    .line 106
    .local v6, "px":D
    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    mul-double v10, v4, v2

    add-double/2addr v8, v10

    .line 108
    .local v8, "py":D
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v10, v6, v7, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 109
    .local v10, "interPt":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v10, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v11

    return-wide v11

    .line 98
    .end local v6    # "px":D
    .end local v8    # "py":D
    .end local v10    # "interPt":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v6

    .line 99
    .local v6, "dist1":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v8

    .line 101
    .local v8, "dist2":D
    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v10

    return-wide v10
.end method

.method public getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method

.method public getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-object v0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method
