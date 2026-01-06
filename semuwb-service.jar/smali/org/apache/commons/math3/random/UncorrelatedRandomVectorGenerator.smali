.class public Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;
.super Ljava/lang/Object;
.source "UncorrelatedRandomVectorGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# instance fields
.field private final generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

.field private final mean:[D

.field private final standardDeviation:[D


# direct methods
.method public constructor <init>(ILorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 3
    .param p1, "dimension"    # I
    .param p2, "generator"    # Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->mean:[D

    .line 73
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->standardDeviation:[D

    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->standardDeviation:[D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 75
    iput-object p2, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .line 76
    return-void
.end method

.method public constructor <init>([D[DLorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 3
    .param p1, "mean"    # [D
    .param p2, "standardDeviation"    # [D
    .param p3, "generator"    # Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->mean:[D

    .line 59
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->standardDeviation:[D

    .line 60
    iput-object p3, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .line 61
    return-void

    .line 56
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public nextVector()[D
    .locals 8

    .line 83
    iget-object v0, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->mean:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 84
    .local v0, "random":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 85
    iget-object v2, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->mean:[D

    aget-wide v2, v2, v1

    iget-object v4, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->standardDeviation:[D

    aget-wide v4, v4, v1

    iget-object v6, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    invoke-interface {v6}, Lorg/apache/commons/math3/random/NormalizedRandomGenerator;->nextNormalizedDouble()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
