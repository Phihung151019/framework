.class public Lorg/apache/commons/math3/special/BesselJ;
.super Ljava/lang/Object;
.source "BesselJ.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
    }
.end annotation


# static fields
.field private static final ENMTEN:D = 8.9E-308

.field private static final ENSIG:D = 1.0E16

.field private static final ENTEN:D = 1.0E308

.field private static final FACT:[D

.field private static final PI2:D = 0.6366197723675814

.field private static final RTNSIG:D = 1.0E-4

.field private static final TOWPI1:D = 6.28125

.field private static final TWOPI:D = 6.283185307179586

.field private static final TWOPI2:D = 0.001935307179586477

.field private static final X_MAX:D = 10000.0

.field private static final X_MIN:D


# instance fields
.field private final order:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const/16 v0, 0x19

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4018000000000000L    # 6.0
        0x4038000000000000L    # 24.0
        0x405e000000000000L    # 120.0
        0x4086800000000000L    # 720.0
        0x40b3b00000000000L    # 5040.0
        0x40e3b00000000000L    # 40320.0
        0x4116260000000000L    # 362880.0
        0x414baf8000000000L    # 3628800.0
        0x418308a800000000L    # 3.99168E7
        0x41bc8cfc00000000L    # 4.790016E8
        0x41f7328cc0000000L    # 6.2270208E9
        0x42344c3b28000000L    # 8.71782912E10
        0x4273077775800000L    # 1.307674368E12
        0x42b3077775800000L    # 2.0922789888E13
        0x42f437eeecd80000L    # 3.55687428096E14
        0x4336beecca730000L    # 6.402373705728E15
        0x437b02b930689000L    # 1.21645100408832E17
        0x43c0e1b3be415a00L    # 2.43290200817664E18
        0x4406283be9b5c620L    # 5.109094217170944E19
        0x444e77526159f06cL    # 1.1240007277776077E21
        0x4495e5c335f8a4ceL    # 2.585201673888498E22
        0x44e06c52687a7b9aL    # 6.204484017332394E23
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "order"    # D

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide p1, p0, Lorg/apache/commons/math3/special/BesselJ;->order:D

    .line 130
    return-void
.end method

.method public static rjBesl(DDI)Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
    .locals 59
    .param p0, "x"    # D
    .param p2, "alpha"    # D
    .param p4, "nb"    # I

    .line 246
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    new-array v5, v4, [D

    .line 248
    .local v5, "b":[D
    const/4 v6, 0x0

    .line 249
    .local v6, "ncalc":I
    const-wide/16 v7, 0x0

    .line 250
    .local v7, "alpem":D
    const-wide/16 v9, 0x0

    .line 255
    .local v9, "alp2em":D
    double-to-int v11, v0

    .line 256
    .local v11, "magx":I
    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    if-lez v4, :cond_30

    cmpl-double v16, v0, v13

    if-ltz v16, :cond_30

    const-wide v16, 0x40c3880000000000L    # 10000.0

    cmpg-double v16, v0, v16

    if-gtz v16, :cond_30

    cmpl-double v16, v2, v13

    if-ltz v16, :cond_30

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v2, v16

    if-gez v18, :cond_30

    .line 261
    move/from16 v6, p4

    .line 262
    const/16 v18, 0x0

    move-wide/from16 v19, v13

    move/from16 v13, v18

    .local v13, "i":I
    :goto_0
    if-ge v13, v4, :cond_0

    .line 263
    aput-wide v19, v5, v13

    .line 262
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 274
    .end local v13    # "i":I
    :cond_0
    const-wide v13, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v13, v0, v13

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    if-gez v13, :cond_b

    .line 278
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 279
    .local v13, "tempa":D
    add-double v7, v2, v16

    .line 280
    const-wide/16 v23, 0x0

    .line 281
    .local v23, "halfx":D
    const-wide v25, 0x2fffba634018dbL    # 8.9E-308

    cmpl-double v18, v0, v25

    if-lez v18, :cond_1

    .line 282
    mul-double v23, v0, v21

    move-wide/from16 v27, v13

    move-wide/from16 v12, v23

    const/16 v18, 0x0

    goto :goto_1

    .line 281
    :cond_1
    move-wide/from16 v27, v13

    move-wide/from16 v12, v23

    const/16 v18, 0x0

    .line 284
    .end local v13    # "tempa":D
    .end local v23    # "halfx":D
    .local v12, "halfx":D
    .local v27, "tempa":D
    :goto_1
    cmpl-double v14, v2, v19

    if-eqz v14, :cond_2

    .line 285
    invoke-static {v12, v13, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v21

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v23

    mul-double v23, v23, v2

    div-double v21, v21, v23

    move-wide/from16 v27, v21

    .line 288
    :cond_2
    const-wide/16 v21, 0x0

    .line 289
    .local v21, "tempb":D
    add-double v23, v0, v16

    cmpl-double v14, v23, v16

    if-lez v14, :cond_3

    .line 290
    neg-double v0, v12

    mul-double v21, v0, v12

    .line 292
    :cond_3
    mul-double v0, v27, v21

    div-double/2addr v0, v7

    add-double v0, v27, v0

    aput-wide v0, v5, v18

    .line 293
    cmpl-double v0, p0, v19

    if-eqz v0, :cond_4

    aget-wide v0, v5, v18

    cmpl-double v0, v0, v19

    if-nez v0, :cond_4

    .line 294
    const/4 v6, 0x0

    .line 296
    :cond_4
    if-eq v4, v15, :cond_a

    .line 297
    cmpg-double v0, p0, v19

    if-gtz v0, :cond_6

    .line 298
    const/4 v0, 0x1

    .local v0, "n":I
    :goto_2
    if-ge v0, v4, :cond_5

    .line 299
    aput-wide v19, v5, v0

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "n":I
    :cond_5
    goto :goto_5

    .line 305
    :cond_6
    move-wide v0, v12

    .line 306
    .local v0, "tempc":D
    cmpl-double v14, v21, v19

    if-eqz v14, :cond_7

    div-double v25, v25, v21

    goto :goto_3

    :cond_7
    const-wide v14, 0x3fffba634018dbL    # 1.78E-307

    div-double v25, v14, p0

    .line 307
    .local v25, "tover":D
    :goto_3
    const/4 v14, 0x1

    .local v14, "n":I
    :goto_4
    if-ge v14, v4, :cond_a

    .line 308
    div-double v27, v27, v7

    .line 309
    add-double v7, v7, v16

    .line 310
    mul-double v27, v27, v0

    .line 311
    mul-double v23, v25, v7

    cmpg-double v15, v27, v23

    if-gtz v15, :cond_8

    .line 312
    const-wide/16 v23, 0x0

    move-wide/from16 v27, v23

    .line 314
    :cond_8
    mul-double v23, v27, v21

    div-double v23, v23, v7

    add-double v23, v27, v23

    aput-wide v23, v5, v14

    .line 315
    aget-wide v23, v5, v14

    cmpl-double v15, v23, v19

    if-nez v15, :cond_9

    if-le v6, v14, :cond_9

    .line 316
    move v6, v14

    .line 307
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 321
    .end local v0    # "tempc":D
    .end local v12    # "halfx":D
    .end local v14    # "n":I
    .end local v25    # "tover":D
    :cond_a
    :goto_5
    move v15, v4

    goto/16 :goto_19

    .end local v21    # "tempb":D
    .end local v27    # "tempa":D
    :cond_b
    const/16 v18, 0x0

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_12

    add-int/lit8 v0, v11, 0x1

    if-gt v4, v0, :cond_12

    .line 325
    const-wide v18, 0x3fe45f306dc9c883L    # 0.6366197723675814

    div-double v23, v18, p0

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v23

    .line 326
    .local v23, "xc":D
    const-wide/high16 v25, 0x3fc0000000000000L    # 0.125

    div-double v27, v25, p0

    .line 327
    .local v27, "mul":D
    mul-double v29, v27, v27

    .line 328
    .local v29, "xin":D
    const/4 v0, 0x0

    .line 329
    .local v0, "m":I
    const-wide v31, 0x4060400000000000L    # 130.0

    cmpl-double v14, p0, v31

    if-ltz v14, :cond_c

    .line 330
    const/4 v0, 0x4

    goto :goto_6

    .line 331
    :cond_c
    const-wide v31, 0x4041800000000000L    # 35.0

    cmpl-double v14, p0, v31

    if-ltz v14, :cond_d

    .line 332
    const/16 v0, 0x8

    goto :goto_6

    .line 334
    :cond_d
    const/16 v0, 0xb

    .line 337
    :goto_6
    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    int-to-double v12, v0

    const-wide/high16 v33, 0x4010000000000000L    # 4.0

    mul-double v12, v12, v33

    .line 341
    .local v12, "xm":D
    const-wide v35, 0x401921fb54442d18L    # 6.283185307179586

    div-double v35, p0, v35

    add-double v1, v35, v21

    double-to-int v1, v1

    int-to-double v1, v1

    .line 342
    .local v1, "t":D
    const-wide v35, 0x4019200000000000L    # 6.28125

    mul-double v35, v35, v1

    sub-double v35, p0, v35

    const-wide v37, 0x3f5fb54442d1846aL    # 0.001935307179586477

    mul-double v37, v37, v1

    sub-double v35, v35, v37

    add-double v37, p2, v21

    div-double v37, v37, v18

    sub-double v35, v35, v37

    .line 343
    .local v35, "z":D
    invoke-static/range {v35 .. v36}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v18

    .line 344
    .local v18, "vsin":D
    invoke-static/range {v35 .. v36}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v37

    .line 345
    .local v37, "vcos":D
    mul-double v39, p2, v31

    .line 351
    .local v39, "gnu":D
    const/4 v14, 0x1

    move-wide/from16 v3, v37

    .end local v37    # "vcos":D
    .local v3, "vcos":D
    .local v14, "i":I
    :goto_7
    move/from16 v37, v15

    const/4 v15, 0x2

    if-gt v14, v15, :cond_10

    .line 352
    sub-double v41, v12, v16

    sub-double v41, v41, v39

    sub-double v43, v12, v16

    add-double v43, v43, v39

    mul-double v41, v41, v43

    mul-double v41, v41, v29

    mul-double v41, v41, v21

    .line 353
    .local v41, "s":D
    const-wide/high16 v43, 0x4008000000000000L    # 3.0

    sub-double v45, v12, v43

    sub-double v45, v39, v45

    sub-double v47, v12, v43

    add-double v47, v39, v47

    mul-double v45, v45, v47

    .line 354
    .end local v1    # "t":D
    .local v45, "t":D
    mul-double v1, v41, v45

    sget-object v20, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    mul-int/lit8 v38, v0, 0x2

    aget-wide v47, v20, v38

    div-double v1, v1, v47

    .line 355
    .local v1, "capp":D
    add-double v47, v12, v16

    sub-double v47, v39, v47

    add-double v49, v12, v16

    add-double v49, v39, v49

    mul-double v47, v47, v49

    .line 356
    .local v47, "t1":D
    mul-double v49, v41, v47

    sget-object v20, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    mul-int/lit8 v38, v0, 0x2

    add-int/lit8 v38, v38, 0x1

    aget-wide v51, v20, v38

    div-double v49, v49, v51

    .line 357
    .local v49, "capq":D
    move-wide/from16 v51, v12

    .line 358
    .local v51, "xk":D
    mul-int/lit8 v20, v0, 0x2

    .line 359
    .local v20, "k":I
    move-wide/from16 v47, v45

    .line 361
    const/16 v38, 0x2

    move/from16 v15, v38

    .local v15, "j":I
    :goto_8
    if-gt v15, v0, :cond_e

    .line 362
    sub-double v51, v51, v33

    .line 363
    sub-double v53, v51, v16

    sub-double v53, v53, v39

    sub-double v55, v51, v16

    add-double v55, v55, v39

    mul-double v41, v53, v55

    .line 364
    sub-double v53, v51, v43

    sub-double v53, v39, v53

    sub-double v55, v51, v43

    add-double v55, v39, v55

    mul-double v45, v53, v55

    .line 365
    sget-object v53, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    add-int/lit8 v54, v20, -0x2

    aget-wide v53, v53, v54

    div-double v53, v16, v53

    add-double v53, v1, v53

    mul-double v53, v53, v41

    mul-double v53, v53, v45

    mul-double v1, v53, v29

    .line 366
    sget-object v53, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    add-int/lit8 v54, v20, -0x1

    aget-wide v53, v53, v54

    div-double v53, v16, v53

    add-double v53, v49, v53

    mul-double v53, v53, v41

    mul-double v53, v53, v47

    mul-double v49, v53, v29

    .line 367
    add-int/lit8 v20, v20, -0x2

    .line 368
    move-wide/from16 v47, v45

    .line 361
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 371
    .end local v15    # "j":I
    :cond_e
    add-double v1, v1, v16

    .line 372
    add-double v43, v49, v16

    mul-double v53, v39, v39

    sub-double v53, v53, v16

    mul-double v43, v43, v53

    div-double v53, v25, p0

    mul-double v43, v43, v53

    .line 373
    .end local v49    # "capq":D
    .local v43, "capq":D
    add-int/lit8 v15, v14, -0x1

    mul-double v49, v1, v3

    mul-double v53, v43, v18

    sub-double v49, v49, v53

    mul-double v49, v49, v23

    aput-wide v49, v5, v15

    .line 374
    move/from16 v15, p4

    move/from16 v49, v0

    move/from16 v0, v37

    .end local v0    # "m":I
    .local v49, "m":I
    if-ne v15, v0, :cond_f

    .line 375
    new-instance v0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    move-wide/from16 v53, v1

    .end local v1    # "capp":D
    .local v53, "capp":D
    array-length v1, v5

    invoke-static {v5, v1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;-><init>([DI)V

    return-object v0

    .line 378
    .end local v53    # "capp":D
    .restart local v1    # "capp":D
    :cond_f
    move-wide/from16 v53, v1

    .end local v1    # "capp":D
    .restart local v53    # "capp":D
    move-wide/from16 v1, v18

    .line 379
    .end local v45    # "t":D
    .local v1, "t":D
    move-wide/from16 v45, v1

    .end local v1    # "t":D
    .restart local v45    # "t":D
    neg-double v0, v3

    .line 380
    .end local v18    # "vsin":D
    .local v0, "vsin":D
    move-wide/from16 v3, v45

    .line 381
    add-double v39, v39, v31

    .line 351
    .end local v20    # "k":I
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v18, v0

    move-wide/from16 v1, v45

    move/from16 v0, v49

    const/4 v15, 0x1

    goto/16 :goto_7

    .end local v41    # "s":D
    .end local v43    # "capq":D
    .end local v45    # "t":D
    .end local v47    # "t1":D
    .end local v49    # "m":I
    .end local v51    # "xk":D
    .end local v53    # "capp":D
    .local v0, "m":I
    .restart local v1    # "t":D
    .restart local v18    # "vsin":D
    :cond_10
    move/from16 v15, p4

    move/from16 v49, v0

    .line 387
    .end local v0    # "m":I
    .end local v14    # "i":I
    .restart local v49    # "m":I
    const/4 v0, 0x2

    if-le v15, v0, :cond_11

    .line 388
    mul-double v16, p2, v31

    add-double v16, v16, v31

    .line 389
    .end local v39    # "gnu":D
    .local v16, "gnu":D
    const/4 v0, 0x2

    .local v0, "j":I
    :goto_9
    if-ge v0, v15, :cond_11

    .line 390
    add-int/lit8 v14, v0, -0x1

    aget-wide v20, v5, v14

    mul-double v20, v20, v16

    div-double v20, v20, p0

    add-int/lit8 v14, v0, -0x2

    aget-wide v25, v5, v14

    sub-double v20, v20, v25

    aput-wide v20, v5, v0

    .line 391
    add-double v16, v16, v31

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 394
    .end local v0    # "j":I
    .end local v1    # "t":D
    .end local v3    # "vcos":D
    .end local v12    # "xm":D
    .end local v16    # "gnu":D
    .end local v18    # "vsin":D
    .end local v23    # "xc":D
    .end local v27    # "mul":D
    .end local v29    # "xin":D
    .end local v35    # "z":D
    .end local v49    # "m":I
    :cond_11
    move-wide/from16 v2, p2

    goto/16 :goto_19

    .line 321
    :cond_12
    move v15, v4

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    .line 399
    sub-int v0, v15, v11

    .line 400
    .local v0, "nbmx":I
    add-int/lit8 v1, v11, 0x1

    .line 401
    .local v1, "n":I
    const/4 v2, 0x0

    .line 402
    .local v2, "nstart":I
    const/4 v4, 0x0

    .line 403
    .local v4, "nend":I
    int-to-double v12, v1

    add-double v12, v12, p2

    mul-double v12, v12, v31

    .line 404
    .local v12, "en":D
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    .line 405
    .local v23, "plast":D
    div-double v25, v12, p0

    .line 410
    .local v25, "p":D
    const-wide v27, 0x4351c37937e08000L    # 2.0E16

    .line 411
    .local v27, "test":D
    const/4 v14, 0x0

    .line 412
    .local v14, "readyToInitialize":Z
    const/4 v3, 0x3

    if-lt v0, v3, :cond_19

    .line 417
    const-wide v29, 0x7c9008896bcf54faL    # 1.0E292

    .line 418
    .local v29, "tover":D
    add-int/lit8 v2, v11, 0x2

    .line 419
    add-int/lit8 v3, v15, -0x1

    .line 420
    .end local v4    # "nend":I
    .local v3, "nend":I
    add-int/lit8 v4, v2, -0x1

    move/from16 v33, v0

    move/from16 v34, v1

    .end local v0    # "nbmx":I
    .end local v1    # "n":I
    .local v33, "nbmx":I
    .local v34, "n":I
    int-to-double v0, v4

    add-double v0, v0, p2

    mul-double v0, v0, v31

    .line 423
    .end local v12    # "en":D
    .local v0, "en":D
    move v4, v2

    .local v4, "k":I
    :goto_a
    const-wide v12, 0x4341c37937e08000L    # 1.0E16

    if-gt v4, v3, :cond_17

    .line 424
    move/from16 v34, v4

    .line 425
    add-double v0, v0, v31

    .line 426
    move-wide/from16 v35, v23

    .line 427
    .local v35, "pold":D
    move-wide/from16 v23, v25

    .line 428
    mul-double v39, v0, v23

    div-double v39, v39, p0

    sub-double v25, v39, v35

    .line 429
    cmpl-double v39, v25, v29

    if-lez v39, :cond_16

    .line 435
    const-wide v39, 0x7fe1ccf385ebc8a0L    # 1.0E308

    .line 436
    .end local v29    # "tover":D
    .local v39, "tover":D
    div-double v25, v25, v39

    .line 437
    div-double v23, v23, v39

    .line 438
    move-wide/from16 v41, v25

    .line 439
    .local v41, "psave":D
    move-wide/from16 v43, v23

    .line 440
    .local v43, "psavel":D
    add-int/lit8 v45, v34, 0x1

    .line 442
    .end local v2    # "nstart":I
    .local v45, "nstart":I
    :goto_b
    const/16 v37, 0x1

    add-int/lit8 v34, v34, 0x1

    .line 443
    add-double v0, v0, v31

    .line 444
    move-wide/from16 v35, v23

    .line 445
    move-wide/from16 v23, v25

    .line 446
    mul-double v29, v0, v23

    div-double v29, v29, p0

    sub-double v25, v29, v35

    .line 447
    cmpg-double v2, v25, v16

    if-lez v2, :cond_15

    .line 448
    div-double v29, v0, p0

    .line 454
    .local v29, "tempb":D
    mul-double v46, v35, v23

    mul-double v48, v29, v29

    div-double v48, v21, v48

    sub-double v48, v21, v48

    mul-double v46, v46, v48

    .line 455
    .end local v27    # "test":D
    .local v46, "test":D
    div-double v46, v46, v12

    .line 456
    mul-double v25, v23, v39

    .line 457
    add-int/lit8 v2, v34, -0x1

    .line 458
    .end local v34    # "n":I
    .local v2, "n":I
    sub-double v0, v0, v31

    .line 459
    invoke-static {v15, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 460
    move/from16 v27, v45

    move-wide/from16 v48, v12

    move/from16 v12, v27

    .local v12, "l":I
    :goto_c
    if-gt v12, v3, :cond_14

    .line 461
    move-wide/from16 v35, v43

    .line 462
    move-wide/from16 v43, v41

    .line 463
    mul-double v27, v0, v43

    div-double v27, v27, p0

    sub-double v41, v27, v35

    .line 464
    mul-double v27, v41, v43

    cmpl-double v13, v27, v46

    if-lez v13, :cond_13

    .line 465
    add-int/lit8 v6, v12, -0x1

    .line 466
    const/4 v14, 0x1

    .line 467
    goto :goto_d

    .line 460
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 470
    .end local v12    # "l":I
    :cond_14
    :goto_d
    move v6, v3

    .line 471
    const/4 v12, 0x1

    .line 472
    .end local v14    # "readyToInitialize":Z
    .local v12, "readyToInitialize":Z
    move v4, v3

    move v14, v12

    move-wide/from16 v29, v39

    move-wide v12, v0

    move v3, v2

    move/from16 v2, v45

    move-wide/from16 v0, v46

    goto :goto_e

    .line 447
    .end local v2    # "n":I
    .end local v12    # "readyToInitialize":Z
    .end local v29    # "tempb":D
    .end local v46    # "test":D
    .restart local v14    # "readyToInitialize":Z
    .restart local v27    # "test":D
    .restart local v34    # "n":I
    :cond_15
    move-wide/from16 v48, v12

    goto :goto_b

    .line 423
    .end local v39    # "tover":D
    .end local v41    # "psave":D
    .end local v43    # "psavel":D
    .end local v45    # "nstart":I
    .local v2, "nstart":I
    .local v29, "tover":D
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .end local v35    # "pold":D
    :cond_17
    move-wide/from16 v48, v12

    move-wide v12, v0

    move v4, v3

    move-wide/from16 v0, v27

    move/from16 v3, v34

    .line 475
    .end local v27    # "test":D
    .end local v34    # "n":I
    .local v0, "test":D
    .local v3, "n":I
    .local v4, "nend":I
    .local v12, "en":D
    :goto_e
    if-nez v14, :cond_18

    .line 476
    move v3, v4

    .line 477
    move-wide/from16 v35, v7

    move v8, v6

    .end local v6    # "ncalc":I
    .end local v7    # "alpem":D
    .local v8, "ncalc":I
    .local v35, "alpem":D
    int-to-double v6, v3

    add-double v6, v6, p2

    mul-double v12, v6, v31

    .line 481
    mul-double v6, v23, v48

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double v27, v25, v31

    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v27

    mul-double v6, v6, v27

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v27

    move v1, v3

    move v6, v8

    .end local v0    # "test":D
    .restart local v27    # "test":D
    goto :goto_f

    .line 475
    .end local v8    # "ncalc":I
    .end local v27    # "test":D
    .end local v35    # "alpem":D
    .restart local v0    # "test":D
    .restart local v6    # "ncalc":I
    .restart local v7    # "alpem":D
    :cond_18
    move-wide/from16 v35, v7

    move v8, v6

    .end local v6    # "ncalc":I
    .end local v7    # "alpem":D
    .restart local v8    # "ncalc":I
    .restart local v35    # "alpem":D
    move-wide/from16 v27, v0

    move v1, v3

    goto :goto_f

    .line 412
    .end local v3    # "n":I
    .end local v8    # "ncalc":I
    .end local v29    # "tover":D
    .end local v33    # "nbmx":I
    .end local v35    # "alpem":D
    .local v0, "nbmx":I
    .restart local v1    # "n":I
    .restart local v6    # "ncalc":I
    .restart local v7    # "alpem":D
    .restart local v27    # "test":D
    :cond_19
    move/from16 v33, v0

    move/from16 v34, v1

    move-wide/from16 v35, v7

    .line 488
    .end local v0    # "nbmx":I
    .end local v7    # "alpem":D
    .restart local v33    # "nbmx":I
    .restart local v35    # "alpem":D
    :goto_f
    if-nez v14, :cond_1b

    .line 490
    :cond_1a
    const/16 v37, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 491
    add-double v12, v12, v31

    .line 492
    move-wide/from16 v7, v23

    .line 493
    .local v7, "pold":D
    move-wide/from16 v23, v25

    .line 494
    mul-double v29, v12, v23

    div-double v29, v29, p0

    sub-double v25, v29, v7

    .line 495
    cmpg-double v0, v25, v27

    if-ltz v0, :cond_1a

    .line 500
    .end local v7    # "pold":D
    :cond_1b
    const/16 v37, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 501
    add-double v12, v12, v31

    .line 502
    const-wide/16 v7, 0x0

    .line 503
    .local v7, "tempb":D
    div-double v29, v16, v25

    .line 504
    .local v29, "tempa":D
    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v3, v1, 0x2

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    .line 505
    .local v0, "m":I
    const-wide/16 v39, 0x0

    .line 506
    .local v39, "sum":D
    div-int/lit8 v3, v1, 0x2

    move/from16 v41, v0

    move/from16 v34, v1

    .end local v0    # "m":I
    .end local v1    # "n":I
    .restart local v34    # "n":I
    .local v41, "m":I
    int-to-double v0, v3

    .line 507
    .local v0, "em":D
    sub-double v42, v0, v16

    add-double v42, v42, p2

    .line 508
    .end local v35    # "alpem":D
    .local v42, "alpem":D
    mul-double v35, v0, v31

    add-double v35, v35, p2

    .line 509
    .end local v9    # "alp2em":D
    .local v35, "alp2em":D
    if-eqz v41, :cond_1c

    .line 510
    mul-double v9, v29, v42

    mul-double v9, v9, v35

    div-double v39, v9, v0

    .line 512
    :cond_1c
    sub-int v3, v34, v15

    .line 514
    .end local v4    # "nend":I
    .local v3, "nend":I
    const/4 v4, 0x0

    .line 515
    .local v4, "readyToNormalize":Z
    const/4 v9, 0x0

    .line 521
    .local v9, "calculatedB0":Z
    const/4 v10, 0x1

    move-wide/from16 v43, v42

    move-wide/from16 v57, v0

    move/from16 v1, v34

    move/from16 v0, v41

    move-wide/from16 v41, v39

    move-wide/from16 v39, v35

    move-wide/from16 v34, v29

    move-wide/from16 v29, v12

    move-wide v12, v7

    move-wide/from16 v7, v57

    .end local v35    # "alp2em":D
    .end local v42    # "alpem":D
    .local v0, "m":I
    .restart local v1    # "n":I
    .local v7, "em":D
    .local v10, "l":I
    .local v12, "tempb":D
    .local v29, "en":D
    .local v34, "tempa":D
    .local v39, "alp2em":D
    .local v41, "sum":D
    .local v43, "alpem":D
    :goto_10
    if-gt v10, v3, :cond_20

    .line 522
    add-int/lit8 v1, v1, -0x1

    .line 523
    sub-double v29, v29, v31

    .line 524
    move-wide/from16 v45, v12

    .line 525
    .local v45, "tempc":D
    move-wide/from16 v12, v34

    .line 526
    mul-double v47, v29, v12

    div-double v47, v47, p0

    sub-double v34, v47, v45

    .line 527
    rsub-int/lit8 v0, v0, 0x2

    .line 528
    if-eqz v0, :cond_1f

    .line 529
    sub-double v7, v7, v16

    .line 530
    mul-double v47, v7, v31

    add-double v39, v47, p2

    .line 531
    move/from16 v36, v0

    const/4 v0, 0x1

    .end local v0    # "m":I
    .local v36, "m":I
    if-ne v1, v0, :cond_1d

    .line 532
    move/from16 v0, v36

    goto :goto_12

    .line 534
    :cond_1d
    sub-double v47, v7, v16

    add-double v47, v47, p2

    .line 535
    .end local v43    # "alpem":D
    .local v47, "alpem":D
    cmpl-double v0, v47, v19

    if-nez v0, :cond_1e

    .line 536
    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    .line 538
    :cond_1e
    mul-double v43, v34, v39

    add-double v43, v41, v43

    mul-double v43, v43, v47

    div-double v43, v43, v7

    move-wide/from16 v41, v43

    move-wide/from16 v43, v47

    .end local v41    # "sum":D
    .local v43, "sum":D
    goto :goto_11

    .line 528
    .end local v36    # "m":I
    .end local v47    # "alpem":D
    .restart local v0    # "m":I
    .restart local v41    # "sum":D
    .local v43, "alpem":D
    :cond_1f
    move/from16 v36, v0

    .line 521
    .end local v0    # "m":I
    .restart local v36    # "m":I
    :goto_11
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v36

    goto :goto_10

    .line 545
    .end local v10    # "l":I
    .end local v36    # "m":I
    .end local v45    # "tempc":D
    .restart local v0    # "m":I
    :cond_20
    :goto_12
    add-int/lit8 v10, v1, -0x1

    aput-wide v34, v5, v10

    .line 546
    if-ltz v3, :cond_25

    .line 547
    const/4 v10, 0x1

    if-gt v15, v10, :cond_22

    .line 548
    move-wide/from16 v39, p2

    .line 549
    add-double v45, p2, v16

    cmpl-double v10, v45, v16

    if-nez v10, :cond_21

    .line 550
    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    .line 552
    :cond_21
    aget-wide v45, v5, v18

    mul-double v45, v45, v39

    add-double v41, v41, v45

    .line 553
    const/4 v4, 0x1

    goto :goto_14

    .line 558
    :cond_22
    add-int/lit8 v1, v1, -0x1

    .line 559
    sub-double v29, v29, v31

    .line 560
    add-int/lit8 v10, v1, -0x1

    mul-double v45, v29, v34

    div-double v45, v45, p0

    sub-double v45, v45, v12

    aput-wide v45, v5, v10

    .line 561
    const/4 v10, 0x1

    if-ne v1, v10, :cond_23

    .line 562
    const/4 v9, 0x1

    goto :goto_14

    .line 564
    :cond_23
    rsub-int/lit8 v0, v0, 0x2

    .line 565
    if-eqz v0, :cond_25

    .line 566
    sub-double v7, v7, v16

    .line 567
    mul-double v45, v7, v31

    add-double v39, v45, p2

    .line 568
    sub-double v45, v7, v16

    add-double v45, v45, p2

    .line 569
    .end local v43    # "alpem":D
    .local v45, "alpem":D
    cmpl-double v10, v45, v19

    if-nez v10, :cond_24

    .line 570
    const-wide/high16 v43, 0x3ff0000000000000L    # 1.0

    .end local v45    # "alpem":D
    .restart local v43    # "alpem":D
    goto :goto_13

    .line 569
    .end local v43    # "alpem":D
    .restart local v45    # "alpem":D
    :cond_24
    move-wide/from16 v43, v45

    .line 573
    .end local v45    # "alpem":D
    .restart local v43    # "alpem":D
    :goto_13
    add-int/lit8 v10, v1, -0x1

    aget-wide v45, v5, v10

    mul-double v45, v45, v39

    add-double v45, v41, v45

    mul-double v45, v45, v43

    div-double v41, v45, v7

    .line 578
    :cond_25
    :goto_14
    if-nez v4, :cond_28

    if-nez v9, :cond_28

    .line 579
    add-int/lit8 v3, v1, -0x2

    .line 580
    if-eqz v3, :cond_28

    .line 586
    const/4 v10, 0x1

    .restart local v10    # "l":I
    :goto_15
    if-gt v10, v3, :cond_28

    .line 587
    add-int/lit8 v1, v1, -0x1

    .line 588
    sub-double v29, v29, v31

    .line 589
    add-int/lit8 v36, v1, -0x1

    aget-wide v45, v5, v1

    mul-double v45, v45, v29

    div-double v45, v45, p0

    add-int/lit8 v47, v1, 0x1

    aget-wide v47, v5, v47

    sub-double v45, v45, v47

    aput-wide v45, v5, v36

    .line 590
    rsub-int/lit8 v0, v0, 0x2

    .line 591
    if-eqz v0, :cond_27

    .line 592
    sub-double v7, v7, v16

    .line 593
    mul-double v45, v7, v31

    add-double v39, v45, p2

    .line 594
    sub-double v45, v7, v16

    add-double v45, v45, p2

    .line 595
    .end local v43    # "alpem":D
    .restart local v45    # "alpem":D
    cmpl-double v36, v45, v19

    if-nez v36, :cond_26

    .line 596
    const-wide/high16 v45, 0x3ff0000000000000L    # 1.0

    .line 599
    :cond_26
    add-int/lit8 v36, v1, -0x1

    aget-wide v43, v5, v36

    mul-double v43, v43, v39

    add-double v43, v41, v43

    mul-double v43, v43, v45

    div-double v41, v43, v7

    move-wide/from16 v43, v45

    .line 586
    .end local v45    # "alpem":D
    .restart local v43    # "alpem":D
    :cond_27
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 607
    .end local v10    # "l":I
    :cond_28
    if-nez v4, :cond_2b

    .line 608
    if-nez v9, :cond_29

    .line 609
    add-double v45, p2, v16

    mul-double v45, v45, v31

    const/16 v37, 0x1

    aget-wide v36, v5, v37

    mul-double v45, v45, v36

    div-double v45, v45, p0

    const/16 v38, 0x2

    aget-wide v36, v5, v38

    sub-double v45, v45, v36

    aput-wide v45, v5, v18

    .line 611
    :cond_29
    sub-double v7, v7, v16

    .line 612
    mul-double v31, v31, v7

    add-double v31, v31, p2

    .line 613
    .end local v39    # "alp2em":D
    .local v31, "alp2em":D
    cmpl-double v10, v31, v19

    if-nez v10, :cond_2a

    .line 614
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v39, v31

    goto :goto_16

    .line 613
    :cond_2a
    move-wide/from16 v39, v31

    .line 616
    .end local v31    # "alp2em":D
    .restart local v39    # "alp2em":D
    :goto_16
    aget-wide v31, v5, v18

    mul-double v31, v31, v39

    add-double v41, v41, v31

    .line 622
    :cond_2b
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v31

    const-wide v36, 0x3c9cd2b297d889bcL    # 1.0E-16

    cmpl-double v10, v31, v36

    if-lez v10, :cond_2c

    .line 623
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v31

    move v10, v0

    move/from16 v36, v1

    .end local v0    # "m":I
    .end local v1    # "n":I
    .local v10, "m":I
    .local v36, "n":I
    mul-double v0, p0, v21

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v37, v6

    move-wide/from16 v45, v7

    move-wide/from16 v2, p2

    .end local v2    # "nstart":I
    .end local v3    # "nend":I
    .end local v6    # "ncalc":I
    .end local v7    # "em":D
    .local v21, "nstart":I
    .local v22, "nend":I
    .local v37, "ncalc":I
    .local v45, "em":D
    neg-double v6, v2

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    mul-double v31, v31, v0

    mul-double v41, v41, v31

    goto :goto_17

    .line 622
    .end local v10    # "m":I
    .end local v21    # "nstart":I
    .end local v22    # "nend":I
    .end local v36    # "n":I
    .end local v37    # "ncalc":I
    .end local v45    # "em":D
    .restart local v0    # "m":I
    .restart local v1    # "n":I
    .restart local v2    # "nstart":I
    .restart local v3    # "nend":I
    .restart local v6    # "ncalc":I
    .restart local v7    # "em":D
    :cond_2c
    move v10, v0

    move/from16 v36, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v37, v6

    move-wide/from16 v45, v7

    move-wide/from16 v2, p2

    .line 625
    .end local v0    # "m":I
    .end local v1    # "n":I
    .end local v2    # "nstart":I
    .end local v3    # "nend":I
    .end local v6    # "ncalc":I
    .end local v7    # "em":D
    .restart local v10    # "m":I
    .restart local v21    # "nstart":I
    .restart local v22    # "nend":I
    .restart local v36    # "n":I
    .restart local v37    # "ncalc":I
    .restart local v45    # "em":D
    :goto_17
    const-wide v0, 0x2fffba634018dbL    # 8.9E-308

    .line 626
    .end local v34    # "tempa":D
    .local v0, "tempa":D
    cmpl-double v6, v41, v16

    if-lez v6, :cond_2d

    .line 627
    mul-double v0, v0, v41

    .line 630
    :cond_2d
    const/4 v6, 0x0

    .end local v36    # "n":I
    .local v6, "n":I
    :goto_18
    if-ge v6, v15, :cond_2f

    .line 631
    aget-wide v7, v5, v6

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v0

    if-gez v7, :cond_2e

    .line 632
    aput-wide v19, v5, v6

    .line 634
    :cond_2e
    aget-wide v7, v5, v6

    div-double v7, v7, v41

    aput-wide v7, v5, v6

    .line 630
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_2f
    move/from16 v6, v37

    move-wide/from16 v9, v39

    move-wide/from16 v7, v43

    .line 640
    .end local v0    # "tempa":D
    .end local v4    # "readyToNormalize":Z
    .end local v10    # "m":I
    .end local v12    # "tempb":D
    .end local v14    # "readyToInitialize":Z
    .end local v21    # "nstart":I
    .end local v22    # "nend":I
    .end local v23    # "plast":D
    .end local v25    # "p":D
    .end local v27    # "test":D
    .end local v29    # "en":D
    .end local v33    # "nbmx":I
    .end local v37    # "ncalc":I
    .end local v39    # "alp2em":D
    .end local v41    # "sum":D
    .end local v43    # "alpem":D
    .end local v45    # "em":D
    .local v6, "ncalc":I
    .local v7, "alpem":D
    .local v9, "alp2em":D
    :goto_19
    goto :goto_1a

    .line 256
    :cond_30
    move v15, v4

    move-wide/from16 v35, v7

    move-wide/from16 v19, v13

    const/16 v18, 0x0

    .line 641
    .end local v7    # "alpem":D
    .local v35, "alpem":D
    array-length v0, v5

    if-lez v0, :cond_31

    .line 642
    aput-wide v19, v5, v18

    .line 644
    :cond_31
    move/from16 v0, v18

    invoke-static {v15, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    const/16 v37, 0x1

    add-int/lit8 v6, v0, -0x1

    move-wide/from16 v7, v35

    .line 646
    .end local v35    # "alpem":D
    .restart local v7    # "alpem":D
    :goto_1a
    new-instance v0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    array-length v1, v5

    invoke-static {v5, v1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;-><init>([DI)V

    return-object v0
.end method

.method public static value(DD)D
    .locals 9
    .param p0, "order"    # D
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 157
    double-to-int v0, p0

    .line 158
    .local v0, "n":I
    int-to-double v1, v0

    sub-double v1, p0, v1

    .line 159
    .local v1, "alpha":D
    add-int/lit8 v3, v0, 0x1

    .line 160
    .local v3, "nb":I
    invoke-static {p2, p3, v1, v2, v3}, Lorg/apache/commons/math3/special/BesselJ;->rjBesl(DDI)Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    move-result-object v4

    .line 162
    .local v4, "res":Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$000(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v5

    if-lt v5, v3, :cond_0

    .line 163
    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$100(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object v5

    aget-wide v5, v5, v0

    return-wide v5

    .line 164
    :cond_0
    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$000(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 166
    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$100(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object v5

    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$000(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-wide v5, v5, v6

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x2b2bff2ee48e0530L    # 1.0E-100

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 167
    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$100(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object v5

    aget-wide v5, v5, v0

    return-wide v5

    .line 169
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BESSEL_FUNCTION_FAILED_CONVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 165
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BESSEL_FUNCTION_BAD_ARGUMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5
.end method


# virtual methods
.method public value(D)D
    .locals 2
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 143
    iget-wide v0, p0, Lorg/apache/commons/math3/special/BesselJ;->order:D

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/special/BesselJ;->value(DD)D

    move-result-wide v0

    return-wide v0
.end method
