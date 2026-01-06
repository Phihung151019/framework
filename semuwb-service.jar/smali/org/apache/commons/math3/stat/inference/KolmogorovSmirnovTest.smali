.class public Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;
.super Ljava/lang/Object;
.source "KolmogorovSmirnovTest.java"


# static fields
.field protected static final KS_SUM_CAUCHY_CRITERION:D = 1.0E-20

.field protected static final LARGE_SAMPLE_PRODUCT:I = 0x2710

.field protected static final MAXIMUM_PARTIAL_SUM_COUNT:I = 0x186a0

.field protected static final MONTE_CARLO_ITERATIONS:I = 0xf4240
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final PG_SUM_RELATIVE_ERROR:D = 1.0E-10

.field protected static final SMALL_SAMPLE_PRODUCT:I = 0xc8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final rng:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 156
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 168
    return-void
.end method

.method private static c(IIIIJZ)I
    .locals 8
    .param p0, "i"    # I
    .param p1, "j"    # I
    .param p2, "m"    # I
    .param p3, "n"    # I
    .param p4, "cmn"    # J
    .param p6, "strict"    # Z

    .line 1229
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p6, :cond_1

    .line 1230
    int-to-long v2, p0

    int-to-long v4, p3

    mul-long/2addr v2, v4

    int-to-long v4, p1

    int-to-long v6, p2

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 1232
    :cond_1
    int-to-long v2, p0

    int-to-long v4, p3

    mul-long/2addr v2, v4

    int-to-long v4, p1

    int-to-long v6, p2

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private static calculateIntegralD(DIIZ)J
    .locals 10
    .param p0, "d"    # D
    .param p2, "n"    # I
    .param p3, "m"    # I
    .param p4, "strict"    # Z

    .line 974
    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 975
    .local v0, "tol":D
    int-to-long v2, p2

    int-to-long v4, p3

    mul-long/2addr v2, v4

    .line 976
    .local v2, "nm":J
    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    sub-double v6, p0, v4

    long-to-double v8, v2

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    .line 977
    .local v6, "upperBound":J
    add-double/2addr v4, p0

    long-to-double v8, v2

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    .line 978
    .local v4, "lowerBound":J
    if-eqz p4, :cond_0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 979
    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    return-wide v8

    .line 982
    :cond_0
    return-wide v6
.end method

.method private checkArray([D)V
    .locals 4
    .param p1, "array"    # [D

    .line 914
    if-eqz p1, :cond_1

    .line 917
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 921
    return-void

    .line 918
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 915
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private createExactH(DI)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 15
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .line 750
    move/from16 v1, p3

    int-to-double v2, v1

    mul-double v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 751
    .local v2, "k":I
    mul-int/lit8 v0, v2, 0x2

    const/4 v3, 0x1

    add-int/lit8 v4, v0, -0x1

    .line 752
    .local v4, "m":I
    int-to-double v5, v2

    int-to-double v7, v1

    mul-double v7, v7, p1

    sub-double v10, v5, v7

    .line 753
    .local v10, "hDouble":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v10, v5

    const/4 v7, 0x0

    if-gez v0, :cond_9

    .line 756
    const/4 v5, 0x0

    .line 758
    .local v5, "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :try_start_0
    new-instance v9, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v12, 0x3bc79ca10c924223L    # 1.0E-20

    const/16 v14, 0x2710

    invoke-direct/range {v9 .. v14}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_0
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .end local v5    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .local v9, "h":Lorg/apache/commons/math3/fraction/BigFraction;
    goto :goto_0

    .line 759
    .end local v9    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .restart local v5    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 761
    .local v6, "e1":Lorg/apache/commons/math3/fraction/FractionConversionException;
    :try_start_1
    new-instance v9, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v12, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const/16 v14, 0x2710

    invoke-direct/range {v9 .. v14}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_1
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 764
    .end local v5    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .restart local v9    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    goto :goto_0

    .line 762
    .end local v9    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .restart local v5    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :catch_1
    move-exception v0

    .line 763
    .local v0, "e2":Lorg/apache/commons/math3/fraction/FractionConversionException;
    new-instance v9, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v14, 0x2710

    invoke-direct/range {v9 .. v14}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V

    .line 766
    .end local v0    # "e2":Lorg/apache/commons/math3/fraction/FractionConversionException;
    .end local v5    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v6    # "e1":Lorg/apache/commons/math3/fraction/FractionConversionException;
    .restart local v9    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :goto_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    aput v4, v5, v3

    aput v4, v5, v7

    const-class v6, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lorg/apache/commons/math3/fraction/BigFraction;

    .line 771
    .local v5, "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 772
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v4, :cond_1

    .line 773
    sub-int v12, v6, v8

    add-int/2addr v12, v3

    if-gez v12, :cond_0

    .line 774
    aget-object v12, v5, v6

    sget-object v13, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v13, v12, v8

    goto :goto_3

    .line 776
    :cond_0
    aget-object v12, v5, v6

    sget-object v13, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v13, v12, v8

    .line 772
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 771
    .end local v8    # "j":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 785
    .end local v6    # "i":I
    :cond_2
    new-array v6, v4, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 786
    .local v6, "hPowers":[Lorg/apache/commons/math3/fraction/BigFraction;
    aput-object v9, v6, v7

    .line 787
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_4
    if-ge v8, v4, :cond_3

    .line 788
    add-int/lit8 v12, v8, -0x1

    aget-object v12, v6, v12

    invoke-virtual {v9, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v12

    aput-object v12, v6, v8

    .line 787
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 794
    .end local v8    # "i":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    if-ge v8, v4, :cond_4

    .line 795
    aget-object v12, v5, v8

    aget-object v13, v5, v8

    aget-object v13, v13, v7

    aget-object v14, v6, v8

    invoke-virtual {v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v13

    aput-object v13, v12, v7

    .line 796
    add-int/lit8 v12, v4, -0x1

    aget-object v12, v5, v12

    add-int/lit8 v13, v4, -0x1

    aget-object v13, v5, v13

    aget-object v13, v13, v8

    sub-int v14, v4, v8

    sub-int/2addr v14, v3

    aget-object v14, v6, v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v13

    aput-object v13, v12, v8

    .line 794
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 803
    .end local v8    # "i":I
    :cond_4
    sget-object v8, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result v8

    if-ne v8, v3, :cond_5

    .line 804
    add-int/lit8 v8, v4, -0x1

    aget-object v8, v5, v8

    add-int/lit8 v12, v4, -0x1

    aget-object v12, v5, v12

    aget-object v12, v12, v7

    invoke-virtual {v9, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->pow(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aput-object v0, v8, v7

    .line 815
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v4, :cond_8

    .line 816
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_7
    add-int/lit8 v8, v0, 0x1

    if-ge v7, v8, :cond_7

    .line 817
    sub-int v8, v0, v7

    add-int/2addr v8, v3

    if-lez v8, :cond_6

    .line 818
    const/4 v8, 0x2

    .local v8, "g":I
    :goto_8
    sub-int v12, v0, v7

    add-int/2addr v12, v3

    if-gt v8, v12, :cond_6

    .line 819
    aget-object v12, v5, v0

    aget-object v13, v5, v0

    aget-object v13, v13, v7

    invoke-virtual {v13, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v13

    aput-object v13, v12, v7

    .line 818
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 816
    .end local v8    # "g":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 815
    .end local v7    # "j":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 824
    .end local v0    # "i":I
    :cond_8
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v3

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V

    return-object v0

    .line 754
    .end local v5    # "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v6    # "hPowers":[Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v9    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_9
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v0, v3, v5, v7}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method private createRoundedH(DI)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 17
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 839
    move/from16 v0, p3

    int-to-double v1, v0

    mul-double v1, v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 840
    .local v1, "k":I
    mul-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 841
    .local v2, "m":I
    int-to-double v4, v1

    int-to-double v6, v0

    mul-double v6, v6, p1

    sub-double/2addr v4, v6

    .line 842
    .local v4, "h":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    const/4 v9, 0x0

    if-gez v8, :cond_9

    .line 845
    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v2, v8, v3

    aput v2, v8, v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 850
    .local v8, "Hdata":[[D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v2, :cond_2

    .line 851
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v2, :cond_1

    .line 852
    sub-int v12, v10, v11

    add-int/2addr v12, v3

    if-gez v12, :cond_0

    .line 853
    aget-object v12, v8, v10

    const-wide/16 v13, 0x0

    aput-wide v13, v12, v11

    goto :goto_2

    .line 855
    :cond_0
    aget-object v12, v8, v10

    aput-wide v6, v12, v11

    .line 851
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 850
    .end local v11    # "j":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 864
    .end local v10    # "i":I
    :cond_2
    new-array v10, v2, [D

    .line 865
    .local v10, "hPowers":[D
    aput-wide v4, v10, v9

    .line 866
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_3
    if-ge v11, v2, :cond_3

    .line 867
    add-int/lit8 v12, v11, -0x1

    aget-wide v12, v10, v12

    mul-double/2addr v12, v4

    aput-wide v12, v10, v11

    .line 866
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 873
    .end local v11    # "i":I
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    if-ge v11, v2, :cond_4

    .line 874
    aget-object v12, v8, v11

    aget-object v13, v8, v11

    aget-wide v13, v13, v9

    aget-wide v15, v10, v11

    sub-double/2addr v13, v15

    aput-wide v13, v12, v9

    .line 875
    add-int/lit8 v12, v2, -0x1

    aget-object v12, v8, v12

    aget-wide v13, v12, v11

    sub-int v15, v2, v11

    sub-int/2addr v15, v3

    aget-wide v15, v10, v15

    sub-double/2addr v13, v15

    aput-wide v13, v12, v11

    .line 873
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 882
    .end local v11    # "i":I
    :cond_4
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Double;->compare(DD)I

    move-result v11

    if-lez v11, :cond_5

    .line 883
    add-int/lit8 v11, v2, -0x1

    aget-object v11, v8, v11

    aget-wide v12, v11, v9

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v4

    sub-double/2addr v14, v6

    invoke-static {v14, v15, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v6

    add-double/2addr v12, v6

    aput-wide v12, v11, v9

    .line 894
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-ge v6, v2, :cond_8

    .line 895
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6
    add-int/lit8 v9, v6, 0x1

    if-ge v7, v9, :cond_7

    .line 896
    sub-int v9, v6, v7

    add-int/2addr v9, v3

    if-lez v9, :cond_6

    .line 897
    const/4 v9, 0x2

    .local v9, "g":I
    :goto_7
    sub-int v11, v6, v7

    add-int/2addr v11, v3

    if-gt v9, v11, :cond_6

    .line 898
    aget-object v11, v8, v6

    aget-wide v12, v11, v7

    int-to-double v14, v9

    div-double/2addr v12, v14

    aput-wide v12, v11, v7

    .line 897
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 895
    .end local v9    # "g":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 894
    .end local v7    # "j":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 903
    .end local v6    # "i":I
    :cond_8
    invoke-static {v8}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    return-object v3

    .line 843
    .end local v8    # "Hdata":[[D
    .end local v10    # "hPowers":[D
    :cond_9
    new-instance v3, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v8, v6, v9}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v3
.end method

.method private exactK(DI)D
    .locals 6
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 555
    int-to-double v0, p3

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 557
    .local v0, "k":I
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->createExactH(DI)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 558
    .local v1, "H":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    invoke-interface {v1, p3}, Lorg/apache/commons/math3/linear/FieldMatrix;->power(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 560
    .local v2, "Hpower":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 562
    .local v3, "pFrac":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, p3, :cond_0

    .line 563
    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v5, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    .line 562
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 571
    .end local v4    # "i":I
    :cond_0
    const/16 v4, 0x14

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->bigDecimalValue(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    return-wide v4
.end method

.method static fillBooleanArrayRandomlyWithFixedNumberTrueValues([ZILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 4
    .param p0, "b"    # [Z
    .param p1, "numberOfTrueValues"    # I
    .param p2, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .line 1045
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1046
    move v0, p1

    .local v0, "k":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1047
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2, v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v1

    .line 1048
    .local v1, "r":I
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    const/4 v3, 0x0

    aput-boolean v3, p0, v2

    .line 1046
    .end local v1    # "r":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1050
    .end local v0    # "k":I
    :cond_1
    return-void
.end method

.method private static fixTies([D[D)V
    .locals 17
    .param p0, "x"    # [D
    .param p1, "y"    # [D

    .line 1137
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    filled-new-array/range {p0 .. p1}, [[D

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathArrays;->concatenate([[D)[D

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathArrays;->unique([D)[D

    move-result-object v2

    .line 1138
    .local v2, "values":[D
    array-length v3, v2

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    .line 1139
    return-void

    .line 1143
    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 1144
    .local v3, "minDelta":D
    const/4 v5, 0x0

    aget-wide v5, v2, v5

    .line 1145
    .local v5, "prev":D
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1146
    .local v7, "delta":D
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    array-length v10, v2

    if-ge v9, v10, :cond_2

    .line 1147
    aget-wide v10, v2, v9

    sub-double v7, v5, v10

    .line 1148
    cmpg-double v10, v7, v3

    if-gez v10, :cond_1

    .line 1149
    move-wide v3, v7

    .line 1151
    :cond_1
    aget-wide v5, v2, v9

    .line 1146
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1153
    .end local v9    # "i":I
    :cond_2
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v9

    .line 1157
    new-instance v11, Lorg/apache/commons/math3/distribution/UniformRealDistribution;

    new-instance v12, Lorg/apache/commons/math3/random/JDKRandomGenerator;

    const/16 v9, 0x64

    invoke-direct {v12, v9}, Lorg/apache/commons/math3/random/JDKRandomGenerator;-><init>(I)V

    neg-double v13, v3

    move-wide v15, v3

    .end local v3    # "minDelta":D
    .local v15, "minDelta":D
    invoke-direct/range {v11 .. v16}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 1162
    .local v11, "dist":Lorg/apache/commons/math3/distribution/RealDistribution;
    const/4 v3, 0x0

    .line 1163
    .local v3, "ct":I
    const/4 v4, 0x1

    .line 1165
    .local v4, "ties":Z
    :cond_3
    invoke-static {v0, v11}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->jitter([DLorg/apache/commons/math3/distribution/RealDistribution;)V

    .line 1166
    invoke-static {v1, v11}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->jitter([DLorg/apache/commons/math3/distribution/RealDistribution;)V

    .line 1167
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->hasTies([D[D)Z

    move-result v4

    .line 1168
    add-int/lit8 v3, v3, 0x1

    .line 1169
    if-eqz v4, :cond_4

    const/16 v9, 0x3e8

    if-lt v3, v9, :cond_3

    .line 1170
    :cond_4
    if-nez v4, :cond_5

    .line 1173
    return-void

    .line 1171
    :cond_5
    new-instance v9, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v9}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v9
.end method

.method private static hasTies([D[D)Z
    .locals 6
    .param p0, "x"    # [D
    .param p1, "y"    # [D

    .line 1184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1185
    .local v0, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 1186
    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1187
    return v3

    .line 1185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1190
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1191
    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1192
    return v3

    .line 1190
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1195
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private integralKolmogorovSmirnovStatistic([D[D)J
    .locals 16
    .param p1, "x"    # [D
    .param p2, "y"    # [D

    .line 327
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 330
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v2

    .line 331
    .local v2, "sx":[D
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v3

    .line 332
    .local v3, "sy":[D
    invoke-static {v2}, Ljava/util/Arrays;->sort([D)V

    .line 333
    invoke-static {v3}, Ljava/util/Arrays;->sort([D)V

    .line 334
    array-length v4, v2

    .line 335
    .local v4, "n":I
    array-length v5, v3

    .line 337
    .local v5, "m":I
    const/4 v6, 0x0

    .line 338
    .local v6, "rankX":I
    const/4 v7, 0x0

    .line 339
    .local v7, "rankY":I
    const-wide/16 v8, 0x0

    .line 342
    .local v8, "curD":J
    const-wide/16 v10, 0x0

    .line 344
    .local v10, "supD":J
    :cond_0
    aget-wide v12, v2, v6

    aget-wide v14, v3, v7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Double;->compare(DD)I

    move-result v12

    if-gtz v12, :cond_1

    aget-wide v12, v2, v6

    goto :goto_0

    :cond_1
    aget-wide v12, v3, v7

    .line 345
    .local v12, "z":D
    :goto_0
    if-ge v6, v4, :cond_2

    aget-wide v14, v2, v6

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v14

    if-nez v14, :cond_2

    .line 346
    add-int/lit8 v6, v6, 0x1

    .line 347
    int-to-long v14, v5

    add-long/2addr v8, v14

    goto :goto_0

    .line 349
    :cond_2
    :goto_1
    if-ge v7, v5, :cond_3

    aget-wide v14, v3, v7

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v14

    if-nez v14, :cond_3

    .line 350
    add-int/lit8 v7, v7, 0x1

    .line 351
    int-to-long v14, v4

    sub-long/2addr v8, v14

    goto :goto_1

    .line 353
    :cond_3
    cmp-long v14, v8, v10

    if-lez v14, :cond_4

    .line 354
    move-wide v10, v8

    goto :goto_2

    .line 356
    :cond_4
    neg-long v14, v8

    cmp-long v14, v14, v10

    if-lez v14, :cond_5

    .line 357
    neg-long v10, v8

    .line 359
    .end local v12    # "z":D
    :cond_5
    :goto_2
    if-ge v6, v4, :cond_6

    if-lt v7, v5, :cond_0

    .line 360
    :cond_6
    return-wide v10
.end method

.method private integralMonteCarloP(JIII)D
    .locals 14
    .param p1, "d"    # J
    .param p3, "n"    # I
    .param p4, "m"    # I
    .param p5, "iterations"    # I

    .line 1094
    move-wide v0, p1

    move/from16 v2, p5

    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .line 1095
    .local v3, "nn":I
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    .line 1096
    .local v4, "mm":I
    add-int v5, v3, v4

    .line 1098
    .local v5, "sum":I
    const/4 v6, 0x0

    .line 1099
    .local v6, "tail":I
    new-array v7, v5, [Z

    .line 1100
    .local v7, "b":[Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_3

    .line 1101
    iget-object v9, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-static {v7, v3, v9}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->fillBooleanArrayRandomlyWithFixedNumberTrueValues([ZILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 1102
    const-wide/16 v9, 0x0

    .line 1103
    .local v9, "curD":J
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    array-length v12, v7

    if-ge v11, v12, :cond_2

    .line 1104
    aget-boolean v12, v7, v11

    if-eqz v12, :cond_0

    .line 1105
    int-to-long v12, v4

    add-long/2addr v9, v12

    .line 1106
    cmp-long v12, v9, v0

    if-ltz v12, :cond_1

    .line 1107
    add-int/lit8 v6, v6, 0x1

    .line 1108
    goto :goto_2

    .line 1111
    :cond_0
    int-to-long v12, v3

    sub-long/2addr v9, v12

    .line 1112
    neg-long v12, v0

    cmp-long v12, v9, v12

    if-gtz v12, :cond_1

    .line 1113
    add-int/lit8 v6, v6, 0x1

    .line 1114
    goto :goto_2

    .line 1103
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1100
    .end local v9    # "curD":J
    .end local v11    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1119
    .end local v8    # "i":I
    :cond_3
    int-to-double v8, v6

    int-to-double v10, v2

    div-double/2addr v8, v10

    return-wide v8
.end method

.method private static jitter([DLorg/apache/commons/math3/distribution/RealDistribution;)V
    .locals 5
    .param p0, "data"    # [D
    .param p1, "dist"    # Lorg/apache/commons/math3/distribution/RealDistribution;

    .line 1209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1210
    aget-wide v1, p0, v0

    invoke-interface {p1}, Lorg/apache/commons/math3/distribution/RealDistribution;->sample()D

    move-result-wide v3

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 1209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1212
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static n(IIIIJZ)D
    .locals 12
    .param p0, "i"    # I
    .param p1, "j"    # I
    .param p2, "m"    # I
    .param p3, "n"    # I
    .param p4, "cnm"    # J
    .param p6, "strict"    # Z

    .line 1256
    new-array v7, p3, [D

    .line 1257
    .local v7, "lag":[D
    const-wide/16 v8, 0x0

    .line 1258
    .local v8, "last":D
    const/4 v0, 0x0

    move v10, v0

    .local v10, "k":I
    :goto_0
    if-ge v10, p3, :cond_0

    .line 1259
    add-int/lit8 v1, v10, 0x1

    const/4 v0, 0x0

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->c(IIIIJZ)I

    move-result v0

    int-to-double v0, v0

    aput-wide v0, v7, v10

    .line 1258
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1261
    .end local v10    # "k":I
    :cond_0
    const/4 v0, 0x1

    .local v0, "k":I
    :goto_1
    if-gt v0, p0, :cond_2

    .line 1262
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->c(IIIIJZ)I

    move-result v1

    int-to-double v1, v1

    .line 1263
    .end local v8    # "last":D
    .local v1, "last":D
    const/4 v3, 0x1

    move-wide v8, v1

    move v1, v3

    .local v1, "l":I
    .restart local v8    # "last":D
    :goto_2
    if-gt v1, p1, :cond_1

    .line 1264
    add-int/lit8 v10, v1, -0x1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->c(IIIIJZ)I

    move-result v11

    int-to-double v2, v11

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v7, v4

    add-double/2addr v4, v8

    mul-double/2addr v2, v4

    aput-wide v2, v7, v10

    .line 1265
    add-int/lit8 v2, v1, -0x1

    aget-wide v8, v7, v2

    .line 1263
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1261
    .end local v1    # "l":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1268
    .end local v0    # "k":I
    :cond_2
    return-wide v8
.end method

.method private roundedK(DI)D
    .locals 10
    .param p1, "d"    # D
    .param p3, "n"    # I

    .line 583
    int-to-double v0, p3

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 584
    .local v0, "k":I
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->createRoundedH(DI)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 585
    .local v1, "H":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v1, p3}, Lorg/apache/commons/math3/linear/RealMatrix;->power(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 587
    .local v2, "Hpower":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    .line 588
    .local v3, "pFrac":D
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-gt v5, p3, :cond_0

    .line 589
    int-to-double v6, v5

    int-to-double v8, p3

    div-double/2addr v6, v8

    mul-double/2addr v3, v6

    .line 588
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 592
    .end local v5    # "i":I
    :cond_0
    return-wide v3
.end method


# virtual methods
.method public approximateP(DII)D
    .locals 14
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "m"    # I

    .line 1026
    move/from16 v0, p4

    int-to-double v1, v0

    .line 1027
    .local v1, "dm":D
    move/from16 v3, p3

    int-to-double v4, v3

    .line 1028
    .local v4, "dn":D
    mul-double v6, v1, v4

    add-double v8, v1, v4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double v9, p1, v6

    const-wide v11, 0x3bc79ca10c924223L    # 1.0E-20

    const v13, 0x186a0

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->ksSum(DDI)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    return-wide v8
.end method

.method public bootstrap([D[DI)D
    .locals 2
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "iterations"    # I

    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->bootstrap([D[DIZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public bootstrap([D[DIZ)D
    .locals 18
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "iterations"    # I
    .param p4, "strict"    # Z

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    array-length v4, v1

    .line 418
    .local v4, "xLength":I
    array-length v5, v2

    .line 419
    .local v5, "yLength":I
    add-int v6, v4, v5

    new-array v6, v6, [D

    .line 420
    .local v6, "combined":[D
    const/4 v7, 0x0

    invoke-static {v1, v7, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    invoke-static {v2, v7, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    new-instance v7, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;

    iget-object v8, v0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-direct {v7, v8, v6}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[D)V

    .line 423
    .local v7, "dist":Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->integralKolmogorovSmirnovStatistic([D[D)J

    move-result-wide v8

    .line 424
    .local v8, "d":J
    const/4 v10, 0x0

    .line 425
    .local v10, "greaterCount":I
    const/4 v11, 0x0

    .line 429
    .local v11, "equalCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v3, :cond_2

    .line 430
    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->sample(I)[D

    move-result-object v13

    .line 431
    .local v13, "curX":[D
    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;->sample(I)[D

    move-result-object v14

    .line 432
    .local v14, "curY":[D
    invoke-direct {v0, v13, v14}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->integralKolmogorovSmirnovStatistic([D[D)J

    move-result-wide v15

    .line 433
    .local v15, "curD":J
    cmp-long v17, v15, v8

    if-lez v17, :cond_0

    .line 434
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 435
    :cond_0
    cmp-long v17, v15, v8

    if-nez v17, :cond_1

    .line 436
    add-int/lit8 v11, v11, 0x1

    .line 429
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 439
    .end local v12    # "i":I
    .end local v13    # "curX":[D
    .end local v14    # "curY":[D
    .end local v15    # "curD":J
    :cond_2
    if-eqz p4, :cond_3

    int-to-double v12, v10

    goto :goto_2

    :cond_3
    add-int v12, v10, v11

    int-to-double v12, v12

    :goto_2
    int-to-double v14, v3

    div-double/2addr v12, v14

    return-wide v12
.end method

.method public cdf(DI)D
    .locals 2
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public cdf(DIZ)D
    .locals 14
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "exact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 513
    move/from16 v0, p3

    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    .line 514
    .local v1, "ninv":D
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v1

    .line 516
    .local v5, "ninvhalf":D
    cmpg-double v7, p1, v5

    if-gtz v7, :cond_0

    .line 517
    const-wide/16 v3, 0x0

    return-wide v3

    .line 518
    :cond_0
    cmpg-double v7, v5, p1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-gez v7, :cond_2

    cmpg-double v7, p1, v1

    if-gtz v7, :cond_2

    .line 519
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 520
    .local v3, "res":D
    mul-double/2addr v8, p1

    sub-double/2addr v8, v1

    .line 522
    .local v8, "f":D
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, v0, :cond_1

    .line 523
    int-to-double v10, v7

    mul-double/2addr v10, v8

    mul-double/2addr v3, v10

    .line 522
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 525
    .end local v7    # "i":I
    :cond_1
    return-wide v3

    .line 526
    .end local v3    # "res":D
    .end local v8    # "f":D
    :cond_2
    sub-double v10, v3, v1

    cmpg-double v7, v10, p1

    if-gtz v7, :cond_3

    cmpg-double v7, p1, v3

    if-gez v7, :cond_3

    .line 527
    sub-double v10, v3, p1

    int-to-double v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v10, v8

    sub-double/2addr v3, v10

    return-wide v3

    .line 528
    :cond_3
    cmpg-double v7, v3, p1

    if-gtz v7, :cond_4

    .line 529
    return-wide v3

    .line 531
    :cond_4
    if-eqz p4, :cond_5

    .line 532
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactK(DI)D

    move-result-wide v3

    return-wide v3

    .line 534
    :cond_5
    const/16 v3, 0x8c

    if-gt v0, v3, :cond_6

    .line 535
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->roundedK(DI)D

    move-result-wide v3

    return-wide v3

    .line 537
    :cond_6
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->pelzGood(DI)D

    move-result-wide v3

    return-wide v3
.end method

.method public cdfExact(DI)D
    .locals 2
    .param p1, "d"    # D
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 491
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public exactP(DIIZ)D
    .locals 7
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "m"    # I
    .param p5, "strict"    # Z

    .line 1003
    invoke-static {p1, p2, p4, p3, p5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->calculateIntegralD(DIIZ)J

    move-result-wide v4

    move v2, p4

    move v3, p3

    move v1, p3

    move v0, p4

    move v6, p5

    .end local p3    # "n":I
    .end local p4    # "m":I
    .end local p5    # "strict":Z
    .local v0, "m":I
    .local v1, "n":I
    .local v6, "strict":Z
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->n(IIIIJZ)D

    move-result-wide p3

    add-int p5, v1, v0

    invoke-static {p5, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide v2

    div-double/2addr p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p3

    return-wide v2
.end method

.method public kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 13
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D

    .line 202
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 203
    array-length v0, p2

    .line 204
    .local v0, "n":I
    int-to-double v1, v0

    .line 205
    .local v1, "nd":D
    new-array v3, v0, [D

    .line 206
    .local v3, "dataCopy":[D
    const/4 v4, 0x0

    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    invoke-static {v3}, Ljava/util/Arrays;->sort([D)V

    .line 208
    const-wide/16 v4, 0x0

    .line 209
    .local v4, "d":D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-gt v6, v0, :cond_1

    .line 210
    add-int/lit8 v7, v6, -0x1

    aget-wide v7, v3, v7

    invoke-interface {p1, v7, v8}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v7

    .line 211
    .local v7, "yi":D
    add-int/lit8 v9, v6, -0x1

    int-to-double v9, v9

    div-double/2addr v9, v1

    sub-double v9, v7, v9

    int-to-double v11, v6

    div-double/2addr v11, v1

    sub-double/2addr v11, v7

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    .line 212
    .local v9, "currD":D
    cmpl-double v11, v9, v4

    if-lez v11, :cond_0

    .line 213
    move-wide v4, v9

    .line 209
    .end local v7    # "yi":D
    .end local v9    # "currD":D
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 216
    .end local v6    # "i":I
    :cond_1
    return-wide v4
.end method

.method public kolmogorovSmirnovStatistic([D[D)D
    .locals 6
    .param p1, "x"    # [D
    .param p2, "y"    # [D

    .line 308
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->integralKolmogorovSmirnovStatistic([D[D)J

    move-result-wide v0

    long-to-double v0, v0

    array-length v2, p1

    int-to-long v2, v2

    array-length v4, p2

    int-to-long v4, v4

    mul-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 2
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D
    .locals 4
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D
    .param p3, "exact"    # Z

    .line 186
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide v0

    array-length v2, p2

    invoke-virtual {p0, v0, v1, v2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public kolmogorovSmirnovTest([D[D)D
    .locals 2
    .param p1, "x"    # [D
    .param p2, "y"    # [D

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest([D[DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public kolmogorovSmirnovTest([D[DZ)D
    .locals 11
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "strict"    # Z

    .line 257
    array-length v0, p1

    int-to-long v0, v0

    array-length v2, p2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 258
    .local v0, "lengthProduct":J
    const/4 v2, 0x0

    .line 259
    .local v2, "xa":[D
    const/4 v3, 0x0

    .line 260
    .local v3, "ya":[D
    const-wide/16 v4, 0x2710

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->hasTies([D[D)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v2

    .line 262
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v3

    .line 263
    invoke-static {v2, v3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->fixTies([D[D)V

    goto :goto_0

    .line 265
    :cond_0
    move-object v2, p1

    .line 266
    move-object v3, p2

    .line 268
    :goto_0
    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 269
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v6

    array-length v8, p1

    array-length v9, p2

    move-object v5, p0

    move v10, p3

    .end local p3    # "strict":Z
    .local v10, "strict":Z
    invoke-virtual/range {v5 .. v10}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactP(DIIZ)D

    move-result-wide v6

    return-wide v6

    .line 271
    .end local v10    # "strict":Z
    .restart local p3    # "strict":Z
    :cond_1
    move-object v5, p0

    move v10, p3

    .end local p3    # "strict":Z
    .restart local v10    # "strict":Z
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v6

    array-length p3, p1

    array-length v4, p2

    invoke-virtual {p0, v6, v7, p3, v4}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->approximateP(DII)D

    move-result-wide v6

    return-wide v6
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DD)Z
    .locals 6
    .param p1, "distribution"    # Lorg/apache/commons/math3/distribution/RealDistribution;
    .param p2, "data"    # [D
    .param p3, "alpha"    # D

    .line 392
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p3, v1

    if-gtz v0, :cond_1

    .line 395
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 393
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v4, v5, v3, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public ksSum(DDI)D
    .locals 14
    .param p1, "t"    # D
    .param p3, "tolerance"    # D
    .param p5, "maxIterations"    # I

    .line 936
    move/from16 v0, p5

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 937
    return-wide v1

    .line 943
    :cond_0
    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    mul-double/2addr v1, p1

    mul-double/2addr v1, p1

    .line 944
    .local v1, "x":D
    const/4 v3, -0x1

    .line 945
    .local v3, "sign":I
    const-wide/16 v4, 0x1

    .line 946
    .local v4, "i":J
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 947
    .local v6, "partialSum":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 948
    .local v8, "delta":D
    :goto_0
    cmpl-double v10, v8, p3

    if-lez v10, :cond_1

    int-to-long v10, v0

    cmp-long v10, v4, v10

    if-gez v10, :cond_1

    .line 949
    long-to-double v10, v4

    mul-double/2addr v10, v1

    long-to-double v12, v4

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v8

    .line 950
    int-to-double v10, v3

    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    .line 951
    mul-int/lit8 v3, v3, -0x1

    .line 952
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    goto :goto_0

    .line 954
    :cond_1
    int-to-long v10, v0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_2

    .line 957
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v6

    return-wide v10

    .line 955
    :cond_2
    new-instance v10, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v10
.end method

.method public monteCarloP(DIIZI)D
    .locals 6
    .param p1, "d"    # D
    .param p3, "n"    # I
    .param p4, "m"    # I
    .param p5, "strict"    # Z
    .param p6, "iterations"    # I

    .line 1073
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->calculateIntegralD(DIIZ)J

    move-result-wide v1

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p6

    .end local p3    # "n":I
    .end local p4    # "m":I
    .end local p6    # "iterations":I
    .local v3, "n":I
    .local v4, "m":I
    .local v5, "iterations":I
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->integralMonteCarloP(JIII)D

    move-result-wide p3

    return-wide p3
.end method

.method public pelzGood(DI)D
    .locals 71
    .param p1, "d"    # D
    .param p3, "n"    # I

    .line 605
    move/from16 v0, p3

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 606
    .local v1, "sqrtN":D
    mul-double v3, p1, v1

    .line 607
    .local v3, "z":D
    mul-double v5, p1, p1

    int-to-double v7, v0

    mul-double/2addr v5, v7

    .line 608
    .local v5, "z2":D
    mul-double v7, v5, v5

    .line 609
    .local v7, "z4":D
    mul-double v9, v7, v5

    .line 610
    .local v9, "z6":D
    mul-double v11, v7, v7

    .line 613
    .local v11, "z8":D
    const-wide/16 v13, 0x0

    .line 616
    .local v13, "ret":D
    const-wide/16 v15, 0x0

    .line 617
    .local v15, "sum":D
    const-wide/16 v17, 0x0

    .line 618
    .local v17, "increment":D
    const-wide/16 v19, 0x0

    .line 619
    .local v19, "kTerm":D
    const-wide/high16 v21, 0x4020000000000000L    # 8.0

    mul-double v21, v21, v5

    const-wide v23, 0x4023bd3cc9be45deL    # 9.869604401089358

    move-wide/from16 v25, v1

    .end local v1    # "sqrtN":D
    .local v25, "sqrtN":D
    div-double v1, v23, v21

    .line 620
    .local v1, "z2Term":D
    const/16 v21, 0x1

    move-wide/from16 v69, v3

    move/from16 v3, v21

    move-wide/from16 v21, v69

    .line 621
    .local v3, "k":I
    .local v21, "z":D
    :goto_0
    const-wide v27, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const v4, 0x186a0

    if-ge v3, v4, :cond_1

    .line 622
    mul-int/lit8 v29, v3, 0x2

    add-int/lit8 v4, v29, -0x1

    move-wide/from16 v31, v5

    .end local v5    # "z2":D
    .local v31, "z2":D
    int-to-double v4, v4

    .line 623
    .end local v19    # "kTerm":D
    .local v4, "kTerm":D
    move-wide/from16 v19, v4

    .end local v4    # "kTerm":D
    .restart local v19    # "kTerm":D
    neg-double v4, v1

    mul-double v4, v4, v19

    mul-double v4, v4, v19

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v17

    .line 624
    add-double v15, v15, v17

    .line 625
    mul-double v4, v15, v27

    cmpg-double v4, v17, v4

    if-gtz v4, :cond_0

    .line 626
    goto :goto_1

    .line 621
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v5, v31

    goto :goto_0

    .end local v31    # "z2":D
    .restart local v5    # "z2":D
    :cond_1
    move-wide/from16 v31, v5

    .line 629
    .end local v5    # "z2":D
    .restart local v31    # "z2":D
    :goto_1
    const v4, 0x186a0

    if-eq v3, v4, :cond_11

    .line 632
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v15

    div-double v4, v4, v21

    .line 637
    .end local v13    # "ret":D
    .local v4, "ret":D
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v33, v31, v13

    .line 638
    .local v33, "twoZ2":D
    const-wide/16 v15, 0x0

    .line 639
    const-wide/16 v19, 0x0

    .line 640
    const-wide/16 v35, 0x0

    .line 641
    .local v35, "kTerm2":D
    const/4 v3, 0x0

    :goto_2
    const-wide/high16 v37, 0x3fe0000000000000L    # 0.5

    const-wide v39, -0x3fdc42c33641ba22L    # -9.869604401089358

    const v6, 0x186a0

    if-ge v3, v6, :cond_3

    .line 642
    move-wide/from16 v41, v13

    int-to-double v13, v3

    add-double v19, v13, v37

    .line 643
    mul-double v35, v19, v19

    .line 644
    mul-double v13, v35, v23

    sub-double v13, v13, v31

    mul-double v43, v35, v39

    div-double v43, v43, v33

    invoke-static/range {v43 .. v44}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v43

    mul-double v17, v13, v43

    .line 645
    add-double v15, v15, v17

    .line 646
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v43

    mul-double v43, v43, v27

    cmpg-double v6, v13, v43

    if-gez v6, :cond_2

    .line 647
    goto :goto_3

    .line 641
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v13, v41

    goto :goto_2

    :cond_3
    move-wide/from16 v41, v13

    .line 650
    :goto_3
    const v6, 0x186a0

    if-eq v3, v6, :cond_10

    .line 653
    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 655
    .local v13, "sqrtHalfPi":D
    mul-double v43, v15, v13

    const-wide/high16 v45, 0x4008000000000000L    # 3.0

    mul-double v45, v45, v7

    mul-double v45, v45, v25

    div-double v43, v43, v45

    add-double v4, v4, v43

    .line 659
    mul-double v41, v41, v7

    .line 660
    .local v41, "z4Term":D
    const-wide/high16 v43, 0x4018000000000000L    # 6.0

    mul-double v43, v43, v9

    .line 661
    .local v43, "z6Term":D
    const-wide/high16 v45, 0x4014000000000000L    # 5.0

    mul-double v1, v31, v45

    .line 662
    const-wide v47, 0x40585a2e8c290825L    # 97.40909103400243

    .line 663
    .local v47, "pi4":D
    const-wide/16 v15, 0x0

    .line 664
    const-wide/16 v19, 0x0

    .line 665
    const-wide/16 v35, 0x0

    .line 666
    const/4 v3, 0x0

    :goto_4
    const-wide v49, 0x40585a2e8c290825L    # 97.40909103400243

    const v6, 0x186a0

    if-ge v3, v6, :cond_5

    .line 667
    move-wide/from16 v51, v1

    .end local v1    # "z2Term":D
    .local v51, "z2Term":D
    int-to-double v1, v3

    add-double v19, v1, v37

    .line 668
    mul-double v35, v19, v19

    .line 669
    add-double v1, v43, v41

    sub-double v53, v41, v51

    mul-double v53, v53, v23

    mul-double v53, v53, v35

    add-double v1, v1, v53

    const-wide/high16 v53, 0x3ff0000000000000L    # 1.0

    sub-double v53, v53, v33

    mul-double v53, v53, v49

    mul-double v53, v53, v35

    mul-double v53, v53, v35

    add-double v1, v1, v53

    mul-double v53, v35, v39

    div-double v53, v53, v33

    invoke-static/range {v53 .. v54}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v53

    mul-double v17, v1, v53

    .line 671
    add-double v15, v15, v17

    .line 672
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v53

    mul-double v53, v53, v27

    cmpg-double v1, v1, v53

    if-gez v1, :cond_4

    .line 673
    goto :goto_5

    .line 666
    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v1, v51

    goto :goto_4

    .end local v51    # "z2Term":D
    .restart local v1    # "z2Term":D
    :cond_5
    move-wide/from16 v51, v1

    .line 676
    .end local v1    # "z2Term":D
    .restart local v51    # "z2Term":D
    :goto_5
    const v6, 0x186a0

    if-eq v3, v6, :cond_f

    .line 679
    const-wide/16 v1, 0x0

    .line 680
    .local v1, "sum2":D
    const-wide/16 v29, 0x0

    .line 681
    .end local v35    # "kTerm2":D
    .local v29, "kTerm2":D
    const/4 v3, 0x1

    move-wide/from16 v35, v29

    .end local v29    # "kTerm2":D
    .restart local v35    # "kTerm2":D
    :goto_6
    if-ge v3, v6, :cond_7

    .line 682
    mul-int v6, v3, v3

    move-wide/from16 v53, v1

    .end local v1    # "sum2":D
    .local v53, "sum2":D
    int-to-double v1, v6

    .line 683
    .end local v35    # "kTerm2":D
    .local v1, "kTerm2":D
    mul-double v35, v1, v23

    mul-double v55, v1, v39

    div-double v55, v55, v33

    invoke-static/range {v55 .. v56}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v55

    mul-double v17, v35, v55

    .line 684
    add-double v35, v53, v17

    .line 685
    .end local v53    # "sum2":D
    .local v35, "sum2":D
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v53

    invoke-static/range {v35 .. v36}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v55

    mul-double v55, v55, v27

    cmpg-double v6, v53, v55

    if-gez v6, :cond_6

    .line 686
    move-wide/from16 v69, v35

    move-wide/from16 v35, v1

    move-wide/from16 v1, v69

    goto :goto_7

    .line 681
    :cond_6
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v69, v35

    move-wide/from16 v35, v1

    move-wide/from16 v1, v69

    const v6, 0x186a0

    goto :goto_6

    .local v1, "sum2":D
    .local v35, "kTerm2":D
    :cond_7
    move-wide/from16 v53, v1

    .line 689
    :goto_7
    const v6, 0x186a0

    if-eq v3, v6, :cond_e

    .line 693
    move-wide/from16 v53, v1

    .end local v1    # "sum2":D
    .restart local v53    # "sum2":D
    int-to-double v1, v0

    div-double v1, v13, v1

    const-wide/high16 v55, 0x4042000000000000L    # 36.0

    mul-double v55, v55, v31

    mul-double v55, v55, v31

    mul-double v55, v55, v31

    mul-double v55, v55, v21

    div-double v55, v15, v55

    const-wide/high16 v57, 0x4032000000000000L    # 18.0

    mul-double v57, v57, v31

    mul-double v57, v57, v21

    div-double v57, v53, v57

    sub-double v55, v55, v57

    mul-double v1, v1, v55

    add-double/2addr v4, v1

    .line 697
    const-wide v1, 0x408e0b1d11856df6L    # 961.3891935753043

    .line 698
    .local v1, "pi6":D
    const-wide/16 v15, 0x0

    .line 699
    const-wide/16 v55, 0x0

    .line 700
    .local v55, "kTerm4":D
    const-wide/16 v57, 0x0

    .line 701
    .local v57, "kTerm6":D
    const/4 v3, 0x0

    :goto_8
    const v6, 0x186a0

    if-ge v3, v6, :cond_9

    .line 702
    move-wide/from16 v59, v1

    .end local v1    # "pi6":D
    .local v59, "pi6":D
    int-to-double v1, v3

    add-double v19, v1, v37

    .line 703
    mul-double v35, v19, v19

    .line 704
    mul-double v55, v35, v35

    .line 705
    mul-double v57, v55, v35

    .line 706
    const-wide v1, 0x408e0b1d11856df6L    # 961.3891935753043

    mul-double v1, v1, v57

    const-wide/high16 v61, 0x403e000000000000L    # 30.0

    mul-double v63, v31, v61

    sub-double v63, v45, v63

    mul-double v1, v1, v63

    mul-double v63, v55, v49

    const-wide/high16 v65, -0x3fb2000000000000L    # -60.0

    mul-double v65, v65, v31

    const-wide v67, 0x406a800000000000L    # 212.0

    mul-double v67, v67, v7

    add-double v65, v65, v67

    mul-double v63, v63, v65

    add-double v1, v1, v63

    mul-double v63, v35, v23

    const-wide v65, 0x4060e00000000000L    # 135.0

    mul-double v65, v65, v7

    const-wide/high16 v67, 0x4058000000000000L    # 96.0

    mul-double v67, v67, v9

    sub-double v65, v65, v67

    mul-double v63, v63, v65

    add-double v1, v1, v63

    mul-double v61, v61, v9

    sub-double v1, v1, v61

    const-wide v61, 0x4056800000000000L    # 90.0

    mul-double v61, v61, v11

    sub-double v1, v1, v61

    mul-double v61, v35, v39

    div-double v61, v61, v33

    invoke-static/range {v61 .. v62}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v61

    mul-double v17, v1, v61

    .line 709
    add-double v15, v15, v17

    .line 710
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v61

    mul-double v61, v61, v27

    cmpg-double v1, v1, v61

    if-gez v1, :cond_8

    .line 711
    goto :goto_9

    .line 701
    :cond_8
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v1, v59

    goto :goto_8

    .end local v59    # "pi6":D
    .restart local v1    # "pi6":D
    :cond_9
    move-wide/from16 v59, v1

    .line 714
    .end local v1    # "pi6":D
    .restart local v59    # "pi6":D
    :goto_9
    const v6, 0x186a0

    if-eq v3, v6, :cond_d

    .line 717
    const-wide/16 v1, 0x0

    .line 718
    .end local v53    # "sum2":D
    .local v1, "sum2":D
    const/4 v3, 0x1

    :goto_a
    if-ge v3, v6, :cond_b

    .line 719
    mul-int v6, v3, v3

    move-wide/from16 v23, v1

    .end local v1    # "sum2":D
    .local v23, "sum2":D
    int-to-double v1, v6

    .line 720
    .end local v35    # "kTerm2":D
    .local v1, "kTerm2":D
    mul-double v55, v1, v1

    .line 721
    const-wide v35, -0x3fa7a5d173d6f7dbL    # -97.40909103400243

    mul-double v35, v35, v55

    const-wide v37, 0x403d9bdb2e9d68cdL    # 29.608813203268074

    mul-double v37, v37, v1

    mul-double v37, v37, v31

    add-double v35, v35, v37

    mul-double v37, v1, v39

    div-double v37, v37, v33

    invoke-static/range {v37 .. v38}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v37

    mul-double v17, v35, v37

    .line 723
    add-double v23, v23, v17

    .line 724
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v35

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v37

    mul-double v37, v37, v27

    cmpg-double v6, v35, v37

    if-gez v6, :cond_a

    .line 725
    move-wide/from16 v35, v1

    move-wide/from16 v1, v23

    goto :goto_b

    .line 718
    :cond_a
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v35, v1

    move-wide/from16 v1, v23

    const v6, 0x186a0

    goto :goto_a

    .end local v23    # "sum2":D
    .local v1, "sum2":D
    .restart local v35    # "kTerm2":D
    :cond_b
    move-wide/from16 v23, v1

    .line 728
    :goto_b
    const v6, 0x186a0

    if-eq v3, v6, :cond_c

    .line 731
    move-wide/from16 v23, v1

    .end local v1    # "sum2":D
    .restart local v23    # "sum2":D
    int-to-double v1, v0

    mul-double v1, v1, v25

    div-double v1, v13, v1

    const-wide v27, 0x40a9500000000000L    # 3240.0

    mul-double v27, v27, v9

    mul-double v27, v27, v7

    div-double v27, v15, v27

    const-wide/high16 v29, 0x405b000000000000L    # 108.0

    mul-double v29, v29, v9

    div-double v29, v23, v29

    add-double v27, v27, v29

    mul-double v1, v1, v27

    add-double/2addr v1, v4

    return-wide v1

    .line 729
    .end local v23    # "sum2":D
    .restart local v1    # "sum2":D
    :cond_c
    move-wide/from16 v23, v1

    .end local v1    # "sum2":D
    .restart local v23    # "sum2":D
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v30, 0x186a0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 715
    .end local v23    # "sum2":D
    .restart local v53    # "sum2":D
    :cond_d
    move/from16 v30, v6

    new-instance v1, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 690
    .end local v53    # "sum2":D
    .end local v55    # "kTerm4":D
    .end local v57    # "kTerm6":D
    .end local v59    # "pi6":D
    .restart local v1    # "sum2":D
    :cond_e
    move-wide/from16 v53, v1

    move/from16 v30, v6

    .end local v1    # "sum2":D
    .restart local v53    # "sum2":D
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 677
    .end local v53    # "sum2":D
    :cond_f
    move/from16 v30, v6

    new-instance v1, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 651
    .end local v13    # "sqrtHalfPi":D
    .end local v41    # "z4Term":D
    .end local v43    # "z6Term":D
    .end local v47    # "pi4":D
    .end local v51    # "z2Term":D
    .local v1, "z2Term":D
    :cond_10
    move/from16 v30, v6

    new-instance v6, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v6, v13}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v6

    .line 630
    .end local v4    # "ret":D
    .end local v33    # "twoZ2":D
    .end local v35    # "kTerm2":D
    .local v13, "ret":D
    :cond_11
    move/from16 v30, v4

    new-instance v4, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v4
.end method
