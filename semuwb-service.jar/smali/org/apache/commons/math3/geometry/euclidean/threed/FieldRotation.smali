.class public Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
.super Ljava/lang/Object;
.source "FieldRotation.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13329b0L


# instance fields
.field private final q0:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final q1:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final q2:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final q3:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V
    .locals 2
    .param p5, "needsNormalization"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;Z)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "q0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "q1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "q2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-eqz p5, :cond_0

    .line 79
    invoke-interface {p1, p1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p2, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p3, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p4, p4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 81
    .local v0, "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 82
    invoke-interface {v0, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 83
    invoke-interface {v0, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 84
    invoke-interface {v0, p4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 85
    .end local v0    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    goto :goto_0

    .line 86
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 87
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 88
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 89
    iput-object p4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 92
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "axis":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p2, "angle":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V
    .locals 5
    .param p3, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "axis":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p2, "angle":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 150
    .local v0, "norm":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    .line 154
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p3, v1, :cond_0

    const-wide/high16 v1, -0x4020000000000000L    # -0.5

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    :goto_0
    invoke-interface {p2, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 155
    .local v1, "halfAngle":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->sin()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 157
    .local v2, "coeff":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->cos()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 158
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 159
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 160
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 162
    return-void

    .line 151
    .end local v1    # "halfAngle":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v2    # "coeff":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_AXIS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 295
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p2, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 298
    .local v0, "normProduct":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    .line 302
    invoke-static {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 304
    .local v1, "dot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, -0x4010000000000012L    # -0.999999999999998

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    mul-double/2addr v6, v4

    cmpg-double v2, v2, v6

    if-gez v2, :cond_0

    .line 307
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 308
    .local v2, "w":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 309
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 310
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 311
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 312
    .end local v2    # "w":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    goto :goto_0

    .line 315
    :cond_0
    invoke-interface {v1, v0}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 316
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 317
    .local v2, "coeff":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-static {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v3

    .line 318
    .local v3, "q":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 319
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 320
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 323
    .end local v2    # "coeff":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "q":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :goto_0
    return-void

    .line 299
    .end local v1    # "dot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "u1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p2, "u2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p3, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p4, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    .line 253
    .local v0, "u3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-static {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p2

    .line 254
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p1

    .line 258
    invoke-static {p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 259
    .local v1, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-static {v1, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p4

    .line 260
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p3

    .line 263
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 264
    .local v2, "array":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v4

    .line 265
    aget-object v5, v2, v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 266
    aget-object v5, v2, v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    .line 267
    aget-object v5, v2, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v4

    .line 268
    aget-object v5, v2, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v7

    .line 269
    aget-object v5, v2, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v8

    .line 270
    aget-object v5, v2, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v4

    .line 271
    aget-object v5, v2, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v7

    .line 272
    aget-object v5, v2, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v8

    .line 274
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->mat2quat([[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    .line 275
    .local v5, "quat":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    aget-object v4, v5, v4

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 276
    aget-object v4, v5, v7

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 277
    aget-object v4, v5, v8

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 278
    aget-object v3, v5, v3

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 280
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 6
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;",
            "TT;TT;TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p2, "alpha1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "alpha2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "alpha3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "order":Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .end local p2    # "alpha1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local p3    # "alpha2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local p4    # "alpha3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v1, "order":Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .local v3, "alpha1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v4, "alpha2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "alpha3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 6
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            "TT;TT;TT;)V"
        }
    .end annotation

    .line 375
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p3, "alpha1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "alpha2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "alpha3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    invoke-interface {p3}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 377
    .local v0, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA1()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v1, v2, p3, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 378
    .local v1, "r1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA2()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v3, p4, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 379
    .local v2, "r2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA3()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v3, v4, p5, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 380
    .local v3, "r3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    invoke-virtual {v2, v3, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v4

    invoke-virtual {v1, v4, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v4

    .line 381
    .local v4, "composed":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v5, v4, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 382
    iget-object v5, v4, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 383
    iget-object v5, v4, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 384
    iget-object v5, v4, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 385
    return-void
.end method

.method public constructor <init>([[Lorg/apache/commons/math3/RealFieldElement;D)V
    .locals 13
    .param p2, "threshold"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "m":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    aget-object v0, p1, v1

    array-length v0, v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    aget-object v3, p1, v0

    array-length v3, v3

    if-ne v3, v2, :cond_1

    const/4 v3, 0x2

    aget-object v4, p1, v3

    array-length v4, v4

    if-ne v4, v2, :cond_1

    .line 206
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->orthogonalizeMatrix([[Lorg/apache/commons/math3/RealFieldElement;D)[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 209
    .local v4, "ort":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    aget-object v5, v4, v0

    aget-object v5, v5, v0

    aget-object v6, v4, v3

    aget-object v6, v6, v3

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v6, v4, v3

    aget-object v6, v6, v0

    aget-object v7, v4, v0

    aget-object v7, v7, v3

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 210
    .local v5, "d0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v6, v4, v1

    aget-object v6, v6, v0

    aget-object v7, v4, v3

    aget-object v7, v7, v3

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, v4, v3

    aget-object v7, v7, v0

    aget-object v8, v4, v1

    aget-object v8, v8, v3

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 211
    .local v6, "d1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v7, v4, v1

    aget-object v7, v7, v0

    aget-object v8, v4, v0

    aget-object v8, v8, v3

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v8, v4, v0

    aget-object v8, v8, v0

    aget-object v9, v4, v1

    aget-object v9, v9, v3

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 212
    .local v7, "d2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v8, v4, v1

    aget-object v8, v8, v1

    invoke-interface {v8, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v9, v4, v0

    aget-object v9, v9, v1

    invoke-interface {v9, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v9, v4, v3

    aget-object v9, v9, v1

    invoke-interface {v9, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 214
    .local v8, "det":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-ltz v9, :cond_0

    .line 220
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->mat2quat([[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    .line 221
    .local v9, "quat":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    aget-object v1, v9, v1

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    .line 222
    aget-object v0, v9, v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    .line 223
    aget-object v0, v9, v3

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    .line 224
    aget-object v0, v9, v2

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    .line 226
    return-void

    .line 215
    .end local v9    # "quat":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 200
    .end local v4    # "ort":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local v5    # "d0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "d1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v7    # "d2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "det":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROTATION_MATRIX_DIMENSIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, p1, v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 9
    .param p0, "rOuter"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1533
    .local p1, "rInner":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method public static applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 14
    .param p0, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 1259
    .local p1, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 1260
    .local v0, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 1261
    .local v1, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 1263
    .local v2, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 1264
    .local v3, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    neg-double v4, v4

    .line 1266
    .local v4, "m0":D
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v8

    invoke-interface {v2, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v9

    invoke-interface {v1, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v8

    invoke-interface {v3, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v10

    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v11

    invoke-interface {v2, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v10

    invoke-interface {v3, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v11

    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v12

    invoke-interface {v0, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v11

    invoke-interface {v3, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v6, v7, v9, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v6
.end method

.method public static applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 9
    .param p0, "r1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1394
    .local p1, "rInner":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method public static applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 12
    .param p0, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 1162
    .local p1, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 1163
    .local v0, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 1164
    .local v1, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 1166
    .local v2, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 1168
    .local v3, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v5

    invoke-interface {v0, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v6

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v7

    invoke-interface {v1, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v7

    invoke-interface {v1, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v8

    invoke-interface {v0, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v9

    invoke-interface {v2, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v8

    invoke-interface {v3, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v8

    invoke-interface {v2, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v9

    invoke-interface {v1, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v10

    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v9

    invoke-interface {v3, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v4, v5, v7, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v4
.end method

.method private buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)[TT;"
        }
    .end annotation

    .line 1020
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "a0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 1021
    .local v0, "array":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1022
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1023
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 1024
    return-object v0
.end method

.method private composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1320
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method private composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 9
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1375
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method private composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1453
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method private composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 9
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1512
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ0()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ1()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ2()D

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getQ3()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1660
    .local p0, "r1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->getAngle()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method private mat2quat([[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;)[TT;"
        }
    .end annotation

    .line 393
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "ort":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/RealFieldElement;

    .line 406
    .local v1, "quat":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    aget-object v2, p1, v0

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v4, p1, v3

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v4, 0x2

    aget-object v5, p1, v4

    aget-object v5, v5, v4

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 407
    .local v2, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    const-wide v7, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v5, v5, v7

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x3

    if-lez v5, :cond_0

    .line 409
    invoke-interface {v2, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v1, v0

    .line 410
    aget-object v5, v1, v0

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 411
    .local v5, "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v7, p1, v3

    aget-object v7, v7, v4

    aget-object v8, p1, v4

    aget-object v8, v8, v3

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v1, v3

    .line 412
    aget-object v7, p1, v4

    aget-object v7, v7, v0

    aget-object v8, p1, v0

    aget-object v8, v8, v4

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v1, v4

    .line 413
    aget-object v4, p1, v0

    aget-object v4, v4, v3

    aget-object v3, p1, v3

    aget-object v0, v3, v0

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v6

    .line 414
    .end local v5    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    goto/16 :goto_0

    .line 415
    :cond_0
    aget-object v5, p1, v0

    aget-object v5, v5, v0

    aget-object v15, p1, v3

    aget-object v15, v15, v3

    invoke-interface {v5, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v15, p1, v4

    aget-object v15, v15, v4

    invoke-interface {v5, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 416
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v15

    cmpl-double v5, v15, v7

    if-lez v5, :cond_1

    .line 418
    invoke-interface {v2, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v1, v3

    .line 419
    aget-object v5, v1, v3

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 420
    .restart local v5    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v7, p1, v3

    aget-object v7, v7, v4

    aget-object v8, p1, v4

    aget-object v8, v8, v3

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v1, v0

    .line 421
    aget-object v7, p1, v0

    aget-object v7, v7, v3

    aget-object v3, p1, v3

    aget-object v3, v3, v0

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v4

    .line 422
    aget-object v3, p1, v0

    aget-object v3, v3, v4

    aget-object v4, p1, v4

    aget-object v0, v4, v0

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v6

    .line 423
    .end local v5    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    goto/16 :goto_0

    .line 424
    :cond_1
    aget-object v5, p1, v3

    aget-object v5, v5, v3

    aget-object v15, p1, v0

    aget-object v15, v15, v0

    invoke-interface {v5, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v15, p1, v4

    aget-object v15, v15, v4

    invoke-interface {v5, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 425
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v15

    cmpl-double v5, v15, v7

    if-lez v5, :cond_2

    .line 427
    invoke-interface {v2, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v1, v4

    .line 428
    aget-object v5, v1, v4

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 429
    .restart local v5    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v7, p1, v4

    aget-object v7, v7, v0

    aget-object v8, p1, v0

    aget-object v8, v8, v4

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v1, v0

    .line 430
    aget-object v7, p1, v0

    aget-object v7, v7, v3

    aget-object v8, p1, v3

    aget-object v0, v8, v0

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v3

    .line 431
    aget-object v0, p1, v4

    aget-object v0, v0, v3

    aget-object v3, p1, v3

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v6

    .line 432
    .end local v5    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    goto :goto_0

    .line 434
    :cond_2
    aget-object v5, p1, v4

    aget-object v5, v5, v4

    aget-object v7, p1, v0

    aget-object v7, v7, v0

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, p1, v3

    aget-object v7, v7, v3

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 435
    invoke-interface {v2, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v1, v6

    .line 436
    aget-object v5, v1, v6

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 437
    .restart local v5    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v6, p1, v0

    aget-object v6, v6, v3

    aget-object v7, p1, v3

    aget-object v7, v7, v0

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v1, v0

    .line 438
    aget-object v6, p1, v0

    aget-object v6, v6, v4

    aget-object v7, p1, v4

    aget-object v0, v7, v0

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v3

    .line 439
    aget-object v0, p1, v4

    aget-object v0, v0, v3

    aget-object v3, p1, v3

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v1, v4

    .line 444
    .end local v5    # "inv":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_0
    return-object v1
.end method

.method private orthogonalizeMatrix([[Lorg/apache/commons/math3/RealFieldElement;D)[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 47
    .param p2, "threshold"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;D)[[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    .line 1553
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "m":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v1, v1, v0

    .line 1554
    .local v1, "x00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 1555
    .local v2, "x01":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v4, p1, v0

    const/4 v5, 0x2

    aget-object v4, v4, v5

    .line 1556
    .local v4, "x02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v6, p1, v3

    aget-object v6, v6, v0

    .line 1557
    .local v6, "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v7, p1, v3

    aget-object v7, v7, v3

    .line 1558
    .local v7, "x11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v8, p1, v3

    aget-object v8, v8, v5

    .line 1559
    .local v8, "x12":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v9, p1, v5

    aget-object v9, v9, v0

    .line 1560
    .local v9, "x20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v10, p1, v5

    aget-object v10, v10, v3

    .line 1561
    .local v10, "x21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v11, p1, v5

    aget-object v11, v11, v5

    .line 1562
    .local v11, "x22":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/16 v12, 0x0

    .line 1565
    .local v12, "fn":D
    aget-object v14, p1, v0

    aget-object v14, v14, v0

    invoke-interface {v14}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v14

    const/4 v15, 0x3

    invoke-static {v14, v15, v15}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 1568
    .local v14, "o":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v15, 0x0

    .line 1569
    .local v15, "i":I
    :goto_0
    add-int/2addr v15, v3

    move/from16 v16, v0

    const/16 v0, 0xb

    if-ge v15, v0, :cond_1

    .line 1572
    aget-object v0, p1, v16

    aget-object v0, v0, v16

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v17, p1, v3

    move/from16 v18, v3

    aget-object v3, v17, v16

    invoke-interface {v3, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v3, p1, v5

    aget-object v3, v3, v16

    invoke-interface {v3, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1573
    .local v0, "mx00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v3, p1, v16

    aget-object v3, v3, v18

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v17, p1, v18

    move/from16 v19, v5

    aget-object v5, v17, v18

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, p1, v19

    aget-object v5, v5, v18

    invoke-interface {v5, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 1574
    .local v3, "mx10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v5, p1, v16

    aget-object v5, v5, v19

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v17, p1, v18

    move-wide/from16 v20, v12

    .end local v12    # "fn":D
    .local v20, "fn":D
    aget-object v12, v17, v19

    invoke-interface {v12, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v5, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v12, p1, v19

    aget-object v12, v12, v19

    invoke-interface {v12, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v5, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 1575
    .local v5, "mx20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v12, p1, v16

    aget-object v12, v12, v16

    invoke-interface {v12, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v13, p1, v18

    aget-object v13, v13, v16

    invoke-interface {v13, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v13, p1, v19

    aget-object v13, v13, v16

    invoke-interface {v13, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 1576
    .local v12, "mx01":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v13, p1, v16

    aget-object v13, v13, v18

    invoke-interface {v13, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v17, p1, v18

    move-object/from16 v22, v14

    .end local v14    # "o":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local v22, "o":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    aget-object v14, v17, v18

    invoke-interface {v14, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v14, p1, v19

    aget-object v14, v14, v18

    invoke-interface {v14, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 1577
    .local v13, "mx11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v14, p1, v16

    aget-object v14, v14, v19

    invoke-interface {v14, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v17, p1, v18

    move/from16 v23, v15

    .end local v15    # "i":I
    .local v23, "i":I
    aget-object v15, v17, v19

    invoke-interface {v15, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v15, p1, v19

    aget-object v15, v15, v19

    invoke-interface {v15, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 1578
    .local v14, "mx21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v15, p1, v16

    aget-object v15, v15, v16

    invoke-interface {v15, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v17, p1, v18

    move-object/from16 v24, v10

    .end local v10    # "x21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v24, "x21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v10, v17, v16

    invoke-interface {v10, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v15, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v15, p1, v19

    aget-object v15, v15, v16

    invoke-interface {v15, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 1579
    .local v10, "mx02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v15, p1, v16

    aget-object v15, v15, v18

    invoke-interface {v15, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v17, p1, v18

    move-object/from16 v25, v9

    .end local v9    # "x20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v25, "x20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v9, v17, v18

    invoke-interface {v9, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v15, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v15, p1, v19

    aget-object v15, v15, v18

    invoke-interface {v15, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v9, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 1580
    .local v9, "mx12":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v15, p1, v16

    aget-object v15, v15, v19

    invoke-interface {v15, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v17, p1, v18

    move-object/from16 v26, v7

    .end local v7    # "x11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v26, "x11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v7, v17, v19

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v15, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v15, p1, v19

    aget-object v15, v15, v19

    invoke-interface {v15, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 1583
    .local v7, "mx22":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v15, v22, v16

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v27, v15

    move-object/from16 v15, v17

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v17, v11

    .end local v11    # "x22":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v17, "x22":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v15, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v11, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v15, p1, v16

    aget-object v15, v15, v16

    invoke-interface {v11, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v28, v5

    move-object v15, v6

    .end local v5    # "mx20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v15, "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v28, "mx20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-interface {v11, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v27, v16

    .line 1584
    aget-object v11, v22, v16

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v5, v27

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v6, p1, v16

    aget-object v6, v6, v18

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    move-object v6, v14

    move-object/from16 v27, v15

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    .end local v14    # "mx21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v6, "mx21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v27, "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v11, v18

    .line 1585
    aget-object v5, v22, v16

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v14, p1, v16

    aget-object v14, v14, v19

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    invoke-interface {v11, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v5, v19

    .line 1586
    aget-object v5, v22, v18

    move-object/from16 v15, v27

    .end local v27    # "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v15    # "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v15, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v14, v26

    move-object/from16 v26, v1

    .end local v1    # "x00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v14, "x11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v26, "x00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v14, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v11, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v2

    move-object/from16 v11, v28

    .end local v2    # "x01":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v28    # "mx20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v11, "mx20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v27, "x01":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v8, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v2, p1, v18

    aget-object v2, v2, v16

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    move-object v2, v4

    move-object/from16 v28, v5

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .end local v4    # "x02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "x02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v15, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v28, v16

    .line 1587
    aget-object v1, v22, v18

    invoke-interface {v15, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, p1, v18

    aget-object v5, v5, v18

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v28, v1

    move-object v5, v2

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .end local v2    # "x02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "x02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v28, v18

    .line 1588
    aget-object v1, v22, v18

    invoke-interface {v15, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, p1, v18

    aget-object v4, v4, v19

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v28, v5

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .end local v5    # "x02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v28, "x02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v8, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v1, v19

    .line 1589
    aget-object v1, v22, v19

    move-object/from16 v2, v25

    .end local v25    # "x20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "x20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v5, v24

    move-object/from16 v24, v0

    .end local v0    # "mx00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "x21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v24, "mx00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v4, v17

    move-object/from16 v17, v1

    .end local v17    # "x22":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v4, "x22":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v1, p1, v19

    aget-object v1, v1, v16

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v25, v14

    move-object v1, v15

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    .end local v14    # "x11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v1, "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v25, "x11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v17, v16

    .line 1590
    aget-object v0, v22, v19

    invoke-interface {v2, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v15, p1, v19

    aget-object v15, v15, v18

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v17, v0

    move-object v15, v1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .end local v1    # "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v15    # "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v14, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v5, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v17, v18

    .line 1591
    aget-object v0, v22, v19

    invoke-interface {v2, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v14, p1, v19

    aget-object v14, v14, v19

    invoke-interface {v1, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v17, v2

    move-object v14, v3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .end local v2    # "x20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "mx10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v14, "mx10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v17, "x20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v19

    .line 1594
    aget-object v0, v22, v16

    aget-object v0, v0, v16

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    aget-object v2, p1, v16

    aget-object v2, v2, v16

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 1595
    .local v0, "corr00":D
    aget-object v2, v22, v16

    aget-object v2, v2, v18

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    aget-object v29, p1, v16

    aget-object v29, v29, v18

    invoke-interface/range {v29 .. v29}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v29

    sub-double v2, v2, v29

    .line 1596
    .local v2, "corr01":D
    aget-object v29, v22, v16

    aget-object v29, v29, v19

    invoke-interface/range {v29 .. v29}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v29

    aget-object v31, p1, v16

    aget-object v31, v31, v19

    invoke-interface/range {v31 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v31

    sub-double v29, v29, v31

    .line 1597
    .local v29, "corr02":D
    aget-object v31, v22, v18

    aget-object v31, v31, v16

    invoke-interface/range {v31 .. v31}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v31

    aget-object v33, p1, v18

    aget-object v33, v33, v16

    invoke-interface/range {v33 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v33

    sub-double v31, v31, v33

    .line 1598
    .local v31, "corr10":D
    aget-object v33, v22, v18

    aget-object v33, v33, v18

    invoke-interface/range {v33 .. v33}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v33

    aget-object v35, p1, v18

    aget-object v35, v35, v18

    invoke-interface/range {v35 .. v35}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v35

    sub-double v33, v33, v35

    .line 1599
    .local v33, "corr11":D
    aget-object v35, v22, v18

    aget-object v35, v35, v19

    invoke-interface/range {v35 .. v35}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v35

    aget-object v37, p1, v18

    aget-object v37, v37, v19

    invoke-interface/range {v37 .. v37}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v37

    sub-double v35, v35, v37

    .line 1600
    .local v35, "corr12":D
    aget-object v37, v22, v19

    aget-object v37, v37, v16

    invoke-interface/range {v37 .. v37}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v37

    aget-object v39, p1, v19

    aget-object v39, v39, v16

    invoke-interface/range {v39 .. v39}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v39

    sub-double v37, v37, v39

    .line 1601
    .local v37, "corr20":D
    aget-object v39, v22, v19

    aget-object v39, v39, v18

    invoke-interface/range {v39 .. v39}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v39

    aget-object v41, p1, v19

    aget-object v41, v41, v18

    invoke-interface/range {v41 .. v41}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v41

    sub-double v39, v39, v41

    .line 1602
    .local v39, "corr21":D
    aget-object v41, v22, v19

    aget-object v41, v41, v19

    invoke-interface/range {v41 .. v41}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v41

    aget-object v43, p1, v19

    aget-object v43, v43, v19

    invoke-interface/range {v43 .. v43}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v43

    sub-double v41, v41, v43

    .line 1605
    .local v41, "corr22":D
    mul-double v43, v0, v0

    mul-double v45, v2, v2

    add-double v43, v43, v45

    mul-double v45, v29, v29

    add-double v43, v43, v45

    mul-double v45, v31, v31

    add-double v43, v43, v45

    mul-double v45, v33, v33

    add-double v43, v43, v45

    mul-double v45, v35, v35

    add-double v43, v43, v45

    mul-double v45, v37, v37

    add-double v43, v43, v45

    mul-double v45, v39, v39

    add-double v43, v43, v45

    mul-double v45, v41, v41

    add-double v43, v43, v45

    .line 1610
    .local v43, "fn1":D
    sub-double v45, v43, v20

    invoke-static/range {v45 .. v46}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v45

    cmpg-double v45, v45, p2

    if-gtz v45, :cond_0

    .line 1611
    return-object v22

    .line 1615
    :cond_0
    aget-object v45, v22, v16

    aget-object v26, v45, v16

    .line 1616
    aget-object v45, v22, v16

    aget-object v27, v45, v18

    .line 1617
    aget-object v45, v22, v16

    aget-object v28, v45, v19

    .line 1618
    aget-object v45, v22, v18

    aget-object v15, v45, v16

    .line 1619
    aget-object v45, v22, v18

    aget-object v25, v45, v18

    .line 1620
    aget-object v45, v22, v18

    aget-object v8, v45, v19

    .line 1621
    aget-object v45, v22, v19

    aget-object v17, v45, v16

    .line 1622
    aget-object v45, v22, v19

    aget-object v5, v45, v18

    .line 1623
    aget-object v45, v22, v19

    aget-object v4, v45, v19

    .line 1624
    move-wide/from16 v12, v43

    .line 1626
    .end local v0    # "corr00":D
    .end local v2    # "corr01":D
    .end local v6    # "mx21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v7    # "mx22":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "mx12":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v10    # "mx02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "mx20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "mx11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v14    # "mx10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v20    # "fn":D
    .end local v24    # "mx00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v29    # "corr02":D
    .end local v31    # "corr10":D
    .end local v33    # "corr11":D
    .end local v35    # "corr12":D
    .end local v37    # "corr20":D
    .end local v39    # "corr21":D
    .end local v41    # "corr22":D
    .local v12, "fn":D
    move-object v11, v4

    move-object v10, v5

    move-object v6, v15

    move/from16 v0, v16

    move-object/from16 v9, v17

    move/from16 v3, v18

    move/from16 v5, v19

    move-object/from16 v14, v22

    move/from16 v15, v23

    move-object/from16 v7, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v4, v28

    goto/16 :goto_0

    .line 1629
    .end local v5    # "x21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v17    # "x20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v22    # "o":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local v23    # "i":I
    .end local v25    # "x11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v26    # "x00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v27    # "x01":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v28    # "x02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v43    # "fn1":D
    .local v1, "x00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "x01":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v4, "x02":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v6, "x10":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v7, "x11":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v9, "x20":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v10, "x21":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v11, "x22":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v14, "o":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local v15, "i":I
    :cond_1
    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move/from16 v23, v15

    .end local v1    # "x00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v2    # "x01":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "i":I
    .restart local v23    # "i":I
    .restart local v26    # "x00":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v27    # "x01":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_ORTHOGONOLIZE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    add-int/lit8 v2, v23, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 1034
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 1035
    .local v0, "zero":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p5, p6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v1
.end method


# virtual methods
.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1412
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    return-object v0
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1471
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    return-object v0
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 1180
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 1181
    .local v0, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 1182
    .local v1, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 1184
    .local v2, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 1185
    .local v3, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 1187
    .local v4, "m0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v5, v6, v8, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v5
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 16
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 1199
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 1200
    .local v1, "x":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 1201
    .local v3, "y":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 1203
    .local v5, "z":D
    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 1204
    .local v7, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 1206
    .local v8, "m0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-interface {v8, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v8, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v9, v10, v12, v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v9
.end method

.method public applyInverseTo([D[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 14
    .param p1, "in"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[TT;)V"
        }
    .end annotation

    .line 1238
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p2, "out":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    .line 1239
    .local v1, "x":D
    const/4 v3, 0x1

    aget-wide v4, p1, v3

    .line 1240
    .local v4, "y":D
    const/4 v6, 0x2

    aget-wide v7, p1, v6

    .line 1242
    .local v7, "z":D
    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 1243
    .local v9, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 1245
    .local v10, "m0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, p2, v0

    .line 1246
    invoke-interface {v10, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, p2, v3

    .line 1247
    invoke-interface {v10, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v3, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, p2, v6

    .line 1249
    return-void
.end method

.method public applyInverseTo([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;)V"
        }
    .end annotation

    .line 1219
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "in":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p2, "out":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 1220
    .local v1, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v2, 0x1

    aget-object v3, p1, v2

    .line 1221
    .local v3, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v4, 0x2

    aget-object v5, p1, v4

    .line 1223
    .local v5, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 1224
    .local v6, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 1226
    .local v7, "m0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, p2, v0

    .line 1227
    invoke-interface {v3, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, p2, v2

    .line 1228
    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, p2, v4

    .line 1230
    return-void
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1282
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1337
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 1087
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 1088
    .local v0, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 1089
    .local v1, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 1091
    .local v2, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 1093
    .local v3, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v4, v5, v7, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v4
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 16
    .param p1, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 1105
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 1106
    .local v1, "x":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 1107
    .local v3, "y":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 1109
    .local v5, "z":D
    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 1111
    .local v7, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v8, v9, v11, v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v8
.end method

.method public applyTo([D[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 14
    .param p1, "in"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[TT;)V"
        }
    .end annotation

    .line 1142
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p2, "out":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    .line 1143
    .local v1, "x":D
    const/4 v3, 0x1

    aget-wide v4, p1, v3

    .line 1144
    .local v4, "y":D
    const/4 v6, 0x2

    aget-wide v7, p1, v6

    .line 1146
    .local v7, "z":D
    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 1148
    .local v9, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, p2, v0

    .line 1149
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, p2, v3

    .line 1150
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, p2, v6

    .line 1152
    return-void
.end method

.method public applyTo([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;)V"
        }
    .end annotation

    .line 1124
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "in":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p2, "out":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 1125
    .local v1, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v2, 0x1

    aget-object v3, p1, v2

    .line 1126
    .local v3, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v4, 0x2

    aget-object v5, p1, v4

    .line 1128
    .local v5, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 1130
    .local v6, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, p2, v0

    .line 1131
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, p2, v2

    .line 1132
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, p2, v4

    .line 1134
    return-void
.end method

.method public compose(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1310
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1365
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1442
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    .local p1, "r":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->revert()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 1
    .param p1, "r"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 1501
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->revert()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAngle()Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 531
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide v2, -0x4046666666666666L    # -0.1

    cmpg-double v0, v0, v2

    const/4 v1, 0x2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    .line 534
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0

    .line 536
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0

    .line 532
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;",
            ")[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 578
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 15
    .param p1, "order"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
    .param p2, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .line 621
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    move-object/from16 v7, p1

    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide v10, 0x3feffffffff24190L    # 0.9999999999

    const-wide v12, -0x40100000000dbe70L    # -0.9999999999

    move-object/from16 v14, p2

    if-ne v14, v0, :cond_17

    .line 622
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v0, :cond_1

    .line 629
    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 630
    .local v8, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v5, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 631
    .local v1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_0

    .line 634
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 632
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 638
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_1
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_3

    .line 645
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 646
    .restart local v8    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v3, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 647
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_2

    .line 650
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 648
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 654
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_3
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_5

    .line 661
    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 662
    .restart local v8    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 663
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_4

    .line 666
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 664
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 670
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_5
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_7

    .line 677
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 678
    .restart local v8    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 679
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_6

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_6

    .line 682
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 680
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 686
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_7
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_9

    .line 693
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 694
    .restart local v8    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 695
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_8

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_8

    .line 698
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 696
    :cond_8
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 702
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_9
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_b

    .line 709
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v8

    .line 710
    .restart local v8    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 711
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_a

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_a

    .line 714
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 712
    :cond_a
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 718
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v8    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_b
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_d

    .line 725
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v9

    .line 726
    .local v9, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 727
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_c

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_c

    .line 730
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 728
    :cond_c
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 734
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v9    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_d
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_f

    .line 741
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v9

    .line 742
    .restart local v9    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 743
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_e

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_e

    .line 746
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 744
    :cond_e
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 750
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v9    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_f
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_11

    .line 757
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v9

    .line 758
    .restart local v9    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 759
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_10

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_10

    .line 762
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 760
    :cond_10
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 766
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v9    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_11
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_13

    .line 773
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v9

    .line 774
    .restart local v9    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 775
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_12

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_12

    .line 778
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 776
    :cond_12
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 782
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v9    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_13
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_15

    .line 789
    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v9

    .line 790
    .restart local v9    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 791
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_14

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_14

    .line 794
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 792
    :cond_14
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 805
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v9    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_15
    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v9

    .line 806
    .restart local v9    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->vector(DDD)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 807
    .restart local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_16

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-gtz v2, :cond_16

    .line 810
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    return-object v2

    .line 808
    :cond_16
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v2, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v2

    .line 816
    .end local v1    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v9    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_17
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_19

    .line 823
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 824
    .local v1, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 825
    .local v2, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_18

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_18

    .line 828
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 826
    :cond_18
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 832
    .end local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_19
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_1b

    .line 839
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 840
    .restart local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 841
    .restart local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_1a

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_1a

    .line 844
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 842
    :cond_1a
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 848
    .end local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_1b
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_1d

    .line 855
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 856
    .restart local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 857
    .restart local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_1c

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_1c

    .line 860
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 858
    :cond_1c
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 864
    .end local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_1d
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_1f

    .line 871
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 872
    .restart local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 873
    .restart local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_1e

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_1e

    .line 876
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 874
    :cond_1e
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 880
    .end local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_1f
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_21

    .line 887
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 888
    .restart local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 889
    .restart local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_20

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_20

    .line 892
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 890
    :cond_20
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 896
    .end local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_21
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_23

    .line 903
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 904
    .restart local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 905
    .restart local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_22

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_22

    .line 908
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 906
    :cond_22
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 912
    .end local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_23
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_25

    .line 919
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 920
    .restart local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 921
    .restart local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_24

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_24

    .line 924
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 922
    :cond_24
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 928
    .end local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_25
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_27

    .line 935
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 936
    .restart local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 937
    .restart local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_26

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_26

    .line 940
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 938
    :cond_26
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 944
    .end local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_27
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_29

    .line 951
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 952
    .restart local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 953
    .restart local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_28

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_28

    .line 956
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 954
    :cond_28
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 960
    .end local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_29
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_2b

    .line 967
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 968
    .restart local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 969
    .restart local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_2a

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_2a

    .line 972
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 970
    :cond_2a
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 976
    .end local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_2b
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne v7, v1, :cond_2d

    .line 983
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 984
    .restart local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 985
    .restart local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_2c

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_2c

    .line 988
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 986
    :cond_2c
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3

    .line 999
    .end local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_2d
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    .line 1000
    .restart local v1    # "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 1001
    .restart local v2    # "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_2e

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v10

    if-gtz v3, :cond_2e

    .line 1004
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->buildArray(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    return-object v3

    .line 1002
    :cond_2e
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {v3, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw v3
.end method

.method public getAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 494
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    return-object v0
.end method

.method public getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 8
    .param p1, "convention"    # Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 509
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 510
    .local v0, "squaredSine":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 511
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    .line 512
    .local v1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, v3, :cond_0

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v2

    .line 516
    .end local v1    # "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    :cond_1
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, v1, :cond_2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_2
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 517
    .local v1, "sgn":D
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v3, v5, v3

    if-gez v3, :cond_3

    .line 518
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 519
    .local v3, "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v4

    .line 521
    .end local v3    # "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 522
    .restart local v3    # "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v4
.end method

.method public getMatrix()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .line 1044
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 1045
    .local v1, "q0q0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 1046
    .local v2, "q0q1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 1047
    .local v3, "q0q2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 1048
    .local v4, "q0q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 1049
    .local v5, "q1q1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 1050
    .local v6, "q1q2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 1051
    .local v7, "q1q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 1052
    .local v8, "q2q2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 1053
    .local v9, "q2q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 1056
    .local v10, "q3q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v11, v12, v12}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 1058
    .local v11, "m":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v12, 0x0

    aget-object v13, v11, v12

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v15, 0x2

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    move/from16 v16, v12

    move-object/from16 v17, v13

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-interface {v14, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v14, v17, v16

    .line 1059
    const/4 v14, 0x1

    aget-object v17, v11, v14

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v14

    move-object/from16 v14, v18

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v14, v17, v16

    .line 1060
    aget-object v14, v11, v15

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v12, v14, v16

    .line 1062
    aget-object v12, v11, v16

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v12, v19

    .line 1063
    aget-object v12, v11, v19

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    move-object v14, v4

    move-object/from16 v17, v5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .end local v4    # "q0q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "q1q1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v14, "q0q3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v17, "q1q1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v13, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v12, v19

    .line 1064
    aget-object v4, v11, v15

    invoke-interface {v9, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v19

    .line 1066
    aget-object v4, v11, v16

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v15

    .line 1067
    aget-object v4, v11, v19

    invoke-interface {v9, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v15

    .line 1068
    aget-object v4, v11, v15

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-interface {v5, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v15

    .line 1070
    return-object v11
.end method

.method public getQ0()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 463
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getQ1()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 470
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getQ2()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 477
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getQ3()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 484
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public revert()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<",
            "TT;>;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Z)V

    return-object v0
.end method

.method public toRotation()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 10

    .line 1078
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldRotation;->q3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v0
.end method
