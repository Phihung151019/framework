.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
.super Ljava/lang/Object;
.source "Plane.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private originOffset:D

.field private final tolerance:D

.field private u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V
    .locals 2
    .param p1, "plane"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 146
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 147
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 148
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 149
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 150
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .param p1, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 2
    .param p1, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 67
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 69
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setFrame()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 2
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 82
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    .line 83
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setFrame()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 6
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "p3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "p1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local p2    # "p2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .end local p3    # "p3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v1, "p1":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v2, "p2":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .local v3, "p3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 2
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "p3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 99
    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-virtual {p3, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 100
    return-void
.end method

.method public static intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 46
    .param p0, "plane1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .param p1, "plane2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .param p2, "plane3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 428
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v3

    .line 429
    .local v3, "a1":D
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    .line 430
    .local v5, "b1":D
    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    .line 431
    .local v7, "c1":D
    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 433
    .local v9, "d1":D
    iget-object v11, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    .line 434
    .local v11, "a2":D
    iget-object v13, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v13

    .line 435
    .local v13, "b2":D
    iget-object v15, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v15

    .line 436
    .local v15, "c2":D
    move-wide/from16 v17, v3

    .end local v3    # "a1":D
    .local v17, "a1":D
    iget-wide v3, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 438
    .local v3, "d2":D
    iget-object v0, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v19

    .line 439
    .local v19, "a3":D
    iget-object v0, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v21

    .line 440
    .local v21, "b3":D
    iget-object v0, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v23

    .line 441
    .local v23, "c3":D
    iget-wide v0, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 445
    .local v0, "d3":D
    mul-double v25, v13, v23

    mul-double v27, v21, v15

    move-wide/from16 v29, v0

    .end local v0    # "d3":D
    .local v29, "d3":D
    sub-double v0, v25, v27

    .line 446
    .local v0, "a23":D
    mul-double v25, v15, v19

    mul-double v27, v23, v11

    move-wide/from16 v31, v3

    .end local v3    # "d2":D
    .local v31, "d2":D
    sub-double v2, v25, v27

    .line 447
    .local v2, "b23":D
    mul-double v25, v11, v21

    mul-double v27, v19, v13

    move-wide/from16 v33, v5

    .end local v5    # "b1":D
    .local v33, "b1":D
    sub-double v4, v25, v27

    .line 448
    .local v4, "c23":D
    mul-double v25, v17, v0

    mul-double v27, v33, v2

    add-double v25, v25, v27

    mul-double v27, v7, v4

    add-double v25, v25, v27

    .line 449
    .local v25, "determinant":D
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v27

    const-wide v35, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v6, v27, v35

    if-gez v6, :cond_0

    .line 450
    const/4 v6, 0x0

    return-object v6

    .line 453
    :cond_0
    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    div-double v27, v27, v25

    .line 454
    .local v27, "r":D
    new-instance v35, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-wide/from16 v42, v7

    .end local v7    # "c1":D
    .local v42, "c1":D
    neg-double v6, v0

    mul-double/2addr v6, v9

    mul-double v36, v42, v21

    mul-double v38, v23, v33

    sub-double v36, v36, v38

    mul-double v36, v36, v31

    sub-double v6, v6, v36

    mul-double v36, v15, v33

    mul-double v38, v42, v13

    sub-double v36, v36, v38

    mul-double v36, v36, v29

    sub-double v6, v6, v36

    mul-double v36, v6, v27

    neg-double v6, v2

    mul-double/2addr v6, v9

    mul-double v38, v23, v17

    mul-double v40, v42, v19

    sub-double v38, v38, v40

    mul-double v38, v38, v31

    sub-double v6, v6, v38

    mul-double v38, v42, v11

    mul-double v40, v15, v17

    sub-double v38, v38, v40

    mul-double v38, v38, v29

    sub-double v6, v6, v38

    mul-double v38, v6, v27

    neg-double v6, v4

    mul-double/2addr v6, v9

    mul-double v40, v33, v19

    mul-double v44, v21, v17

    sub-double v40, v40, v44

    mul-double v40, v40, v31

    sub-double v6, v6, v40

    mul-double v40, v13, v17

    mul-double v44, v33, v11

    sub-double v40, v40, v44

    mul-double v40, v40, v29

    sub-double v6, v6, v40

    mul-double v40, v6, v27

    invoke-direct/range {v35 .. v41}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v35
.end method

.method private setFrame()V
    .locals 4

    .line 203
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v1, v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 204
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 205
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 206
    return-void
.end method

.method private setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 5
    .param p1, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    .line 194
    .local v0, "norm":D
    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    .line 197
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v0

    invoke-direct {v2, v3, v4, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 198
    return-void

    .line 195
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method public contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z
    .locals 4
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 481
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 1

    .line 160
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v0

    return-object v0
.end method

.method public getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 515
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 503
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)D
    .locals 4
    .param p1, "plane"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 495
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v2, v2

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    :goto_0
    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getPointAt(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 10
    .param p1, "inPlane"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "offset"    # D

    .line 336
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    sub-double v7, p2, v7

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public getTolerance()D
    .locals 2

    .line 265
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    return-wide v0
.end method

.method public getU()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getV()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .locals 6
    .param p1, "other"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 411
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 412
    .local v0, "direction":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 413
    const/4 v1, 0x0

    return-object v1

    .line 415
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 416
    .local v1, "point":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-object v2
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 9
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    .line 395
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getDirection()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 396
    .local v6, "direction":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v7

    .line 397
    .local v7, "dot":D
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 398
    const/4 v0, 0x0

    return-object v0

    .line 400
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 401
    .local v3, "point":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    add-double/2addr v0, v4

    neg-double v0, v0

    div-double v4, v0, v7

    .line 402
    .local v4, "k":D
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public isSimilarTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Z
    .locals 6
    .param p1, "plane"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 347
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    .line 348
    .local v0, "angle":D
    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    const-wide v2, 0x400921fb5440bd7cL    # 3.141592653489793

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .line 258
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V
    .locals 2
    .param p1, "original"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 181
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 182
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 183
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 184
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 185
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 186
    return-void
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .param p1, "p"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "normal"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 171
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setFrame()V

    .line 172
    return-void
.end method

.method public revertSelf()V
    .locals 3

    .line 280
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 281
    .local v0, "tmp":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 282
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 283
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 284
    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v1, v1

    iput-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 285
    return-void
.end method

.method public rotate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 6
    .param p1, "center"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "rotation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    .line 360
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 361
    .local v0, "delta":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 365
    .local v1, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 366
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 368
    return-object v1
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)Z"
        }
    .end annotation

    .line 524
    .local p1, "other":Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 324
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 325
    .local v0, "p2D":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v8, v8

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 302
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 313
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 314
    .local v0, "p3D":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 293
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public translate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 5
    .param p1, "translation"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 379
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 382
    .local v0, "plane":Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 383
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 385
    return-object v0
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;
    .locals 4

    .line 465
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 3

    .line 473
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    move-result-object v0

    return-object v0
.end method
