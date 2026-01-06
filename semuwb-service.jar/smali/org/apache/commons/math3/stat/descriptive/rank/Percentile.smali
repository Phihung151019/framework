.class public Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;
.source "Percentile.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    }
.end annotation


# static fields
.field private static final MAX_CACHED_LEVELS:I = 0xa

.field private static final PIVOTS_HEAP_LENGTH:I = 0x200

.field private static final serialVersionUID:J = -0x7049c6862ae14530L


# instance fields
.field private cachedPivots:[I

.field private final estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field private final kthSelector:Lorg/apache/commons/math3/util/KthSelector;

.field private final nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field private quantile:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 137
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(D)V

    .line 138
    return-void
.end method

.method public constructor <init>(D)V
    .locals 6
    .param p1, "quantile"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 152
    sget-object v3, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->LEGACY:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    sget-object v4, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    new-instance v5, Lorg/apache/commons/math3/util/KthSelector;

    new-instance v0, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;-><init>()V

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/util/KthSelector;-><init>(Lorg/apache/commons/math3/util/PivotingStrategyInterface;)V

    move-object v0, p0

    move-wide v1, p1

    .end local p1    # "quantile":D
    .local v1, "quantile":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    .line 154
    return-void
.end method

.method protected constructor <init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V
    .locals 1
    .param p1, "quantile"    # D
    .param p3, "estimationType"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .param p4, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .param p5, "kthSelector"    # Lorg/apache/commons/math3/util/KthSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 194
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .line 196
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    invoke-static {p4}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 198
    invoke-static {p5}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    iput-object p3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 200
    iput-object p4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 201
    iput-object p5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    .line 202
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V
    .locals 4
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 165
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 167
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 168
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getKthSelector()Lorg/apache/commons/math3/util/KthSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    .line 170
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setData([D)V

    .line 171
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    iget-object v2, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :cond_0
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    .line 176
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static copyOf([DII)[D
    .locals 1
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I

    .line 478
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    .line 479
    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method private getPivots([D)[I
    .locals 2
    .param p1, "values"    # [D

    .line 558
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 559
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .local v0, "pivotsHeap":[I
    goto :goto_0

    .line 561
    .end local v0    # "pivotsHeap":[I
    :cond_0
    const/16 v0, 0x200

    new-array v0, v0, [I

    .line 562
    .restart local v0    # "pivotsHeap":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 564
    :goto_0
    return-object v0
.end method

.method private static removeAndSlice([DIID)[D
    .locals 8
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .param p3, "removedValue"    # D

    .line 516
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    .line 519
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 520
    .local v0, "bits":Ljava/util/BitSet;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 521
    aget-wide v2, p0, v1

    invoke-static {p3, p4, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    sub-int v2, v1, p1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 520
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object v1

    .local v1, "temp":[D
    goto :goto_2

    .line 528
    .end local v1    # "temp":[D
    :cond_2
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-ne v1, p2, :cond_3

    .line 529
    const/4 v1, 0x0

    new-array v1, v1, [D

    .restart local v1    # "temp":[D
    goto :goto_2

    .line 531
    .end local v1    # "temp":[D
    :cond_3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    sub-int v1, p2, v1

    new-array v1, v1, [D

    .line 532
    .restart local v1    # "temp":[D
    move v2, p1

    .line 533
    .local v2, "start":I
    const/4 v3, 0x0

    .line 534
    .local v3, "dest":I
    const/4 v4, -0x1

    .line 535
    .local v4, "nextOne":I
    const/4 v5, 0x0

    .line 536
    .local v5, "bitSetPtr":I
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    move v4, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 537
    sub-int v6, v4, v5

    .line 538
    .local v6, "lengthToCopy":I
    invoke-static {p0, v2, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    add-int/2addr v3, v6

    .line 540
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v7

    move v5, v7

    add-int v2, p1, v7

    .line 541
    .end local v6    # "lengthToCopy":I
    goto :goto_1

    .line 543
    :cond_4
    add-int v6, p1, p2

    if-ge v2, v6, :cond_5

    .line 544
    add-int v6, p1, p2

    sub-int/2addr v6, v2

    invoke-static {p0, v2, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    .end local v2    # "start":I
    .end local v3    # "dest":I
    .end local v4    # "nextOne":I
    .end local v5    # "bitSetPtr":I
    :cond_5
    :goto_2
    return-object v1
.end method

.method private static replaceAndSlice([DIIDD)[D
    .locals 4
    .param p0, "values"    # [D
    .param p1, "begin"    # I
    .param p2, "length"    # I
    .param p3, "original"    # D
    .param p5, "replacement"    # D

    .line 496
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object v0

    .line 497
    .local v0, "temp":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 498
    aget-wide v2, v0, v1

    invoke-static {p3, p4, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, p5

    goto :goto_1

    :cond_0
    aget-wide v2, v0, v1

    :goto_1
    aput-wide v2, v0, v1

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copy()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 1

    .line 409
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V

    return-object v0
.end method

.method public evaluate(D)D
    .locals 2
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DD)D
    .locals 7
    .param p1, "values"    # [D
    .param p2, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->test([DII)Z

    .line 273
    const/4 v3, 0x0

    array-length v4, p1

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    .end local p1    # "values":[D
    .end local p2    # "p":D
    .local v2, "values":[D
    .local v5, "p":D
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DII)D
    .locals 6
    .param p1, "values"    # [D
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 302
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "values":[D
    .end local p2    # "start":I
    .end local p3    # "length":I
    .local v1, "values":[D
    .local v2, "start":I
    .local v3, "length":I
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DIID)D
    .locals 8
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .param p4, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->test([DII)Z

    .line 340
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v0, p4, v0

    if-gtz v0, :cond_3

    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-lez v0, :cond_3

    .line 344
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-nez p3, :cond_0

    .line 345
    return-wide v0

    .line 347
    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 348
    aget-wide v0, p1, p2

    return-wide v0

    .line 351
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getWorkArray([DII)[D

    move-result-object v3

    .line 352
    .local v3, "work":[D
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getPivots([D)[I

    move-result-object v4

    .line 353
    .local v4, "pivotsHeap":[I
    array-length v2, v3

    if-nez v2, :cond_2

    move-wide v5, p4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v7, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-wide v5, p4

    .end local p4    # "p":D
    .local v5, "p":D
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->evaluate([D[IDLorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 340
    .end local v3    # "work":[D
    .end local v4    # "pivotsHeap":[I
    .end local v5    # "p":D
    .restart local p4    # "p":D
    :cond_3
    move-wide v5, p4

    .line 341
    .end local p4    # "p":D
    .restart local v5    # "p":D
    new-instance p4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p4, p5, v0, v1, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p4
.end method

.method public getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-object v0
.end method

.method public getKthSelector()Lorg/apache/commons/math3/util/KthSelector;
    .locals 1

    .line 639
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    return-object v0
.end method

.method public getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .locals 1

    .line 606
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    return-object v0
.end method

.method public getPivotingStrategy()Lorg/apache/commons/math3/util/PivotingStrategyInterface;
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/KthSelector;->getPivotingStrategy()Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    move-result-object v0

    return-object v0
.end method

.method public getQuantile()D
    .locals 2

    .line 385
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    return-wide v0
.end method

.method protected getWorkArray([DII)[D
    .locals 8
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I

    .line 444
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v0, "work":[D
    goto :goto_0

    .line 447
    .end local v0    # "work":[D
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;->$SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy:[I

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 462
    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "values":[D
    .end local p2    # "begin":I
    .end local p3    # "length":I
    .local v1, "values":[D
    .local v2, "begin":I
    .local v3, "length":I
    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object v0

    .restart local v0    # "work":[D
    goto :goto_0

    .line 458
    .end local v0    # "work":[D
    .end local v1    # "values":[D
    .end local v2    # "begin":I
    .end local v3    # "length":I
    .restart local p1    # "values":[D
    .restart local p2    # "begin":I
    .restart local p3    # "length":I
    :pswitch_0
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object v0

    .line 459
    .restart local v0    # "work":[D
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->checkNotNaN([D)V

    .line 460
    move-object v1, p1

    move v2, p2

    move v3, p3

    goto :goto_0

    .line 455
    .end local v0    # "work":[D
    :pswitch_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {p1, p2, p3, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->removeAndSlice([DIID)[D

    move-result-object v0

    .line 456
    .restart local v0    # "work":[D
    move-object v1, p1

    move v2, p2

    move v3, p3

    goto :goto_0

    .line 452
    .end local v0    # "work":[D
    :pswitch_2
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "values":[D
    .end local p2    # "begin":I
    .end local p3    # "length":I
    .restart local v1    # "values":[D
    .restart local v2    # "begin":I
    .restart local v3    # "length":I
    invoke-static/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->replaceAndSlice([DIIDD)[D

    move-result-object v0

    .line 453
    .restart local v0    # "work":[D
    goto :goto_0

    .line 449
    .end local v0    # "work":[D
    .end local v1    # "values":[D
    .end local v2    # "begin":I
    .end local v3    # "length":I
    .restart local p1    # "values":[D
    .restart local p2    # "begin":I
    .restart local p3    # "length":I
    :pswitch_3
    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "values":[D
    .end local p2    # "begin":I
    .end local p3    # "length":I
    .restart local v1    # "values":[D
    .restart local v2    # "begin":I
    .restart local v3    # "length":I
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->replaceAndSlice([DIIDD)[D

    move-result-object v0

    .line 450
    .restart local v0    # "work":[D
    nop

    .line 466
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method medianOf3([DII)I
    .locals 1
    .param p1, "work"    # [D
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    new-instance v0, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;->pivotIndex([DII)I

    move-result v0

    return v0
.end method

.method public setData([D)V
    .locals 2
    .param p1, "values"    # [D

    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    goto :goto_0

    .line 210
    :cond_0
    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .line 211
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 213
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([D)V

    .line 214
    return-void
.end method

.method public setData([DII)V
    .locals 2
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    goto :goto_0

    .line 223
    :cond_0
    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 226
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([DII)V

    .line 227
    return-void
.end method

.method public setQuantile(D)V
    .locals 5
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 397
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 401
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    .line 402
    return-void

    .line 398
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public withEstimationType(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 6
    .param p1, "newEstimationType"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 598
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-object v3, p1

    .end local p1    # "newEstimationType":Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .local v3, "newEstimationType":Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v0
.end method

.method public withKthSelector(Lorg/apache/commons/math3/util/KthSelector;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 6
    .param p1, "newKthSelector"    # Lorg/apache/commons/math3/util/KthSelector;

    .line 672
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-object v5, p1

    .end local p1    # "newKthSelector":Lorg/apache/commons/math3/util/KthSelector;
    .local v5, "newKthSelector":Lorg/apache/commons/math3/util/KthSelector;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v0
.end method

.method public withNaNStrategy(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 6
    .param p1, "newNaNStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 631
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-object v4, p1

    .end local p1    # "newNaNStrategy":Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .local v4, "newNaNStrategy":Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v0
.end method
