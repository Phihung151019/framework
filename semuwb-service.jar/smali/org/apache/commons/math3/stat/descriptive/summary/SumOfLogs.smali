.class public Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "SumOfLogs.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x522c711192a76cbL


# instance fields
.field private n:I

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->value:D

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->n:I

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 77
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V

    .line 78
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 164
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 165
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->setData([D)V

    .line 167
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->n:I

    iput v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->n:I

    .line 168
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->value:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->value:D

    .line 169
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->value:D

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->n:I

    .line 111
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;
    .locals 1

    .line 148
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    .line 150
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V

    .line 151
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

    .line 133
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 134
    .local v0, "sumLog":D
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->test([DIIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-wide/16 v0, 0x0

    .line 136
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v3, p2, p3

    if-ge v2, v3, :cond_0

    .line 137
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public getN()J
    .locals 2

    .line 101
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->n:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->value:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 4
    .param p1, "d"    # D

    .line 85
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->value:D

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->value:D

    .line 86
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->n:I

    .line 87
    return-void
.end method
