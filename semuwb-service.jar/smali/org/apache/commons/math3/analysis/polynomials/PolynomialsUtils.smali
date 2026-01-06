.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;
.super Ljava/lang/Object;
.source "PolynomialsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;,
        Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;
    }
.end annotation


# static fields
.field private static final CHEBYSHEV_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field

.field private static final HERMITE_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field

.field private static final JACOBI_COEFFICIENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LAGUERRE_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEGENDRE_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    .line 55
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    .line 62
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->TWO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    .line 69
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->MINUS_ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    .line 76
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->JACOBI_COEFFICIENTS:Ljava/util/Map;

    .line 83
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 5
    .param p0, "degree"    # I
    .param p2, "generator"    # Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;",
            ")",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;"
        }
    .end annotation

    .line 360
    .local p1, "coefficients":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    monitor-enter p1

    .line 361
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 362
    .local v0, "maxDegree":I
    if-le p0, v0, :cond_0

    .line 363
    invoke-static {p0, v0, p2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->computeUpToDegree(IILorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;Ljava/util/List;)V

    .line 365
    .end local v0    # "maxDegree":I
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    add-int/lit8 v0, p0, 0x1

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    .line 377
    .local v0, "start":I
    add-int/lit8 v1, p0, 0x1

    new-array v1, v1, [D

    .line 378
    .local v1, "a":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, p0, :cond_1

    .line 379
    add-int v3, v0, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v3}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v2

    .line 365
    .end local v0    # "start":I
    .end local v1    # "a":[D
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static computeUpToDegree(IILorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;Ljava/util/List;)V
    .locals 12
    .param p0, "degree"    # I
    .param p1, "maxDegree"    # I
    .param p2, "generator"    # Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p3, "coefficients":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    add-int/lit8 v0, p1, -0x1

    mul-int/2addr v0, p1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 398
    .local v0, "startK":I
    move v2, p1

    .local v2, "k":I
    :goto_0
    if-ge v2, p0, :cond_1

    .line 401
    move v3, v0

    .line 402
    .local v3, "startKm1":I
    add-int/2addr v0, v2

    .line 405
    invoke-interface {p2, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;->generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    .line 407
    .local v4, "ai":[Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 408
    .local v5, "ck":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 411
    .local v6, "ckm1":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v7, 0x0

    aget-object v8, v4, v7

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    aget-object v9, v4, v1

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    const/4 v9, 0x1

    if-ge v8, v2, :cond_0

    .line 415
    move-object v10, v5

    .line 416
    .local v10, "ckPrev":Lorg/apache/commons/math3/fraction/BigFraction;
    add-int v11, v0, v8

    invoke-interface {p3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 417
    add-int v11, v3, v8

    invoke-interface {p3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 418
    aget-object v11, v4, v7

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    aget-object v9, v4, v9

    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    invoke-virtual {v11, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    aget-object v11, v4, v1

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v10    # "ckPrev":Lorg/apache/commons/math3/fraction/BigFraction;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 422
    .end local v8    # "i":I
    :cond_0
    move-object v8, v5

    .line 423
    .local v8, "ckPrev":Lorg/apache/commons/math3/fraction/BigFraction;
    add-int v10, v0, v2

    invoke-interface {p3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    check-cast v5, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 424
    aget-object v7, v4, v7

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aget-object v10, v4, v9

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    aget-object v7, v4, v9

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    .end local v3    # "startKm1":I
    .end local v4    # "ai":[Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v5    # "ck":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v6    # "ckm1":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v8    # "ckPrev":Lorg/apache/commons/math3/fraction/BigFraction;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 431
    .end local v2    # "k":I
    :cond_1
    return-void
.end method

.method public static createChebyshevPolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2
    .param p0, "degree"    # I

    .line 106
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$1;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$1;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    return-object v0
.end method

.method public static createHermitePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2
    .param p0, "degree"    # I

    .line 133
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$2;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$2;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    return-object v0
.end method

.method public static createJacobiPolynomial(III)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 5
    .param p0, "degree"    # I
    .param p1, "v"    # I
    .param p2, "w"    # I

    .line 222
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;-><init>(II)V

    .line 224
    .local v0, "key":Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;
    sget-object v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->JACOBI_COEFFICIENTS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    sget-object v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->JACOBI_COEFFICIENTS:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    sub-int v3, p1, p2

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int/lit8 v3, p1, 0x2

    add-int/2addr v3, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    :cond_0
    sget-object v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->JACOBI_COEFFICIENTS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;

    invoke-direct {v2, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;-><init>(II)V

    invoke-static {p0, v1, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v1

    return-object v1
.end method

.method public static createLaguerrePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2
    .param p0, "degree"    # I

    .line 160
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$3;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$3;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    return-object v0
.end method

.method public static createLegendrePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2
    .param p0, "degree"    # I

    .line 188
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$4;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$4;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    return-object v0
.end method

.method public static shift([DD)[D
    .locals 13
    .param p0, "coefficients"    # [D
    .param p1, "shift"    # D

    .line 322
    array-length v0, p0

    .line 323
    .local v0, "dp1":I
    new-array v1, v0, [D

    .line 326
    .local v1, "newCoefficients":[D
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 327
    .local v2, "coeff":[[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 328
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-gt v5, v4, :cond_0

    .line 329
    aget-object v6, v2, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v7

    long-to-int v7, v7

    aput v7, v6, v5

    .line 328
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 327
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 334
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v0, :cond_2

    .line 335
    aget-wide v5, v1, v3

    aget-wide v7, p0, v4

    invoke-static {p1, p2, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aput-wide v5, v1, v3

    .line 334
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 339
    .end local v4    # "i":I
    :cond_2
    add-int/lit8 v3, v0, -0x1

    .line 340
    .local v3, "d":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v3, :cond_4

    .line 341
    move v5, v4

    .restart local v5    # "j":I
    :goto_4
    if-ge v5, v3, :cond_3

    .line 342
    add-int/lit8 v6, v4, 0x1

    aget-wide v7, v1, v6

    add-int/lit8 v9, v5, 0x1

    aget-object v9, v2, v9

    sub-int v10, v5, v4

    aget v9, v9, v10

    int-to-double v9, v9

    add-int/lit8 v11, v5, 0x1

    aget-wide v11, p0, v11

    mul-double/2addr v9, v11

    sub-int v11, v5, v4

    invoke-static {p1, p2, v11}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    aput-wide v7, v1, v6

    .line 341
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 340
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 347
    .end local v4    # "i":I
    :cond_4
    return-object v1
.end method
