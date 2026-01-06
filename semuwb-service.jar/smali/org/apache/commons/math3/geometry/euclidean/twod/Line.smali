.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private angle:D

.field private cos:D

.field private originOffset:D

.field private reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

.field private sin:D

.field private final tolerance:D


# direct methods
.method private constructor <init>(DDDDD)V
    .locals 1
    .param p1, "angle"    # D
    .param p3, "cos"    # D
    .param p5, "sin"    # D
    .param p7, "originOffset"    # D
    .param p9, "tolerance"    # D

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 120
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 121
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 122
    iput-wide p7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    .line 123
    iput-wide p9, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(DDDDDLorg/apache/commons/math3/geometry/euclidean/twod/Line$1;)V
    .locals 0
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .param p5, "x2"    # D
    .param p7, "x3"    # D
    .param p9, "x4"    # D
    .param p11, "x5"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line$1;

    .line 63
    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 4
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 155
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 156
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 157
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    .line 158
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 160
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 6
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "angle"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .end local p2    # "angle":D
    .local v1, "p":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .local v2, "angle":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V
    .locals 0
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "angle"    # D
    .param p4, "tolerance"    # D

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 106
    iput-wide p4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 2
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 0
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p3, "tolerance"    # D

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    .line 95
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-wide v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-wide v0
.end method

.method public static getTransform(DDDDDD)Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .locals 13
    .param p0, "cXX"    # D
    .param p2, "cYX"    # D
    .param p4, "cXY"    # D
    .param p6, "cYY"    # D
    .param p8, "cX1"    # D
    .param p10, "cY1"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDD)",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 482
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;

    move-wide v1, p0

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;-><init>(DDDDDD)V

    return-object v0
.end method

.method public static getTransform(Ljava/awt/geom/AffineTransform;)Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .locals 14
    .param p0, "transform"    # Ljava/awt/geom/AffineTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/geom/AffineTransform;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    const/4 v0, 0x6

    new-array v0, v0, [D

    .line 456
    .local v0, "m":[D
    invoke-virtual {p0, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 457
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    const/4 v6, 0x2

    aget-wide v6, v0, v6

    const/4 v8, 0x3

    aget-wide v8, v0, v8

    const/4 v10, 0x4

    aget-wide v10, v0, v10

    const/4 v12, 0x5

    aget-wide v12, v0, v12

    invoke-direct/range {v1 .. v13}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;-><init>(DDDDDD)V

    return-object v1
.end method

.method private unlinkReverse()V
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 222
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 223
    return-void
.end method


# virtual methods
.method public contains(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z
    .locals 4
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 374
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 1

    .line 164
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 2
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 387
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAngle()D
    .locals 4

    .line 410
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 346
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 347
    .local v0, "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v5, v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iget-wide v11, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    invoke-static/range {v1 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 341
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 10
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 332
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v8, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    neg-double v2, v2

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    :goto_0
    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getOriginOffset()D
    .locals 2

    .line 427
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-wide v0
.end method

.method public getPointAt(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 13
    .param p1, "abscissa"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p2, "offset"    # D

    .line 363
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    .line 364
    .local v0, "x":D
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    sub-double v4, p2, v2

    .line 365
    .local v4, "dOffset":D
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v9

    move-wide v11, v4

    .end local v4    # "dOffset":D
    .local v11, "dOffset":D
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v4, v11

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    invoke-direct {v8, v9, v10, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v8
.end method

.method public getReverse()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 12

    .line 241
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    if-nez v0, :cond_1

    .line 242
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    cmpg-double v0, v2, v4

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    if-gez v0, :cond_0

    add-double/2addr v2, v4

    goto :goto_0

    :cond_0
    sub-double/2addr v2, v4

    :goto_0
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v4, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v6, v6

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    neg-double v8, v8

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDD)V

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 244
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iput-object p0, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 246
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-object v0
.end method

.method public getTolerance()D
    .locals 2

    .line 305
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-wide v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 13
    .param p1, "other"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 286
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v4, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    .line 287
    .local v0, "d":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 288
    const/4 v2, 0x0

    return-object v2

    .line 290
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iget-wide v7, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v7, v7

    iget-wide v9, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    invoke-static/range {v3 .. v10}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v3

    div-double/2addr v3, v0

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v7, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iget-wide v9, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v9, v9

    iget-wide v11, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    invoke-static/range {v5 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v5

    div-double/2addr v5, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v2
.end method

.method public isParallelTo(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Z
    .locals 8
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 396
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v4, v4

    iget-wide v6, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 298
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 10
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "alpha"    # D

    .line 195
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->unlinkReverse()V

    .line 196
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    invoke-static {p2, p3, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 197
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 198
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 199
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v6, v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    .line 200
    return-void
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 17
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 173
    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->unlinkReverse()V

    .line 174
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 175
    .local v1, "dx":D
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v5

    sub-double/2addr v3, v5

    .line 176
    .local v3, "dy":D
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v5

    .line 177
    .local v5, "d":D
    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_0

    .line 178
    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 179
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iput-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 180
    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 181
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v7

    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    goto :goto_0

    .line 183
    :cond_0
    neg-double v7, v3

    neg-double v9, v1

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v7

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v7, v9

    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 184
    div-double v7, v1, v5

    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 185
    div-double v7, v3, v5

    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 186
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v7

    neg-double v13, v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v15

    invoke-static/range {v9 .. v16}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v7

    div-double/2addr v7, v5

    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    .line 188
    :goto_0
    return-void
.end method

.method public revertSelf()V
    .locals 4

    .line 205
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->unlinkReverse()V

    .line 206
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 207
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    goto :goto_0

    .line 209
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 211
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 212
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 213
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    .line 214
    return-void
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)Z"
        }
    .end annotation

    .line 352
    .local p1, "other":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 353
    .local v0, "otherL":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAngle(D)V
    .locals 2
    .param p1, "angle"    # D

    .line 417
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->unlinkReverse()V

    .line 418
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 419
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 420
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 421
    return-void
.end method

.method public setOriginOffset(D)V
    .locals 0
    .param p1, "offset"    # D

    .line 434
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->unlinkReverse()V

    .line 435
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    .line 436
    return-void
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 275
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v1

    .line 276
    .local v1, "abscissa":D
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    neg-double v5, v5

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v9

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v3

    invoke-direct {v0, v9, v10, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 264
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    return-object p1
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 269
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 270
    .local v0, "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v1
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 255
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    return-object v0
.end method

.method public translateToPoint(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 8
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 403
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v4, v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    .line 404
    return-void
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;
    .locals 4

    .line 310
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .locals 3

    .line 318
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object v0

    return-object v0
.end method
