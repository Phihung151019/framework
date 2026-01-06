.class public Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;
.super Ljava/lang/Object;
.source "UnivariatePeriodicInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# static fields
.field public static final DEFAULT_EXTEND:I = 0x5


# instance fields
.field private final extend:I

.field private final interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private final period:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;D)V
    .locals 1
    .param p1, "interpolator"    # Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
    .param p2, "period"    # D

    .line 75
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;-><init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;DI)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;DI)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
    .param p2, "period"    # D
    .param p4, "extend"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 61
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    .line 62
    iput p4, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;

    .line 35
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    return-wide v0
.end method


# virtual methods
.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 11
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 87
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    if-lt v0, v1, :cond_2

    .line 91
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 92
    const/4 v0, 0x0

    aget-wide v5, p1, v0

    .line 94
    .local v5, "offset":D
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 95
    .local v0, "len":I
    new-array v7, v0, [D

    .line 96
    .local v7, "x":[D
    new-array v8, v0, [D

    .line 97
    .local v8, "y":[D
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_0
    array-length v1, p1

    if-ge v9, v1, :cond_0

    .line 98
    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    add-int v10, v9, v1

    .line 99
    .local v10, "index":I
    aget-wide v1, p1, v9

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v1

    aput-wide v1, v7, v10

    .line 100
    aget-wide v1, p2, v9

    aput-wide v1, v8, v10

    .line 97
    .end local v10    # "index":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 104
    .end local v9    # "i":I
    :cond_0
    const/4 v1, 0x0

    move v9, v1

    .restart local v9    # "i":I
    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    if-ge v9, v1, :cond_1

    .line 105
    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    sub-int/2addr v1, v2

    add-int v10, v1, v9

    .line 106
    .restart local v10    # "index":I
    aget-wide v1, p1, v10

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    sub-double/2addr v1, v3

    aput-wide v1, v7, v9

    .line 107
    aget-wide v1, p2, v10

    aput-wide v1, v8, v9

    .line 109
    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    sub-int v1, v0, v1

    add-int v10, v1, v9

    .line 110
    aget-wide v1, p1, v9

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    add-double/2addr v1, v3

    aput-wide v1, v7, v10

    .line 111
    aget-wide v1, p2, v9

    aput-wide v1, v8, v10

    .line 104
    .end local v10    # "index":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 114
    .end local v9    # "i":I
    :cond_1
    filled-new-array {v8}, [[D

    move-result-object v1

    invoke-static {v7, v1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 116
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    invoke-interface {v1, v7, v8}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v1

    .line 117
    .local v1, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;

    invoke-direct {v2, p0, v1, v5, v6}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)V

    return-object v2

    .line 88
    .end local v0    # "len":I
    .end local v1    # "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v5    # "offset":D
    .end local v7    # "x":[D
    .end local v8    # "y":[D
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method
