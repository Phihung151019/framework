.class public Lorg/apache/commons/math3/random/StableRandomGenerator;
.super Ljava/lang/Object;
.source "StableRandomGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/NormalizedRandomGenerator;


# instance fields
.field private final alpha:D

.field private final beta:D

.field private final generator:Lorg/apache/commons/math3/random/RandomGenerator;

.field private final zeta:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 6
    .param p1, "generator"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-eqz p1, :cond_3

    .line 64
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v4, p2, v2

    if-gtz v4, :cond_2

    .line 69
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v4, p4, v4

    if-ltz v4, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p4, v4

    if-gtz v4, :cond_1

    .line 74
    iput-object p1, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 75
    iput-wide p2, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    .line 76
    iput-wide p4, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    .line 77
    cmpg-double v4, p2, v2

    if-gez v4, :cond_0

    cmpl-double v4, p4, v0

    if-eqz v4, :cond_0

    .line 78
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v0

    mul-double/2addr v0, p4

    iput-wide v0, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    goto :goto_0

    .line 80
    :cond_0
    iput-wide v0, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    .line 82
    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 65
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_LEFT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 61
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public nextNormalizedDouble()D
    .locals 21

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    neg-double v1, v1

    .line 92
    .local v1, "omega":D
    iget-object v3, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    .line 95
    .local v3, "phi":D
    iget-wide v7, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    .line 96
    mul-double/2addr v9, v1

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    return-wide v5

    .line 102
    :cond_0
    iget-wide v7, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    const-wide/16 v11, 0x0

    cmpl-double v7, v7, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-nez v7, :cond_2

    .line 104
    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_1

    .line 105
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v5

    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    .local v5, "x":D
    goto/16 :goto_0

    .line 107
    .end local v5    # "x":D
    :cond_1
    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    sub-double v5, v11, v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    iget-wide v7, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    div-double v7, v11, v7

    sub-double/2addr v7, v11

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v5

    iget-wide v7, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    iget-wide v9, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    div-double/2addr v11, v9

    invoke-static {v7, v8, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    .restart local v5    # "x":D
    goto/16 :goto_0

    .line 114
    .end local v5    # "x":D
    :cond_2
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    .line 116
    .local v7, "cosPhi":D
    iget-wide v13, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    sub-double/2addr v13, v11

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v13, v13, v15

    if-lez v13, :cond_3

    .line 117
    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    mul-double/2addr v5, v3

    .line 118
    .local v5, "alphaPhi":D
    sub-double v9, v3, v5

    .line 119
    .local v9, "invAlphaPhi":D
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v13

    move-wide v15, v11

    iget-wide v11, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v17

    mul-double v11, v11, v17

    add-double/2addr v13, v11

    div-double/2addr v13, v7

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v11

    move-wide/from16 v17, v1

    .end local v1    # "omega":D
    .local v17, "omega":D
    iget-wide v1, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v19

    mul-double v1, v1, v19

    add-double/2addr v11, v1

    mul-double/2addr v13, v11

    mul-double v1, v17, v7

    iget-wide v11, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    sub-double v11, v15, v11

    move-wide/from16 v19, v3

    .end local v3    # "phi":D
    .local v19, "phi":D
    iget-wide v3, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    div-double/2addr v11, v3

    invoke-static {v1, v2, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    div-double v5, v13, v1

    .line 122
    .end local v9    # "invAlphaPhi":D
    .local v5, "x":D
    goto :goto_0

    .line 123
    .end local v5    # "x":D
    .end local v17    # "omega":D
    .end local v19    # "phi":D
    .restart local v1    # "omega":D
    .restart local v3    # "phi":D
    :cond_3
    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    move-wide v15, v11

    .end local v1    # "omega":D
    .end local v3    # "phi":D
    .restart local v17    # "omega":D
    .restart local v19    # "phi":D
    iget-wide v1, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    mul-double v1, v1, v19

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v1, v3

    .line 124
    .local v1, "betaPhi":D
    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v11

    mul-double/2addr v11, v1

    iget-wide v13, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    mul-double v3, v3, v17

    mul-double/2addr v3, v7

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    mul-double/2addr v13, v3

    sub-double/2addr v11, v13

    const-wide v3, 0x3fe45f306dc9c883L    # 0.6366197723675814

    mul-double/2addr v3, v11

    .line 127
    .local v3, "x":D
    iget-wide v11, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    cmpl-double v11, v11, v15

    if-eqz v11, :cond_4

    .line 128
    iget-wide v11, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    iget-wide v13, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    mul-double/2addr v13, v5

    div-double/2addr v13, v9

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v5

    mul-double/2addr v11, v5

    add-double v5, v3, v11

    .end local v3    # "x":D
    .restart local v5    # "x":D
    goto :goto_0

    .line 127
    .end local v5    # "x":D
    .restart local v3    # "x":D
    :cond_4
    move-wide v5, v3

    .line 132
    .end local v1    # "betaPhi":D
    .end local v3    # "x":D
    .end local v7    # "cosPhi":D
    .restart local v5    # "x":D
    :goto_0
    return-wide v5
.end method
