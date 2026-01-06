.class public Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "UniformIntegerDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x133022dL


# instance fields
.field private final lower:I

.field private final upper:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V
    .locals 5
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "lower"    # I
    .param p3, "upper"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 77
    if-gt p2, p3, :cond_0

    .line 82
    iput p2, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    .line 83
    iput p3, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    .line 84
    return-void

    .line 78
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 7
    .param p1, "x"    # I

    .line 96
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    if-ge p1, v0, :cond_0

    .line 97
    const-wide/16 v0, 0x0

    return-wide v0

    .line 99
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-le p1, v0, :cond_1

    .line 100
    return-wide v1

    .line 102
    :cond_1
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    sub-int v0, p1, v0

    int-to-double v3, v0

    add-double/2addr v3, v1

    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    iget v5, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    sub-int/2addr v0, v5

    int-to-double v5, v0

    add-double/2addr v5, v1

    div-double/2addr v3, v5

    return-wide v3
.end method

.method public getNumericalMean()D
    .locals 4

    .line 112
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 6

    .line 122
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    .line 123
    .local v0, "n":D
    mul-double v2, v0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public getSupportLowerBound()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    .line 147
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public probability(I)D
    .locals 4
    .param p1, "x"    # I

    .line 88
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    return-wide v2

    .line 89
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sample()I
    .locals 3

    .line 164
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 165
    .local v0, "max":I
    if-gtz v0, :cond_1

    .line 170
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt()I

    move-result v1

    .line 171
    .local v1, "r":I
    iget v2, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    if-lt v1, v2, :cond_0

    iget v2, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    if-gt v1, v2, :cond_0

    .line 173
    return v1

    .line 175
    .end local v1    # "r":I
    :cond_0
    goto :goto_0

    .line 178
    :cond_1
    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    iget-object v2, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method
