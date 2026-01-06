.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;
.super Ljava/lang/Object;
.source "LeastSquaresConverter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# instance fields
.field private final function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

.field private final observations:[D

.field private final scale:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final weights:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D)V
    .locals 1
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .param p2, "observations"    # [D

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 74
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->weights:[D

    .line 76
    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[DLorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 3
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .param p2, "observations"    # [D
    .param p3, "scale"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    array-length v0, p2

    invoke-interface {p3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 150
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 151
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->weights:[D

    .line 153
    invoke-interface {p3}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 154
    return-void

    .line 148
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    invoke-interface {p3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D)V
    .locals 3
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .param p2, "observations"    # [D
    .param p3, "weights"    # [D

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    .line 116
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 117
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    .line 118
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->weights:[D

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 120
    return-void

    .line 114
    :cond_0
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

    .line 159
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object v0

    .line 160
    .local v0, "residuals":[D
    array-length v1, v0

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    array-length v2, v2

    if-ne v1, v2, :cond_6

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 164
    aget-wide v2, v0, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    aget-wide v4, v4, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_0
    const-wide/16 v1, 0x0

    .line 169
    .local v1, "sumSquares":D
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->weights:[D

    if-eqz v3, :cond_2

    .line 170
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 171
    aget-wide v4, v0, v3

    .line 172
    .local v4, "ri":D
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->weights:[D

    aget-wide v6, v6, v3

    mul-double/2addr v6, v4

    mul-double/2addr v6, v4

    add-double/2addr v1, v6

    .line 170
    .end local v4    # "ri":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_1
    goto :goto_4

    .line 174
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    if-eqz v3, :cond_4

    .line 175
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v3

    .local v3, "arr$":[D
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v4, :cond_3

    aget-wide v6, v3, v5

    .line 176
    .local v6, "yi":D
    mul-double v8, v6, v6

    add-double/2addr v1, v8

    .line 175
    .end local v6    # "yi":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3    # "arr$":[D
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_3
    goto :goto_4

    .line 179
    :cond_4
    move-object v3, v0

    .restart local v3    # "arr$":[D
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v4, :cond_5

    aget-wide v6, v3, v5

    .line 180
    .local v6, "ri":D
    mul-double v8, v6, v6

    add-double/2addr v1, v8

    .line 179
    .end local v6    # "ri":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 184
    .end local v3    # "arr$":[D
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_5
    :goto_4
    return-wide v1

    .line 161
    .end local v1    # "sumSquares":D
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v0

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    array-length v3, v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
