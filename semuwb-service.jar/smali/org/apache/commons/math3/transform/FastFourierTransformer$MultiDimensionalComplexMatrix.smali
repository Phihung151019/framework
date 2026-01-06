.class Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;
.super Ljava/lang/Object;
.source "FastFourierTransformer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/transform/FastFourierTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiDimensionalComplexMatrix"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected dimensionSize:[I

.field protected multiDimensionalComplexArray:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7
    .param p1, "multiDimensionalComplexArray"    # Ljava/lang/Object;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "numOfDimensions":I
    move-object v1, p1

    .line 526
    .local v1, "lastDimension":Ljava/lang/Object;
    :goto_0
    instance-of v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 527
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 528
    .local v2, "array":[Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    .line 529
    aget-object v1, v2, v3

    .line 530
    .end local v2    # "array":[Ljava/lang/Object;
    goto :goto_0

    .line 533
    .end local v1    # "lastDimension":Ljava/lang/Object;
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    .line 536
    const/4 v0, 0x0

    .line 537
    move-object v1, p1

    .line 538
    .restart local v1    # "lastDimension":Ljava/lang/Object;
    :goto_1
    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 539
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 540
    .restart local v2    # "array":[Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "numOfDimensions":I
    .local v5, "numOfDimensions":I
    array-length v6, v2

    aput v6, v4, v0

    .line 541
    aget-object v1, v2, v3

    .line 542
    .end local v2    # "array":[Ljava/lang/Object;
    move v0, v5

    goto :goto_1

    .line 544
    .end local v1    # "lastDimension":Ljava/lang/Object;
    .end local v5    # "numOfDimensions":I
    .restart local v0    # "numOfDimensions":I
    :cond_1
    return-void
.end method

.method private clone(Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;)V
    .locals 12
    .param p1, "mdcm"    # Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;

    .line 649
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 650
    .local v0, "vector":[I
    const/4 v1, 0x1

    .line 651
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 652
    iget-object v3, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    aget v3, v3, v2

    mul-int/2addr v1, v3

    .line 651
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 654
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 655
    .local v3, "vectorList":[[I
    move-object v5, v3

    .local v5, "arr$":[[I
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 656
    .local v8, "nextVector":[I
    iget-object v9, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v9, v9

    invoke-static {v0, v2, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    iget-object v10, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v10, v10

    if-ge v9, v10, :cond_2

    .line 659
    aget v10, v0, v9

    add-int/2addr v10, v4

    aput v10, v0, v9

    .line 660
    aget v10, v0, v9

    iget-object v11, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    aget v11, v11, v9

    if-ge v10, v11, :cond_1

    .line 661
    goto :goto_3

    .line 663
    :cond_1
    aput v2, v0, v9

    .line 658
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 655
    .end local v8    # "nextVector":[I
    .end local v9    # "i":I
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 668
    .end local v5    # "arr$":[[I
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_3
    move-object v2, v3

    .local v2, "arr$":[[I
    array-length v4, v2

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_4
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    .line 669
    .local v6, "nextVector":[I
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->get([I)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->set(Lorg/apache/commons/math3/complex/Complex;[I)Lorg/apache/commons/math3/complex/Complex;

    .line 668
    .end local v6    # "nextVector":[I
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 671
    .end local v2    # "arr$":[[I
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_4
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 635
    new-instance v0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;

    const-class v1, Lorg/apache/commons/math3/complex/Complex;

    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;-><init>(Ljava/lang/Object;)V

    .line 638
    .local v0, "mdcm":Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->clone(Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;)V

    .line 639
    return-object v0
.end method

.method public varargs get([I)Lorg/apache/commons/math3/complex/Complex;
    .locals 4
    .param p1, "vector"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 556
    if-nez p1, :cond_1

    .line 557
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 562
    const/4 v0, 0x0

    return-object v0

    .line 558
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 564
    :cond_1
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 570
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    .line 572
    .local v0, "lastDimension":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 573
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget v3, p1, v1

    aget-object v0, v2, v3

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    .end local v1    # "i":I
    :cond_2
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/math3/complex/Complex;

    return-object v1

    .line 565
    .end local v0    # "lastDimension":Ljava/lang/Object;
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getArray()Ljava/lang/Object;
    .locals 1

    .line 629
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    return-object v0
.end method

.method public getDimensionSizes()[I
    .locals 1

    .line 620
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public varargs set(Lorg/apache/commons/math3/complex/Complex;[I)Lorg/apache/commons/math3/complex/Complex;
    .locals 3
    .param p1, "magnitude"    # Lorg/apache/commons/math3/complex/Complex;
    .param p2, "vector"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 589
    if-nez p2, :cond_1

    .line 590
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 595
    const/4 v0, 0x0

    return-object v0

    .line 591
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 597
    :cond_1
    array-length v0, p2

    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 603
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 604
    .local v0, "lastDimension":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 605
    aget v2, p2, v1

    aget-object v2, v0, v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v1, p2, v1

    aget-object v1, v0, v1

    check-cast v1, Lorg/apache/commons/math3/complex/Complex;

    .line 609
    .local v1, "lastValue":Lorg/apache/commons/math3/complex/Complex;
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    aput-object p1, v0, v2

    .line 611
    return-object v1

    .line 598
    .end local v0    # "lastDimension":[Ljava/lang/Object;
    .end local v1    # "lastValue":Lorg/apache/commons/math3/complex/Complex;
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method
