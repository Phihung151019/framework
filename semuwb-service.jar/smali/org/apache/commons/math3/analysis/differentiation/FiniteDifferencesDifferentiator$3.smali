.class Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;
.super Ljava/lang/Object;
.source "FiniteDifferencesDifferentiator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableMatrixFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->differentiate(Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableMatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

.field final synthetic val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)[[D
    .locals 1
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;->value(D)[[D

    move-result-object v0

    return-object v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 12
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 348
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6

    .line 353
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    sub-double/2addr v0, v3

    .line 356
    .local v0, "t0":D
    const/4 v3, 0x0

    check-cast v3, [[[D

    .line 357
    .local v3, "y":[[[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v5}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_3

    .line 358
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;

    int-to-double v8, v4

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v10}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v8, v0

    invoke-interface {v5, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;->value(D)[[D

    move-result-object v5

    .line 359
    .local v5, "v":[[D
    if-nez v4, :cond_0

    .line 360
    array-length v8, v5

    aget-object v9, v5, v2

    array-length v9, v9

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v10}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v10

    const/4 v11, 0x3

    new-array v11, v11, [I

    aput v10, v11, v6

    aput v9, v11, v7

    aput v8, v11, v2

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, [[[D

    .line 362
    :cond_0
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 363
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    aget-object v8, v5, v6

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 364
    aget-object v8, v3, v6

    aget-object v8, v8, v7

    aget-object v9, v5, v6

    aget-wide v9, v9, v7

    aput-wide v9, v8, v4

    .line 363
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 362
    .end local v7    # "k":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 357
    .end local v5    # "v":[[D
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 370
    .end local v4    # "i":I
    :cond_3
    array-length v4, v3

    aget-object v5, v3, v2

    array-length v5, v5

    new-array v6, v6, [I

    aput v5, v6, v7

    aput v4, v6, v2

    const-class v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 371
    .local v2, "value":[[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 372
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_4
    aget-object v6, v3, v4

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 373
    aget-object v6, v2, v4

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    aget-object v8, v3, v4

    aget-object v8, v8, v5

    invoke-static {v7, p1, v0, v1, v8}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v7

    aput-object v7, v6, v5

    .line 372
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 371
    .end local v5    # "k":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 377
    .end local v4    # "j":I
    :cond_5
    return-object v2

    .line 349
    .end local v0    # "t0":D
    .end local v2    # "value":[[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .end local v3    # "y":[[[D
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method
