.class final Lorg/apache/commons/math3/analysis/FunctionUtils$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->compose([Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:[Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method constructor <init>([Lorg/apache/commons/math3/analysis/UnivariateFunction;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$1;->val$f:[Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 4
    .param p1, "x"    # D

    .line 54
    move-wide v0, p1

    .line 55
    .local v0, "r":D
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$1;->val$f:[Lorg/apache/commons/math3/analysis/UnivariateFunction;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 56
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$1;->val$f:[Lorg/apache/commons/math3/analysis/UnivariateFunction;

    aget-object v3, v3, v2

    invoke-interface {v3, v0, v1}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    .line 55
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 58
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method
