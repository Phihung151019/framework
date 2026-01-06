.class final Lorg/apache/commons/math3/analysis/FunctionUtils$5;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->add([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# direct methods
.method constructor <init>([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$5;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 5
    .param p1, "t"    # D

    .line 168
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$5;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(D)D

    move-result-wide v0

    .line 169
    .local v0, "r":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$5;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 170
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$5;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 3
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$5;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    .line 181
    .local v0, "r":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$5;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 182
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$5;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
