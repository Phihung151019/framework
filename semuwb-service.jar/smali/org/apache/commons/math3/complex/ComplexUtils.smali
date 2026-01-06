.class public Lorg/apache/commons/math3/complex/ComplexUtils;
.super Ljava/lang/Object;
.source "ComplexUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;
    .locals 7
    .param p0, "real"    # [D

    .line 79
    array-length v0, p0

    new-array v0, v0, [Lorg/apache/commons/math3/complex/Complex;

    .line 80
    .local v0, "c":[Lorg/apache/commons/math3/complex/Complex;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 81
    new-instance v2, Lorg/apache/commons/math3/complex/Complex;

    aget-wide v3, p0, v1

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    aput-object v2, v0, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static polar2Complex(DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 5
    .param p0, "r"    # D
    .param p2, "theta"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 62
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 66
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, p0

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NEGATIVE_COMPLEX_MODULE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method
