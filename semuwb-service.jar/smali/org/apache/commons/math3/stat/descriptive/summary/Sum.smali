.class public Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Sum.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x723d578c76ce5cbcL


# instance fields
.field private n:J

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 69
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V

    .line 70
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 219
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->setData([D)V

    .line 222
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    .line 223
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    .line 224
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    .line 103
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    .locals 1

    .line 203
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    .line 205
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V

    .line 206
    return-object v0
.end method

.method public evaluate([DII)D
    .locals 5
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 122
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 123
    .local v0, "sum":D
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->test([DIIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    const-wide/16 v0, 0x0

    .line 125
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v3, p2, p3

    if-ge v2, v3, :cond_0

    .line 126
    aget-wide v3, p1, v2

    add-double/2addr v0, v3

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public evaluate([D[D)D
    .locals 2
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([D[DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([D[DII)D
    .locals 9
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .param p3, "begin"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 161
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 162
    .local v0, "sum":D
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "values":[D
    .end local p2    # "weights":[D
    .end local p3    # "begin":I
    .end local p4    # "length":I
    .local v3, "values":[D
    .local v4, "weights":[D
    .local v5, "begin":I
    .local v6, "length":I
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->test([D[DIIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    const-wide/16 p1, 0x0

    .line 164
    .end local v0    # "sum":D
    .local p1, "sum":D
    move p3, v5

    move-wide v0, p1

    .end local p1    # "sum":D
    .restart local v0    # "sum":D
    .local p3, "i":I
    :goto_0
    add-int p1, v5, v6

    if-ge p3, p1, :cond_0

    .line 165
    aget-wide p1, v3, p3

    aget-wide v7, v4, p3

    mul-double/2addr p1, v7

    add-double/2addr v0, p1

    .line 164
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 168
    .end local p3    # "i":I
    :cond_0
    return-wide v0
.end method

.method public getN()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 4
    .param p1, "d"    # D

    .line 77
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    .line 79
    return-void
.end method
