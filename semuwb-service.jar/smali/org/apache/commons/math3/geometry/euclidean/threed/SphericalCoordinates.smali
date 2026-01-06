.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;
.super Ljava/lang/Object;
.source "SphericalCoordinates.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299eL


# instance fields
.field private jacobian:[[D

.field private final phi:D

.field private phiHessian:[[D

.field private final r:D

.field private rHessian:[[D

.field private final theta:D

.field private thetaHessian:[[D

.field private final v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(DDD)V
    .locals 22
    .param p1, "r"    # D
    .param p3, "theta"    # D
    .param p5, "phi"    # D

    .line 101
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v3

    .line 104
    .local v3, "cosTheta":D
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    .line 105
    .local v5, "sinTheta":D
    invoke-static/range {p5 .. p6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    .line 106
    .local v7, "cosPhi":D
    invoke-static/range {p5 .. p6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    .line 109
    .local v9, "sinPhi":D
    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    .line 110
    move-wide/from16 v11, p3

    iput-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    .line 111
    move-wide/from16 v13, p5

    iput-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    .line 114
    new-instance v15, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v16, v1, v3

    mul-double v16, v16, v9

    mul-double v18, v1, v5

    mul-double v18, v18, v9

    mul-double v20, v1, v7

    invoke-direct/range {v15 .. v21}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    iput-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 4
    .param p1, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 90
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    .line 91
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getAlpha()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    .line 92
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    .line 94
    return-void
.end method

.method private computeHessians()V
    .locals 55

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    if-nez v1, :cond_0

    .line 282
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 283
    .local v1, "x":D
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 284
    .local v3, "y":D
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 285
    .local v5, "z":D
    mul-double v7, v1, v1

    .line 286
    .local v7, "x2":D
    mul-double v9, v3, v3

    .line 287
    .local v9, "y2":D
    mul-double v11, v5, v5

    .line 288
    .local v11, "z2":D
    add-double v13, v7, v9

    .line 289
    .local v13, "rho2":D
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    .line 290
    .local v15, "rho":D
    add-double v17, v13, v11

    .line 291
    .local v17, "r2":D
    move-wide/from16 v19, v7

    .end local v7    # "x2":D
    .local v19, "x2":D
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v7, v1, v7

    .line 292
    .local v7, "xOr":D
    move-wide/from16 v21, v7

    .end local v7    # "xOr":D
    .local v21, "xOr":D
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v7, v3, v7

    .line 293
    .local v7, "yOr":D
    move-wide/from16 v23, v7

    .end local v7    # "yOr":D
    .local v23, "yOr":D
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v7, v5, v7

    .line 294
    .local v7, "zOr":D
    div-double v25, v1, v13

    .line 295
    .local v25, "xOrho2":D
    div-double v27, v3, v13

    .line 296
    .local v27, "yOrho2":D
    div-double v29, v21, v17

    .line 297
    .local v29, "xOr3":D
    div-double v31, v23, v17

    .line 298
    .local v31, "yOr3":D
    div-double v33, v7, v17

    .line 301
    .local v33, "zOr3":D
    move-wide/from16 v35, v7

    .end local v7    # "zOr":D
    .local v35, "zOr":D
    const/4 v7, 0x2

    new-array v8, v7, [I

    const/16 v37, 0x1

    const/16 v38, 0x3

    aput v38, v8, v37

    const/16 v39, 0x0

    aput v38, v8, v39

    move/from16 v40, v7

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    .line 302
    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v7, v7, v39

    mul-double v41, v3, v31

    mul-double v43, v5, v33

    add-double v41, v41, v43

    aput-wide v41, v7, v39

    .line 303
    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v7, v7, v37

    move-object/from16 v41, v7

    neg-double v7, v1

    mul-double v7, v7, v31

    aput-wide v7, v41, v39

    .line 304
    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v7, v7, v40

    move-object/from16 v41, v7

    neg-double v7, v5

    mul-double v7, v7, v29

    aput-wide v7, v41, v39

    .line 305
    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v7, v7, v37

    mul-double v41, v1, v29

    mul-double v43, v5, v33

    add-double v41, v41, v43

    aput-wide v41, v7, v37

    .line 306
    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v7, v7, v40

    move-wide/from16 v41, v5

    .end local v5    # "z":D
    .local v41, "z":D
    neg-double v5, v3

    mul-double v5, v5, v33

    aput-wide v5, v7, v37

    .line 307
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v5, v5, v40

    mul-double v6, v1, v29

    mul-double v43, v3, v31

    add-double v6, v6, v43

    aput-wide v6, v5, v40

    .line 310
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v5, v5, v39

    iget-object v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v6, v6, v37

    aget-wide v6, v6, v39

    aput-wide v6, v5, v37

    .line 311
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v5, v5, v39

    iget-object v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v6, v6, v40

    aget-wide v6, v6, v39

    aput-wide v6, v5, v40

    .line 312
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v5, v5, v37

    iget-object v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v6, v6, v40

    aget-wide v6, v6, v37

    aput-wide v6, v5, v40

    .line 315
    move/from16 v5, v40

    new-array v6, v5, [I

    aput v5, v6, v37

    aput v5, v6, v39

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    iput-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    .line 316
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v5, v5, v39

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v43, v25, v6

    mul-double v43, v43, v27

    aput-wide v43, v5, v39

    .line 317
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v5, v5, v37

    mul-double v43, v27, v27

    mul-double v45, v25, v25

    sub-double v43, v43, v45

    aput-wide v43, v5, v39

    .line 318
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v5, v5, v37

    const-wide/high16 v43, -0x4000000000000000L    # -2.0

    mul-double v43, v43, v25

    mul-double v43, v43, v27

    aput-wide v43, v5, v37

    .line 321
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v5, v5, v39

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v8, v8, v37

    aget-wide v43, v8, v39

    aput-wide v43, v5, v37

    .line 324
    mul-double v43, v15, v17

    .line 325
    .local v43, "rhor2":D
    mul-double v45, v15, v43

    .line 326
    .local v45, "rho2r2":D
    mul-double v47, v43, v17

    .line 327
    .local v47, "rhor4":D
    mul-double v49, v47, v13

    .line 328
    .local v49, "rho3r4":D
    const-wide/high16 v51, 0x4008000000000000L    # 3.0

    mul-double v51, v51, v13

    add-double v51, v51, v11

    .line 329
    .local v51, "r2P2rho2":D
    const/4 v5, 0x2

    new-array v8, v5, [I

    aput v38, v8, v37

    aput v38, v8, v39

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    iput-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    .line 330
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v5, v5, v39

    mul-double v53, v19, v51

    sub-double v53, v45, v53

    mul-double v53, v53, v41

    div-double v53, v53, v49

    aput-wide v53, v5, v39

    .line 331
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v5, v5, v37

    move-wide/from16 v53, v6

    neg-double v6, v1

    mul-double/2addr v6, v3

    mul-double v6, v6, v41

    mul-double v6, v6, v51

    div-double v6, v6, v49

    aput-wide v6, v5, v39

    .line 332
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    const/16 v40, 0x2

    aget-object v5, v5, v40

    sub-double v6, v13, v11

    mul-double/2addr v6, v1

    div-double v6, v6, v47

    aput-wide v6, v5, v39

    .line 333
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v5, v5, v37

    mul-double v6, v9, v51

    sub-double v6, v45, v6

    mul-double v6, v6, v41

    div-double v6, v6, v49

    aput-wide v6, v5, v37

    .line 334
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    const/16 v40, 0x2

    aget-object v5, v5, v40

    sub-double v6, v13, v11

    mul-double/2addr v6, v3

    div-double v6, v6, v47

    aput-wide v6, v5, v37

    .line 335
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v5, v5, v40

    mul-double v6, v15, v53

    mul-double v6, v6, v33

    move-wide/from16 v53, v1

    .end local v1    # "x":D
    .local v53, "x":D
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double/2addr v6, v1

    aput-wide v6, v5, v40

    .line 338
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v1, v1, v39

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v2, v2, v37

    aget-wide v5, v2, v39

    aput-wide v5, v1, v37

    .line 339
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v1, v1, v39

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    const/16 v40, 0x2

    aget-object v2, v2, v40

    aget-wide v5, v2, v39

    aput-wide v5, v1, v40

    .line 340
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v1, v1, v37

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v2, v2, v40

    aget-wide v5, v2, v37

    aput-wide v5, v1, v40

    .line 344
    .end local v3    # "y":D
    .end local v9    # "y2":D
    .end local v11    # "z2":D
    .end local v13    # "rho2":D
    .end local v15    # "rho":D
    .end local v17    # "r2":D
    .end local v19    # "x2":D
    .end local v21    # "xOr":D
    .end local v23    # "yOr":D
    .end local v25    # "xOrho2":D
    .end local v27    # "yOrho2":D
    .end local v29    # "xOr3":D
    .end local v31    # "yOr3":D
    .end local v33    # "zOr3":D
    .end local v35    # "zOr":D
    .end local v41    # "z":D
    .end local v43    # "rhor2":D
    .end local v45    # "rho2r2":D
    .end local v47    # "rhor4":D
    .end local v49    # "rho3r4":D
    .end local v51    # "r2P2rho2":D
    .end local v53    # "x":D
    :cond_0
    return-void
.end method

.method private computeJacobian()V
    .locals 22

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    if-nez v1, :cond_0

    .line 248
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 249
    .local v1, "x":D
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 250
    .local v3, "y":D
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 251
    .local v5, "z":D
    mul-double v7, v1, v1

    mul-double v9, v3, v3

    add-double/2addr v7, v9

    .line 252
    .local v7, "rho2":D
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    .line 253
    .local v9, "rho":D
    mul-double v11, v5, v5

    add-double/2addr v11, v7

    .line 255
    .local v11, "r2":D
    const/4 v13, 0x2

    new-array v14, v13, [I

    const/4 v15, 0x1

    const/16 v16, 0x3

    aput v16, v14, v15

    const/16 v17, 0x0

    aput v16, v14, v17

    move/from16 v16, v13

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[D

    iput-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    .line 258
    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v13, v13, v17

    move-wide/from16 v18, v1

    .end local v1    # "x":D
    .local v18, "x":D
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v1, v18, v1

    aput-wide v1, v13, v17

    .line 259
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v17

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v13, v3, v13

    aput-wide v13, v1, v15

    .line 260
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v17

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v13, v5, v13

    aput-wide v13, v1, v16

    .line 263
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v15

    neg-double v13, v3

    div-double/2addr v13, v7

    aput-wide v13, v1, v17

    .line 264
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v15

    div-double v13, v18, v7

    aput-wide v13, v1, v15

    .line 268
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v16

    mul-double v13, v18, v5

    mul-double v20, v9, v11

    div-double v13, v13, v20

    aput-wide v13, v1, v17

    .line 269
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v16

    mul-double v13, v3, v5

    mul-double v20, v9, v11

    div-double v13, v13, v20

    aput-wide v13, v1, v15

    .line 270
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v1, v1, v16

    neg-double v13, v9

    div-double/2addr v13, v11

    aput-wide v13, v1, v16

    .line 273
    .end local v3    # "y":D
    .end local v5    # "z":D
    .end local v7    # "rho2":D
    .end local v9    # "rho":D
    .end local v11    # "r2":D
    .end local v18    # "x":D
    :cond_0
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .line 351
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;-><init>(DDD)V

    return-object v0
.end method


# virtual methods
.method public getCartesian()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getPhi()D
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    return-wide v0
.end method

.method public getR()D
    .locals 2

    .line 133
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    return-wide v0
.end method

.method public getTheta()D
    .locals 2

    .line 142
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    return-wide v0
.end method

.method public toCartesianGradient([D)[D
    .locals 13
    .param p1, "sGradient"    # [D

    .line 164
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeJacobian()V

    .line 168
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v3, v3, v0

    aget-wide v3, v3, v0

    mul-double/2addr v1, v3

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v0

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    const/4 v4, 0x2

    aget-wide v5, p1, v4

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v0

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    aget-wide v5, p1, v0

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v7, v7, v0

    aget-wide v7, v7, v3

    mul-double/2addr v5, v7

    aget-wide v7, p1, v3

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v9, v9, v3

    aget-wide v9, v9, v3

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aget-wide v7, p1, v4

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v3

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aget-wide v7, p1, v0

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v9, v9, v0

    aget-wide v9, v9, v4

    mul-double/2addr v7, v9

    aget-wide v9, p1, v4

    iget-object v11, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v11, v11, v4

    aget-wide v11, v11, v4

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    const/4 v9, 0x3

    new-array v9, v9, [D

    aput-wide v1, v9, v0

    aput-wide v5, v9, v3

    aput-wide v7, v9, v4

    return-object v9
.end method

.method public toCartesianHessian([[D[D)[[D
    .locals 14
    .param p1, "sHessian"    # [[D
    .param p2, "sGradient"    # [D

    .line 196
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeJacobian()V

    .line 197
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeHessians()V

    .line 202
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 203
    .local v1, "hj":[[D
    new-array v5, v0, [I

    aput v3, v5, v2

    aput v3, v5, v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 207
    .local v3, "cHessian":[[D
    aget-object v5, v1, v4

    aget-object v6, p1, v4

    aget-wide v6, v6, v4

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v4

    aget-wide v8, v8, v4

    mul-double/2addr v6, v8

    aget-object v8, p1, v2

    aget-wide v8, v8, v4

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aget-object v8, p1, v0

    aget-wide v8, v8, v4

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 208
    aget-object v5, v1, v4

    aget-object v6, p1, v4

    aget-wide v6, v6, v4

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v4

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    aget-object v8, p1, v2

    aget-wide v8, v8, v4

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aget-object v8, p1, v0

    aget-wide v8, v8, v4

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 209
    aget-object v5, v1, v4

    aget-object v6, p1, v4

    aget-wide v6, v6, v4

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v4

    aget-wide v8, v8, v0

    mul-double/2addr v6, v8

    aget-object v8, p1, v0

    aget-wide v8, v8, v4

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v0

    .line 210
    aget-object v5, v1, v2

    aget-object v6, p1, v2

    aget-wide v6, v6, v4

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v4

    aget-wide v8, v8, v4

    mul-double/2addr v6, v8

    aget-object v8, p1, v2

    aget-wide v8, v8, v2

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aget-object v8, p1, v0

    aget-wide v8, v8, v2

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 211
    aget-object v5, v1, v2

    aget-object v6, p1, v2

    aget-wide v6, v6, v4

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v4

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    aget-object v8, p1, v2

    aget-wide v8, v8, v2

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aget-object v8, p1, v0

    aget-wide v8, v8, v2

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 213
    aget-object v5, v1, v0

    aget-object v6, p1, v0

    aget-wide v6, v6, v4

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v4

    aget-wide v8, v8, v4

    mul-double/2addr v6, v8

    aget-object v8, p1, v0

    aget-wide v8, v8, v2

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aget-object v8, p1, v0

    aget-wide v8, v8, v0

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 214
    aget-object v5, v1, v0

    aget-object v6, p1, v0

    aget-wide v6, v6, v4

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v4

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    aget-object v8, p1, v0

    aget-wide v8, v8, v2

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aget-object v8, p1, v0

    aget-wide v8, v8, v0

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 215
    aget-object v5, v1, v0

    aget-object v6, p1, v0

    aget-wide v6, v6, v4

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v4

    aget-wide v8, v8, v0

    mul-double/2addr v6, v8

    aget-object v8, p1, v0

    aget-wide v8, v8, v0

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v0

    .line 218
    aget-object v5, v3, v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v4

    aget-object v8, v1, v4

    aget-wide v8, v8, v4

    mul-double/2addr v6, v8

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v2

    aget-wide v8, v8, v4

    aget-object v10, v1, v2

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v0

    aget-wide v8, v8, v4

    aget-object v10, v1, v0

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 219
    aget-object v5, v3, v2

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v2

    aget-object v8, v1, v4

    aget-wide v8, v8, v4

    mul-double/2addr v6, v8

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v2

    aget-wide v8, v8, v2

    aget-object v10, v1, v2

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v0

    aget-wide v8, v8, v2

    aget-object v10, v1, v0

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 220
    aget-object v5, v3, v0

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v0

    aget-object v8, v1, v4

    aget-wide v8, v8, v4

    mul-double/2addr v6, v8

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v0

    aget-wide v8, v8, v0

    aget-object v10, v1, v0

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 221
    aget-object v5, v3, v2

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v2

    aget-object v8, v1, v4

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v2

    aget-wide v8, v8, v2

    aget-object v10, v1, v2

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v0

    aget-wide v8, v8, v2

    aget-object v10, v1, v0

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 222
    aget-object v5, v3, v0

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v0

    aget-object v8, v1, v4

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v0

    aget-wide v8, v8, v0

    aget-object v10, v1, v0

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 223
    aget-object v5, v3, v0

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v0

    aget-object v8, v1, v4

    aget-wide v8, v8, v0

    mul-double/2addr v6, v8

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v8, v8, v0

    aget-wide v8, v8, v0

    aget-object v10, v1, v0

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v0

    .line 226
    aget-object v5, v3, v4

    aget-wide v6, v5, v4

    aget-wide v8, p2, v4

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v10, v10, v4

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    aget-wide v10, p2, v2

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v12, v12, v4

    aget-wide v12, v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aget-wide v10, p2, v0

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v12, v12, v4

    aget-wide v12, v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 227
    aget-object v5, v3, v2

    aget-wide v6, v5, v4

    aget-wide v8, p2, v4

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    aget-wide v10, p2, v2

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v12, v12, v2

    aget-wide v12, v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aget-wide v10, p2, v0

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v12, v12, v2

    aget-wide v12, v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 228
    aget-object v5, v3, v0

    aget-wide v6, v5, v4

    aget-wide v8, p2, v4

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    aget-wide v10, p2, v0

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v12, v12, v0

    aget-wide v12, v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v4

    .line 229
    aget-object v5, v3, v2

    aget-wide v6, v5, v2

    aget-wide v8, p2, v4

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    aget-wide v10, p2, v2

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v12, v12, v2

    aget-wide v12, v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aget-wide v10, p2, v0

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v12, v12, v2

    aget-wide v12, v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 230
    aget-object v5, v3, v0

    aget-wide v6, v5, v2

    aget-wide v8, p2, v4

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    aget-wide v10, p2, v0

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v12, v12, v0

    aget-wide v12, v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 231
    aget-object v5, v3, v0

    aget-wide v6, v5, v0

    aget-wide v8, p2, v4

    iget-object v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    aget-wide v10, p2, v0

    iget-object v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v12, v12, v0

    aget-wide v12, v12, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v0

    .line 234
    aget-object v5, v3, v4

    aget-object v6, v3, v2

    aget-wide v6, v6, v4

    aput-wide v6, v5, v2

    .line 235
    aget-object v5, v3, v4

    aget-object v6, v3, v0

    aget-wide v6, v6, v4

    aput-wide v6, v5, v0

    .line 236
    aget-object v4, v3, v2

    aget-object v5, v3, v0

    aget-wide v5, v5, v2

    aput-wide v5, v4, v0

    .line 238
    return-object v3
.end method
