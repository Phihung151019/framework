.class public Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;
.super Ljava/lang/Object;
.source "SpearmansCorrelation.java"


# instance fields
.field private final data:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

.field private final rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;-><init>(Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "dataMatrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 85
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V
    .locals 2
    .param p1, "dataMatrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "rankingAlgorithm"    # Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankTransform(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->data:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 102
    new-instance v0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->data:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V
    .locals 1
    .param p1, "rankingAlgorithm"    # Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->data:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 74
    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .line 75
    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    .line 76
    return-void
.end method

.method private getNaNPositions([D)Ljava/util/List;
    .locals 4
    .param p1, "input"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 236
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private rankTransform(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "transformed":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    instance-of v1, v1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    check-cast v1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    if-ne v1, v2, :cond_1

    .line 201
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v1, "nanPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 203
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->getNaNPositions([D)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v2    # "i":I
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    move-object v0, v2

    .line 210
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 211
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->removeValues([DLjava/util/Set;)[D

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    .end local v1    # "nanPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 217
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 220
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 221
    iget-object v2, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 224
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method private removeValues([DLjava/util/Set;)[D
    .locals 6
    .param p1, "input"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[D"
        }
    .end annotation

    .line 251
    .local p2, "indices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    return-object p1

    .line 254
    :cond_0
    array-length v0, p1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [D

    .line 255
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    aget-wide v4, p1, v1

    aput-wide v4, v0, v2

    move v2, v3

    .line 255
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 141
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankTransform(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 142
    .local v0, "matrixCopy":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v1, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-direct {v1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    return-object v1
.end method

.method public computeCorrelationMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "matrix"    # [[D

    .line 154
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public correlation([D[D)D
    .locals 5
    .param p1, "xArray"    # [D
    .param p2, "yArray"    # [D

    .line 167
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 169
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 173
    move-object v0, p1

    .line 174
    .local v0, "x":[D
    move-object v1, p2

    .line 175
    .local v1, "y":[D
    iget-object v2, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    instance-of v2, v2, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iget-object v3, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    check-cast v3, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 177
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 179
    .local v2, "nanPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->getNaNPositions([D)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->getNaNPositions([D)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->removeValues([DLjava/util/Set;)[D

    move-result-object v0

    .line 183
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->removeValues([DLjava/util/Set;)[D

    move-result-object v1

    .line 185
    .end local v2    # "nanPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlation([D[D)D

    move-result-wide v2

    return-wide v2

    .line 170
    .end local v0    # "x":[D
    .end local v1    # "y":[D
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 168
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getRankCorrelation()Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    return-object v0
.end method
