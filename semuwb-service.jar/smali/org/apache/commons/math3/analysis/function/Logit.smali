.class public Lorg/apache/commons/math3/analysis/function/Logit;
.super Ljava/lang/Object;
.source "Logit.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Logit$Parametric;
    }
.end annotation


# instance fields
.field private final hi:D

.field private final lo:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 49
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Logit;-><init>(DD)V

    .line 50
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "lo"    # D
    .param p3, "hi"    # D

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    .line 61
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    .line 62
    return-void
.end method

.method static synthetic access$000(DDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 38
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/analysis/function/Logit;->value(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static value(DDD)D
    .locals 4
    .param p0, "x"    # D
    .param p2, "lo"    # D
    .param p4, "hi"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 161
    cmpg-double v0, p0, p2

    if-ltz v0, :cond_0

    cmpl-double v0, p0, p4

    if-gtz v0, :cond_0

    .line 164
    sub-double v0, p0, p2

    sub-double v2, p4, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0

    .line 162
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 6
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 67
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    move-wide v0, p1

    .end local p1    # "x":D
    .local v0, "x":D
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Logit;->value(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 14
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 173
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    .line 174
    .local v0, "x":D
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_4

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_4

    .line 177
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [D

    .line 180
    .local v2, "f":[D
    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    sub-double v4, v0, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    sub-double/2addr v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v2, v6

    .line 182
    aget-wide v4, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    array-length v4, v2

    if-le v4, v3, :cond_0

    .line 185
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v4, v2, v3

    .line 192
    :cond_0
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 193
    add-int/lit8 v4, v3, -0x2

    aget-wide v4, v2, v4

    aput-wide v4, v2, v3

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 199
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    sub-double v3, v0, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    .line 200
    .local v3, "invL":D
    move-wide v7, v3

    .line 201
    .local v7, "xL":D
    iget-wide v9, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    sub-double/2addr v9, v0

    div-double/2addr v5, v9

    .line 202
    .local v5, "invH":D
    move-wide v9, v5

    .line 203
    .local v9, "xH":D
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_1
    array-length v12, v2

    if-ge v11, v12, :cond_3

    .line 204
    add-double v12, v7, v9

    aput-wide v12, v2, v11

    .line 205
    neg-int v12, v11

    int-to-double v12, v12

    mul-double/2addr v12, v3

    mul-double/2addr v7, v12

    .line 206
    int-to-double v12, v11

    mul-double/2addr v12, v5

    mul-double/2addr v9, v12

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 210
    .end local v3    # "invL":D
    .end local v5    # "invH":D
    .end local v7    # "xL":D
    .end local v9    # "xH":D
    .end local v11    # "i":I
    :cond_3
    :goto_2
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    return-object v3

    .line 175
    .end local v2    # "f":[D
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Logit;->lo:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/function/Logit;->hi:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2
.end method
