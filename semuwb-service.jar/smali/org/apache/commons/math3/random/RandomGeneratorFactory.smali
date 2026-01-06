.class public Lorg/apache/commons/math3/random/RandomGeneratorFactory;
.super Ljava/lang/Object;
.source "RandomGeneratorFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToLong([I)J
    .locals 12
    .param p0, "seed"    # [I

    .line 112
    const-wide v0, 0xfffffffbL

    .line 114
    .local v0, "prime":J
    const-wide/16 v2, 0x0

    .line 115
    .local v2, "combined":J
    move-object v4, p0

    .local v4, "arr$":[I
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_0

    aget v7, v4, v6

    .line 116
    .local v7, "s":I
    const-wide v8, 0xfffffffbL

    mul-long/2addr v8, v2

    int-to-long v10, v7

    add-long v2, v8, v10

    .line 115
    .end local v7    # "s":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 119
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_0
    return-wide v2
.end method

.method public static createRandomGenerator(Ljava/util/Random;)Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 1
    .param p0, "rng"    # Ljava/util/Random;

    .line 42
    new-instance v0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;-><init>(Ljava/util/Random;)V

    return-object v0
.end method
