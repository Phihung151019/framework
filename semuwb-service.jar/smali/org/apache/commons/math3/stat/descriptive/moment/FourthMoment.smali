.class Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
.super Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
.source "FourthMoment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x421d181229c5c4ebL


# instance fields
.field private m4:D


# direct methods
.method constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>()V

    .line 70
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    .line 71
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>()V

    .line 82
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V

    .line 83
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 146
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 148
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V

    .line 149
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    .line 150
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 121
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->clear()V

    .line 122
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    .line 123
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
    .locals 1

    .line 130
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;-><init>()V

    .line 132
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V

    .line 133
    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public getResult()D
    .locals 2

    .line 113
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 17
    .param p1, "d"    # D

    .line 90
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 91
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    .line 92
    iput-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m3:D

    .line 93
    iput-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    .line 94
    iput-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m1:D

    .line 97
    :cond_0
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m3:D

    .line 98
    .local v1, "prevM3":D
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    .line 100
    .local v3, "prevM2":D
    invoke-super/range {p0 .. p2}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->increment(D)V

    .line 102
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    long-to-double v5, v5

    .line 104
    .local v5, "n0":D
    iget-wide v7, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->nDev:D

    mul-double/2addr v11, v9

    mul-double/2addr v11, v1

    sub-double/2addr v7, v11

    const-wide/high16 v9, 0x4018000000000000L    # 6.0

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->nDevSq:D

    mul-double/2addr v11, v9

    mul-double/2addr v11, v3

    add-double/2addr v7, v11

    mul-double v9, v5, v5

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v15, v5, v13

    mul-double/2addr v15, v11

    sub-double/2addr v9, v15

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->nDevSq:D

    move-wide v15, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->nDevSq:D

    mul-double/2addr v11, v13

    sub-double v13, v5, v15

    mul-double/2addr v11, v13

    mul-double/2addr v11, v5

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    iput-wide v7, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    .line 106
    return-void
.end method
