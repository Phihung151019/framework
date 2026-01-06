.class public Lorg/apache/commons/math3/util/KthSelector;
.super Ljava/lang/Object;
.source "KthSelector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MIN_SELECT_SIZE:I = 0xf

.field private static final serialVersionUID:J = 0x13352a9L


# instance fields
.field private final pivotingStrategy:Lorg/apache/commons/math3/util/PivotingStrategyInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/util/KthSelector;->pivotingStrategy:Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/PivotingStrategyInterface;)V
    .locals 0
    .param p1, "pivotingStrategy"    # Lorg/apache/commons/math3/util/PivotingStrategyInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/math3/util/KthSelector;->pivotingStrategy:Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    .line 62
    return-void
.end method

.method private partition([DIII)I
    .locals 9
    .param p1, "work"    # [D
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .param p4, "pivot"    # I

    .line 130
    aget-wide v0, p1, p4

    .line 131
    .local v0, "value":D
    aget-wide v2, p1, p2

    aput-wide v2, p1, p4

    .line 133
    add-int/lit8 v2, p2, 0x1

    .line 134
    .local v2, "i":I
    add-int/lit8 v3, p3, -0x1

    .line 135
    .local v3, "j":I
    :cond_0
    :goto_0
    if-ge v2, v3, :cond_3

    .line 136
    :goto_1
    if-ge v2, v3, :cond_1

    aget-wide v4, p1, v3

    cmpl-double v4, v4, v0

    if-lez v4, :cond_1

    .line 137
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 139
    :cond_1
    :goto_2
    if-ge v2, v3, :cond_2

    aget-wide v4, p1, v2

    cmpg-double v4, v4, v0

    if-gez v4, :cond_2

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 143
    :cond_2
    if-ge v2, v3, :cond_0

    .line 144
    aget-wide v4, p1, v2

    .line 145
    .local v4, "tmp":D
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aget-wide v7, p1, v3

    aput-wide v7, p1, v2

    .line 146
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "j":I
    .local v2, "j":I
    aput-wide v4, p1, v3

    .line 147
    .end local v4    # "tmp":D
    move v3, v2

    move v2, v6

    goto :goto_0

    .line 150
    .end local v6    # "i":I
    .local v2, "i":I
    .restart local v3    # "j":I
    :cond_3
    if-ge v2, p3, :cond_4

    aget-wide v4, p1, v2

    cmpl-double v4, v4, v0

    if-lez v4, :cond_5

    .line 151
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 153
    :cond_5
    aget-wide v4, p1, v2

    aput-wide v4, p1, p2

    .line 154
    aput-wide v0, p1, v2

    .line 155
    return v2
.end method


# virtual methods
.method public getPivotingStrategy()Lorg/apache/commons/math3/util/PivotingStrategyInterface;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/commons/math3/util/KthSelector;->pivotingStrategy:Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    return-object v0
.end method

.method public select([D[II)D
    .locals 8
    .param p1, "work"    # [D
    .param p2, "pivotsHeap"    # [I
    .param p3, "k"    # I

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "begin":I
    array-length v1, p1

    .line 82
    .local v1, "end":I
    const/4 v2, 0x0

    .line 83
    .local v2, "node":I
    const/4 v3, 0x1

    if-eqz p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 84
    .local v4, "usePivotsHeap":Z
    :goto_0
    sub-int v5, v1, v0

    const/16 v6, 0xf

    if-le v5, v6, :cond_7

    .line 87
    if-eqz v4, :cond_1

    array-length v5, p2

    if-ge v2, v5, :cond_1

    aget v5, p2, v2

    if-ltz v5, :cond_1

    .line 91
    aget v5, p2, v2

    .local v5, "pivot":I
    goto :goto_1

    .line 94
    .end local v5    # "pivot":I
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/util/KthSelector;->pivotingStrategy:Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    invoke-interface {v5, p1, v0, v1}, Lorg/apache/commons/math3/util/PivotingStrategyInterface;->pivotIndex([DII)I

    move-result v5

    invoke-direct {p0, p1, v0, v1, v5}, Lorg/apache/commons/math3/util/KthSelector;->partition([DIII)I

    move-result v5

    .line 95
    .restart local v5    # "pivot":I
    if-eqz v4, :cond_2

    array-length v6, p2

    if-ge v2, v6, :cond_2

    .line 96
    aput v5, p2, v2

    .line 100
    :cond_2
    :goto_1
    if-ne p3, v5, :cond_3

    .line 102
    aget-wide v6, p1, p3

    return-wide v6

    .line 103
    :cond_3
    if-ge p3, v5, :cond_5

    .line 105
    move v1, v5

    .line 106
    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    if-eqz v4, :cond_4

    array-length v7, p2

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    goto :goto_4

    .line 109
    :cond_5
    add-int/lit8 v0, v5, 0x1

    .line 110
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x2

    if-eqz v4, :cond_6

    array-length v7, p2

    goto :goto_3

    :cond_6
    move v7, v1

    :goto_3
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 112
    .end local v5    # "pivot":I
    :goto_4
    goto :goto_0

    .line 113
    :cond_7
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->sort([DII)V

    .line 114
    aget-wide v5, p1, p3

    return-wide v5
.end method
