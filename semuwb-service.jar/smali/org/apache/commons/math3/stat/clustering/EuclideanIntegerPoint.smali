.class public Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;
.super Ljava/lang/Object;
.source "EuclideanIntegerPoint.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/clustering/Clusterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
        "Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36c318a06b8caaf9L


# instance fields
.field private final point:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .param p1, "point"    # [I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic centroidOf(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    move-result-object p1

    return-object p1
.end method

.method public centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;",
            ">;)",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;"
        }
    .end annotation

    .line 65
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->getPoint()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    .line 66
    .local v0, "centroid":[I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    .line 67
    .local v2, "p":Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 68
    aget v4, v0, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->getPoint()[I

    move-result-object v5

    aget v5, v5, v3

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    .end local v2    # "p":Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;
    .end local v3    # "i":I
    :cond_0
    goto :goto_0

    .line 71
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 72
    aget v2, v0, v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    div-int/2addr v2, v3

    aput v2, v0, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 74
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;-><init>([I)V

    return-object v1
.end method

.method public bridge synthetic distanceFrom(Ljava/lang/Object;)D
    .locals 2

    .line 32
    check-cast p1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;)D
    .locals 2
    .param p1, "p"    # Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    .line 60
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->getPoint()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->distance([I[I)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 80
    instance-of v0, p1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    iget-object v1, v1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public getPoint()[I
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
