.class Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$3;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$3;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 7
    .param p1, "x"    # D

    .line 124
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 125
    .local v0, "p":D
    move-wide v2, p1

    .line 126
    .local v2, "r":D
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    iget-object v4, v4, Lorg/apache/commons/math3/analysis/FunctionUtils$3;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 127
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    iget-object v5, v5, Lorg/apache/commons/math3/analysis/FunctionUtils$3;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v5, v5, v4

    invoke-interface {v5}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v5

    mul-double/2addr v0, v5

    .line 128
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    iget-object v5, v5, Lorg/apache/commons/math3/analysis/FunctionUtils$3;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v5, v5, v4

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v2

    .line 126
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 130
    .end local v4    # "i":I
    :cond_0
    return-wide v0
.end method
