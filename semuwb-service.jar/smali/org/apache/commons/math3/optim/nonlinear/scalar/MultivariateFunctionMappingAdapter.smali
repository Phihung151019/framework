.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;
.super Ljava/lang/Object;
.source "MultivariateFunctionMappingAdapter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$UpperBoundMapper;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$LowerBoundMapper;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$NoBoundsMapper;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;
    }
.end annotation


# instance fields
.field private final bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

.field private final mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateFunction;[D[D)V
    .locals 7
    .param p1, "bounded"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .param p2, "lower"    # [D
    .param p3, "upper"    # [D

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 102
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_6

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 108
    aget-wide v1, p3, v0

    aget-wide v3, p2, v0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
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

    .line 113
    .end local v0    # "i":I
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    .line 114
    array-length v0, p2

    new-array v0, v0, [Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    .line 115
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 116
    aget-wide v1, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$NoBoundsMapper;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$NoBoundsMapper;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$1;)V

    aput-object v2, v1, v0

    goto :goto_2

    .line 122
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$UpperBoundMapper;

    aget-wide v3, p3, v0

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$UpperBoundMapper;-><init>(D)V

    aput-object v2, v1, v0

    goto :goto_2

    .line 125
    :cond_3
    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$LowerBoundMapper;

    aget-wide v3, p2, v0

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$LowerBoundMapper;-><init>(D)V

    aput-object v2, v1, v0

    goto :goto_2

    .line 130
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;

    aget-wide v3, p2, v0

    aget-wide v5, p3, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;-><init>(DD)V

    aput-object v2, v1, v0

    .line 115
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "i":I
    :cond_5
    return-void

    .line 104
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    array-length v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public boundedToUnbounded([D)[D
    .locals 5
    .param p1, "point"    # [D

    .line 160
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    array-length v0, v0

    new-array v0, v0, [D

    .line 161
    .local v0, "mapped":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 162
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    aget-object v2, v2, v1

    aget-wide v3, p1, v1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;->boundedToUnbounded(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public unboundedToBounded([D)[D
    .locals 5
    .param p1, "point"    # [D

    .line 144
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    array-length v0, v0

    new-array v0, v0, [D

    .line 145
    .local v0, "mapped":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 146
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;

    aget-object v2, v2, v1

    aget-wide v3, p1, v1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;->unboundedToBounded(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public value([D)D
    .locals 2
    .param p1, "point"    # [D

    .line 180
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->unboundedToBounded([D)[D

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v0

    return-wide v0
.end method
