.class public Lorg/apache/commons/math3/stat/Frequency;
.super Ljava/lang/Object;
.source "Frequency.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x355e44eb1d32a5cfL


# instance fields
.field private final freqTable:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;)V"
        }
    .end annotation

    .line 86
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    .line 88
    return-void
.end method


# virtual methods
.method public addValue(C)V
    .locals 1
    .param p1, "v"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 159
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->addValue(Ljava/lang/Comparable;)V

    .line 160
    return-void
.end method

.method public addValue(I)V
    .locals 2
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 137
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->addValue(Ljava/lang/Comparable;)V

    .line 138
    return-void
.end method

.method public addValue(J)V
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 148
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->addValue(Ljava/lang/Comparable;)V

    .line 149
    return-void
.end method

.method public addValue(Ljava/lang/Comparable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 126
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/stat/Frequency;->incrementValue(Ljava/lang/Comparable;J)V

    .line 127
    return-void
.end method

.method public clear()V
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 248
    return-void
.end method

.method public entrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 669
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 670
    return v0

    .line 672
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/stat/Frequency;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 673
    return v2

    .line 675
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/stat/Frequency;

    .line 676
    .local v1, "other":Lorg/apache/commons/math3/stat/Frequency;
    iget-object v3, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    if-nez v3, :cond_2

    .line 677
    iget-object v3, v1, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    if-eqz v3, :cond_3

    .line 678
    return v2

    .line 680
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    iget-object v4, v1, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 681
    return v2

    .line 683
    :cond_3
    return v0
.end method

.method public getCount(C)J
    .locals 2
    .param p1, "v"    # C

    .line 346
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount(I)J
    .locals 2
    .param p1, "v"    # I

    .line 326
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount(J)J
    .locals 2
    .param p1, "v"    # J

    .line 336
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount(Ljava/lang/Comparable;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)J"
        }
    .end annotation

    .line 304
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 305
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/Frequency;->getCount(J)J

    move-result-wide v0

    return-wide v0

    .line 307
    :cond_0
    const-wide/16 v0, 0x0

    .line 309
    .local v0, "result":J
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 310
    .local v2, "count":Ljava/lang/Long;
    if-eqz v2, :cond_1

    .line 311
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 315
    .end local v2    # "count":Ljava/lang/Long;
    :cond_1
    goto :goto_0

    .line 313
    :catch_0
    move-exception v2

    .line 316
    :goto_0
    return-wide v0
.end method

.method public getCumFreq(C)J
    .locals 2
    .param p1, "v"    # C

    .line 497
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumFreq(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumFreq(I)J
    .locals 2
    .param p1, "v"    # I

    .line 473
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumFreq(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumFreq(J)J
    .locals 2
    .param p1, "v"    # J

    .line 485
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumFreq(Ljava/lang/Comparable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumFreq(Ljava/lang/Comparable;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)J"
        }
    .end annotation

    .line 423
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/Frequency;->getSumFreq()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 424
    return-wide v2

    .line 426
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 427
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/Frequency;->getCumFreq(J)J

    move-result-wide v0

    return-wide v0

    .line 429
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 430
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Comparable<*>;>;"
    if-nez v0, :cond_2

    .line 431
    new-instance v1, Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;-><init>(Lorg/apache/commons/math3/stat/Frequency$1;)V

    move-object v0, v1

    .line 433
    :cond_2
    const-wide/16 v4, 0x0

    .line 436
    .local v4, "result":J
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 437
    .local v1, "value":Ljava/lang/Long;
    if-eqz v1, :cond_3

    .line 438
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    .line 442
    .end local v1    # "value":Ljava/lang/Long;
    :cond_3
    nop

    .line 444
    iget-object v1, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_4

    .line 445
    return-wide v2

    .line 448
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 449
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/Frequency;->getSumFreq()J

    move-result-wide v1

    return-wide v1

    .line 452
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/Frequency;->valuesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 453
    .local v1, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Comparable<*>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 454
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 455
    .local v2, "nextValue":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-interface {v0, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_6

    .line 456
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 460
    .end local v2    # "nextValue":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    goto :goto_0

    .line 458
    .restart local v2    # "nextValue":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    :cond_6
    return-wide v4

    .line 461
    .end local v2    # "nextValue":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    :cond_7
    return-wide v4

    .line 440
    .end local v1    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Comparable<*>;>;"
    :catch_0
    move-exception v1

    .line 441
    .local v1, "ex":Ljava/lang/ClassCastException;
    return-wide v4
.end method

.method public getCumPct(C)D
    .locals 2
    .param p1, "v"    # C

    .line 557
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumPct(I)D
    .locals 2
    .param p1, "v"    # I

    .line 531
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumPct(J)D
    .locals 2
    .param p1, "v"    # J

    .line 544
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getCumPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumPct(Ljava/lang/Comparable;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)D"
        }
    .end annotation

    .line 514
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/Frequency;->getSumFreq()J

    move-result-wide v0

    .line 515
    .local v0, "sumFreq":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 516
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    return-wide v2

    .line 518
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/Frequency;->getCumFreq(Ljava/lang/Comparable;)J

    move-result-wide v2

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public getMode()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    .line 567
    const-wide/16 v0, 0x0

    .line 570
    .local v0, "mostPopular":J
    iget-object v2, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 571
    .local v3, "l":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 572
    .local v4, "frequency":J
    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    .line 573
    move-wide v0, v4

    .line 575
    .end local v3    # "l":Ljava/lang/Long;
    .end local v4    # "frequency":J
    :cond_0
    goto :goto_0

    .line 577
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v2, "modeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Comparable<*>;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 579
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Comparable<*>;Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 580
    .local v5, "frequency":J
    cmp-long v7, v5, v0

    if-nez v7, :cond_2

    .line 581
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Comparable<*>;Ljava/lang/Long;>;"
    .end local v5    # "frequency":J
    :cond_2
    goto :goto_1

    .line 584
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v2
.end method

.method public getPct(C)D
    .locals 2
    .param p1, "v"    # C

    .line 408
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPct(I)D
    .locals 2
    .param p1, "v"    # I

    .line 386
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPct(J)D
    .locals 2
    .param p1, "v"    # J

    .line 397
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/Frequency;->getPct(Ljava/lang/Comparable;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPct(Ljava/lang/Comparable;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)D"
        }
    .end annotation

    .line 371
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/Frequency;->getSumFreq()J

    move-result-wide v0

    .line 372
    .local v0, "sumFreq":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 373
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    return-wide v2

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v2

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public getSumFreq()J
    .locals 5

    .line 288
    const-wide/16 v0, 0x0

    .line 289
    .local v0, "result":J
    iget-object v2, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 290
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_0

    .line 293
    :cond_0
    return-wide v0
.end method

.method public getUniqueCount()I
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 659
    const/16 v0, 0x1f

    .line 660
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 661
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 663
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public incrementValue(CJ)V
    .locals 1
    .param p1, "v"    # C
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 242
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/math3/stat/Frequency;->incrementValue(Ljava/lang/Comparable;J)V

    .line 243
    return-void
.end method

.method public incrementValue(IJ)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 208
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/math3/stat/Frequency;->incrementValue(Ljava/lang/Comparable;J)V

    .line 209
    return-void
.end method

.method public incrementValue(JJ)V
    .locals 1
    .param p1, "v"    # J
    .param p3, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 225
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/commons/math3/stat/Frequency;->incrementValue(Ljava/lang/Comparable;J)V

    .line 226
    return-void
.end method

.method public incrementValue(Ljava/lang/Comparable;J)V
    .locals 5
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 175
    .local p1, "v":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    move-object v0, p1

    .line 176
    .local v0, "obj":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 177
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 180
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 181
    .local v1, "count":Ljava/lang/Long;
    if-nez v1, :cond_1

    .line 182
    iget-object v2, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1    # "count":Ljava/lang/Long;
    :goto_0
    nop

    .line 192
    return-void

    .line 186
    :catch_0
    move-exception v1

    .line 188
    .local v1, "ex":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSTANCES_NOT_COMPARABLE_TO_EXISTING_VALUES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public merge(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/Frequency;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 618
    .local p1, "others":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/Frequency;>;"
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 620
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/Frequency;

    .line 621
    .local v1, "freq":Lorg/apache/commons/math3/stat/Frequency;
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/stat/Frequency;->merge(Lorg/apache/commons/math3/stat/Frequency;)V

    .line 622
    .end local v1    # "freq":Lorg/apache/commons/math3/stat/Frequency;
    goto :goto_0

    .line 623
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public merge(Lorg/apache/commons/math3/stat/Frequency;)V
    .locals 5
    .param p1, "other"    # Lorg/apache/commons/math3/stat/Frequency;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 599
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 601
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/Frequency;->entrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 602
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Comparable<*>;Ljava/lang/Long;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 604
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Comparable<*>;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/commons/math3/stat/Frequency;->incrementValue(Ljava/lang/Comparable;J)V

    .line 605
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Comparable<*>;Ljava/lang/Long;>;"
    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 97
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 98
    .local v0, "nf":Ljava/text/NumberFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "outBuffer":Ljava/lang/StringBuilder;
    const-string v2, "Value \t Freq. \t Pct. \t Cum Pct. \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v2, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 101
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Comparable<*>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 103
    .local v3, "value":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/stat/Frequency;->getCount(Ljava/lang/Comparable;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/stat/Frequency;->getPct(Ljava/lang/Comparable;)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/stat/Frequency;->getCumPct(Ljava/lang/Comparable;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .end local v3    # "value":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public valuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lorg/apache/commons/math3/stat/Frequency;->freqTable:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
