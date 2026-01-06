.class public Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;
.super Ljava/lang/Object;
.source "UnitSphereRandomVectorGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# instance fields
.field private final dimension:I

.field private final rand:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "dimension"    # I

    .line 56
    new-instance v0, Lorg/apache/commons/math3/random/MersenneTwister;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/MersenneTwister;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;-><init>(ILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 57
    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0
    .param p1, "dimension"    # I
    .param p2, "rand"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    .line 47
    iput-object p2, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 48
    return-void
.end method


# virtual methods
.method public nextVector()[D
    .locals 8

    .line 61
    iget v0, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    new-array v0, v0, [D

    .line 66
    .local v0, "v":[D
    const-wide/16 v1, 0x0

    .line 67
    .local v1, "normSq":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    if-ge v3, v4, :cond_0

    .line 68
    iget-object v4, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v4

    .line 69
    .local v4, "comp":D
    aput-wide v4, v0, v3

    .line 70
    mul-double v6, v4, v4

    add-double/2addr v1, v6

    .line 67
    .end local v4    # "comp":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "i":I
    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    .line 74
    .local v3, "f":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    if-ge v5, v6, :cond_1

    .line 75
    aget-wide v6, v0, v5

    mul-double/2addr v6, v3

    aput-wide v6, v0, v5

    .line 74
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 78
    .end local v5    # "i":I
    :cond_1
    return-object v0
.end method
