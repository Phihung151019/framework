.class Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$9;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$9;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 8
    .param p1, "x"    # D

    .line 299
    const-wide/16 v0, 0x0

    .line 300
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v3, v3, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 301
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v3, v3, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v3

    .line 302
    .local v3, "prod":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v6, v6, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 303
    if-eq v2, v5, :cond_0

    .line 304
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v6, v6, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v6, v6, v5

    invoke-interface {v6, p1, p2}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v6

    mul-double/2addr v3, v6

    .line 302
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 307
    .end local v5    # "j":I
    :cond_1
    add-double/2addr v0, v3

    .line 300
    .end local v3    # "prod":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v2    # "i":I
    :cond_2
    return-wide v0
.end method
