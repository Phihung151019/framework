.class public Lorg/apache/commons/math3/stat/descriptive/summary/Product;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Product.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/descriptive/WeightedEvaluation;


# static fields
.field private static final serialVersionUID:J = 0x2731aa96cc7d290aL


# instance fields
.field private n:J

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    .line 59
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/summary/Product;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/summary/Product;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 70
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Product;Lorg/apache/commons/math3/stat/descriptive/summary/Product;)V

    .line 71
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/summary/Product;Lorg/apache/commons/math3/stat/descriptive/summary/Product;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/summary/Product;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/summary/Product;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 223
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 224
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->setData([D)V

    .line 226
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    .line 227
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    .line 228
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 102
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    .line 104
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/Product;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/Product;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/summary/Product;
    .locals 1

    .line 207
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;-><init>()V

    .line 209
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/summary/Product;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Product;Lorg/apache/commons/math3/stat/descriptive/summary/Product;)V

    .line 210
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

    .line 123
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 124
    .local v0, "product":D
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->test([DIIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 126
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v3, p2, p3

    if-ge v2, v3, :cond_0

    .line 127
    aget-wide v3, p1, v2

    mul-double/2addr v0, v3

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
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

    .line 198
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->evaluate([D[DII)D

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

    .line 163
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 164
    .local v0, "product":D
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
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->test([D[DIIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 166
    .end local v0    # "product":D
    .local p1, "product":D
    move p3, v5

    move-wide v0, p1

    .end local p1    # "product":D
    .restart local v0    # "product":D
    .local p3, "i":I
    :goto_0
    add-int p1, v5, v6

    if-ge p3, p1, :cond_0

    .line 167
    aget-wide p1, v3, p3

    aget-wide v7, v4, p3

    invoke-static {p1, p2, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p1

    mul-double/2addr v0, p1

    .line 166
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 170
    .end local p3    # "i":I
    :cond_0
    return-wide v0
.end method

.method public getN()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 4
    .param p1, "d"    # D

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    .line 79
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    .line 80
    return-void
.end method
