.class public Lorg/apache/commons/math3/stat/ranking/NaturalRanking;
.super Ljava/lang/Object;
.source "NaturalRanking.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    }
.end annotation


# static fields
.field public static final DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field public static final DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;


# instance fields
.field private final nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field private final randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

.field private final tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FAILED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 76
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 93
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .param p1, "randomGenerator"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->RANDOM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 143
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 144
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 145
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)V
    .locals 1
    .param p1, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 117
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .param p1, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .param p2, "randomGenerator"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 159
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->RANDOM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 160
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 1
    .param p1, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .param p2, "tiesStrategy"    # Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 130
    iput-object p2, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 131
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 1
    .param p1, "tiesStrategy"    # Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 105
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 106
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 107
    return-void
.end method

.method private containsNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Z
    .locals 3
    .param p1, "ranks"    # [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 312
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x1

    return v1

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private fill([DLjava/util/List;D)V
    .locals 2
    .param p1, "data"    # [D
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;D)V"
        }
    .end annotation

    .line 382
    .local p2, "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 383
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-wide p3, p1, v1

    goto :goto_0

    .line 386
    :cond_0
    return-void
.end method

.method private getNanPositions([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Ljava/util/List;
    .locals 4
    .param p1, "ranks"    # [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 414
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private recodeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;D)V
    .locals 3
    .param p1, "ranks"    # [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    .param p2, "value"    # D

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 297
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    new-instance v1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v2

    invoke-direct {v1, p2, p3, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v1, p1, v0

    .line 296
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private removeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    .locals 8
    .param p1, "ranks"    # [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    .line 266
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->containsNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    return-object p1

    .line 269
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    .line 270
    .local v0, "outRanks":[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    const/4 v1, 0x0

    .line 271
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 272
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    add-int/lit8 v3, v2, 0x1

    .local v3, "k":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 275
    new-instance v4, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-object v5, p1, v3

    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v5

    aget-object v7, p1, v3

    invoke-virtual {v7}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v4, p1, v3

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "k":I
    :cond_1
    goto :goto_2

    .line 279
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v4

    aget-object v6, p1, v2

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v3, v0, v1

    .line 281
    add-int/lit8 v1, v1, 0x1

    .line 271
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v2    # "i":I
    :cond_3
    new-array v2, v1, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    .line 285
    .local v2, "returnRanks":[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    return-object v2
.end method

.method private resolveTie([DLjava/util/List;)V
    .locals 12
    .param p1, "ranks"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 336
    .local p2, "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-wide v0, p1, v0

    .line 339
    .local v0, "c":D
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 341
    .local v2, "length":I
    sget-object v3, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$1;->$SwitchMap$org$apache$commons$math3$stat$ranking$TiesStrategy:[I

    iget-object v4, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    packed-switch v3, :pswitch_data_0

    .line 370
    new-instance v3, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v3

    .line 362
    :pswitch_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 363
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v4

    .line 364
    .local v4, "f":J
    const/4 v6, 0x0

    .line 365
    .local v6, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 366
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "i":I
    .local v8, "i":I
    int-to-long v9, v6

    add-long/2addr v9, v4

    long-to-double v9, v9

    aput-wide v9, p1, v7

    move v6, v8

    goto :goto_0

    .line 352
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "f":J
    .end local v8    # "i":I
    :pswitch_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 353
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v4

    .line 354
    .restart local v4    # "f":J
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 356
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    int-to-long v8, v2

    add-long/2addr v8, v4

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-virtual {v7, v4, v5, v8, v9}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextLong(JJ)J

    move-result-wide v7

    long-to-double v7, v7

    aput-wide v7, p1, v6

    goto :goto_1

    .line 349
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "f":J
    :pswitch_2
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->fill([DLjava/util/List;D)V

    .line 350
    goto :goto_2

    .line 346
    :pswitch_3
    int-to-double v6, v2

    add-double/2addr v6, v0

    sub-double/2addr v6, v4

    invoke-direct {p0, p1, p2, v6, v7}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->fill([DLjava/util/List;D)V

    .line 347
    goto :goto_2

    .line 343
    :pswitch_4
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v8, v0, v6

    int-to-double v10, v2

    add-double/2addr v8, v10

    sub-double/2addr v8, v4

    div-double/2addr v8, v6

    invoke-direct {p0, p1, p2, v8, v9}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->fill([DLjava/util/List;D)V

    .line 344
    nop

    .line 372
    :cond_0
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private restoreNaNs([DLjava/util/List;)V
    .locals 4
    .param p1, "ranks"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 395
    .local p2, "nanPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 396
    return-void

    .line 398
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 399
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    aput-wide v2, p1, v1

    goto :goto_0

    .line 403
    :cond_1
    return-void
.end method


# virtual methods
.method public getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    return-object v0
.end method

.method public getTiesStrategy()Lorg/apache/commons/math3/stat/ranking/TiesStrategy;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    return-object v0
.end method

.method public rank([D)[D
    .locals 12
    .param p1, "data"    # [D

    .line 194
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    .line 195
    .local v0, "ranks":[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 196
    new-instance v2, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-wide v3, p1, v1

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v2, v0, v1

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 201
    .local v1, "nanPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v2, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$1;->$SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy:[I

    iget-object v3, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 221
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v2

    .line 215
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanPositions([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Ljava/util/List;

    move-result-object v1

    .line 216
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_1

    .line 217
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw v2

    .line 212
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanPositions([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Ljava/util/List;

    move-result-object v1

    .line 213
    goto :goto_1

    .line 209
    :pswitch_2
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->removeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    move-result-object v0

    .line 210
    goto :goto_1

    .line 206
    :pswitch_3
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->recodeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;D)V

    .line 207
    goto :goto_1

    .line 203
    :pswitch_4
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->recodeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;D)V

    .line 204
    nop

    .line 225
    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 229
    array-length v2, v0

    new-array v2, v2, [D

    .line 230
    .local v2, "out":[D
    const/4 v3, 0x1

    .line 231
    .local v3, "pos":I
    const/4 v4, 0x0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v5

    int-to-double v6, v3

    aput-wide v6, v2, v5

    .line 232
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v5, "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v4, v0, v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    array-length v6, v0

    const/4 v7, 0x1

    if-ge v4, v6, :cond_4

    .line 235
    aget-object v6, v0, v4

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v8

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-lez v6, :cond_3

    .line 237
    add-int/lit8 v3, v4, 0x1

    .line 238
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_2

    .line 239
    invoke-direct {p0, v2, v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->resolveTie([DLjava/util/List;)V

    .line 241
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .end local v5    # "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v6, "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    goto :goto_3

    .line 245
    .end local v6    # "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "tiesTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    aget-object v6, v0, v4

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :goto_3
    aget-object v6, v0, v4

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v6

    int-to-double v7, v3

    aput-wide v7, v2, v6

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 249
    .end local v4    # "i":I
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_5

    .line 250
    invoke-direct {p0, v2, v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->resolveTie([DLjava/util/List;)V

    .line 252
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sget-object v6, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    if-ne v4, v6, :cond_6

    .line 253
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->restoreNaNs([DLjava/util/List;)V

    .line 255
    :cond_6
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
