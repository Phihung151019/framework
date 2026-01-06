.class public Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
.super Ljava/lang/Object;
.source "S2Point.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/Point;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/Point<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        ">;"
    }
.end annotation


# static fields
.field public static final MINUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final MINUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final MINUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final NaN:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final PLUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final PLUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field private static final serialVersionUID:J = 0x1332d92L


# instance fields
.field private final phi:D

.field private final theta:D

.field private final vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 41
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-object v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 44
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 47
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/16 v5, 0x0

    sget-object v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v3, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 50
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-object v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v3, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->MINUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 53
    new-instance v4, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-object v9, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide v5, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v4, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->MINUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 56
    new-instance v5, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    sget-object v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v6, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v5, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->MINUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 60
    new-instance v6, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    sget-object v11, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v6, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "theta"    # D
    .param p3, "phi"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 85
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector(DD)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "theta":D
    .end local p3    # "phi":D
    .local v1, "theta":D
    .local v3, "phi":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 86
    return-void
.end method

.method private constructor <init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 0
    .param p1, "theta"    # D
    .param p3, "phi"    # D
    .param p5, "vector"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    .line 105
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    .line 106
    iput-object p5, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 10
    .param p1, "vector"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 96
    return-void
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 182
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static vector(DD)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 13
    .param p0, "theta"    # D
    .param p2, "phi"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 118
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    if-ltz v0, :cond_0

    cmpl-double v0, p2, v1

    if-gtz v0, :cond_0

    .line 122
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    .line 123
    .local v0, "cosTheta":D
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    .line 124
    .local v2, "sinTheta":D
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v9

    .line 125
    .local v9, "cosPhi":D
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v11

    .line 127
    .local v11, "sinPhi":D
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v5, v0, v11

    mul-double v7, v2, v11

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v4

    .line 119
    .end local v0    # "cosTheta":D
    .end local v2    # "sinTheta":D
    .end local v9    # "cosPhi":D
    .end local v11    # "sinPhi":D
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)D"
        }
    .end annotation

    .line 173
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-static {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->distance(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 208
    return v0

    .line 211
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 212
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 213
    .local v1, "rhs":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->isNaN()Z

    move-result v0

    return v0

    .line 217
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 219
    .end local v1    # "rhs":Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    :cond_3
    return v2
.end method

.method public getPhi()D
    .locals 2

    .line 144
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1

    .line 156
    invoke-static {}, Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;->getInstance()Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;

    move-result-object v0

    return-object v0
.end method

.method public getTheta()D
    .locals 2

    .line 136
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    return-wide v0
.end method

.method public getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 231
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/16 v0, 0x21e

    return v0

    .line 234
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x86

    return v0
.end method

.method public isNaN()Z
    .locals 2

    .line 161
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 7

    .line 168
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    neg-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    sub-double/2addr v3, v5

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method
