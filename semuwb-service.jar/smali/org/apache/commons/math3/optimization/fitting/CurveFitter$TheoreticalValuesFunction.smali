.class Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;
.super Ljava/lang/Object;
.source "CurveFitter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TheoreticalValuesFunction"
.end annotation


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field final synthetic this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V
    .locals 0
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    .line 253
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>.TheoreticalValuesFunction;"
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    .line 255
    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 8
    .param p1, "point"    # [D

    .line 260
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>.TheoreticalValuesFunction;"
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 261
    .local v0, "values":[D
    const/4 v1, 0x0

    .line 262
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 263
    .local v3, "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-virtual {v3}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    invoke-interface {v5, v6, v7, p1}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->value(D[D)D

    move-result-wide v5

    aput-wide v5, v0, v1

    .line 264
    .end local v3    # "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    move v1, v4

    goto :goto_0

    .line 266
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 12
    .param p1, "point"    # [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 273
    .local p0, "this":Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;, "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<TT;>.TheoreticalValuesFunction;"
    array-length v0, p1

    new-array v0, v0, [D

    .line 274
    .local v0, "parameters":[D
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 275
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "k":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 280
    .local v1, "values":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v2, 0x0

    .line 281
    .local v2, "i":I
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->access$000(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 285
    .local v4, "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    new-instance v5, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v6, p1

    iget-object v7, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v8

    invoke-interface {v7, v8, v9, v0}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->value(D[D)D

    move-result-wide v7

    const/4 v9, 0x1

    invoke-direct {v5, v6, v9, v7, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    .line 286
    .local v5, "vi":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v6, 0x0

    move v9, v6

    .local v9, "k":I
    :goto_2
    array-length v6, p1

    if-ge v9, v6, :cond_1

    .line 287
    new-instance v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v7, p1

    const/4 v8, 0x1

    const-wide/16 v10, 0x0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    .line 286
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 290
    .end local v9    # "k":I
    :cond_1
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aput-object v5, v1, v2

    .line 292
    .end local v4    # "observed":Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .end local v5    # "vi":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    move v2, v6

    goto :goto_1

    .line 294
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_2
    return-object v1
.end method
