.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;
.super Ljava/lang/Object;
.source "MultivariateFunctionPenaltyAdapter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# instance fields
.field private final bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

.field private final lower:[D

.field private final offset:D

.field private final scale:[D

.field private final upper:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateFunction;[D[DD[D)V
    .locals 5
    .param p1, "bounded"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .param p2, "lower"    # [D
    .param p3, "upper"    # [D
    .param p4, "offset"    # D
    .param p6, "scale"    # [D

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 128
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    invoke-static {p6}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_3

    .line 133
    array-length v0, p2

    array-length v1, p6

    if-ne v0, v1, :cond_2

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 138
    aget-wide v1, p3, v0

    aget-wide v3, p2, v0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    aget-wide v2, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aget-wide v3, p2, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 143
    .end local v0    # "i":I
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    .line 144
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->lower:[D

    .line 145
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->upper:[D

    .line 146
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->offset:D

    .line 147
    invoke-virtual {p6}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->scale:[D

    .line 148
    return-void

    .line 134
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    array-length v2, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 131
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    array-length v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public value([D)D
    .locals 10
    .param p1, "point"    # [D

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->scale:[D

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 164
    aget-wide v1, p1, v0

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->lower:[D

    aget-wide v3, v3, v0

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_1

    aget-wide v1, p1, v0

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->upper:[D

    aget-wide v3, v3, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    const-wide/16 v1, 0x0

    .line 167
    .local v1, "sum":D
    move v3, v0

    .local v3, "j":I
    :goto_2
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->scale:[D

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 169
    aget-wide v4, p1, v3

    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->lower:[D

    aget-wide v6, v6, v3

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 170
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->scale:[D

    aget-wide v4, v4, v3

    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->lower:[D

    aget-wide v6, v6, v3

    aget-wide v8, p1, v3

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    .local v4, "overshoot":D
    goto :goto_3

    .line 171
    .end local v4    # "overshoot":D
    :cond_2
    aget-wide v4, p1, v3

    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->upper:[D

    aget-wide v6, v6, v3

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 172
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->scale:[D

    aget-wide v4, v4, v3

    aget-wide v6, p1, v3

    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->upper:[D

    aget-wide v8, v8, v3

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    .restart local v4    # "overshoot":D
    goto :goto_3

    .line 174
    .end local v4    # "overshoot":D
    :cond_3
    const-wide/16 v4, 0x0

    .line 176
    .restart local v4    # "overshoot":D
    :goto_3
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v1, v6

    .line 167
    .end local v4    # "overshoot":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 178
    .end local v3    # "j":I
    :cond_4
    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->offset:D

    add-double/2addr v3, v1

    return-wide v3

    .line 184
    .end local v0    # "i":I
    .end local v1    # "sum":D
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v0

    return-wide v0
.end method
