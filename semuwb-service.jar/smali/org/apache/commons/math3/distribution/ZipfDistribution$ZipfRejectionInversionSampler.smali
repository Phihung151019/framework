.class final Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;
.super Ljava/lang/Object;
.source "ZipfDistribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/distribution/ZipfDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipfRejectionInversionSampler"
.end annotation


# instance fields
.field private final exponent:D

.field private final hIntegralNumberOfElements:D

.field private final hIntegralX1:D

.field private final numberOfElements:I

.field private final s:D


# direct methods
.method constructor <init>(ID)V
    .locals 6
    .param p1, "numberOfElements"    # I
    .param p2, "exponent"    # D

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    .line 332
    iput p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->numberOfElements:I

    .line 333
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralX1:D

    .line 334
    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralNumberOfElements:D

    .line 335
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->h(D)D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralInverse(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->s:D

    .line 336
    return-void
.end method

.method private h(D)D
    .locals 4
    .param p1, "x"    # D

    .line 435
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    neg-double v0, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private hIntegral(D)D
    .locals 6
    .param p1, "x"    # D

    .line 424
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    .line 425
    .local v0, "logX":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->helper2(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method private hIntegralInverse(D)D
    .locals 4
    .param p1, "x"    # D

    .line 445
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    .line 446
    .local v0, "t":D
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 449
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 451
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->helper1(D)D

    move-result-wide v2

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    return-wide v2
.end method

.method static helper1(D)D
    .locals 4
    .param p0, "x"    # D

    .line 463
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 464
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v0

    div-double/2addr v0, p0

    return-wide v0

    .line 467
    :cond_0
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, p0

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double/2addr v2, v0

    mul-double/2addr v2, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method static helper2(D)D
    .locals 8
    .param p0, "x"    # D

    .line 480
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 481
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v0

    div-double/2addr v0, p0

    return-wide v0

    .line 484
    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, p0

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v2, p0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v4, p0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    return-wide v0
.end method


# virtual methods
.method sample(Lorg/apache/commons/math3/random/RandomGenerator;)I
    .locals 11
    .param p1, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .line 345
    nop

    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralNumberOfElements:D

    invoke-interface {p1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralX1:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralNumberOfElements:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 348
    .local v0, "u":D
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralInverse(D)D

    move-result-wide v2

    .line 350
    .local v2, "x":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double v6, v2, v4

    double-to-int v6, v6

    .line 354
    .local v6, "k":I
    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    .line 355
    const/4 v6, 0x1

    goto :goto_1

    .line 357
    :cond_0
    iget v7, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->numberOfElements:I

    if-le v6, v7, :cond_1

    .line 358
    iget v6, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->numberOfElements:I

    .line 368
    :cond_1
    :goto_1
    int-to-double v7, v6

    sub-double/2addr v7, v2

    iget-wide v9, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->s:D

    cmpg-double v7, v7, v9

    if-lez v7, :cond_3

    int-to-double v7, v6

    add-double/2addr v7, v4

    invoke-direct {p0, v7, v8}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide v4

    int-to-double v7, v6

    invoke-direct {p0, v7, v8}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->h(D)D

    move-result-wide v7

    sub-double/2addr v4, v7

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2

    goto :goto_2

    .line 408
    .end local v0    # "u":D
    .end local v2    # "x":D
    .end local v6    # "k":I
    :cond_2
    goto :goto_0

    .line 406
    .restart local v0    # "u":D
    .restart local v2    # "x":D
    .restart local v6    # "k":I
    :cond_3
    :goto_2
    return v6
.end method
