.class final Lorg/apache/commons/math3/distribution/BetaDistribution$ChengBetaSampler;
.super Ljava/lang/Object;
.source "BetaDistribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/distribution/BetaDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChengBetaSampler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static algorithmBB(Lorg/apache/commons/math3/random/RandomGenerator;DDD)D
    .locals 26
    .param p0, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p1, "a0"    # D
    .param p3, "a"    # D
    .param p5, "b"    # D

    .line 325
    move-wide/from16 v0, p3

    add-double v2, v0, p5

    .line 326
    .local v2, "alpha":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double v6, v2, v4

    mul-double/2addr v4, v0

    mul-double v4, v4, p5

    sub-double/2addr v4, v2

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 327
    .local v4, "beta":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v4

    add-double/2addr v6, v0

    .line 333
    .local v6, "gamma":D
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v8

    .line 334
    .local v8, "u1":D
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v10

    .line 335
    .local v10, "u2":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    neg-double v14, v8

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    mul-double/2addr v12, v4

    .line 336
    .local v12, "v":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v14

    mul-double/2addr v14, v0

    .line 337
    .local v14, "w":D
    mul-double v16, v8, v8

    mul-double v16, v16, v10

    .line 338
    .local v16, "z":D
    mul-double v18, v6, v12

    const-wide v20, 0x3ff62e43096a0c0dL    # 1.3862944

    sub-double v18, v18, v20

    .line 339
    .local v18, "r":D
    add-double v20, v0, v18

    sub-double v20, v20, v14

    .line 340
    .local v20, "s":D
    const-wide v22, 0x4004e02107b78466L    # 2.609438

    add-double v22, v20, v22

    const-wide/high16 v24, 0x4014000000000000L    # 5.0

    mul-double v24, v24, v16

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_0

    .line 341
    goto :goto_1

    .line 344
    :cond_0
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v22

    .line 345
    .local v22, "t":D
    cmpl-double v24, v20, v22

    if-ltz v24, :cond_1

    .line 346
    goto :goto_1

    .line 348
    .end local v8    # "u1":D
    .end local v10    # "u2":D
    .end local v12    # "v":D
    .end local v16    # "z":D
    .end local v20    # "s":D
    :cond_1
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    add-double v10, p5, v14

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    mul-double/2addr v8, v2

    add-double v8, v18, v8

    cmpg-double v8, v8, v22

    if-ltz v8, :cond_3

    .line 350
    .end local v22    # "t":D
    :goto_1
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v14, v15, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    .line 351
    .end local v14    # "w":D
    .local v8, "w":D
    move-wide/from16 v10, p1

    invoke-static {v0, v1, v10, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v12

    if-eqz v12, :cond_2

    add-double v12, p5, v8

    div-double v12, v8, v12

    goto :goto_2

    :cond_2
    add-double v12, p5, v8

    div-double v12, p5, v12

    :goto_2
    return-wide v12

    .line 348
    .end local v8    # "w":D
    .restart local v14    # "w":D
    .restart local v22    # "t":D
    :cond_3
    move-wide/from16 v10, p1

    goto :goto_0
.end method

.method private static algorithmBC(Lorg/apache/commons/math3/random/RandomGenerator;DDD)D
    .locals 30
    .param p0, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p1, "a0"    # D
    .param p3, "a"    # D
    .param p5, "b"    # D

    .line 366
    move-wide/from16 v0, p3

    add-double v2, v0, p5

    .line 367
    .local v2, "alpha":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v6, v4, p5

    .line 368
    .local v6, "beta":D
    add-double/2addr v4, v0

    sub-double v4, v4, p5

    .line 369
    .local v4, "delta":D
    const-wide v8, 0x3fa5555673aa1bc8L    # 0.0416667

    mul-double v8, v8, p5

    const-wide v10, 0x3f8c71c89a38250aL    # 0.0138889

    add-double/2addr v8, v10

    mul-double/2addr v8, v4

    mul-double v10, v0, v6

    const-wide v12, 0x3fe8e38eb0318b93L    # 0.777778

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    .line 370
    .local v8, "k1":D
    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    div-double v12, v10, v4

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    mul-double v12, v12, p5

    add-double/2addr v12, v10

    .line 374
    .local v12, "k2":D
    :goto_0
    move-wide/from16 v16, v10

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v10

    .line 375
    .local v10, "u1":D
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v18

    .line 376
    .local v18, "u2":D
    mul-double v20, v10, v18

    .line 377
    .local v20, "y":D
    mul-double v22, v10, v20

    .line 378
    .local v22, "z":D
    cmpg-double v24, v10, v14

    if-gez v24, :cond_1

    .line 379
    mul-double v24, v18, v16

    add-double v24, v24, v22

    sub-double v24, v24, v20

    cmpl-double v24, v24, v8

    if-ltz v24, :cond_0

    .line 380
    move-wide/from16 v10, v16

    goto :goto_0

    .line 379
    :cond_0
    move-wide/from16 v24, v2

    goto :goto_1

    .line 383
    :cond_1
    cmpg-double v24, v22, v16

    if-gtz v24, :cond_2

    .line 384
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v14

    move-wide/from16 v24, v2

    .end local v2    # "alpha":D
    .local v24, "alpha":D
    neg-double v2, v10

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v2

    sub-double/2addr v14, v2

    mul-double/2addr v14, v6

    .line 385
    .local v14, "v":D
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    .line 386
    .local v2, "w":D
    goto :goto_2

    .line 389
    .end local v14    # "v":D
    .end local v24    # "alpha":D
    .local v2, "alpha":D
    :cond_2
    move-wide/from16 v24, v2

    .end local v2    # "alpha":D
    .restart local v24    # "alpha":D
    cmpl-double v2, v22, v12

    if-ltz v2, :cond_3

    .line 390
    move-wide/from16 v10, v16

    move-wide/from16 v2, v24

    goto :goto_0

    .line 394
    :cond_3
    :goto_1
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    neg-double v14, v10

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v14

    sub-double/2addr v2, v14

    mul-double/2addr v2, v6

    .line 395
    .local v2, "v":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v14

    mul-double/2addr v14, v0

    .line 396
    .local v14, "w":D
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v26

    add-double v28, p5, v14

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    add-double v26, v26, v2

    mul-double v26, v26, v24

    const-wide v28, 0x3ff62e43096a0c0dL    # 1.3862944

    sub-double v26, v26, v28

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v28

    cmpl-double v26, v26, v28

    if-ltz v26, :cond_5

    .line 397
    move-wide v2, v14

    .line 401
    .end local v10    # "u1":D
    .end local v14    # "w":D
    .end local v18    # "u2":D
    .end local v20    # "y":D
    .end local v22    # "z":D
    .local v2, "w":D
    :goto_2
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v2, v3, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    .line 402
    move-wide/from16 v10, p1

    invoke-static {v0, v1, v10, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v14

    if-eqz v14, :cond_4

    add-double v14, p5, v2

    div-double v14, v2, v14

    goto :goto_3

    :cond_4
    add-double v14, p5, v2

    div-double v14, p5, v14

    :goto_3
    return-wide v14

    .line 399
    .end local v2    # "w":D
    .restart local v14    # "w":D
    :cond_5
    move-wide/from16 v10, v16

    move-wide/from16 v2, v24

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    goto/16 :goto_0
.end method

.method static sample(Lorg/apache/commons/math3/random/RandomGenerator;DD)D
    .locals 9
    .param p0, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p1, "alpha"    # D
    .param p3, "beta"    # D

    .line 303
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    .line 304
    .local v3, "a":D
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    .line 306
    .local v5, "b":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v0

    if-lez v0, :cond_0

    .line 307
    move-object v0, p0

    move-wide v1, p1

    .end local p0    # "random":Lorg/apache/commons/math3/random/RandomGenerator;
    .end local p1    # "alpha":D
    .local v0, "random":Lorg/apache/commons/math3/random/RandomGenerator;
    .local v1, "alpha":D
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/BetaDistribution$ChengBetaSampler;->algorithmBB(Lorg/apache/commons/math3/random/RandomGenerator;DDD)D

    move-result-wide p0

    return-wide p0

    .line 309
    .end local v0    # "random":Lorg/apache/commons/math3/random/RandomGenerator;
    .end local v1    # "alpha":D
    .restart local p0    # "random":Lorg/apache/commons/math3/random/RandomGenerator;
    .restart local p1    # "alpha":D
    :cond_0
    move-object v0, p0

    move-wide v1, p1

    .end local p0    # "random":Lorg/apache/commons/math3/random/RandomGenerator;
    .end local p1    # "alpha":D
    .restart local v0    # "random":Lorg/apache/commons/math3/random/RandomGenerator;
    .restart local v1    # "alpha":D
    move-wide v7, v5

    move-wide v5, v3

    move-wide v3, v7

    .local v3, "b":D
    .local v5, "a":D
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/BetaDistribution$ChengBetaSampler;->algorithmBC(Lorg/apache/commons/math3/random/RandomGenerator;DDD)D

    move-result-wide p0

    move-wide v7, v5

    move-wide v5, v3

    move-wide v3, v7

    .local v3, "a":D
    .local v5, "b":D
    return-wide p0
.end method
