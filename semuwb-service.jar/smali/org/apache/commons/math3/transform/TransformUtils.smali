.class public Lorg/apache/commons/math3/transform/TransformUtils;
.super Ljava/lang/Object;
.source "TransformUtils.java"


# static fields
.field private static final POWERS_OF_TWO:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/transform/TransformUtils;->POWERS_OF_TWO:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static createComplexArray([[D)[Lorg/apache/commons/math3/complex/Complex;
    .locals 10
    .param p0, "dataRI"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 126
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 129
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 130
    .local v0, "dataR":[D
    const/4 v1, 0x1

    aget-object v1, p0, v1

    .line 131
    .local v1, "dataI":[D
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_1

    .line 135
    array-length v2, v0

    .line 136
    .local v2, "n":I
    new-array v3, v2, [Lorg/apache/commons/math3/complex/Complex;

    .line 137
    .local v3, "c":[Lorg/apache/commons/math3/complex/Complex;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 138
    new-instance v5, Lorg/apache/commons/math3/complex/Complex;

    aget-wide v6, v0, v4

    aget-wide v8, v1, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    aput-object v5, v3, v4

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    .end local v4    # "i":I
    :cond_0
    return-object v3

    .line 132
    .end local v2    # "n":I
    .end local v3    # "c":[Lorg/apache/commons/math3/complex/Complex;
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v1

    array-length v4, v0

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 127
    .end local v0    # "dataR":[D
    .end local v1    # "dataI":[D
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p0

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static createRealImaginaryArray([Lorg/apache/commons/math3/complex/Complex;)[[D
    .locals 7
    .param p0, "dataC"    # [Lorg/apache/commons/math3/complex/Complex;

    .line 98
    array-length v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    aput v1, v2, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 99
    .local v1, "dataRI":[[D
    aget-object v0, v1, v0

    .line 100
    .local v0, "dataR":[D
    aget-object v2, v1, v3

    .line 101
    .local v2, "dataI":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 102
    aget-object v4, p0, v3

    .line 103
    .local v4, "c":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v4}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v5

    aput-wide v5, v0, v3

    .line 104
    invoke-virtual {v4}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v5

    aput-wide v5, v2, v3

    .line 101
    .end local v4    # "c":Lorg/apache/commons/math3/complex/Complex;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method public static exactLog2(I)I
    .locals 4
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 155
    sget-object v0, Lorg/apache/commons/math3/transform/TransformUtils;->POWERS_OF_TWO:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 156
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 161
    return v0

    .line 157
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_CONSIDER_PADDING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static scaleArray([DD)[D
    .locals 3
    .param p0, "f"    # [D
    .param p1, "d"    # D

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 62
    aget-wide v1, p0, v0

    mul-double/2addr v1, p1

    aput-wide v1, p0, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public static scaleArray([Lorg/apache/commons/math3/complex/Complex;D)[Lorg/apache/commons/math3/complex/Complex;
    .locals 6
    .param p0, "f"    # [Lorg/apache/commons/math3/complex/Complex;
    .param p1, "d"    # D

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 78
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    mul-double/2addr v2, p1

    aget-object v4, p0, v0

    invoke-virtual {v4}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v4

    mul-double/2addr v4, p1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    aput-object v1, p0, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method
