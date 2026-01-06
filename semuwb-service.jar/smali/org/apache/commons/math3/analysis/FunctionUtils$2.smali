.class final Lorg/apache/commons/math3/analysis/FunctionUtils$2;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->compose([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
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

    .line 74
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 4
    .param p1, "t"    # D

    .line 78
    move-wide v0, p1

    .line 79
    .local v0, "r":D
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 80
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    aget-object v3, v3, v2

    invoke-interface {v3, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(D)D

    move-result-wide v0

    .line 79
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 82
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 3
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 87
    move-object v0, p1

    .line 88
    .local v0, "r":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 89
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;->val$f:[Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    aget-object v2, v2, v1

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    .line 88
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
