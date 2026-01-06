.class Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;
.super Ljava/lang/Object;
.source "FiniteDifferencesDifferentiator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->differentiate(Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

.field final synthetic val$function:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->val$function:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)[D
    .locals 1
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->val$function:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;->value(D)[D

    move-result-object v0

    return-object v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 10
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    .line 302
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    sub-double/2addr v0, v3

    .line 305
    .local v0, "t0":D
    const/4 v3, 0x0

    check-cast v3, [[D

    .line 306
    .local v3, "y":[[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v5}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 307
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->val$function:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

    int-to-double v6, v4

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v8}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v6, v0

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;->value(D)[D

    move-result-object v5

    .line 308
    .local v5, "v":[D
    if-nez v4, :cond_0

    .line 309
    array-length v6, v5

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v7}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x1

    aput v7, v8, v9

    aput v6, v8, v2

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, [[D

    .line 311
    :cond_0
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 312
    aget-object v7, v3, v6

    aget-wide v8, v5, v6

    aput-wide v8, v7, v4

    .line 311
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 306
    .end local v5    # "v":[D
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    .end local v4    # "i":I
    :cond_2
    array-length v2, v3

    new-array v2, v2, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 318
    .local v2, "value":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 319
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    aget-object v6, v3, v4

    invoke-static {v5, p1, v0, v1, v6}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    aput-object v5, v2, v4

    .line 318
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 322
    .end local v4    # "j":I
    :cond_3
    return-object v2

    .line 298
    .end local v0    # "t0":D
    .end local v2    # "value":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .end local v3    # "y":[[D
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method
