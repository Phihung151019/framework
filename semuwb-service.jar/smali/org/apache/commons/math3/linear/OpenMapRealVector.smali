.class public Lorg/apache/commons/math3/linear/OpenMapRealVector;
.super Lorg/apache/commons/math3/linear/SparseRealVector;
.source "OpenMapRealVector.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;,
        Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;
    }
.end annotation


# static fields
.field public static final DEFAULT_ZERO_TOLERANCE:D = 1.0E-12

.field private static final serialVersionUID:J = 0x79bd32107cb529bcL


# instance fields
.field private final entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

.field private final epsilon:D

.field private final virtualSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 65
    const/4 v0, 0x0

    const-wide v1, 0x3d719799812dea11L    # 1.0E-12

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(ID)V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "dimension"    # I

    .line 74
    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(ID)V

    .line 75
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 3
    .param p1, "dimension"    # I
    .param p2, "epsilon"    # D

    .line 83
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 84
    iput p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 85
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 86
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    .line 87
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "dimension"    # I
    .param p2, "expectedSize"    # I

    .line 108
    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(IID)V

    .line 109
    return-void
.end method

.method public constructor <init>(IID)V
    .locals 3
    .param p1, "dimension"    # I
    .param p2, "expectedSize"    # I
    .param p3, "epsilon"    # D

    .line 119
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 120
    iput p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 121
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p2, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(ID)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 122
    iput-wide p3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V
    .locals 2
    .param p1, "v"    # Lorg/apache/commons/math3/linear/OpenMapRealVector;

    .line 188
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 189
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 190
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 191
    iget-wide v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    .line 192
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V
    .locals 2
    .param p1, "v"    # Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .param p2, "resize"    # I

    .line 95
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 96
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 97
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    iget-object v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 98
    iget-wide v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 199
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 200
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 201
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 202
    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    .line 203
    const/4 v0, 0x0

    .local v0, "key":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-ge v0, v1, :cond_1

    .line 204
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    .line 205
    .local v1, "value":D
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    .line 203
    .end local v1    # "value":D
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "key":I
    :cond_1
    return-void
.end method

.method public constructor <init>([D)V
    .locals 2
    .param p1, "values"    # [D

    .line 132
    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>([DD)V

    .line 133
    return-void
.end method

.method public constructor <init>([DD)V
    .locals 4
    .param p1, "values"    # [D
    .param p2, "epsilon"    # D

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 143
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 144
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 145
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    .line 146
    const/4 v0, 0x0

    .local v0, "key":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 147
    aget-wide v1, p1, v0

    .line 148
    .local v1, "value":D
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    .line 146
    .end local v1    # "value":D
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "key":I
    :cond_1
    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Double;

    .line 161
    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>([Ljava/lang/Double;D)V

    .line 162
    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;D)V
    .locals 4
    .param p1, "values"    # [Ljava/lang/Double;
    .param p2, "epsilon"    # D

    .line 171
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 172
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 173
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 174
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    .line 175
    const/4 v0, 0x0

    .local v0, "key":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 176
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 177
    .local v1, "value":D
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    .line 175
    .end local v1    # "value":D
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "key":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/linear/OpenMapRealVector;

    .line 43
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    return-object v0
.end method

.method private getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    return-object v0
.end method

.method private getLInfDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 7
    .param p1, "v"    # Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 502
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 503
    const-wide/16 v0, 0x0

    .line 504
    .local v0, "max":D
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    .line 505
    .local v2, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 506
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 507
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 508
    .local v3, "delta":D
    cmpl-double v5, v3, v0

    if-lez v5, :cond_0

    .line 509
    move-wide v0, v3

    .line 511
    .end local v3    # "delta":D
    :cond_0
    goto :goto_0

    .line 512
    :cond_1
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    .line 513
    :goto_1
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 514
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 515
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v3

    .line 516
    .local v3, "key":I
    iget-object v4, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v4

    cmpl-double v4, v4, v0

    if-lez v4, :cond_2

    .line 517
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v0

    .line 519
    .end local v3    # "key":I
    :cond_2
    goto :goto_1

    .line 520
    :cond_3
    return-wide v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 9
    .param p1, "v"    # Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 255
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 256
    .local v0, "copyThis":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v1

    .line 257
    .local v1, "res":Lorg/apache/commons/math3/linear/OpenMapRealVector;
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    :goto_2
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    .line 258
    .local v2, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    goto :goto_3

    :cond_3
    iget-object v3, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 259
    .local v3, "randomAccess":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
    :goto_3
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 260
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 261
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v4

    .line 262
    .local v4, "key":I
    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 263
    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {v1, v4, v5, v6}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_4

    .line 265
    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    .line 267
    .end local v4    # "key":I
    :goto_4
    goto :goto_3

    .line 268
    :cond_5
    return-object v1
.end method

.method public add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 236
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 237
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 238
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->add(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/SparseRealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public append(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 2
    .param p1, "d"    # D

    .line 303
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V

    .line 304
    .local v0, "res":Lorg/apache/commons/math3/linear/OpenMapRealVector;
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    .line 305
    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 5
    .param p1, "v"    # Lorg/apache/commons/math3/linear/OpenMapRealVector;

    .line 277
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V

    .line 278
    .local v0, "res":Lorg/apache/commons/math3/linear/OpenMapRealVector;
    iget-object v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .line 279
    .local v1, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 281
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    .line 283
    :cond_0
    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 5
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 289
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 290
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->append(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V

    .line 293
    .local v0, "res":Lorg/apache/commons/math3/linear/OpenMapRealVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 294
    iget v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    add-int/2addr v2, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic append(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->append(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 1

    .line 314
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 2
    .param p1, "v"    # Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 7
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 344
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 345
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    .line 351
    .local v0, "res":Lorg/apache/commons/math3/linear/OpenMapRealVector;
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v1

    .line 352
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 353
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 7
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 362
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 363
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    .line 364
    .local v0, "res":Lorg/apache/commons/math3/linear/OpenMapRealVector;
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .line 365
    .local v1, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 367
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    .line 369
    :cond_0
    return-object v0
.end method

.method public bridge synthetic ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 713
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 714
    return v0

    .line 716
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 717
    return v2

    .line 719
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    .line 720
    .local v1, "other":Lorg/apache/commons/math3/linear/OpenMapRealVector;
    iget v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    iget v4, v1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-eq v3, v4, :cond_2

    .line 721
    return v2

    .line 723
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 725
    return v2

    .line 727
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v3

    .line 728
    .local v3, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 729
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 730
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v4

    .line 731
    .local v4, "test":D
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 732
    return v2

    .line 734
    .end local v4    # "test":D
    :cond_4
    goto :goto_0

    .line 735
    :cond_5
    invoke-direct {v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v3

    .line 736
    :goto_1
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 737
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 738
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v4

    .line 739
    .restart local v4    # "test":D
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 740
    return v2

    .line 742
    .end local v4    # "test":D
    :cond_6
    goto :goto_1

    .line 743
    :cond_7
    return v0
.end method

.method public getDimension()I
    .locals 1

    .line 397
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    return v0
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 8
    .param p1, "v"    # Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 409
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 410
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    .line 411
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    const-wide/16 v1, 0x0

    .line 412
    .local v1, "res":D
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 414
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v3

    .line 416
    .local v3, "key":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v4

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 417
    .local v4, "delta":D
    mul-double v6, v4, v4

    add-double/2addr v1, v6

    .line 418
    .end local v3    # "key":I
    .end local v4    # "delta":D
    goto :goto_0

    .line 419
    :cond_0
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    .line 420
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 421
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 422
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v3

    .line 423
    .restart local v3    # "key":I
    iget-object v4, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 424
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v4

    .line 425
    .local v4, "value":D
    mul-double v6, v4, v4

    add-double/2addr v1, v6

    .line 427
    .end local v3    # "key":I
    .end local v4    # "value":D
    :cond_1
    goto :goto_1

    .line 428
    :cond_2
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    return-wide v3
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 434
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 435
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 436
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D

    move-result-wide v0

    return-wide v0

    .line 438
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/SparseRealVector;->getDistance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEntry(I)D
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 445
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    .line 446
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 8
    .param p1, "v"    # Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 461
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 462
    const-wide/16 v0, 0x0

    .line 463
    .local v0, "max":D
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    .line 464
    .local v2, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 466
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 467
    .local v3, "delta":D
    add-double/2addr v0, v3

    .line 468
    .end local v3    # "delta":D
    goto :goto_0

    .line 469
    :cond_0
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    .line 470
    :goto_1
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 472
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v3

    .line 473
    .local v3, "key":I
    iget-object v4, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 474
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 475
    .local v4, "delta":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 477
    .end local v3    # "key":I
    .end local v4    # "delta":D
    :cond_1
    goto :goto_1

    .line 478
    :cond_2
    return-wide v0
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 485
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 486
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 487
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getL1Distance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D

    move-result-wide v0

    return-wide v0

    .line 489
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/SparseRealVector;->getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 527
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 528
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 529
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getLInfDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D

    move-result-wide v0

    return-wide v0

    .line 531
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/SparseRealVector;->getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSparsity()D
    .locals 4

    .line 752
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 7
    .param p1, "index"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 376
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    .line 377
    if-ltz p2, :cond_2

    .line 380
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    .line 381
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(I)V

    .line 382
    .local v0, "res":Lorg/apache/commons/math3/linear/OpenMapRealVector;
    add-int v1, p1, p2

    .line 383
    .local v1, "end":I
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    .line 384
    .local v2, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 386
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v3

    .line 387
    .local v3, "key":I
    if-lt v3, p1, :cond_0

    if-ge v3, v1, :cond_0

    .line 388
    sub-int v4, v3, p1

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    .line 390
    .end local v3    # "key":I
    :cond_0
    goto :goto_0

    .line 391
    :cond_1
    return-object v0

    .line 378
    .end local v0    # "res":Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .end local v1    # "end":I
    .end local v2    # "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public bridge synthetic getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getSubVector(II)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 9

    .line 690
    const/16 v0, 0x1f

    .line 691
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 693
    .local v1, "result":I
    iget-wide v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 694
    .local v2, "temp":J
    mul-int/lit8 v4, v1, 0x1f

    const/16 v5, 0x20

    ushr-long v6, v2, v5

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v4, v6

    .line 695
    .end local v1    # "result":I
    .local v4, "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget v6, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    add-int/2addr v1, v6

    .line 696
    .end local v4    # "result":I
    .restart local v1    # "result":I
    iget-object v4, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v4

    .line 697
    .local v4, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 698
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 699
    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 700
    mul-int/lit8 v6, v1, 0x1f

    shr-long v7, v2, v5

    xor-long/2addr v7, v2

    long-to-int v7, v7

    add-int v1, v6, v7

    goto :goto_0

    .line 702
    :cond_0
    return v1
.end method

.method protected isDefaultValue(D)Z
    .locals 4
    .param p1, "value"    # D

    .line 229
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInfinite()Z
    .locals 5

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "infiniteFound":Z
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .line 540
    .local v1, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 542
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v2

    .line 543
    .local v2, "value":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 544
    const/4 v4, 0x0

    return v4

    .line 546
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 547
    const/4 v0, 0x1

    .line 549
    .end local v2    # "value":D
    :cond_1
    goto :goto_0

    .line 550
    :cond_2
    return v0
.end method

.method public isNaN()Z
    .locals 3

    .line 556
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    .line 557
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 559
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    const/4 v1, 0x1

    return v1

    .line 563
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public mapAdd(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 1
    .param p1, "d"    # D

    .line 569
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->mapAddToSelf(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapAdd(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->mapAdd(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapAddToSelf(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 3
    .param p1, "d"    # D

    .line 575
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    .line 576
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v1

    add-double/2addr v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public bridge synthetic mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->mapAddToSelf(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public set(D)V
    .locals 2
    .param p1, "value"    # D

    .line 607
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    .line 608
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setEntry(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 585
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    .line 586
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    goto :goto_0

    .line 588
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    .line 591
    :cond_1
    :goto_0
    return-void
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 597
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    .line 598
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    .line 599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 600
    add-int v1, v0, p1

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public sparseIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/math3/linear/RealVector$Entry;",
            ">;"
        }
    .end annotation

    .line 758
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 7
    .param p1, "v"    # Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 621
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 622
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    .line 623
    .local v0, "res":Lorg/apache/commons/math3/linear/OpenMapRealVector;
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .line 624
    .local v1, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 626
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v2

    .line 627
    .local v2, "key":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_1

    .line 630
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    .line 632
    .end local v2    # "key":I
    :goto_1
    goto :goto_0

    .line 633
    :cond_1
    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 640
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 641
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 642
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->subtract(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    return-object v0

    .line 644
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/SparseRealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[D
    .locals 5

    .line 673
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    new-array v0, v0, [D

    .line 674
    .local v0, "res":[D
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .line 675
    .local v1, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 677
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    aput-wide v3, v0, v2

    goto :goto_0

    .line 679
    :cond_0
    return-object v0
.end method

.method public unitVector()Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 651
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    .line 652
    .local v0, "res":Lorg/apache/commons/math3/linear/OpenMapRealVector;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->unitize()V

    .line 653
    return-object v0
.end method

.method public bridge synthetic unitVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->unitVector()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    return-object v0
.end method

.method public unitize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 659
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getNorm()D

    move-result-wide v0

    .line 660
    .local v0, "norm":D
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 663
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    .line 664
    .local v2, "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 665
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 666
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    div-double/2addr v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    goto :goto_0

    .line 668
    :cond_0
    return-void

    .line 661
    .end local v2    # "iter":Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method
