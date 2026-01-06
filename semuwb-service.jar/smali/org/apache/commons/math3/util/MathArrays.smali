.class public Lorg/apache/commons/math3/util/MathArrays;
.super Ljava/lang/Object;
.source "MathArrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/MathArrays$Position;,
        Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;,
        Lorg/apache/commons/math3/util/MathArrays$OrderDirection;,
        Lorg/apache/commons/math3/util/MathArrays$Function;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 1477
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getRuntimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1478
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1479
    return-object v0
.end method

.method public static buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;
    .locals 4
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)[[TT;"
        }
    .end annotation

    .line 1497
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    if-gez p2, :cond_0

    .line 1498
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1499
    .local v0, "dummyRow":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [[Ljava/lang/Object;

    .line 1500
    .local v0, "array":[[Ljava/lang/Object;, "[[TT;"
    goto :goto_1

    .line 1501
    .end local v0    # "array":[[Ljava/lang/Object;, "[[TT;"
    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getRuntimeClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1, p2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    .line 1505
    .restart local v0    # "array":[[Ljava/lang/Object;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1506
    aget-object v2, v0, v1

    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1509
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static checkEqualLength([D[D)V
    .locals 1
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 422
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[DZ)Z

    .line 423
    return-void
.end method

.method public static checkEqualLength([I[I)V
    .locals 1
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 460
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([I[IZ)Z

    .line 461
    return-void
.end method

.method public static checkEqualLength([D[DZ)Z
    .locals 3
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "abort"    # Z

    .line 402
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 403
    const/4 v0, 0x1

    return v0

    .line 405
    :cond_0
    if-nez p2, :cond_1

    .line 408
    const/4 v0, 0x0

    return v0

    .line 406
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p0

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static checkEqualLength([I[IZ)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "abort"    # Z

    .line 440
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 441
    const/4 v0, 0x1

    return v0

    .line 443
    :cond_0
    if-nez p2, :cond_1

    .line 446
    const/4 v0, 0x0

    return v0

    .line 444
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p0

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static checkNonNegative([J)V
    .locals 5
    .param p0, "in"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 614
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 615
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotPositiveException;

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 619
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static checkNonNegative([[J)V
    .locals 6
    .param p0, "in"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 631
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget-object v2, p0, v0

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 632
    aget-object v2, p0, v0

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NotPositiveException;

    aget-object v3, p0, v0

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2

    .line 630
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static checkNotNaN([D)V
    .locals 3
    .param p0, "in"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .line 598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 599
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw v1

    .line 603
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static checkOrder([D)V
    .locals 2
    .param p0, "val"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 549
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V

    .line 550
    return-void
.end method

.method public static checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V
    .locals 1
    .param p0, "val"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 538
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    .line 539
    return-void
.end method

.method public static checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z
    .locals 10
    .param p0, "val"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z
    .param p3, "abort"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 477
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .line 478
    .local v1, "previous":D
    array-length v3, p0

    .line 482
    .local v3, "max":I
    const/4 v4, 0x1

    move v7, v4

    .local v7, "index":I
    :goto_0
    if-ge v7, v3, :cond_3

    .line 483
    sget-object v4, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 508
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 496
    :pswitch_0
    if-eqz p2, :cond_0

    .line 497
    aget-wide v4, p0, v7

    cmpl-double v4, v4, v1

    if-ltz v4, :cond_2

    .line 498
    goto :goto_1

    .line 501
    :cond_0
    aget-wide v4, p0, v7

    cmpl-double v4, v4, v1

    if-lez v4, :cond_2

    .line 502
    goto :goto_1

    .line 485
    :pswitch_1
    if-eqz p2, :cond_1

    .line 486
    aget-wide v4, p0, v7

    cmpg-double v4, v4, v1

    if-gtz v4, :cond_2

    .line 487
    goto :goto_1

    .line 490
    :cond_1
    aget-wide v4, p0, v7

    cmpg-double v4, v4, v1

    if-gez v4, :cond_2

    .line 491
    goto :goto_1

    .line 511
    :cond_2
    aget-wide v1, p0, v7

    .line 482
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 514
    :cond_3
    :goto_1
    if-ne v7, v3, :cond_4

    .line 516
    const/4 v0, 0x1

    return v0

    .line 520
    :cond_4
    if-nez p3, :cond_5

    .line 523
    return v0

    .line 521
    :cond_5
    new-instance v4, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;

    aget-wide v5, p0, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v8, p1

    move v9, p2

    .end local p1    # "dir":Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .end local p2    # "strict":Z
    .local v8, "dir":Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .local v9, "strict":Z
    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;-><init>(Ljava/lang/Number;Ljava/lang/Number;ILorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkPositive([D)V
    .locals 5
    .param p0, "in"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 582
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 583
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 587
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static checkRectangular([[J)V
    .locals 5
    .param p0, "in"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 562
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 563
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 564
    aget-object v1, p0, v0

    array-length v1, v1

    const/4 v2, 0x0

    aget-object v3, p0, v2

    array-length v3, v3

    if-ne v1, v3, :cond_0

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIFFERENT_ROWS_LENGTHS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-object v4, p0, v0

    array-length v4, v4

    aget-object v2, p0, v2

    array-length v2, v2

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v1

    .line 570
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static varargs concatenate([[D)[D
    .locals 7
    .param p0, "x"    # [[D

    .line 1892
    const/4 v0, 0x0

    .line 1893
    .local v0, "combinedLength":I
    move-object v1, p0

    .local v1, "arr$":[[D
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1894
    .local v4, "a":[D
    array-length v5, v4

    add-int/2addr v0, v5

    .line 1893
    .end local v4    # "a":[D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1896
    .end local v1    # "arr$":[[D
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    const/4 v1, 0x0

    .line 1897
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 1898
    .local v2, "curLength":I
    new-array v3, v0, [D

    .line 1899
    .local v3, "combined":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 1900
    aget-object v5, p0, v4

    array-length v2, v5

    .line 1901
    aget-object v5, p0, v4

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1902
    add-int/2addr v1, v2

    .line 1899
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1904
    .end local v4    # "i":I
    :cond_1
    return-object v3
.end method

.method public static convolve([D[D)[D
    .locals 14
    .param p0, "x"    # [D
    .param p1, "h"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 1535
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1536
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1538
    array-length v0, p0

    .line 1539
    .local v0, "xLen":I
    array-length v1, p1

    .line 1541
    .local v1, "hLen":I
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1546
    add-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    .line 1547
    .local v2, "totalLength":I
    new-array v3, v2, [D

    .line 1550
    .local v3, "y":[D
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1551
    const-wide/16 v5, 0x0

    .line 1552
    .local v5, "yn":D
    add-int/lit8 v7, v4, 0x1

    sub-int/2addr v7, v0

    const/4 v8, 0x0

    invoke-static {v8, v7}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v7

    .line 1553
    .local v7, "k":I
    sub-int v8, v4, v7

    .line 1554
    .local v8, "j":I
    :goto_1
    if-ge v7, v1, :cond_0

    if-ltz v8, :cond_0

    .line 1555
    add-int/lit8 v9, v8, -0x1

    .end local v8    # "j":I
    .local v9, "j":I
    aget-wide v10, p0, v8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "k":I
    .local v8, "k":I
    aget-wide v12, p1, v7

    mul-double/2addr v10, v12

    add-double/2addr v5, v10

    move v7, v8

    move v8, v9

    goto :goto_1

    .line 1557
    .end local v9    # "j":I
    .restart local v7    # "k":I
    .local v8, "j":I
    :cond_0
    aput-wide v5, v3, v4

    .line 1550
    .end local v5    # "yn":D
    .end local v7    # "k":I
    .end local v8    # "j":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1560
    .end local v4    # "n":I
    :cond_1
    return-object v3

    .line 1542
    .end local v2    # "totalLength":I
    .end local v3    # "y":[D
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v2
.end method

.method public static copyOf([D)[D
    .locals 1
    .param p0, "source"    # [D

    .line 912
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([DI)[D
    .locals 3
    .param p0, "source"    # [D
    .param p1, "len"    # I

    .line 940
    new-array v0, p1, [D

    .line 941
    .local v0, "output":[D
    array-length v1, p0

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    return-object v0
.end method

.method public static copyOf([I)[I
    .locals 1
    .param p0, "source"    # [I

    .line 902
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "source"    # [I
    .param p1, "len"    # I

    .line 925
    new-array v0, p1, [I

    .line 926
    .local v0, "output":[I
    array-length v1, p0

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    return-object v0
.end method

.method public static copyOfRange([DII)[D
    .locals 4
    .param p0, "source"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 954
    sub-int v0, p2, p1

    .line 955
    .local v0, "len":I
    new-array v1, v0, [D

    .line 956
    .local v1, "output":[D
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 957
    return-object v1
.end method

.method public static cosAngle([D[D)D
    .locals 6
    .param p0, "v1"    # [D
    .param p1, "v2"    # [D

    .line 257
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v0

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathArrays;->safeNorm([D)D

    move-result-wide v2

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->safeNorm([D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static distance([D[D)D
    .locals 7
    .param p0, "p1"    # [D
    .param p1, "p2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 240
    const-wide/16 v0, 0x0

    .line 241
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 242
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    .line 243
    .local v3, "dp":D
    mul-double v5, v3, v3

    add-double/2addr v0, v5

    .line 241
    .end local v3    # "dp":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public static distance([I[I)D
    .locals 7
    .param p0, "p1"    # [I
    .param p1, "p2"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 270
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([I[I)V

    .line 271
    const-wide/16 v0, 0x0

    .line 272
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 273
    aget v3, p0, v2

    aget v4, p1, v2

    sub-int/2addr v3, v4

    int-to-double v3, v3

    .line 274
    .local v3, "dp":D
    mul-double v5, v3, v3

    add-double/2addr v0, v5

    .line 272
    .end local v3    # "dp":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public static distance1([D[D)D
    .locals 7
    .param p0, "p1"    # [D
    .param p1, "p2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 203
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 204
    const-wide/16 v0, 0x0

    .line 205
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 206
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public static distance1([I[I)I
    .locals 4
    .param p0, "p1"    # [I
    .param p1, "p2"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 221
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([I[I)V

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 224
    aget v2, p0, v1

    aget v3, p1, v1

    sub-int/2addr v2, v3

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static distanceInf([D[D)D
    .locals 7
    .param p0, "p1"    # [D
    .param p1, "p2"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 289
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 290
    const-wide/16 v0, 0x0

    .line 291
    .local v0, "max":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 292
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public static distanceInf([I[I)I
    .locals 4
    .param p0, "p1"    # [I
    .param p1, "p2"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 307
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([I[I)V

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 310
    aget v2, p0, v1

    aget v3, p1, v1

    sub-int/2addr v2, v3

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static ebeAdd([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 124
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 126
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 127
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 128
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static ebeDivide([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 184
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 186
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 187
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 188
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static ebeMultiply([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 164
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 166
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 167
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 168
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    mul-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static ebeSubtract([D[D)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 144
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 146
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 147
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 148
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static equals([D[D)Z
    .locals 7
    .param p0, "x"    # [D
    .param p1, "y"    # [D

    .line 1370
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1373
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 1374
    return v0

    .line 1376
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 1377
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1378
    return v0

    .line 1376
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1381
    .end local v2    # "i":I
    :cond_3
    return v1

    .line 1371
    :cond_4
    :goto_1
    if-nez p0, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    if-nez p1, :cond_6

    move v0, v1

    :cond_6
    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public static equals([F[F)Z
    .locals 5
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 1319
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1322
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 1323
    return v0

    .line 1325
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 1326
    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/Precision;->equals(FF)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1327
    return v0

    .line 1325
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1330
    .end local v2    # "i":I
    :cond_3
    return v1

    .line 1320
    :cond_4
    :goto_1
    if-nez p0, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    if-nez p1, :cond_6

    move v0, v1

    :cond_6
    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public static equalsIncludingNaN([D[D)Z
    .locals 7
    .param p0, "x"    # [D
    .param p1, "y"    # [D

    .line 1396
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1399
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 1400
    return v0

    .line 1402
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 1403
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1404
    return v0

    .line 1402
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1407
    .end local v2    # "i":I
    :cond_3
    return v1

    .line 1397
    :cond_4
    :goto_1
    if-nez p0, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    if-nez p1, :cond_6

    move v0, v1

    :cond_6
    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public static equalsIncludingNaN([F[F)Z
    .locals 5
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 1345
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1348
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 1349
    return v0

    .line 1351
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 1352
    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1353
    return v0

    .line 1351
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1356
    .end local v2    # "i":I
    :cond_3
    return v1

    .line 1346
    :cond_4
    :goto_1
    if-nez p0, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    if-nez p1, :cond_6

    move v0, v1

    :cond_6
    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public static isMonotonic([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z
    .locals 1
    .param p0, "val"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z

    .line 385
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    move-result v0

    return v0
.end method

.method public static isMonotonic([Ljava/lang/Comparable;Lorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z
    .locals 6
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;",
            "Lorg/apache/commons/math3/util/MathArrays$OrderDirection;",
            "Z)Z"
        }
    .end annotation

    .line 337
    .local p0, "val":[Ljava/lang/Comparable;, "[TT;"
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 338
    .local v1, "previous":Ljava/lang/Comparable;, "TT;"
    array-length v2, p0

    .line 339
    .local v2, "max":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 341
    sget-object v4, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 368
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 355
    :pswitch_0
    aget-object v4, p0, v3

    invoke-interface {v4, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 356
    .local v4, "comp":I
    if-eqz p2, :cond_0

    .line 357
    if-ltz v4, :cond_2

    .line 358
    return v0

    .line 361
    :cond_0
    if-lez v4, :cond_2

    .line 362
    return v0

    .line 343
    .end local v4    # "comp":I
    :pswitch_1
    aget-object v4, p0, v3

    invoke-interface {v1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 344
    .restart local v4    # "comp":I
    if-eqz p2, :cond_1

    .line 345
    if-ltz v4, :cond_2

    .line 346
    return v0

    .line 349
    :cond_1
    if-lez v4, :cond_2

    .line 350
    return v0

    .line 371
    :cond_2
    aget-object v1, p0, v3

    .line 339
    .end local v4    # "comp":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static linearCombination(DDDD)D
    .locals 36
    .param p0, "a1"    # D
    .param p2, "b1"    # D
    .param p4, "a2"    # D
    .param p6, "b2"    # D

    .line 1071
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/32 v2, -0x8000000

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 1072
    .local v0, "a1High":D
    sub-double v4, p0, v0

    .line 1073
    .local v4, "a1Low":D
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    and-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 1074
    .local v6, "b1High":D
    sub-double v8, p2, v6

    .line 1077
    .local v8, "b1Low":D
    mul-double v10, p0, p2

    .line 1078
    .local v10, "prod1High":D
    mul-double v12, v4, v8

    mul-double v14, v0, v6

    sub-double v14, v10, v14

    mul-double v16, v4, v6

    sub-double v14, v14, v16

    mul-double v16, v0, v8

    sub-double v14, v14, v16

    sub-double/2addr v12, v14

    .line 1081
    .local v12, "prod1Low":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v14

    and-long/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 1082
    .local v14, "a2High":D
    sub-double v16, p4, v14

    .line 1083
    .local v16, "a2Low":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v18

    and-long v2, v18, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 1084
    .local v2, "b2High":D
    sub-double v18, p6, v2

    .line 1087
    .local v18, "b2Low":D
    mul-double v20, p4, p6

    .line 1088
    .local v20, "prod2High":D
    mul-double v22, v16, v18

    mul-double v24, v14, v2

    sub-double v24, v20, v24

    mul-double v26, v16, v2

    sub-double v24, v24, v26

    mul-double v26, v14, v18

    sub-double v24, v24, v26

    sub-double v22, v22, v24

    .line 1091
    .local v22, "prod2Low":D
    add-double v24, v10, v20

    .line 1092
    .local v24, "s12High":D
    sub-double v26, v24, v20

    .line 1093
    .local v26, "s12Prime":D
    sub-double v28, v24, v26

    sub-double v28, v20, v28

    sub-double v30, v10, v26

    add-double v28, v28, v30

    .line 1097
    .local v28, "s12Low":D
    add-double v30, v12, v22

    add-double v30, v30, v28

    add-double v30, v24, v30

    .line 1099
    .local v30, "result":D
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->isNaN(D)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 1102
    mul-double v32, p0, p2

    mul-double v34, p4, p6

    add-double v30, v32, v34

    .line 1105
    :cond_0
    return-wide v30
.end method

.method public static linearCombination(DDDDDD)D
    .locals 54
    .param p0, "a1"    # D
    .param p2, "b1"    # D
    .param p4, "a2"    # D
    .param p6, "b2"    # D
    .param p8, "a3"    # D
    .param p10, "b3"    # D

    .line 1146
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/32 v2, -0x8000000

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 1147
    .local v0, "a1High":D
    sub-double v4, p0, v0

    .line 1148
    .local v4, "a1Low":D
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    and-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 1149
    .local v6, "b1High":D
    sub-double v8, p2, v6

    .line 1152
    .local v8, "b1Low":D
    mul-double v10, p0, p2

    .line 1153
    .local v10, "prod1High":D
    mul-double v12, v4, v8

    mul-double v14, v0, v6

    sub-double v14, v10, v14

    mul-double v16, v4, v6

    sub-double v14, v14, v16

    mul-double v16, v0, v8

    sub-double v14, v14, v16

    sub-double/2addr v12, v14

    .line 1156
    .local v12, "prod1Low":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v14

    and-long/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 1157
    .local v14, "a2High":D
    sub-double v16, p4, v14

    .line 1158
    .local v16, "a2Low":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v18

    and-long v18, v18, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    .line 1159
    .local v18, "b2High":D
    sub-double v20, p6, v18

    .line 1162
    .local v20, "b2Low":D
    mul-double v22, p4, p6

    .line 1163
    .local v22, "prod2High":D
    mul-double v24, v16, v20

    mul-double v26, v14, v18

    sub-double v26, v22, v26

    mul-double v28, v16, v18

    sub-double v26, v26, v28

    mul-double v28, v14, v20

    sub-double v26, v26, v28

    sub-double v24, v24, v26

    .line 1166
    .local v24, "prod2Low":D
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v26

    and-long v26, v26, v2

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v26

    .line 1167
    .local v26, "a3High":D
    sub-double v28, p8, v26

    .line 1168
    .local v28, "a3Low":D
    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v30

    and-long v2, v30, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 1169
    .local v2, "b3High":D
    sub-double v30, p10, v2

    .line 1172
    .local v30, "b3Low":D
    mul-double v32, p8, p10

    .line 1173
    .local v32, "prod3High":D
    mul-double v34, v28, v30

    mul-double v36, v26, v2

    sub-double v36, v32, v36

    mul-double v38, v28, v2

    sub-double v36, v36, v38

    mul-double v38, v26, v30

    sub-double v36, v36, v38

    sub-double v34, v34, v36

    .line 1176
    .local v34, "prod3Low":D
    add-double v36, v10, v22

    .line 1177
    .local v36, "s12High":D
    sub-double v38, v36, v22

    .line 1178
    .local v38, "s12Prime":D
    sub-double v40, v36, v38

    sub-double v40, v22, v40

    sub-double v42, v10, v38

    add-double v40, v40, v42

    .line 1181
    .local v40, "s12Low":D
    add-double v42, v36, v32

    .line 1182
    .local v42, "s123High":D
    sub-double v44, v42, v32

    .line 1183
    .local v44, "s123Prime":D
    sub-double v46, v42, v44

    sub-double v46, v32, v46

    sub-double v48, v36, v44

    add-double v46, v46, v48

    .line 1187
    .local v46, "s123Low":D
    add-double v48, v12, v24

    add-double v48, v48, v34

    add-double v48, v48, v40

    add-double v48, v48, v46

    add-double v48, v42, v48

    .line 1189
    .local v48, "result":D
    invoke-static/range {v48 .. v49}, Ljava/lang/Double;->isNaN(D)Z

    move-result v50

    if-eqz v50, :cond_0

    .line 1192
    mul-double v50, p0, p2

    mul-double v52, p4, p6

    add-double v50, v50, v52

    mul-double v52, p8, p10

    add-double v48, v50, v52

    .line 1195
    :cond_0
    return-wide v48
.end method

.method public static linearCombination(DDDDDDDD)D
    .locals 72
    .param p0, "a1"    # D
    .param p2, "b1"    # D
    .param p4, "a2"    # D
    .param p6, "b2"    # D
    .param p8, "a3"    # D
    .param p10, "b3"    # D
    .param p12, "a4"    # D
    .param p14, "b4"    # D

    .line 1241
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/32 v2, -0x8000000

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 1242
    .local v0, "a1High":D
    sub-double v4, p0, v0

    .line 1243
    .local v4, "a1Low":D
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    and-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 1244
    .local v6, "b1High":D
    sub-double v8, p2, v6

    .line 1247
    .local v8, "b1Low":D
    mul-double v10, p0, p2

    .line 1248
    .local v10, "prod1High":D
    mul-double v12, v4, v8

    mul-double v14, v0, v6

    sub-double v14, v10, v14

    mul-double v16, v4, v6

    sub-double v14, v14, v16

    mul-double v16, v0, v8

    sub-double v14, v14, v16

    sub-double/2addr v12, v14

    .line 1251
    .local v12, "prod1Low":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v14

    and-long/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 1252
    .local v14, "a2High":D
    sub-double v16, p4, v14

    .line 1253
    .local v16, "a2Low":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v18

    and-long v18, v18, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    .line 1254
    .local v18, "b2High":D
    sub-double v20, p6, v18

    .line 1257
    .local v20, "b2Low":D
    mul-double v22, p4, p6

    .line 1258
    .local v22, "prod2High":D
    mul-double v24, v16, v20

    mul-double v26, v14, v18

    sub-double v26, v22, v26

    mul-double v28, v16, v18

    sub-double v26, v26, v28

    mul-double v28, v14, v20

    sub-double v26, v26, v28

    sub-double v24, v24, v26

    .line 1261
    .local v24, "prod2Low":D
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v26

    and-long v26, v26, v2

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v26

    .line 1262
    .local v26, "a3High":D
    sub-double v28, p8, v26

    .line 1263
    .local v28, "a3Low":D
    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v30

    and-long v30, v30, v2

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v30

    .line 1264
    .local v30, "b3High":D
    sub-double v32, p10, v30

    .line 1267
    .local v32, "b3Low":D
    mul-double v34, p8, p10

    .line 1268
    .local v34, "prod3High":D
    mul-double v36, v28, v32

    mul-double v38, v26, v30

    sub-double v38, v34, v38

    mul-double v40, v28, v30

    sub-double v38, v38, v40

    mul-double v40, v26, v32

    sub-double v38, v38, v40

    sub-double v36, v36, v38

    .line 1271
    .local v36, "prod3Low":D
    invoke-static/range {p12 .. p13}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v38

    and-long v38, v38, v2

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v38

    .line 1272
    .local v38, "a4High":D
    sub-double v40, p12, v38

    .line 1273
    .local v40, "a4Low":D
    invoke-static/range {p14 .. p15}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v42

    and-long v2, v42, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 1274
    .local v2, "b4High":D
    sub-double v42, p14, v2

    .line 1277
    .local v42, "b4Low":D
    mul-double v44, p12, p14

    .line 1278
    .local v44, "prod4High":D
    mul-double v46, v40, v42

    mul-double v48, v38, v2

    sub-double v48, v44, v48

    mul-double v50, v40, v2

    sub-double v48, v48, v50

    mul-double v50, v38, v42

    sub-double v48, v48, v50

    sub-double v46, v46, v48

    .line 1281
    .local v46, "prod4Low":D
    add-double v48, v10, v22

    .line 1282
    .local v48, "s12High":D
    sub-double v50, v48, v22

    .line 1283
    .local v50, "s12Prime":D
    sub-double v52, v48, v50

    sub-double v52, v22, v52

    sub-double v54, v10, v50

    add-double v52, v52, v54

    .line 1286
    .local v52, "s12Low":D
    add-double v54, v48, v34

    .line 1287
    .local v54, "s123High":D
    sub-double v56, v54, v34

    .line 1288
    .local v56, "s123Prime":D
    sub-double v58, v54, v56

    sub-double v58, v34, v58

    sub-double v60, v48, v56

    add-double v58, v58, v60

    .line 1291
    .local v58, "s123Low":D
    add-double v60, v54, v44

    .line 1292
    .local v60, "s1234High":D
    sub-double v62, v60, v44

    .line 1293
    .local v62, "s1234Prime":D
    sub-double v64, v60, v62

    sub-double v64, v44, v64

    sub-double v66, v54, v62

    add-double v64, v64, v66

    .line 1297
    .local v64, "s1234Low":D
    add-double v66, v12, v24

    add-double v66, v66, v36

    add-double v66, v66, v46

    add-double v66, v66, v52

    add-double v66, v66, v58

    add-double v66, v66, v64

    add-double v66, v60, v66

    .line 1299
    .local v66, "result":D
    invoke-static/range {v66 .. v67}, Ljava/lang/Double;->isNaN(D)Z

    move-result v68

    if-eqz v68, :cond_0

    .line 1302
    mul-double v68, p0, p2

    mul-double v70, p4, p6

    add-double v68, v68, v70

    mul-double v70, p8, p10

    add-double v68, v68, v70

    mul-double v70, p12, p14

    add-double v66, v68, v70

    .line 1305
    :cond_0
    return-wide v66
.end method

.method public static linearCombination([D[D)D
    .locals 26
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 979
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 980
    array-length v1, v0

    .line 982
    .local v1, "len":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 984
    aget-wide v3, v0, v2

    aget-wide v5, p1, v2

    mul-double/2addr v3, v5

    return-wide v3

    .line 987
    :cond_0
    new-array v4, v1, [D

    .line 988
    .local v4, "prodHigh":[D
    const-wide/16 v5, 0x0

    .line 990
    .local v5, "prodLowSum":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_1

    .line 991
    aget-wide v8, v0, v7

    .line 992
    .local v8, "ai":D
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    const-wide/32 v12, -0x8000000

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    .line 993
    .local v10, "aHigh":D
    sub-double v14, v8, v10

    .line 995
    .local v14, "aLow":D
    aget-wide v16, p1, v7

    .line 996
    .local v16, "bi":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v18

    and-long v12, v18, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    .line 997
    .local v12, "bHigh":D
    sub-double v18, v16, v12

    .line 998
    .local v18, "bLow":D
    mul-double v20, v8, v16

    aput-wide v20, v4, v7

    .line 999
    mul-double v20, v14, v18

    aget-wide v22, v4, v7

    mul-double v24, v10, v12

    sub-double v22, v22, v24

    mul-double v24, v14, v12

    sub-double v22, v22, v24

    mul-double v24, v10, v18

    sub-double v22, v22, v24

    sub-double v20, v20, v22

    .line 1003
    .local v20, "prodLow":D
    add-double v5, v5, v20

    .line 990
    .end local v8    # "ai":D
    .end local v10    # "aHigh":D
    .end local v12    # "bHigh":D
    .end local v14    # "aLow":D
    .end local v16    # "bi":D
    .end local v18    # "bLow":D
    .end local v20    # "prodLow":D
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1007
    .end local v7    # "i":I
    :cond_1
    aget-wide v7, v4, v2

    .line 1008
    .local v7, "prodHighCur":D
    aget-wide v2, v4, v3

    .line 1009
    .local v2, "prodHighNext":D
    add-double v9, v7, v2

    .line 1010
    .local v9, "sHighPrev":D
    sub-double v11, v9, v2

    .line 1011
    .local v11, "sPrime":D
    sub-double v13, v9, v11

    sub-double v13, v2, v13

    sub-double v15, v7, v11

    add-double/2addr v13, v15

    .line 1013
    .local v13, "sLowSum":D
    add-int/lit8 v15, v1, -0x1

    .line 1014
    .local v15, "lenMinusOne":I
    const/16 v16, 0x1

    move/from16 v0, v16

    .local v0, "i":I
    :goto_1
    if-ge v0, v15, :cond_2

    .line 1015
    add-int/lit8 v16, v0, 0x1

    aget-wide v2, v4, v16

    .line 1016
    add-double v16, v9, v2

    .line 1017
    .local v16, "sHighCur":D
    sub-double v11, v16, v2

    .line 1018
    sub-double v18, v16, v11

    sub-double v18, v2, v18

    sub-double v20, v9, v11

    add-double v18, v18, v20

    add-double v13, v13, v18

    .line 1019
    move-wide/from16 v9, v16

    .line 1014
    .end local v16    # "sHighCur":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1022
    .end local v0    # "i":I
    :cond_2
    add-double v16, v5, v13

    add-double v16, v9, v16

    .line 1024
    .local v16, "result":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1027
    const-wide/16 v16, 0x0

    .line 1028
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 1029
    aget-wide v18, p0, v0

    aget-wide v20, p1, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    .line 1028
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1033
    .end local v0    # "i":I
    :cond_3
    return-wide v16
.end method

.method public static natural(I)[I
    .locals 2
    .param p0, "n"    # I

    .line 1679
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->sequence(III)[I

    move-result-object v0

    return-object v0
.end method

.method public static normalizeArray([DD)[D
    .locals 9
    .param p0, "values"    # [D
    .param p1, "normalizedSum"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1435
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 1438
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1441
    const-wide/16 v2, 0x0

    .line 1442
    .local v2, "sum":D
    array-length v0, p0

    .line 1443
    .local v0, "len":I
    new-array v4, v0, [D

    .line 1444
    .local v4, "out":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 1445
    aget-wide v6, p0, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1448
    aget-wide v6, p0, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1449
    aget-wide v6, p0, v5

    add-double/2addr v2, v6

    .line 1444
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1446
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-wide v7, p0, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 1452
    .end local v5    # "i":I
    :cond_2
    const-wide/16 v5, 0x0

    cmpl-double v5, v2, v5

    if-eqz v5, :cond_5

    .line 1455
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1456
    aget-wide v5, p0, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1457
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    aput-wide v5, v4, v1

    goto :goto_2

    .line 1459
    :cond_3
    aget-wide v5, p0, v1

    mul-double/2addr v5, p1

    div-double/2addr v5, v2

    aput-wide v5, v4, v1

    .line 1455
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1462
    .end local v1    # "i":I
    :cond_4
    return-object v4

    .line 1453
    :cond_5
    new-instance v5, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SUMS_TO_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v5, v6, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 1439
    .end local v0    # "len":I
    .end local v2    # "sum":D
    .end local v4    # "out":[D
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORMALIZE_NAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 1436
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORMALIZE_INFINITE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static safeNorm([D)D
    .locals 28
    .param p0, "v"    # [D

    .line 700
    move-object/from16 v0, p0

    const-wide v1, 0x3be6a1c6e8d98029L    # 3.834E-20

    .line 701
    .local v1, "rdwarf":D
    const-wide v3, 0x43e69eec5d27e300L    # 1.304E19

    .line 702
    .local v3, "rgiant":D
    const-wide/16 v5, 0x0

    .line 703
    .local v5, "s1":D
    const-wide/16 v7, 0x0

    .line 704
    .local v7, "s2":D
    const-wide/16 v9, 0x0

    .line 705
    .local v9, "s3":D
    const-wide/16 v11, 0x0

    .line 706
    .local v11, "x1max":D
    const-wide/16 v13, 0x0

    .line 707
    .local v13, "x3max":D
    array-length v15, v0

    move-wide/from16 v16, v1

    .end local v1    # "rdwarf":D
    .local v16, "rdwarf":D
    int-to-double v1, v15

    .line 708
    .local v1, "floatn":D
    div-double v18, v3, v1

    .line 709
    .local v18, "agiant":D
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-wide/from16 v20, v1

    .end local v1    # "floatn":D
    .local v20, "floatn":D
    array-length v1, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/16 v24, 0x0

    if-ge v15, v1, :cond_6

    .line 710
    aget-wide v1, v0, v15

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    .line 711
    .local v1, "xabs":D
    cmpg-double v26, v1, v16

    if-ltz v26, :cond_1

    cmpl-double v26, v1, v18

    if-lez v26, :cond_0

    goto :goto_1

    .line 734
    :cond_0
    mul-double v22, v1, v1

    add-double v7, v7, v22

    goto :goto_2

    .line 712
    :cond_1
    :goto_1
    cmpl-double v26, v1, v16

    if-lez v26, :cond_3

    .line 713
    cmpl-double v24, v1, v11

    if-lez v24, :cond_2

    .line 714
    div-double v24, v11, v1

    .line 715
    .local v24, "r":D
    mul-double v26, v5, v24

    mul-double v26, v26, v24

    add-double v26, v26, v22

    .line 716
    .end local v5    # "s1":D
    .local v26, "s1":D
    move-wide v5, v1

    .line 717
    .end local v11    # "x1max":D
    .end local v24    # "r":D
    .local v5, "x1max":D
    move-wide v11, v5

    move-wide/from16 v5, v26

    goto :goto_2

    .line 718
    .end local v26    # "s1":D
    .local v5, "s1":D
    .restart local v11    # "x1max":D
    :cond_2
    div-double v22, v1, v11

    .line 719
    .local v22, "r":D
    mul-double v24, v22, v22

    add-double v5, v5, v24

    .line 720
    .end local v22    # "r":D
    goto :goto_2

    .line 722
    :cond_3
    cmpl-double v26, v1, v13

    if-lez v26, :cond_4

    .line 723
    div-double v24, v13, v1

    .line 724
    .restart local v24    # "r":D
    mul-double v26, v9, v24

    mul-double v26, v26, v24

    add-double v26, v26, v22

    .line 725
    .end local v9    # "s3":D
    .local v26, "s3":D
    move-wide v9, v1

    .line 726
    .end local v13    # "x3max":D
    .end local v24    # "r":D
    .local v9, "x3max":D
    move-wide v13, v9

    move-wide/from16 v9, v26

    goto :goto_2

    .line 727
    .end local v26    # "s3":D
    .local v9, "s3":D
    .restart local v13    # "x3max":D
    :cond_4
    cmpl-double v22, v1, v24

    if-eqz v22, :cond_5

    .line 728
    div-double v22, v1, v13

    .line 729
    .restart local v22    # "r":D
    mul-double v24, v22, v22

    add-double v9, v9, v24

    .line 730
    .end local v22    # "r":D
    nop

    .line 709
    .end local v1    # "xabs":D
    :cond_5
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v1, v20

    goto :goto_0

    .line 738
    .end local v15    # "i":I
    :cond_6
    cmpl-double v1, v5, v24

    if-eqz v1, :cond_7

    .line 739
    div-double v1, v7, v11

    div-double/2addr v1, v11

    add-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double/2addr v1, v11

    .local v1, "norm":D
    goto :goto_3

    .line 741
    .end local v1    # "norm":D
    :cond_7
    cmpl-double v1, v7, v24

    if-nez v1, :cond_8

    .line 742
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double/2addr v1, v13

    .restart local v1    # "norm":D
    goto :goto_3

    .line 744
    .end local v1    # "norm":D
    :cond_8
    cmpl-double v1, v7, v13

    if-ltz v1, :cond_9

    .line 745
    div-double v1, v13, v7

    mul-double v24, v13, v9

    mul-double v1, v1, v24

    add-double v1, v1, v22

    mul-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .restart local v1    # "norm":D
    goto :goto_3

    .line 747
    .end local v1    # "norm":D
    :cond_9
    div-double v1, v7, v13

    mul-double v22, v13, v9

    add-double v1, v1, v22

    mul-double/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 751
    .restart local v1    # "norm":D
    :goto_3
    return-wide v1
.end method

.method public static scale(D[D)[D
    .locals 4
    .param p0, "val"    # D
    .param p2, "arr"    # [D

    .line 90
    array-length v0, p2

    new-array v0, v0, [D

    .line 91
    .local v0, "newArr":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 92
    aget-wide v2, p2, v1

    mul-double/2addr v2, p0

    aput-wide v2, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static scaleInPlace(D[D)V
    .locals 3
    .param p0, "val"    # D
    .param p2, "arr"    # [D

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 108
    aget-wide v1, p2, v0

    mul-double/2addr v1, p0

    aput-wide v1, p2, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static sequence(III)[I
    .locals 3
    .param p0, "size"    # I
    .param p1, "start"    # I
    .param p2, "stride"    # I

    .line 1697
    new-array v0, p0, [I

    .line 1698
    .local v0, "a":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 1699
    mul-int v2, v1, p2

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 1698
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1701
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static shuffle([I)V
    .locals 1
    .param p0, "list"    # [I

    .line 1668
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 1669
    return-void
.end method

.method public static shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;)V
    .locals 1
    .param p0, "list"    # [I
    .param p1, "start"    # I
    .param p2, "pos"    # Lorg/apache/commons/math3/util/MathArrays$Position;

    .line 1590
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 1591
    return-void
.end method

.method public static shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 4
    .param p0, "list"    # [I
    .param p1, "start"    # I
    .param p2, "pos"    # Lorg/apache/commons/math3/util/MathArrays$Position;
    .param p3, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .line 1611
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$Position:[I

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/MathArrays$Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1643
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 1628
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_1

    .line 1630
    if-ne v0, p1, :cond_0

    .line 1631
    move v1, p1

    .local v1, "target":I
    goto :goto_1

    .line 1634
    .end local v1    # "target":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-direct {v1, p3, v0, p1}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result v1

    .line 1636
    .restart local v1    # "target":I
    :goto_1
    aget v2, p0, v1

    .line 1637
    .local v2, "temp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1638
    aput v2, p0, v0

    .line 1628
    .end local v1    # "target":I
    .end local v2    # "temp":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1641
    .end local v0    # "i":I
    :cond_1
    goto :goto_4

    .line 1613
    :pswitch_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, p1, :cond_3

    .line 1615
    if-ne v0, p1, :cond_2

    .line 1616
    move v1, p1

    .restart local v1    # "target":I
    goto :goto_3

    .line 1619
    .end local v1    # "target":I
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-direct {v1, p3, p1, v0}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result v1

    .line 1621
    .restart local v1    # "target":I
    :goto_3
    aget v2, p0, v1

    .line 1622
    .restart local v2    # "temp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1623
    aput v2, p0, v0

    .line 1613
    .end local v1    # "target":I
    .end local v2    # "temp":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1626
    .end local v0    # "i":I
    :cond_3
    nop

    .line 1645
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2
    .param p0, "list"    # [I
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .line 1657
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$Position;->TAIL:Lorg/apache/commons/math3/util/MathArrays$Position;

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 1658
    return-void
.end method

.method public static varargs sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V
    .locals 11
    .param p0, "x"    # [D
    .param p1, "dir"    # Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .param p2, "yList"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 828
    if-eqz p0, :cond_8

    .line 832
    array-length v0, p2

    .line 833
    .local v0, "yListLen":I
    array-length v1, p0

    .line 835
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 836
    aget-object v3, p2, v2

    .line 837
    .local v3, "y":[D
    if-eqz v3, :cond_1

    .line 840
    array-length v4, v3

    if-ne v4, v1, :cond_0

    .line 835
    .end local v3    # "y":[D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    .restart local v3    # "y":[D
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v5, v3

    invoke-direct {v4, v5, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 838
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v4}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v4

    .line 846
    .end local v2    # "j":I
    .end local v3    # "y":[D
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 848
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 849
    new-instance v4, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;

    aget-wide v5, p0, v3

    invoke-direct {v4, v5, v6, v3}, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;-><init>(DI)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 853
    .end local v3    # "i":I
    :cond_3
    sget-object v3, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    if-ne p1, v3, :cond_4

    new-instance v3, Lorg/apache/commons/math3/util/MathArrays$1;

    invoke-direct {v3}, Lorg/apache/commons/math3/util/MathArrays$1;-><init>()V

    goto :goto_2

    :cond_4
    new-instance v3, Lorg/apache/commons/math3/util/MathArrays$2;

    invoke-direct {v3}, Lorg/apache/commons/math3/util/MathArrays$2;-><init>()V

    .line 870
    .local v3, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;>;"
    :goto_2
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 875
    new-array v4, v1, [I

    .line 876
    .local v4, "indices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v1, :cond_5

    .line 877
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;

    .line 878
    .local v6, "e":Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;
    invoke-virtual {v6}, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->getKey()D

    move-result-wide v7

    aput-wide v7, p0, v5

    .line 879
    invoke-virtual {v6}, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->getValue()I

    move-result v7

    aput v7, v4, v5

    .line 876
    .end local v6    # "e":Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 884
    .end local v5    # "i":I
    :cond_5
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    if-ge v5, v0, :cond_7

    .line 886
    aget-object v6, p2, v5

    .line 887
    .local v6, "yInPlace":[D
    invoke-virtual {v6}, [D->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    .line 889
    .local v7, "yOrig":[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v1, :cond_6

    .line 890
    aget v9, v4, v8

    aget-wide v9, v7, v9

    aput-wide v9, v6, v8

    .line 889
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 884
    .end local v6    # "yInPlace":[D
    .end local v7    # "yOrig":[D
    .end local v8    # "i":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 893
    .end local v5    # "j":I
    :cond_7
    return-void

    .line 829
    .end local v0    # "yListLen":I
    .end local v1    # "len":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;>;"
    .end local v3    # "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;>;"
    .end local v4    # "indices":[I
    :cond_8
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public static varargs sortInPlace([D[[D)V
    .locals 1
    .param p0, "x"    # [D
    .param p1, "yList"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 801
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V

    .line 802
    return-void
.end method

.method public static unique([D)[D
    .locals 8
    .param p0, "data"    # [D

    .line 1922
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1923
    .local v0, "values":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1924
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1923
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1926
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    .line 1927
    .local v1, "count":I
    new-array v2, v1, [D

    .line 1928
    .local v2, "out":[D
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1929
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    const/4 v4, 0x0

    .line 1930
    .local v4, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1931
    add-int/lit8 v4, v4, 0x1

    sub-int v5, v1, v4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v2, v5

    goto :goto_1

    .line 1933
    :cond_1
    return-object v2
.end method

.method public static verifyValues([DII)Z
    .locals 1
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1725
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DIIZ)Z

    move-result v0

    return v0
.end method

.method public static verifyValues([DIIZ)Z
    .locals 5
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .param p3, "allowEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1752
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1756
    if-ltz p1, :cond_3

    .line 1760
    if-ltz p2, :cond_2

    .line 1764
    add-int v1, p1, p2

    array-length v2, p0

    const/4 v3, 0x1

    if-gt v1, v2, :cond_1

    .line 1769
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1770
    return v0

    .line 1773
    :cond_0
    return v3

    .line 1765
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SUBARRAY_ENDS_AFTER_ARRAY_END:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    add-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1761
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 1757
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->START_POSITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 1753
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static verifyValues([D[DII)Z
    .locals 1
    .param p0, "values"    # [D
    .param p1, "weights"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1811
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([D[DIIZ)Z

    move-result v0

    return v0
.end method

.method public static verifyValues([D[DIIZ)Z
    .locals 8
    .param p0, "values"    # [D
    .param p1, "weights"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .param p4, "allowEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1850
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p0, :cond_6

    .line 1854
    invoke-static {p1, p0}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    .line 1856
    const/4 v1, 0x0

    .line 1857
    .local v1, "containsPositiveWeight":Z
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v3, p2, p3

    if-ge v2, v3, :cond_4

    .line 1858
    aget-wide v3, p1, v2

    .line 1859
    .local v3, "weight":D
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1862
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1865
    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    if-ltz v7, :cond_1

    .line 1868
    if-nez v1, :cond_0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_0

    .line 1869
    const/4 v1, 0x1

    .line 1857
    .end local v3    # "weight":D
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1866
    .restart local v3    # "weight":D
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NEGATIVE_ELEMENT_AT_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 1863
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 1860
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NAN_ELEMENT_AT_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 1873
    .end local v2    # "i":I
    .end local v3    # "weight":D
    :cond_4
    if-eqz v1, :cond_5

    .line 1877
    invoke-static {p0, p2, p3, p4}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DIIZ)Z

    move-result v0

    return v0

    .line 1874
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WEIGHT_AT_LEAST_ONE_NON_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 1851
    .end local v1    # "containsPositiveWeight":Z
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method
