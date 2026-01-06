.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
.super Ljava/lang/Object;
.source "Rotation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

.field private static final serialVersionUID:J = -0x1de3341942831b79L


# instance fields
.field private final q0:D

.field private final q1:D

.field private final q2:D

.field private final q3:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 99
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    return-void
.end method

.method public constructor <init>(DDDDZ)V
    .locals 4
    .param p1, "q0"    # D
    .param p3, "q1"    # D
    .param p5, "q2"    # D
    .param p7, "q3"    # D
    .param p9, "needsNormalization"    # Z

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    if-eqz p9, :cond_0

    .line 139
    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    mul-double v2, p5, p5

    add-double/2addr v0, v2

    mul-double v2, p7, p7

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 140
    .local v2, "inv":D
    mul-double/2addr p1, v2

    .line 141
    mul-double/2addr p3, v2

    .line 142
    mul-double/2addr p5, v2

    .line 143
    mul-double/2addr p7, v2

    .line 146
    .end local v2    # "inv":D
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 147
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 148
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 149
    iput-wide p7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;DDD)V
    .locals 9
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .param p2, "alpha1"    # D
    .param p4, "alpha2"    # D
    .param p6, "alpha3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;DDD)V

    .line 379
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;DDD)V
    .locals 6
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .param p3, "alpha1"    # D
    .param p5, "alpha2"    # D
    .param p7, "alpha3"    # D

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA1()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 406
    .local v0, "r1":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA2()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-direct {v1, v2, p5, p6, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 407
    .local v1, "r2":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA3()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-direct {v2, v3, p7, p8, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 408
    .local v2, "r3":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    invoke-virtual {v1, v2, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v3

    .line 409
    .local v3, "composed":Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    iget-wide v4, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 410
    iget-wide v4, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 411
    iget-wide v4, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 412
    iget-wide v4, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 413
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 1
    .param p1, "axis"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "angle"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V
    .locals 8
    .param p1, "axis"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "angle"    # D
    .param p4, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    .line 180
    .local v0, "norm":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1

    .line 184
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p4, v2, :cond_0

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    :goto_0
    mul-double/2addr v2, p2

    .line 185
    .local v2, "halfAngle":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    div-double/2addr v4, v0

    .line 187
    .local v4, "coeff":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 188
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    mul-double/2addr v6, v4

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 189
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    mul-double/2addr v6, v4

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 190
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    mul-double/2addr v6, v4

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 192
    return-void

    .line 181
    .end local v2    # "halfAngle":D
    .end local v4    # "coeff":D
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_AXIS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 10
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 333
    .local v0, "normProduct":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 337
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    .line 339
    .local v4, "dot":D
    const-wide v6, -0x4010000000000012L    # -0.999999999999998

    mul-double/2addr v6, v0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 342
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 343
    .local v6, "w":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 344
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    neg-double v2, v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 345
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    neg-double v2, v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 346
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    neg-double v2, v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 347
    .end local v6    # "w":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    goto :goto_0

    .line 350
    :cond_0
    div-double v2, v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 351
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v8, v2

    mul-double/2addr v8, v0

    div-double/2addr v6, v8

    .line 352
    .local v6, "coeff":D
    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 353
    .local v2, "q":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    mul-double/2addr v8, v6

    iput-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 354
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v8

    mul-double/2addr v8, v6

    iput-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 355
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v8

    mul-double/2addr v8, v6

    iput-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 358
    .end local v2    # "q":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v6    # "coeff":D
    :goto_0
    return-void

    .line 334
    .end local v4    # "dot":D
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 30
    .param p1, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 276
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 281
    .local v1, "u3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 282
    .end local p2    # "u2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v3, "u2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 286
    .end local p1    # "u1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v2, "u1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    .line 287
    .local v4, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 288
    .end local p4    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v6, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    .line 291
    .end local p3    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v5, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v13

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v15

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v17

    invoke-static/range {v7 .. v18}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v13

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v15

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v17

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v19

    invoke-static/range {v9 .. v20}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v9

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v11

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v13

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v15

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v17

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v19

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v21

    invoke-static/range {v11 .. v22}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v11

    const/4 v13, 0x3

    new-array v14, v13, [D

    const/4 v15, 0x0

    aput-wide v7, v14, v15

    const/4 v7, 0x1

    aput-wide v9, v14, v7

    const/4 v8, 0x2

    aput-wide v11, v14, v8

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v16

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v18

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v20

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v22

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v24

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v26

    invoke-static/range {v16 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v9

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v16

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v18

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v20

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v22

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v24

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v26

    invoke-static/range {v16 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v11

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v16

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v18

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v20

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v22

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v24

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v26

    invoke-static/range {v16 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v16

    move/from16 p1, v7

    new-array v7, v13, [D

    aput-wide v9, v7, v15

    aput-wide v11, v7, p1

    aput-wide v16, v7, v8

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v18

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v20

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v22

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v24

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v26

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v28

    invoke-static/range {v18 .. v29}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v9

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v16

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v18

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v20

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v22

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v24

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v26

    invoke-static/range {v16 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v11

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v16

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v18

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v20

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v22

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v24

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v26

    invoke-static/range {v16 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v16

    move/from16 p2, v8

    new-array v8, v13, [D

    aput-wide v9, v8, v15

    aput-wide v11, v8, p1

    aput-wide v16, v8, p2

    filled-new-array {v14, v7, v8}, [[D

    move-result-object v7

    .line 309
    .local v7, "m":[[D
    invoke-static {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v8

    .line 310
    .local v8, "quat":[D
    aget-wide v9, v8, v15

    iput-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 311
    aget-wide v9, v8, p1

    iput-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 312
    aget-wide v9, v8, p2

    iput-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 313
    aget-wide v9, v8, v13

    iput-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 315
    return-void
.end method

.method public constructor <init>([[DD)V
    .locals 17
    .param p1, "m"    # [[D
    .param p2, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 228
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    aget-object v2, v1, v3

    array-length v2, v2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    aget-object v5, v1, v2

    array-length v5, v5

    if-ne v5, v4, :cond_1

    const/4 v5, 0x2

    aget-object v6, v1, v5

    array-length v6, v6

    if-ne v6, v4, :cond_1

    .line 236
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->orthogonalizeMatrix([[DD)[[D

    move-result-object v6

    .line 239
    .local v6, "ort":[[D
    aget-object v7, v6, v3

    aget-wide v7, v7, v3

    aget-object v9, v6, v2

    aget-wide v9, v9, v2

    aget-object v11, v6, v5

    aget-wide v11, v11, v5

    mul-double/2addr v9, v11

    aget-object v11, v6, v5

    aget-wide v11, v11, v2

    aget-object v13, v6, v2

    aget-wide v13, v13, v5

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    aget-object v9, v6, v2

    aget-wide v9, v9, v3

    aget-object v11, v6, v3

    aget-wide v11, v11, v2

    aget-object v13, v6, v5

    aget-wide v13, v13, v5

    mul-double/2addr v11, v13

    aget-object v13, v6, v5

    aget-wide v13, v13, v2

    aget-object v15, v6, v3

    aget-wide v15, v15, v5

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    aget-object v9, v6, v5

    aget-wide v9, v9, v3

    aget-object v11, v6, v3

    aget-wide v11, v11, v2

    aget-object v13, v6, v2

    aget-wide v13, v13, v5

    mul-double/2addr v11, v13

    aget-object v13, v6, v2

    aget-wide v13, v13, v2

    aget-object v15, v6, v3

    aget-wide v15, v15, v5

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    .line 242
    .local v7, "det":D
    const-wide/16 v9, 0x0

    cmpg-double v9, v7, v9

    if-ltz v9, :cond_0

    .line 248
    invoke-static {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v9

    .line 249
    .local v9, "quat":[D
    aget-wide v10, v9, v3

    iput-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 250
    aget-wide v2, v9, v2

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 251
    aget-wide v2, v9, v5

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 252
    aget-wide v2, v9, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    .line 254
    return-void

    .line 243
    .end local v9    # "quat":[D
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 230
    .end local v6    # "ort":[[D
    .end local v7    # "det":D
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROTATION_MATRIX_DIMENSIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v3, v1, v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method private composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 16
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .line 1231
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v3, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v5, v7

    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    sub-double/2addr v3, v5

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v5, v7

    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v7, v9

    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v7, v9

    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v9, v11

    iget-wide v11, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    add-double/2addr v7, v9

    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v9, v11

    iget-wide v11, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    iget-wide v11, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v11, v13

    iget-wide v13, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object v15, v2

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v13, v1

    sub-double/2addr v11, v13

    add-double/2addr v9, v11

    const/4 v11, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v15
.end method

.method private composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 16
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .line 1290
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v3, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v3, v3

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v5, v7

    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    sub-double/2addr v3, v5

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    neg-double v5, v5

    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v5, v7

    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v7, v9

    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    neg-double v7, v7

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v7, v9

    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v9, v11

    iget-wide v11, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    add-double/2addr v7, v9

    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    neg-double v9, v9

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v9, v11

    iget-wide v11, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    iget-wide v11, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v11, v13

    iget-wide v13, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object v15, v2

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v13, v1

    sub-double/2addr v11, v13

    add-double/2addr v9, v11

    const/4 v11, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v15
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)D
    .locals 2
    .param p0, "r1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .param p1, "r2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .line 1421
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngle()D

    move-result-wide v0

    return-wide v0
.end method

.method private static mat2quat([[D)[D
    .locals 20
    .param p0, "ort"    # [[D

    .line 421
    const/4 v0, 0x4

    new-array v0, v0, [D

    .line 434
    .local v0, "quat":[D
    const/4 v1, 0x0

    aget-object v2, p0, v1

    aget-wide v2, v2, v1

    const/4 v4, 0x1

    aget-object v5, p0, v4

    aget-wide v5, v5, v4

    add-double/2addr v2, v5

    const/4 v5, 0x2

    aget-object v6, p0, v5

    aget-wide v6, v6, v5

    add-double/2addr v2, v6

    .line 435
    .local v2, "s":D
    const-wide v6, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v8, v2, v6

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    const/4 v15, 0x3

    if-lez v8, :cond_0

    .line 437
    add-double/2addr v11, v2

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v13

    aput-wide v6, v0, v1

    .line 438
    aget-wide v6, v0, v1

    div-double/2addr v9, v6

    .line 439
    .local v9, "inv":D
    aget-object v6, p0, v4

    aget-wide v6, v6, v5

    aget-object v8, p0, v5

    aget-wide v11, v8, v4

    sub-double/2addr v6, v11

    mul-double/2addr v6, v9

    aput-wide v6, v0, v4

    .line 440
    aget-object v6, p0, v5

    aget-wide v6, v6, v1

    aget-object v8, p0, v1

    aget-wide v11, v8, v5

    sub-double/2addr v6, v11

    mul-double/2addr v6, v9

    aput-wide v6, v0, v5

    .line 441
    aget-object v5, p0, v1

    aget-wide v5, v5, v4

    aget-object v4, p0, v4

    aget-wide v7, v4, v1

    sub-double/2addr v5, v7

    mul-double/2addr v5, v9

    aput-wide v5, v0, v15

    .line 442
    .end local v9    # "inv":D
    goto/16 :goto_0

    .line 443
    :cond_0
    aget-object v8, p0, v1

    aget-wide v16, v8, v1

    aget-object v8, p0, v4

    aget-wide v18, v8, v4

    sub-double v16, v16, v18

    aget-object v8, p0, v5

    aget-wide v18, v8, v5

    sub-double v2, v16, v18

    .line 444
    cmpl-double v8, v2, v6

    if-lez v8, :cond_1

    .line 446
    add-double/2addr v11, v2

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v13

    aput-wide v6, v0, v4

    .line 447
    aget-wide v6, v0, v4

    div-double/2addr v9, v6

    .line 448
    .restart local v9    # "inv":D
    aget-object v6, p0, v4

    aget-wide v6, v6, v5

    aget-object v8, p0, v5

    aget-wide v11, v8, v4

    sub-double/2addr v6, v11

    mul-double/2addr v6, v9

    aput-wide v6, v0, v1

    .line 449
    aget-object v6, p0, v1

    aget-wide v6, v6, v4

    aget-object v4, p0, v4

    aget-wide v11, v4, v1

    add-double/2addr v6, v11

    mul-double/2addr v6, v9

    aput-wide v6, v0, v5

    .line 450
    aget-object v4, p0, v1

    aget-wide v6, v4, v5

    aget-object v4, p0, v5

    aget-wide v4, v4, v1

    add-double/2addr v6, v4

    mul-double/2addr v6, v9

    aput-wide v6, v0, v15

    .line 451
    .end local v9    # "inv":D
    goto/16 :goto_0

    .line 452
    :cond_1
    aget-object v8, p0, v4

    aget-wide v16, v8, v4

    aget-object v8, p0, v1

    aget-wide v18, v8, v1

    sub-double v16, v16, v18

    aget-object v8, p0, v5

    aget-wide v18, v8, v5

    sub-double v2, v16, v18

    .line 453
    cmpl-double v6, v2, v6

    if-lez v6, :cond_2

    .line 455
    add-double/2addr v11, v2

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v13

    aput-wide v6, v0, v5

    .line 456
    aget-wide v6, v0, v5

    div-double/2addr v9, v6

    .line 457
    .restart local v9    # "inv":D
    aget-object v6, p0, v5

    aget-wide v6, v6, v1

    aget-object v8, p0, v1

    aget-wide v11, v8, v5

    sub-double/2addr v6, v11

    mul-double/2addr v6, v9

    aput-wide v6, v0, v1

    .line 458
    aget-object v6, p0, v1

    aget-wide v6, v6, v4

    aget-object v8, p0, v4

    aget-wide v11, v8, v1

    add-double/2addr v6, v11

    mul-double/2addr v6, v9

    aput-wide v6, v0, v4

    .line 459
    aget-object v1, p0, v5

    aget-wide v6, v1, v4

    aget-object v1, p0, v4

    aget-wide v4, v1, v5

    add-double/2addr v6, v4

    mul-double/2addr v6, v9

    aput-wide v6, v0, v15

    .line 460
    .end local v9    # "inv":D
    goto :goto_0

    .line 462
    :cond_2
    aget-object v6, p0, v5

    aget-wide v6, v6, v5

    aget-object v8, p0, v1

    aget-wide v16, v8, v1

    sub-double v6, v6, v16

    aget-object v8, p0, v4

    aget-wide v16, v8, v4

    sub-double v2, v6, v16

    .line 463
    add-double/2addr v11, v2

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v13

    aput-wide v6, v0, v15

    .line 464
    aget-wide v6, v0, v15

    div-double/2addr v9, v6

    .line 465
    .restart local v9    # "inv":D
    aget-object v6, p0, v1

    aget-wide v6, v6, v4

    aget-object v8, p0, v4

    aget-wide v11, v8, v1

    sub-double/2addr v6, v11

    mul-double/2addr v6, v9

    aput-wide v6, v0, v1

    .line 466
    aget-object v6, p0, v1

    aget-wide v6, v6, v5

    aget-object v8, p0, v5

    aget-wide v11, v8, v1

    add-double/2addr v6, v11

    mul-double/2addr v6, v9

    aput-wide v6, v0, v4

    .line 467
    aget-object v1, p0, v5

    aget-wide v6, v1, v4

    aget-object v1, p0, v4

    aget-wide v11, v1, v5

    add-double/2addr v6, v11

    mul-double/2addr v6, v9

    aput-wide v6, v0, v5

    .line 472
    .end local v9    # "inv":D
    :goto_0
    return-object v0
.end method

.method private orthogonalizeMatrix([[DD)[[D
    .locals 72
    .param p1, "m"    # [[D
    .param p2, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    .line 1309
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 1310
    .local v1, "m0":[D
    const/4 v2, 0x1

    aget-object v3, p1, v2

    .line 1311
    .local v3, "m1":[D
    const/4 v4, 0x2

    aget-object v5, p1, v4

    .line 1312
    .local v5, "m2":[D
    aget-wide v6, v1, v0

    .line 1313
    .local v6, "x00":D
    aget-wide v8, v1, v2

    .line 1314
    .local v8, "x01":D
    aget-wide v10, v1, v4

    .line 1315
    .local v10, "x02":D
    aget-wide v12, v3, v0

    .line 1316
    .local v12, "x10":D
    aget-wide v14, v3, v2

    .line 1317
    .local v14, "x11":D
    aget-wide v16, v3, v4

    .line 1318
    .local v16, "x12":D
    aget-wide v18, v5, v0

    .line 1319
    .local v18, "x20":D
    aget-wide v20, v5, v2

    .line 1320
    .local v20, "x21":D
    aget-wide v22, v5, v4

    .line 1321
    .local v22, "x22":D
    const-wide/16 v24, 0x0

    .line 1324
    .local v24, "fn":D
    move/from16 v26, v0

    new-array v0, v4, [I

    const/16 v27, 0x3

    aput v27, v0, v2

    aput v27, v0, v26

    move/from16 v27, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1325
    .local v0, "o":[[D
    aget-object v2, v0, v26

    .line 1326
    .local v2, "o0":[D
    aget-object v28, v0, v27

    .line 1327
    .local v28, "o1":[D
    aget-object v29, v0, v4

    .line 1330
    .local v29, "o2":[D
    const/16 v30, 0x0

    .line 1331
    .local v30, "i":I
    :goto_0
    move/from16 v31, v4

    add-int/lit8 v4, v30, 0x1

    move-object/from16 v30, v0

    .end local v0    # "o":[[D
    .local v4, "i":I
    .local v30, "o":[[D
    const/16 v0, 0xb

    if-ge v4, v0, :cond_1

    .line 1334
    aget-wide v32, v1, v26

    mul-double v32, v32, v6

    aget-wide v34, v3, v26

    mul-double v34, v34, v12

    add-double v32, v32, v34

    aget-wide v34, v5, v26

    mul-double v34, v34, v18

    add-double v32, v32, v34

    .line 1335
    .local v32, "mx00":D
    aget-wide v34, v1, v27

    mul-double v34, v34, v6

    aget-wide v36, v3, v27

    mul-double v36, v36, v12

    add-double v34, v34, v36

    aget-wide v36, v5, v27

    mul-double v36, v36, v18

    add-double v34, v34, v36

    .line 1336
    .local v34, "mx10":D
    aget-wide v36, v1, v31

    mul-double v36, v36, v6

    aget-wide v38, v3, v31

    mul-double v38, v38, v12

    add-double v36, v36, v38

    aget-wide v38, v5, v31

    mul-double v38, v38, v18

    add-double v36, v36, v38

    .line 1337
    .local v36, "mx20":D
    aget-wide v38, v1, v26

    mul-double v38, v38, v8

    aget-wide v40, v3, v26

    mul-double v40, v40, v14

    add-double v38, v38, v40

    aget-wide v40, v5, v26

    mul-double v40, v40, v20

    add-double v38, v38, v40

    .line 1338
    .local v38, "mx01":D
    aget-wide v40, v1, v27

    mul-double v40, v40, v8

    aget-wide v42, v3, v27

    mul-double v42, v42, v14

    add-double v40, v40, v42

    aget-wide v42, v5, v27

    mul-double v42, v42, v20

    add-double v40, v40, v42

    .line 1339
    .local v40, "mx11":D
    aget-wide v42, v1, v31

    mul-double v42, v42, v8

    aget-wide v44, v3, v31

    mul-double v44, v44, v14

    add-double v42, v42, v44

    aget-wide v44, v5, v31

    mul-double v44, v44, v20

    add-double v42, v42, v44

    .line 1340
    .local v42, "mx21":D
    aget-wide v44, v1, v26

    mul-double v44, v44, v10

    aget-wide v46, v3, v26

    mul-double v46, v46, v16

    add-double v44, v44, v46

    aget-wide v46, v5, v26

    mul-double v46, v46, v22

    add-double v44, v44, v46

    .line 1341
    .local v44, "mx02":D
    aget-wide v46, v1, v27

    mul-double v46, v46, v10

    aget-wide v48, v3, v27

    mul-double v48, v48, v16

    add-double v46, v46, v48

    aget-wide v48, v5, v27

    mul-double v48, v48, v22

    add-double v46, v46, v48

    .line 1342
    .local v46, "mx12":D
    aget-wide v48, v1, v31

    mul-double v48, v48, v10

    aget-wide v50, v3, v31

    mul-double v50, v50, v16

    add-double v48, v48, v50

    aget-wide v50, v5, v31

    mul-double v50, v50, v22

    add-double v48, v48, v50

    .line 1345
    .local v48, "mx22":D
    mul-double v50, v6, v32

    mul-double v52, v8, v34

    add-double v50, v50, v52

    mul-double v52, v10, v36

    add-double v50, v50, v52

    aget-wide v52, v1, v26

    sub-double v50, v50, v52

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    mul-double v50, v50, v52

    sub-double v50, v6, v50

    aput-wide v50, v2, v26

    .line 1346
    mul-double v50, v6, v38

    mul-double v54, v8, v40

    add-double v50, v50, v54

    mul-double v54, v10, v42

    add-double v50, v50, v54

    aget-wide v54, v1, v27

    sub-double v50, v50, v54

    mul-double v50, v50, v52

    sub-double v50, v8, v50

    aput-wide v50, v2, v27

    .line 1347
    mul-double v50, v6, v44

    mul-double v54, v8, v46

    add-double v50, v50, v54

    mul-double v54, v10, v48

    add-double v50, v50, v54

    aget-wide v54, v1, v31

    sub-double v50, v50, v54

    mul-double v50, v50, v52

    sub-double v50, v10, v50

    aput-wide v50, v2, v31

    .line 1348
    mul-double v50, v12, v32

    mul-double v54, v14, v34

    add-double v50, v50, v54

    mul-double v54, v16, v36

    add-double v50, v50, v54

    aget-wide v54, v3, v26

    sub-double v50, v50, v54

    mul-double v50, v50, v52

    sub-double v50, v12, v50

    aput-wide v50, v28, v26

    .line 1349
    mul-double v50, v12, v38

    mul-double v54, v14, v40

    add-double v50, v50, v54

    mul-double v54, v16, v42

    add-double v50, v50, v54

    aget-wide v54, v3, v27

    sub-double v50, v50, v54

    mul-double v50, v50, v52

    sub-double v50, v14, v50

    aput-wide v50, v28, v27

    .line 1350
    mul-double v50, v12, v44

    mul-double v54, v14, v46

    add-double v50, v50, v54

    mul-double v54, v16, v48

    add-double v50, v50, v54

    aget-wide v54, v3, v31

    sub-double v50, v50, v54

    mul-double v50, v50, v52

    sub-double v50, v16, v50

    aput-wide v50, v28, v31

    .line 1351
    mul-double v50, v18, v32

    mul-double v54, v20, v34

    add-double v50, v50, v54

    mul-double v54, v22, v36

    add-double v50, v50, v54

    aget-wide v54, v5, v26

    sub-double v50, v50, v54

    mul-double v50, v50, v52

    sub-double v50, v18, v50

    aput-wide v50, v29, v26

    .line 1352
    mul-double v50, v18, v38

    mul-double v54, v20, v40

    add-double v50, v50, v54

    mul-double v54, v22, v42

    add-double v50, v50, v54

    aget-wide v54, v5, v27

    sub-double v50, v50, v54

    mul-double v50, v50, v52

    sub-double v50, v20, v50

    aput-wide v50, v29, v27

    .line 1353
    mul-double v50, v18, v44

    mul-double v54, v20, v46

    add-double v50, v50, v54

    mul-double v54, v22, v48

    add-double v50, v50, v54

    aget-wide v54, v5, v31

    sub-double v50, v50, v54

    mul-double v50, v50, v52

    sub-double v50, v22, v50

    aput-wide v50, v29, v31

    .line 1356
    aget-wide v50, v2, v26

    aget-wide v52, v1, v26

    sub-double v50, v50, v52

    .line 1357
    .local v50, "corr00":D
    aget-wide v52, v2, v27

    aget-wide v54, v1, v27

    sub-double v52, v52, v54

    .line 1358
    .local v52, "corr01":D
    aget-wide v54, v2, v31

    aget-wide v56, v1, v31

    sub-double v54, v54, v56

    .line 1359
    .local v54, "corr02":D
    aget-wide v56, v28, v26

    aget-wide v58, v3, v26

    sub-double v56, v56, v58

    .line 1360
    .local v56, "corr10":D
    aget-wide v58, v28, v27

    aget-wide v60, v3, v27

    sub-double v58, v58, v60

    .line 1361
    .local v58, "corr11":D
    aget-wide v60, v28, v31

    aget-wide v62, v3, v31

    sub-double v60, v60, v62

    .line 1362
    .local v60, "corr12":D
    aget-wide v62, v29, v26

    aget-wide v64, v5, v26

    sub-double v62, v62, v64

    .line 1363
    .local v62, "corr20":D
    aget-wide v64, v29, v27

    aget-wide v66, v5, v27

    sub-double v64, v64, v66

    .line 1364
    .local v64, "corr21":D
    aget-wide v66, v29, v31

    aget-wide v68, v5, v31

    sub-double v66, v66, v68

    .line 1367
    .local v66, "corr22":D
    mul-double v68, v50, v50

    mul-double v70, v52, v52

    add-double v68, v68, v70

    mul-double v70, v54, v54

    add-double v68, v68, v70

    mul-double v70, v56, v56

    add-double v68, v68, v70

    mul-double v70, v58, v58

    add-double v68, v68, v70

    mul-double v70, v60, v60

    add-double v68, v68, v70

    mul-double v70, v62, v62

    add-double v68, v68, v70

    mul-double v70, v64, v64

    add-double v68, v68, v70

    mul-double v70, v66, v66

    add-double v68, v68, v70

    .line 1372
    .local v68, "fn1":D
    sub-double v70, v68, v24

    invoke-static/range {v70 .. v71}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v70

    cmpg-double v0, v70, p2

    if-gtz v0, :cond_0

    .line 1373
    return-object v30

    .line 1377
    :cond_0
    aget-wide v6, v2, v26

    .line 1378
    aget-wide v8, v2, v27

    .line 1379
    aget-wide v10, v2, v31

    .line 1380
    aget-wide v12, v28, v26

    .line 1381
    aget-wide v14, v28, v27

    .line 1382
    aget-wide v16, v28, v31

    .line 1383
    aget-wide v18, v29, v26

    .line 1384
    aget-wide v20, v29, v27

    .line 1385
    aget-wide v22, v29, v31

    .line 1386
    move-wide/from16 v24, v68

    .line 1388
    .end local v32    # "mx00":D
    .end local v34    # "mx10":D
    .end local v36    # "mx20":D
    .end local v38    # "mx01":D
    .end local v40    # "mx11":D
    .end local v42    # "mx21":D
    .end local v44    # "mx02":D
    .end local v46    # "mx12":D
    .end local v48    # "mx22":D
    .end local v50    # "corr00":D
    .end local v52    # "corr01":D
    .end local v54    # "corr02":D
    .end local v56    # "corr10":D
    .end local v58    # "corr11":D
    .end local v60    # "corr12":D
    .end local v62    # "corr20":D
    .end local v64    # "corr21":D
    .end local v66    # "corr22":D
    move-object/from16 v0, v30

    move/from16 v30, v4

    move/from16 v4, v31

    goto/16 :goto_0

    .line 1391
    .end local v68    # "fn1":D
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    move-object/from16 v26, v1

    .end local v1    # "m0":[D
    .local v26, "m0":[D
    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_ORTHOGONOLIZE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    add-int/lit8 v27, v4, -0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v31, v2

    .end local v2    # "o0":[D
    .local v31, "o0":[D
    filled-new-array/range {v27 .. v27}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .line 1249
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 24
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 1150
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 1151
    .local v1, "x":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 1152
    .local v3, "y":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 1154
    .local v5, "z":D
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v7, v1

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    .line 1155
    .local v7, "s":D
    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v9, v9

    .line 1157
    .local v9, "m0":D
    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v12, v1, v9

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v14, v5

    move-wide/from16 v18, v1

    .end local v1    # "x":D
    .local v18, "x":D
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v1, v3

    sub-double/2addr v14, v1

    sub-double/2addr v12, v14

    mul-double/2addr v12, v9

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v1, v7

    add-double/2addr v12, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v1

    sub-double v12, v12, v18

    mul-double v14, v3, v9

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v1, v1, v18

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v1, v5

    sub-double v1, v20, v1

    sub-double/2addr v14, v1

    mul-double/2addr v14, v9

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v1, v7

    add-double/2addr v14, v1

    mul-double v14, v14, v16

    sub-double/2addr v14, v3

    mul-double v1, v5, v9

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v1, v3

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v1, v1, v18

    sub-double v1, v22, v1

    sub-double v1, v20, v1

    mul-double/2addr v1, v9

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v1, v7

    add-double v1, v20, v1

    mul-double v1, v1, v16

    sub-double v16, v1, v5

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v11
.end method

.method public applyInverseTo([D[D)V
    .locals 23
    .param p1, "in"    # [D
    .param p2, "out"    # [D

    .line 1170
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    .line 1171
    .local v2, "x":D
    const/4 v4, 0x1

    aget-wide v5, p1, v4

    .line 1172
    .local v5, "y":D
    const/4 v7, 0x2

    aget-wide v8, p1, v7

    .line 1174
    .local v8, "z":D
    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v10, v2

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v12, v5

    add-double/2addr v10, v12

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    .line 1175
    .local v10, "s":D
    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v12, v12

    .line 1177
    .local v12, "m0":D
    mul-double v14, v2, v12

    move/from16 v16, v1

    move-wide/from16 v17, v2

    .end local v2    # "x":D
    .local v17, "x":D
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v1, v8

    move v3, v4

    move-wide/from16 v19, v5

    .end local v5    # "y":D
    .local v19, "y":D
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v4, v4, v19

    sub-double/2addr v1, v4

    sub-double/2addr v14, v1

    mul-double/2addr v14, v12

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v1, v10

    add-double/2addr v14, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v1

    sub-double v14, v14, v17

    aput-wide v14, p2, v16

    .line 1178
    mul-double v5, v19, v12

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v14, v14, v17

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v1, v8

    sub-double/2addr v14, v1

    sub-double/2addr v5, v14

    mul-double/2addr v5, v12

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v1, v10

    add-double/2addr v5, v1

    mul-double v5, v5, v21

    sub-double v5, v5, v19

    aput-wide v5, p2, v3

    .line 1179
    mul-double v1, v8, v12

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v3, v3, v19

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v5, v5, v17

    sub-double/2addr v3, v5

    sub-double/2addr v1, v3

    mul-double/2addr v1, v12

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v3, v10

    add-double/2addr v1, v3

    mul-double v1, v1, v21

    sub-double/2addr v1, v8

    aput-wide v1, p2, v7

    .line 1181
    return-void
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .line 1193
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 24
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 1113
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 1114
    .local v1, "x":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 1115
    .local v3, "y":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 1117
    .local v5, "z":D
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v7, v1

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    .line 1119
    .local v7, "s":D
    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v12, v1

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v14, v5

    move-wide/from16 v16, v1

    .end local v1    # "x":D
    .local v16, "x":D
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v1, v3

    sub-double/2addr v14, v1

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v1, v7

    add-double/2addr v10, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v1

    sub-double v10, v10, v16

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v14, v3

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v1, v1, v16

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v1, v5

    sub-double v1, v20, v1

    sub-double/2addr v14, v1

    mul-double/2addr v12, v14

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v1, v7

    add-double/2addr v12, v1

    mul-double v12, v12, v18

    sub-double/2addr v12, v3

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v14, v5

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v1, v3

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v1, v1, v16

    sub-double v1, v22, v1

    sub-double/2addr v14, v1

    mul-double v1, v20, v14

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v14, v7

    add-double/2addr v1, v14

    mul-double v1, v1, v18

    sub-double v14, v1, v5

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v9
.end method

.method public applyTo([D[D)V
    .locals 23
    .param p1, "in"    # [D
    .param p2, "out"    # [D

    .line 1132
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    .line 1133
    .local v2, "x":D
    const/4 v4, 0x1

    aget-wide v5, p1, v4

    .line 1134
    .local v5, "y":D
    const/4 v7, 0x2

    aget-wide v8, p1, v7

    .line 1136
    .local v8, "z":D
    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v10, v2

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v12, v5

    add-double/2addr v10, v12

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    .line 1138
    .local v10, "s":D
    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v14, v2

    move/from16 v16, v1

    move-wide/from16 v17, v2

    .end local v2    # "x":D
    .local v17, "x":D
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v1, v8

    move v3, v4

    move-wide/from16 v19, v5

    .end local v5    # "y":D
    .local v19, "y":D
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v4, v4, v19

    sub-double/2addr v1, v4

    sub-double/2addr v14, v1

    mul-double/2addr v12, v14

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v1, v10

    add-double/2addr v12, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v1

    sub-double v12, v12, v17

    aput-wide v12, p2, v16

    .line 1139
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v12, v12, v19

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v14, v14, v17

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v1, v8

    sub-double/2addr v14, v1

    sub-double/2addr v12, v14

    mul-double/2addr v4, v12

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v1, v10

    add-double/2addr v4, v1

    mul-double v4, v4, v21

    sub-double v4, v4, v19

    aput-wide v4, p2, v3

    .line 1140
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v3, v8

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v5, v5, v19

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v12, v12, v17

    sub-double/2addr v5, v12

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v3, v10

    add-double/2addr v1, v3

    mul-double v1, v1, v21

    sub-double/2addr v1, v8

    aput-wide v1, p2, v7

    .line 1142
    return-void
.end method

.method public compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    .line 1221
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    .line 1279
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAngle()D
    .locals 9

    .line 560
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide v2, -0x4046666666666666L    # -0.1

    cmpg-double v0, v0, v2

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-ltz v0, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v3, v5

    if-lez v0, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    .line 563
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v3, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    return-wide v3

    .line 565
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    return-wide v3

    .line 561
    :cond_2
    :goto_0
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    return-wide v3
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;)[D
    .locals 1
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[D

    move-result-object v0

    return-object v0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[D
    .locals 17
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .line 628
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-wide v5, 0x3feffffffff24190L    # 0.9999999999

    const-wide v7, -0x40100000000dbe70L    # -0.9999999999

    move-object/from16 v11, p2

    if-ne v11, v2, :cond_17

    .line 629
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_1

    .line 636
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 637
    .local v2, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v12, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v12

    .line 638
    .local v12, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v13

    cmpg-double v7, v13, v7

    if-ltz v7, :cond_0

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_0

    .line 641
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v13

    neg-double v13, v13

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    invoke-static {v13, v14, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array v4, v4, [D

    aput-wide v5, v4, v15

    aput-wide v7, v4, v16

    aput-wide v9, v4, v3

    return-object v4

    .line 638
    :cond_0
    const/16 v16, 0x1

    .line 639
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    move/from16 v4, v16

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 647
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v12    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_1
    const/4 v15, 0x0

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_3

    .line 654
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 655
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v9, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    .line 656
    .local v9, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    cmpg-double v7, v12, v7

    if-ltz v7, :cond_2

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_2

    .line 659
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    move-object v14, v2

    move v10, v3

    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v14, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v12, v13, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    new-array v4, v4, [D

    aput-wide v5, v4, v15

    const/4 v5, 0x1

    aput-wide v7, v4, v5

    aput-wide v2, v4, v10

    return-object v4

    .line 656
    .end local v14    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_2
    move-object v14, v2

    const/4 v5, 0x1

    .line 657
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .restart local v14    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 665
    .end local v9    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v14    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_3
    move v10, v3

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_5

    .line 672
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 673
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 674
    .local v3, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    cmpg-double v7, v12, v7

    if-ltz v7, :cond_4

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_4

    .line 677
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    move v9, v10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-static {v12, v13, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    aput-wide v5, v4, v15

    const/4 v5, 0x1

    aput-wide v7, v4, v5

    aput-wide v10, v4, v9

    return-object v4

    .line 674
    :cond_4
    const/4 v5, 0x1

    .line 675
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 683
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_5
    move v9, v10

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_7

    .line 690
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 691
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 692
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_6

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_6

    .line 695
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    aput-wide v5, v4, v15

    const/4 v5, 0x1

    aput-wide v7, v4, v5

    aput-wide v10, v4, v9

    return-object v4

    .line 692
    :cond_6
    const/4 v5, 0x1

    .line 693
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 701
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_7
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_9

    .line 708
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 709
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 710
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_8

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_8

    .line 713
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    aput-wide v5, v4, v15

    const/4 v5, 0x1

    aput-wide v7, v4, v5

    aput-wide v10, v4, v9

    return-object v4

    .line 710
    :cond_8
    const/4 v5, 0x1

    .line 711
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 719
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_9
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_b

    .line 726
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 727
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 728
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_a

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_a

    .line 731
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    aput-wide v5, v4, v15

    const/4 v5, 0x1

    aput-wide v7, v4, v5

    aput-wide v10, v4, v9

    return-object v4

    .line 728
    :cond_a
    const/4 v5, 0x1

    .line 729
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 737
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_b
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_d

    .line 744
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 745
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 746
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_c

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_c

    .line 749
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 747
    :cond_c
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 755
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_d
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_f

    .line 762
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 763
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 764
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_e

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_e

    .line 767
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    neg-double v12, v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 764
    :cond_e
    const/4 v15, 0x0

    .line 765
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 773
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_f
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_11

    .line 780
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 781
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 782
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_10

    .line 785
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    neg-double v12, v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 782
    :cond_10
    const/4 v15, 0x0

    .line 783
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 791
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_11
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_13

    .line 798
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 799
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 800
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_12

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_12

    .line 803
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 800
    :cond_12
    const/4 v15, 0x0

    .line 801
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 809
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_13
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_15

    .line 816
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 817
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 818
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_14

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_14

    .line 821
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 818
    :cond_14
    const/4 v15, 0x0

    .line 819
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 834
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_15
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 835
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 836
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_16

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_16

    .line 839
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    neg-double v12, v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 836
    :cond_16
    const/4 v15, 0x0

    .line 837
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 847
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_17
    move v9, v3

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_19

    .line 854
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 855
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 856
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_18

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_18

    .line 859
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/4 v5, 0x1

    aput-wide v7, v4, v5

    aput-wide v10, v4, v9

    return-object v4

    .line 856
    :cond_18
    const/4 v5, 0x1

    .line 857
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 865
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_19
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_1b

    .line 872
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 873
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 874
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_1a

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_1a

    .line 877
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/4 v5, 0x1

    aput-wide v7, v4, v5

    aput-wide v10, v4, v9

    return-object v4

    .line 874
    :cond_1a
    const/4 v5, 0x1

    .line 875
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 883
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_1b
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_1d

    .line 890
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 891
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 892
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_1c

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_1c

    .line 895
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/4 v5, 0x1

    aput-wide v7, v4, v5

    aput-wide v10, v4, v9

    return-object v4

    .line 892
    :cond_1c
    const/4 v5, 0x1

    .line 893
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 901
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_1d
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_1f

    .line 908
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 909
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 910
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_1e

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_1e

    .line 913
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/4 v5, 0x1

    aput-wide v7, v4, v5

    aput-wide v10, v4, v9

    return-object v4

    .line 910
    :cond_1e
    const/4 v5, 0x1

    .line 911
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 919
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_1f
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_21

    .line 926
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 927
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 928
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_20

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_20

    .line 931
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/4 v5, 0x1

    aput-wide v7, v4, v5

    aput-wide v10, v4, v9

    return-object v4

    .line 928
    :cond_20
    const/4 v5, 0x1

    .line 929
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 937
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_21
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_23

    .line 944
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 945
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 946
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_22

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_22

    .line 949
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/4 v5, 0x1

    aput-wide v7, v4, v5

    aput-wide v10, v4, v9

    return-object v4

    .line 946
    :cond_22
    const/4 v5, 0x1

    .line 947
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 955
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_23
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_25

    .line 962
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 963
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 964
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_24

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_24

    .line 967
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 964
    :cond_24
    const/4 v15, 0x0

    .line 965
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 973
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_25
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_27

    .line 980
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 981
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 982
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_26

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_26

    .line 985
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    neg-double v12, v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 982
    :cond_26
    const/4 v15, 0x0

    .line 983
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 991
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_27
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_29

    .line 998
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 999
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 1000
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_28

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_28

    .line 1003
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    neg-double v12, v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 1000
    :cond_28
    const/4 v15, 0x0

    .line 1001
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 1009
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_29
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_2b

    .line 1016
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 1017
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 1018
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_2a

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_2a

    .line 1021
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 1018
    :cond_2a
    const/4 v15, 0x0

    .line 1019
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 1027
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_2b
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v1, v2, :cond_2d

    .line 1034
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 1035
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 1036
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_2c

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_2c

    .line 1039
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 1036
    :cond_2c
    const/4 v15, 0x0

    .line 1037
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4

    .line 1052
    .end local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_2d
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 1053
    .restart local v2    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 1054
    .restart local v3    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    cmpg-double v7, v10, v7

    if-ltz v7, :cond_2e

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-gtz v5, :cond_2e

    .line 1057
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    neg-double v12, v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v10

    new-array v4, v4, [D

    const/4 v15, 0x0

    aput-wide v5, v4, v15

    const/16 v16, 0x1

    aput-wide v7, v4, v16

    aput-wide v10, v4, v9

    return-object v4

    .line 1054
    :cond_2e
    const/4 v15, 0x0

    .line 1055
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v4, v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v4
.end method

.method public getAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 526
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 13
    .param p1, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    .line 541
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 542
    .local v0, "squaredSine":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 543
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, v2, :cond_0

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    :goto_0
    return-object v2

    .line 545
    :cond_1
    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, v4, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_2
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 546
    .local v4, "sgn":D
    :goto_1
    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    cmpg-double v2, v6, v2

    if-gez v2, :cond_3

    .line 547
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double v2, v4, v2

    .line 548
    .local v2, "inverse":D
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v7, v2

    iget-wide v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v9, v2

    iget-wide v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v11, v2

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v6

    .line 550
    .end local v2    # "inverse":D
    :cond_3
    neg-double v2, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    .line 551
    .restart local v2    # "inverse":D
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v7, v2

    iget-wide v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v9, v2

    iget-wide v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v11, v2

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v6
.end method

.method public getMatrix()[[D
    .locals 31

    .line 1074
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v1, v3

    .line 1075
    .local v1, "q0q0":D
    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v3, v5

    .line 1076
    .local v3, "q0q1":D
    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v5, v7

    .line 1077
    .local v5, "q0q2":D
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v7, v9

    .line 1078
    .local v7, "q0q3":D
    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v9, v11

    .line 1079
    .local v9, "q1q1":D
    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v11, v13

    .line 1080
    .local v11, "q1q2":D
    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    move-wide v15, v1

    .end local v1    # "q0q0":D
    .local v15, "q0q0":D
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v13, v1

    .line 1081
    .local v13, "q1q3":D
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v1, v1, v17

    .line 1082
    .local v1, "q2q2":D
    move-wide/from16 v17, v1

    .end local v1    # "q2q2":D
    .local v17, "q2q2":D
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v1, v1, v19

    .line 1083
    .local v1, "q2q3":D
    move-wide/from16 v19, v1

    .end local v1    # "q2q3":D
    .local v19, "q2q3":D
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v1, v1, v21

    .line 1086
    .local v1, "q3q3":D
    const/4 v0, 0x3

    move-wide/from16 v21, v1

    .end local v1    # "q3q3":D
    .local v21, "q3q3":D
    new-array v1, v0, [[D

    .line 1087
    .local v1, "m":[[D
    new-array v2, v0, [D

    const/16 v23, 0x0

    aput-object v2, v1, v23

    .line 1088
    new-array v2, v0, [D

    const/16 v24, 0x1

    aput-object v2, v1, v24

    .line 1089
    new-array v0, v0, [D

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 1091
    aget-object v0, v1, v23

    add-double v25, v15, v9

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    mul-double v25, v25, v27

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    sub-double v25, v25, v29

    aput-wide v25, v0, v23

    .line 1092
    aget-object v0, v1, v24

    sub-double v25, v11, v7

    mul-double v25, v25, v27

    aput-wide v25, v0, v23

    .line 1093
    aget-object v0, v1, v2

    add-double v25, v13, v5

    mul-double v25, v25, v27

    aput-wide v25, v0, v23

    .line 1095
    aget-object v0, v1, v23

    add-double v25, v11, v7

    mul-double v25, v25, v27

    aput-wide v25, v0, v24

    .line 1096
    aget-object v0, v1, v24

    add-double v25, v15, v17

    mul-double v25, v25, v27

    sub-double v25, v25, v29

    aput-wide v25, v0, v24

    .line 1097
    aget-object v0, v1, v2

    sub-double v25, v19, v3

    mul-double v25, v25, v27

    aput-wide v25, v0, v24

    .line 1099
    aget-object v0, v1, v23

    sub-double v25, v13, v5

    mul-double v25, v25, v27

    aput-wide v25, v0, v2

    .line 1100
    aget-object v0, v1, v24

    add-double v23, v19, v3

    mul-double v23, v23, v27

    aput-wide v23, v0, v2

    .line 1101
    aget-object v0, v1, v2

    add-double v23, v15, v21

    mul-double v23, v23, v27

    sub-double v23, v23, v29

    aput-wide v23, v0, v2

    .line 1103
    return-object v1
.end method

.method public getQ0()D
    .locals 2

    .line 491
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    return-wide v0
.end method

.method public getQ1()D
    .locals 2

    .line 498
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    return-wide v0
.end method

.method public getQ2()D
    .locals 2

    .line 505
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    return-wide v0
.end method

.method public getQ3()D
    .locals 2

    .line 512
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-wide v0
.end method

.method public revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 10

    .line 484
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v1, v1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v0
.end method
